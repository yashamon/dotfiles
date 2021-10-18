var lastOnUpdateInfo;
var lastOnCreateInfo;
var tabs = [];

//return 1st active tab
async function getActiveTab() {
    const tabs = await chrome.tabs.query({'active': true, lastFocusedWindow: true});
    return tabs.length ? tabs[0] : {};
}

async function indexOfTab(tabId) {
    var tabs = await getTabsFromStorage();
    for(var i = 0; i < tabs.length; i++) {
        if(tabId == tabs[i].id) {
            return i;
        }
    }
    return -1;
}

async function updateTabOrder(tabId) {
    const tabs = await getTabsFromStorage();
    const idx = await indexOfTab(tabId);
    let tab;

    if (idx >= 0) {
        tab = tabs[idx];
        tabs.splice(idx, 1);
    } else { // create it here because might have been tripped due to my max tabs limit
        tab = {
            id: tabId
        }
    }
    tabs.unshift(tab);
    setTabsToStorage(tabs);
}

async function recordTabsRemoved(tabIds) {
    console.log("recordTabsRemoved");
    const tabs = await getTabsFromStorage();
    await asyncForEach(tabIds, async tabId => {
        var idx = await indexOfTab(tabId);
        if(idx >= 0) {
            console.log("found tab", idx);
            tabs.splice(idx, 1);
        }

    });
    console.log("tabs after remove", tabs);
    setTabsToStorage(tabs);
}

function switchTabs(tabid, callback) {
    chrome.tabs.update(tabid, {active:true});
    if (callback) {
        callback();
    }
}

var re = /^https?:\/\/.*/;
function isWebUrl(url) {
    return re.exec(url);
}

function persistLog(message, obj, obj2) {
    console.log(message, obj, obj2);
    chrome.storage.local.get("logs", items => {
        if (!items.logs) {
            items.logs = [];
        }
        while (items.logs.length > 50) {
            items.logs.shift();
        }
        items.logs.push(new Date() + " " + message);
        if (obj) {
            items.logs.push(obj);
        }
        if (obj2) {
            items.logs.push(obj2);
        }
        chrome.storage.local.set({logs: items.logs});
    });
}

function getTabsFromStorage() {
    // keep local version to fix race issue with removing tabs and activing tabs
    if (globalThis.tabs.length) {
        return globalThis.tabs;
    } else {
        return new Promise((resolve, reject) => {
            chrome.storage.local.get("tabs", items => {
                resolve(items.tabs ?? []);
            });
        });
    }
}

function setTabsToStorage(tabs) {
    const MAX_TABS = 50;
    tabs = tabs.slice(0, MAX_TABS);

    globalThis.tabs = tabs;
    return new Promise((resolve, reject) => {
        chrome.storage.local.set({"tabs": tabs}, () => {
            resolve();
        });
    });
}

chrome.commands.onCommand.addListener(async function(command) {
    if (command == "toggleTabs") {
        var tabs = await getTabsFromStorage();
        switchTabs(parseInt(tabs[1].id));
    }
});

chrome.runtime.onMessage.addListener(function(request, sender, sendResponse) {
    if (request.call == "getTabs") {
        chrome.windows.getLastFocused(async currentWindow => {
            chrome.storage.local.set({"lastWindowId": currentWindow.id});
            var tabs = await getTabsFromStorage();
            sendResponse({
                "tabs" : tabs.filter(function (element, index, array) {
                    return (element.windowId == currentWindow.id);
                })
            });				
        });
    } else if (request.call == "switchTabs") {
        switchTabs(parseInt(request.id));
    } else if (request.call == "openDonatePage") {
        chrome.tabs.create({url:"http://jasonsavard.com?ref=recentTabs"})
    } else {
        sendResponse({});
    }
    return true;
});

chrome.tabs.onRemoved.addListener(function(tabId) {
    recordTabsRemoved([tabId]);
});

