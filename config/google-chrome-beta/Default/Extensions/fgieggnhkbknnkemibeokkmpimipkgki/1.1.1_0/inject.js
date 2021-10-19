chrome.runtime.sendMessage({ command: 'getGlobalStatus' }, function (enabled) {

    var handler = null;

    function toggle(enable) {

        if (handler == null && enable)
            handler = new InputHandler(document);

        if (handler != null)
            handler.enable(enable);
    }

    toggle(enabled);

    chrome.runtime.onMessage.addListener(function (msg) {
        if (msg.info == "global") toggle(msg.value);
    });

});