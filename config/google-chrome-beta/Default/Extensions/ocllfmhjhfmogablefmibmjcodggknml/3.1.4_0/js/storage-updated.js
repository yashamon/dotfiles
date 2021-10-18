console.log("update localstorage to storage");

chrome.storage.local.set({
    "version": 2,
    "keys": localStorage["keys"],
    "displayTabCylcer": localStorage["displayTabCylcer"],
    "maxRecentTabs": localStorage["maxRecentTabs"],
});