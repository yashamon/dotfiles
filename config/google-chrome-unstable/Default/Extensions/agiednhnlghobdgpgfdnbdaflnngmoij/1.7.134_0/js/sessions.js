define(["sessions/state", "sessions/addRemove", "sessions/switching", "sessions/binding", "editor", "command", "storage/settingsProvider", "util/template!templates/newTabButton.html", "aceBindings"],
function(state, addRemove, switching, bindEvents, editor, command, Settings, inflate) {
  
  //The sessions module handles tracking tabs, their contents, and their bindings.
  //It shares the sessions:* command namespace with the fileManager module.
  
    var syntax = document.find(".syntax");

    command.on("session:syntax", function(mode) {
        var session = editor.getSession();
       
        if (mode) {
            session.setMode("ace/mode/" + mode);
            session.syntaxMode = mode;
        }
        else {
            mode = session.syntaxMode;
        }
        syntax.value = mode;
    });

    var renderTabs = function() {
        var tabContainer = document.find(".tabs");
        var contents = "";
        var current = editor.getSession();
        tabContainer.innerHTML = "";
        state.tabs.forEach(function(tab, i) {
            var element = tab.render(i);
            if (tab === current) {
                element.addClass("active");
            }
            tabContainer.append(element);
        });
        if (Settings.get("user").showNewTabButton === true) {
            tabContainer.append(inflate.get("templates/newTabButton.html"));
        }
        setTimeout(function() {
            //wait for render before triggering the enter animation
            tabContainer.findAll(".enter").forEach(function(element) {
                element.removeClass("enter")
            });
        });
        command.fire("session:retain-tabs");
    };

    var renderPending = false;
    command.on("session:render", function(c) {
        if (renderPending) return;
        renderPending = setTimeout(function() {
            renderTabs();
            renderPending = false;
            if (c) c();
        })
    }, 100);

    var init = function() {
        Settings.pull("ace").then(function(data) {
            data.ace.modes.forEach(function(mode) {
                var option = document.createElement("option");
                option.innerHTML = mode.label;
                option.value = mode.name;
                syntax.append(option);
            });
        })
        if (!state.tabs.length) addRemove.add("");
        renderTabs();
        bindEvents();
        reset();
        return "sessions";
    };

    var reset = function() {
        state.tabs.forEach(function(tab) {
            tab.detectSyntax();
        });
    };

    command.on("init:startup", init);
    command.on("init:restart", reset);

    var locationMemory = null;
    var result = {
        addFile: addRemove.add,
        addDefaultsFile: function(name) {
            Settings.load(name, function() {
                var tab = addRemove.add(Settings.getAsString(name, true));
                tab.syntaxMode = "javascript";
                tab.detectSyntax();
                tab.fileName = name + ".json";
                renderTabs();
            });
        },
        getAllTabs: function() {
            return state.tabs;
        },
        getCurrent: function() {
            return editor.getSession();
        },
        getTabByIndex: function(index) {
            return state.tabs[index];
        },
        getTabByName: function(name) {
            for (var i = 0; i < state.tabs.length; i++) {
                if (state.tabs[i].fileName == name) {
                    return state.tabs[i];
                }
            }
            return null;
        },
        //morgan- finds a tab by path or returns null
        getTabByPath: function(path) {
            //the path stored on the tab is the actual file system path, not the relative path from project manager that is being passed as parameter
            //input param exmaple:  "/CaretTern/js/ace/snippets/abap.js"
            //tab.path example:     "I:\CaretTern\js\ace\snippets\abap.js"
            path = path.replace(new RegExp('/', 'g'), '\\'); //forward to back slashes
            for (var i = 0; i < state.tabs.length; i++) {
                try{
                    if (state.tabs[i].path.indexOf(path) !== -1) { //NOTE: using contains here because the drive letter will be missing... could cause issues, TODO: make this cleaner!
                        return state.tabs[i];
                    }
                }
                catch(ex){}
            }
            return null;
        },
        getFilenames: function() {
            return state.tabs.map(function(t) {
                return t.fileName
            });
        },
        setCurrent: switching.raise,
        raiseBlurred: switching.raiseBlurred,
        saveLocation: function() {
            var session = editor.getSession();
            var position = editor.getCursorPosition();
            locationMemory = {
                tab: session,
                cursor: position
            };
        },
        restoreLocation: function() {
            if (!locationMemory) return;
            switching.raise(locationMemory.tab);
            editor.moveCursorToPosition(locationMemory.cursor);
        },
        renderTabs: renderTabs
    };
    
    window.sessions = result;
    console.log('window.sessions');
    return result;

});