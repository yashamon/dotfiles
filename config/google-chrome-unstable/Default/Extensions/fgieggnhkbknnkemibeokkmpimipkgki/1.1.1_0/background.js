var isGlobalEnabled = false;

var engine = new TranslitEngine(TranslitEngine.defaults);
chrome.storage.sync.get("definitions", function (container) {
    var defs = container.definitions;
    if (defs) engine = new TranslitEngine(defs);
});

function update(){

	var text = isGlobalEnabled ? "on" : "off";
	var color = isGlobalEnabled ? [24, 200, 10, 255] : [255, 0, 0, 255];

	chrome.browserAction.setBadgeText({text:text});
	chrome.browserAction.setBadgeBackgroundColor({ color: color });

    chrome.tabs.query({}, function(tabs) {
        _.each(tabs, function(tab) {
            chrome.tabs.sendMessage(tab.id, {
                info: "global",
                value: isGlobalEnabled
            });
        });
    });
}

chrome.runtime.onMessage.addListener(function(msg, sender, callback) {

    if (msg.command == "translit")
        callback({ sequence: msg.sequence, value: engine.translit(msg.text) });

    if (msg.command == "getDefinitions") 
        callback(engine.definitions);
    
    if (msg.command == "getGlobalStatus") 
        callback(isGlobalEnabled);

});

chrome.commands.onCommand.addListener(function(command) {
    if (command == "toggleglobal") {
        isGlobalEnabled = !isGlobalEnabled;
        update();
    }
});

update();