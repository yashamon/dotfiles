define(["sessions", "editor", "storage/file", "ui/dialog", "command", "storage/settingsProvider", "util/manos", "ui/projectManager"], function(sessions, editor, File, dialog, command, Settings, M, projectManager) {

    /*
  FileManager splits out the session code that specifically deals with I/O.
  Pretty much the whole file is just bindings to various commands.
  
  Now that session.js is refactored, this could probably move into a submodule,
  except that it gets loaded explicitly on startup.
  */
  

    command.on("session:open-dragdrop", function(items) {
        [].forEach.call(items, function(entry) {
            //only process files
            if (entry.kind !== "file") return;
            entry = entry.webkitGetAsEntry();

            //files get opened in a tab
            if (entry.isFile) {
                var f = new File(entry);
                return f.read(function(err, data) {
                    sessions.addFile(data, f);
                }, dialog);
                //directories get added to project
            }
            else if (entry.isDirectory) {
                projectManager.insertDirectory(entry);
            }
        });
    });

    document.body.on("dragover", function(e) {
        e.preventDefault();
    });

    document.body.on("drop", function(e) {
        e.preventDefault();
        if (e.dataTransfer.types.indexOf("Files") === -1) return;
        command.fire("session:open-dragdrop", e.dataTransfer.items);
    });

    command.on("session:new-file", function(content) {
        return sessions.addFile(content)
    });

    command.on("session:open-file", function(c) {
        //have to call chooseEntry manually to support multiple files
        var args = {
            type: "openWritableFile"
        };
        if (chrome.version >= 30) {
            args.acceptsMultiple = true;
        }
        chrome.fileSystem.chooseEntry(args, function(files) {
            //annoying array function test, since it's not apparently a real array
            if (!files.slice) {
                files = [files];
            }
            files.map(function(entry) {
                var f = new File(entry);
                return f.read(function(err, data) {
                    sessions.addFile(data, f);
                }, dialog);
            });
            Promise.all(files).then(c);
        });
    });

    command.on("session:save-file", function(c) {
        sessions.getCurrent().save(c).then(function() {
            command.fire("session:syntax");
        });
    });

    command.on("session:save-file-as", function(c) {
        var tab = sessions.getCurrent();
        tab.save(true).then(function() {
            var mode = tab.detectSyntax();
            sessions.renderTabs();
            command.fire("session:syntax", mode);
            if (c) c();
        });
    });

    /**
     * reverts file IF NEEDED (first checks that files data has actually be modified)
     * regardless of need to revert file, will always update the local modified date with that of the file system
     * @param {bool} [showDialog=false] - pass true to show dialog IF the file is reverted
     *
     */
    command.on("session:revert-file", function(showDialog,c) {
        var tab = sessions.getCurrent();
        if (!tab.file) return;
        tab.file.read(function(err, data) {
            //Modified by morgan
            //caused issues with reverting repeatidly due to files being on mapped network drives showing different lastModifiedDate than the one set here because of the delay between saving the file and the acutal save being completed
            
            tab.modified=false;
            //set tabs modified at to that of the file entry, not now
            if (tab.file && !tab.file.virtual) {
                 tab.file.entry.file(function(entry) {
                    tab.modifiedAt = entry.lastModifiedDate;
                 });
            }
            //only set tabs value if it doesnt match
            if (tab.getValue() != data) {
                 tab.setValue(data);
                 sessions.renderTabs();
                 command.fire("session:file-changed"); //Morgan
                 if(showDialog){
                     dialog("File reloaded from file system due to external modifications");
                 }
            }
            if (c) c();
        
            // Original code here:
            // tab.setValue(data);
            // tab.modified = false;
            // tab.modifiedAt = new Date();
            // sessions.renderTabs();
            // if (c) c();
        });
    });

    command.on("session:retain-tabs", function() {
        var tabs = sessions.getAllTabs();
        var keep = [];
        tabs.forEach(function(tab, i) {
            if (!tab.file || tab.file.virtual) return;
            keep[i] = tab.file.retain();
        });
        keep = keep.filter(function(m) {
            return m;
        });
        if (keep.length) {
            chrome.storage.local.set({
                retained: keep
            });
        }
    });

    //checks file for modification outside of caret
    command.on("session:check-file", function() {
        var tab = sessions.getCurrent();
        if (!tab.file || tab.file.virtual) return;
        tab.file.entry.file(function(entry) {
            //if the tab was modified outside of caret
            if (tab.modifiedAt && entry.lastModifiedDate > tab.modifiedAt) {
                //modified by morgan - read the file and make sure it actually changed
                tab.file.read(function(err, data) {
                    if(tab.getValue() == data){//file in caret matches that in the file system
                        command.fire("session:revert-file");//update the last modified date locally to that of the file
                        return;
                    }
                    //still going: the file was actually changed externally
                    if (tab.modified) { //tab was also modified inside caret and has not been saved yet
                        dialog("This file has been modified since the last time it was saved. Would you like to reload?", [{
                            label: "Reload",
                            value: true
                        }, {
                            label: "Cancel",
                            value: false,
                            focus: true
                        }],
            
                        function(confirmed) {
                            if (confirmed) {
                                command.fire("session:revert-file");
                            }
                            else {
                                tab.modifiedAt = new Date();
                            }
                        });
                    }
                    else { //tab not modified inside of caret
                        command.fire("session:revert-file", true);
                    }
                });
            }
        });
    });

    command.on("session:open-settings-file", function(name, c) {
        Settings.load(name, function() {
            var data = Settings.getAsString(name);
            var file = Settings.getAsFile(name);
            sessions.addFile(data, file);
            if (c) c();
        });
    });

    //defaults don't get loaded as files, just as content
    command.on("session:open-settings-defaults", function(name, c) {
        sessions.addDefaultsFile(name);
        if (c) c();
    });

    command.on("session:insert-from-file", function(c) {
        var f = new File();
        f.open(function() {
            f.read(function(err, text) {
                editor.execCommand("insertstring", text);
            });
        });
    });

    var openFromLaunchData = function() {
        if (window.launchData) {
            window.launchData.forEach(function(file) {
                var f = new File(file.entry);
                f.read(function(err, contents) {
                    sessions.addFile(contents, f);
                }, dialog);
            });
        }
    };

    var openFromRetained = function(done) {
        chrome.storage.local.get("retained", function(data) {
            var failures = [];
            if (!data.retained || !data.retained.length) return done();

            //convert raw retained IDs into typed retention objects
            var retained = data.retained.map(function(item) {
                if (typeof item == "string") {
                    return {
                        type: "file",
                        id: item
                    };
                }
            });

            //constructors for restorable types
            var restoreTypes = {
                file: File,
                settings: null, //not yet, will be regular SyncFile
                buffer: null //not yet, will be HTML5 filesystem for scratch files
            }

            //console.log(retained);

            //try to restore items in order
            M.map(
            retained,

            function(item, i, c) {
                var Type = restoreTypes[item.type] || File;
                var file = new Type();
                file.restore(item.id, function() {
                    file.read(function(err, data) {
                        if (err) {
                            failures.push(item);
                            return c(null);
                        }
                        c({
                            value: data,
                            file: file
                        });
                    });
                });
            },

            function(restored) {
                restored = restored.filter(function(d) {
                    return d
                });
                for (var i = 0; i < restored.length; i++) {
                    var tab = restored[i];
                    sessions.addFile(tab.value, tab.file);
                }
                if (!failures.length) return;
                console.log(failures);
                chrome.storage.local.get("retained", function(data) {
                    if (!data.retained) return;
                    chrome.storage.local.set({
                        retained: data.retained.filter(function(d) {
                            if (typeof d == "string") {
                                d = {
                                    type: "file",
                                    id: d
                                };
                            }
                            return !failures.some(function(fail) {
                                return fail.type == d.type && fail.id == d.id;
                            });
                        })
                    });
                });
                if (done) done();
            });
        });
    }

    command.on("session:open-launch", openFromLaunchData);

    var init = function(complete) {
        Settings.pull("user").then(function(data) {
            if (data.user.disableTabRestore) done();
            openFromRetained(function() {
                openFromLaunchData();
                complete("fileManager");
            })
        });
    };

    command.on("init:startup", init);

    window.on("focus", command.fire.bind(null, "session:check-file"));

});
