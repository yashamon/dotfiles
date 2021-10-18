define(["sessions/state", "editor", "command", "storage/settingsProvider"], function(state, editor, command, Settings) {
    //Various functions for swapping between tabs, either from clicks or keyboard.
    var stackOffset = 0;

    //Added by Morgan- needed to get tern
    var fileChanged = function() {
        //TODO - terns update arg hints binding gets thrown off when tabs are changed, turning it off and back on again fixes it
        editor.setOption('enableTern', false);
        if (Settings.get("user").autocomplete === true) {
            editor.setOption('enableTern', true);
        }
        //tell tern that the document changed
        if (editor.ternServer) {
            setTimeout(function() {
                editor.ternServer.docChanged(editor);
            }, 500);
        }
    };

    //file changed from API by switching tab or reloading file. Needed to tell tern that a new file is loaded
    command.on("session:file-changed", fileChanged);


    //Bring the tab at the index specified by the argument to the foreground.
    var raiseTab = function(tab) {
        editor.setSession(tab);
        command.fire("session:syntax");
        command.fire("session:render");
        editor.focus();
        command.fire("session:check-file");
        command.fire("session:file-changed"); //Morgan
    };

    var raiseBlurred = function(tab) {
        editor.setSession(tab);
        command.fire("session:syntax", tab.syntaxMode || "plain_text");
        command.fire("session:render");
        command.fire("session:check-file");
    };

    var resetStack = function(tab) {
        var raised = tab || state.stack[stackOffset];
        state.stack = state.stack.filter(function(t) {
            return t != raised;
        });
        state.stack.unshift(raised);
    };

    var watchCtrl = function(e) {
        if (e.keyCode == 17) {
            resetStack();
            document.body.off("keyup", watchCtrl);
            ctrl = false;
        }
    };

    var ctrl = false;

    // most-recent order
    var switchTab = function(arg, c) {
        arg = arg || 1;
        if (!ctrl) {
            ctrl = true;
            stackOffset = 0;
            document.body.on("keyup", watchCtrl);
        }
        stackOffset = (stackOffset + arg) % state.stack.length;
        if (stackOffset < 0) stackOffset = state.stack.length + stackOffset;
        raiseTab(state.stack[stackOffset]);
        if (c) c();
    };

    //left-to-right order
    var switchTabLinear = function(shift, c) {
        shift = shift || 1;
        var current = editor.getSession();
        var currentIndex = state.tabs.indexOf(current);
        var shifted = (currentIndex + shift) % state.tabs.length;
        if (shifted < 0) {
            shifted = state.tabs.length + shifted;
        }
        var tab = state.tabs[shifted];
        raiseTab(tab);
        resetStack(tab);
        if (c) c();
    };

    command.on("session:raise-tab", function(index) {
        var tab = state.tabs[index];
        raiseTab(tab);
        resetStack(tab);
        try { //close any open tabs
            editor.ternServer.closeAllTips();
        }
        catch (ex) {}
    });
    command.on("session:change-tab", switchTab);
    command.on("session:change-tab-linear", switchTabLinear);

    return {
        raise: raiseTab,
        raiseBlurred: raiseBlurred,
        switchTab: switchTab,
        switchLinear: switchTabLinear,
        fileChanged: fileChanged,
    };

});