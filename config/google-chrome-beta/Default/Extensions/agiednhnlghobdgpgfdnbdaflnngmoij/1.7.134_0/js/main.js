chrome.version = window.navigator.appVersion.match(/Chrome\/(\d+)/)[1] * 1 || 0;
require(["command", "storage/settingsProvider", "ui/dialog", "sessions", "util/manos", "ui/projectManager", "ui/keys", "fileManager", "ui/menus", "ui/palette", "ui/cli", "api", "storage/syncfile"], function(command, Settings, dialog, sessions, M) {
    
    //#region Default
    var frame = chrome.app.window.current();
    var setTheme = function() {
        Settings.pull("user").then(function(data) {
            var themes = {
                "dark": "css/caret-dark.css",
                "light": "css/caret.css"
            };
            var theme = data.user.uiTheme || "light";
            var url = themes[theme] || themes.dark;
            document.find("#theme").setAttribute("href", url);
        });
    };
    setTheme();

    document.find(".app-name").textContent ='Caret-T '+ chrome.runtime.getManifest().version;

    //these are modules that must be loaded before init:complete
    var loadedModules = {
        "editor": false,
        "fileManager": false,
        "sessions": false
    };

    //the settings manager may also fire init:restart to re-init components after startup
    command.fire("init:startup", function(mod) {
        //ignore callback in non-essential modules
        if (typeof loadedModules[mod] == "undefined") return;
        loadedModules[mod] = true;
        for (var key in loadedModules) {
            if (!loadedModules[key]) {
                return;
            }
        }
        //all specified modules are loaded, app is ready for init:complete
        command.fire("init:complete");
    });
    command.on("init:restart", setTheme);

    //code to enable update checking
    var updateID = "caret:update";
    var checkUpdates = function(isManual) {
        chrome.runtime.requestUpdateCheck(function(status, details) {
            if (status == "update_available") {
                chrome.runtime.onUpdateAvailable.addListener(function() {
                    chrome.notifications.clear(updateID, function() {
                        chrome.notifications.create(updateID, {
                            type: "basic",
                            iconUrl: "icon-128.png",
                            title: "Caret: Update Available",
                            message: "An update to Caret version " + details.version + " is available. Would you like to update and restart now?",
                            buttons: [{
                                title: "Yes, update and restart"
                            }, {
                                title: "No thanks"
                            }]
                        }, function(id) {
                            updateID = id;
                        });
                    });
                });
            }
        });
    };
    Settings.pull("user").then(function(cfg) {
        if (cfg.user.promptForUpdates !== false) checkUpdates();
    });
    command.on("app:check-for-updates", checkUpdates);
    chrome.notifications.onButtonClicked.addListener(function(id, index) {
        if (id != updateID) return;
        if (index == 0) {
            chrome.runtime.reload();
        }
    });
    command.on("app:exit", function() {
        var cancelled = false;
        var tabs = sessions.getAllTabs();
        M.serial(tabs, function(tab, c) {
            if (tab.modified && (!tab.file || !tab.file.virtual)) {
                return dialog(
                tab.fileName + " has unsaved work.", [{
                    label: "Save",
                    value: "save",
                    shortcut: "s"
                }, {
                    label: "Discard",
                    value: "discard",
                    shortcut: "n"
                }, {
                    label: "Cancel",
                    value: "cancel",
                    shortcut: "c"
                }],

                function(value) {
                    if (!value || value == "cancel") {
                        cancelled = true;
                    }
                    if (value == "save") {
                        return tab.save(c);
                    }
                    c();
                });
            }
            c();
        }, function() {
            if (!cancelled) frame.close();
        });
    });
    command.on("app:minimize", function() {
        frame.minimize();
    });
    command.on("app:maximize", function() {
        frame.isMaximized() || frame.isFullscreen() ? frame.restore() : frame.maximize();
    });
    command.on("app:restart", function() {
        chrome.runtime.reload();
    });

    //handle immersive fullscreen
    var onFullscreen = function() {
        Settings.pull("user").then(function(data) {
            if (data.user.immersiveFullscreen) {
                document.find("body").addClass("immersive");
                editor.resize();
            }
        });
    };
    frame.onFullscreened.addListener(onFullscreen);
    if (frame.isFullscreen()) {
        onFullscreen();
    }
    frame.onRestored.addListener(function() {
        document.find("body").removeClass("immersive");
    });

    //It's nice to be able to launch the debugger from a command stroke
    command.on("app:debug", function() {
        debugger;
    });
    command.on("app:browse", function(url) {
        window.open(url, "target=_blank");
    });

    //kill middle clicks if not handled
    document.body.on("click", function(e) {
        if (e.button == 1) {
            e.preventDefault();
        }
    });
    //#endregion

    //#region AddedByMorgan
    command.on("app:newwindow", function() {
        chrome.app.window.create("main.html", {
            id: "caret:main" + chrome.app.window.getAll().length+1,
            frame: "none",
            minWidth: 640,
            minHeight: 480
        });
    });
    
    //console debugging help
    try{
        console.info('navigate to chrome://inspect/#apps to get the dev tools for the tern `worker` that is running in a webview, which uses a separate process for performance reasons (sandbox.html)');
        window.DM="";
        console.log("To debug commands, use:\n setDebugMode(\"commandName\"); \n (use full name of command to debug, this will log every time the command is fired)");
        //returns true if global var window.DM equals passed command name
        window.getDebugMode=function(commandName){
            try{
                if(window.DM.toString().toLowerCase().trim() == commandName.toString().toLowerCase().trim()) return true;
            }
            catch(ex){
                
            }
        };
        window.setDebugMode=function(commandName){
            window.DM=commandName;
        };
    }
    catch(ex){
        
    }
    
    
    //#endregion

});
