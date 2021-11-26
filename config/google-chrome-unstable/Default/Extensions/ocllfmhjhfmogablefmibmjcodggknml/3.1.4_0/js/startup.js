function extensionBannedTab(tab) {
    if (tab.url) {
        return tab.url.includes("chrome://extensions") || tab.url.includes("https://chrome.google.com/extensions");
    }
}

function tabImage(tab) {
	if(tab.favIconUrl && tab.favIconUrl.length > 0) {
		return tab.favIconUrl;
	} else if(/^chrome:\/\/extensions\/.*/.exec(tab.url)) {
		return "http://img168.imageshack.us/img168/3407/chromeextensionsicon.png";
	} else {
		return "http://img29.imageshack.us/img29/5347/documentblankicon.png"
	}
}

$(document).ready(function() {
    (async () => {
        var intro = "";
        if (document.location.href.match("update=true")) {
            intro = "You received an important update to this extension.";
        } else {
            intro = "Thank you for installing this extension.";
        }
        $("#message").text(intro);
    
        const tabs = await chrome.tabs.query({windowId: globalThis.WINDOW_ID_CURRENT});
        var bannedTabs = false;
        for (var b=0; b<tabs.length; b++) {
            var tab = tabs[b];
            if (extensionBannedTab(tab)) {
                $("#bannedTabs").append("<img align='absmiddle' src='" + tabImage(tab) + "'/>&nbsp;" + tab.title + "<br>");
                bannedTabs = true;
            }
        }
        if (bannedTabs) {
            $("#bannedTabsWrapper").show();
            $("#bannedTabsWrapper a").click( function() {
                $("#bannedTabs").slideDown();
            });
        }
    
        $("#reloadTabs").click(async () => {
            chrome.windows.getAll({populate:true}, function (windows) {
                for (var a=0; a<windows.length; a++) {
                    var tabs = windows[a].tabs;
                    for (var b=0; b<tabs.length; b++) {
                        var tab = tabs[b];
                        if (!extensionBannedTab(tab)) {
                            chrome.tabs.update(tab.id, {url: tab.url, selected: tab.selected}, null);
                        }
                    }
                }
            });
            const tabs = await chrome.tabs.query({'active': true});
            chrome.tabs.remove(tabs[0].id);
            chrome.tabs.create({url:"options.html"});
        });
    })();
});