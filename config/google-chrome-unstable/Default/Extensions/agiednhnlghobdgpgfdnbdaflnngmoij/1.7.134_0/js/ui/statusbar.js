define(["editor", "command"], function(editor, command) {

    /*
    A module for changing the status text at the bottom of the window.
    */

    var external = "";
    var element = document.find(".status-text");
    var update = function() {
        var selection = editor.getSelection();
        var displayText = "";
        var cursor = selection.getCursor();
        displayText = (cursor.row + 1) + ":" + (cursor.column + 1);
        
        //show token type (added by morgan)
        try{
            var tok = editor.session.getTokenAt(cursor.row, cursor.column);
            if (tok) {
                displayText+= " &nbsp; " +tok.type;
            }
        }
        catch(ex){}
        
        if (external) {
            displayText += " - " + external;
        }
        
        element.innerHTML = displayText;
    };
    editor.on("changeSelection", update);

    var toastTimeout = null;

    var interface = {
        setMessage: function(msg) {
            external = msg;
            if (toastTimeout !== null) {
                clearTimeout(toastTimeout);
                toastTimeout = null;
            }
            update();
        },
        clearMessage: function() {
            external = "";
            update();
        },
        toast: function(msg, seconds) {
            external = msg;
            update();
            if (toastTimeout !== null) {
                clearTimeout(toastTimeout);
            }
            toastTimeout = setTimeout(function() {
                external = "";
                update();
                toastTimeout = null;
            }, seconds ? seconds * 1000 : 5000);
        }
    };

    command.on("status:set", interface.setMessage);
    command.on("status:clear", interface.clearMessage);
    command.on("status:toast", interface.toast);

    return interface;

});