chrome.tabs.onCreated.addListener(async tab => {
    console.log("oncreated", tab);
    // patch for Chrome bug, because onupdated is called 4 times (twice for on loading and twice for complete)
    const thisOnCreateInfo = JSON.stringify(tab);
    if (lastOnCreateInfo != thisOnCreateInfo) {
        console.log("add", tab);

        const tabs = await getTabsFromStorage();
        //console.log("oncreate: ");// + JSON.stringify(tabs));
        tabs.unshift(tab);
        setTabsToStorage(tabs).then(() => {
            updateTabOrder(tab.id);
        });

        lastOnCreateInfo = thisOnCreateInfo;
        
    }
});

chrome.tabs.onUpdated.addListener(async function(tabId, changeInfo, tab) {
    console.log("onupdated", changeInfo, tab);
    // patch for Chrome bug, because onupdated is called 4 times (twice for on loading and twice for complete)
    const thisOnUpdateInfo = JSON.stringify(changeInfo) + " " + JSON.stringify(tab);
    if (lastOnUpdateInfo != thisOnUpdateInfo) {
        
        const tabs = await getTabsFromStorage();
        console.log("tabs", tabs);
        //console.log(tabId + " " + changeInfo.status + " " + changeInfo.url + " " + tab.title);
        //console.log("onupdate: " + tabId);// + JSON.stringify(changeInfo) + " " + JSON.stringify(tab));
        
        
        //tabs[indexOfTab(tabId)] = tab;
        // patch for Chrome 28 because of cached pages not calling oncreated/onupdated (refer to Xin Tao's email)
        const idx = await indexOfTab(tabId);
        if (idx >= 0) {
            tabs[idx] = tab;
        } else {
            console.log("add2", tab);
            tabs.unshift(tab);
        }
        setTabsToStorage(tabs);

        lastOnUpdateInfo = thisOnUpdateInfo;
        
        
        // inject code
        if (changeInfo.status == "loading") {
            
            chrome.storage.local.get("enabled", async enabled => {
                if (enabled) {
                    var available = true;
                    if (tab.title && tab.title.indexOf("is not available") != -1) {
                        available = false;
                    }
                    //console.log(tab.title + " tab: ", tab)
                    if (available && tab.url && tab.url.indexOf("http") == 0 && tab.url.indexOf("https://chrome.google.com/webstore") == -1 && tab.url.indexOf("chrome://chromewebdata/") == -1) { // make sure it's standard webpage and not extensions:// or ftp:// because errors are generated
                        try {
                            await chrome.scripting.executeScript({target: {tabId: tabId, allFrames:true}, files: ["js/common.js"]});
                            await chrome.scripting.executeScript({target: {tabId: tabId, allFrames:true}, files: ["js/jquery.js"]});
                            await chrome.scripting.executeScript({target: {tabId: tabId, allFrames:true}, files: ["js/injected.js"]});
                        } catch (error) {
                            console.log("error: " + error);
                        }
                    }
                }
            });
        }			
        
    }
});

chrome.tabs.onActivated.addListener(activeInfo => {
    console.log("onActivated", activeInfo);
    updateTabOrder(activeInfo.tabId);
});

chrome.runtime.onInstalled.addListener(async function(details) {
    if (details.reason == "install") {
        chrome.storage.local.set({version: 2});
        const windows = await chrome.windows.getAll({populate:true});
        var tabs = [];
        for(var i = 0; i < windows.length; i++) {
            var t = windows[i].tabs;
            for(var j = 0; j < t.length; j++) {
                tabs.push(t[j]);
            }
        }
        setTabsToStorage(tabs).then(async () => {
            const tab = await getActiveTab();
            updateTabOrder(tab.id);
        });
        chrome.tabs.create({url:"startup.html"});
    } else if (details.reason == "update") {
        chrome.storage.local.get(null, storage => {
            if (!storage.version) {
                chrome.tabs.create({url:"storage-updated.html"});
            }
        });
    }
});

if (chrome.runtime.setUninstallURL) {
    chrome.runtime.setUninstallURL("https://jasonsavard.com/uninstalled?app=recentTabs");
}

async function asyncForEach(array, callback) {
    for (let index = 0; index < array.length; index++) {
        await callback(array[index], index, array);
    }
}