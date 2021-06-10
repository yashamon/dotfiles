//editor.renderer.$cursorLayer.element.on("click"


chrome.contextMenus.create({
    "title": "test title BLA",
    "contexts": ["editable"],
    "id": "contexttestid"
});

// The onClicked callback function.
function onClickHandler(info, tab) {
    log('info', info, 'tabl', tab);
    if (info.menuItemId == "radio1" || info.menuItemId == "radio2") {
        console.log("radio item " + info.menuItemId + " was clicked (previous checked state was " + info.wasChecked + ")");
    }
    else if (info.menuItemId == "checkbox1" || info.menuItemId == "checkbox2") {
        console.log(JSON.stringify(info));
        console.log("checkbox item " + info.menuItemId + " was clicked, state is now: " + info.checked + " (previous state was " + info.wasChecked + ")");

    }
    else {
        console.log("item " + info.menuItemId + " was clicked");
        console.log("info: " + JSON.stringify(info));
        console.log("tab: " + JSON.stringify(tab));
    }
}
chrome.contextMenus.onClicked.addListener(onClickHandler);



