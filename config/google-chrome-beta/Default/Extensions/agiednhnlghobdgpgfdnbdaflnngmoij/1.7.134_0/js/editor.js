/* jshint laxcomma:false, unused:true, laxbreak:false, maxerr:10000 */

define(["storage/file", "command", "settings!ace,user", "util/dom2"], function(File, command, Settings) {

    //#region Default

    //Module for loading the editor, adding window resizing and other events. Returns the editor straight from Ace.
    var userConfig = Settings.get("user");
    var aceConfig = Settings.get("ace");
    var editor = window.editor = ace.edit("editor");
    window.editor = editor; //for debugging
    var themes = document.querySelector(".theme");

    //disable focusing on the editor except by program
    document.find("textarea").setAttribute("tabindex", -1);

    //one-time startup
    var init = function() {
        aceConfig.themes.forEach(function(theme) {
            var option = document.createElement("option");
            option.innerHTML = theme.label;
            option.setAttribute("value", theme.name);
            themes.append(option);
        });
        reset();
        //let main.js know this module is ready
        return "editor";
    };

    //reloaded when settings change
    function reset() {
        userConfig = Settings.get("user");
        themes.value = userConfig.defaultTheme;
        editor.$blockScrolling = Infinity; //prevents ace from logging nonsenes warnings to console
        editor.setTheme("ace/theme/" + themes.value);
        editor.setOptions({
            scrollPastEnd: userConfig.scrollPastEnd,
            showGutter: !userConfig.hideGutter
        });
        editor.setShowPrintMargin(userConfig.showMargin || false);
        editor.setPrintMarginColumn(userConfig.wrapLimit || 80);
        editor.setShowInvisibles(userConfig.showWhitespace || false);
        editor.setHighlightActiveLine(userConfig.highlightLine || false);
        editor.container.style.fontFamily = userConfig.fontFamily || null;
        editor.setAnimatedScroll(userConfig.animatedScroll || true);
        defaultFontSize();


        ace.config.loadModule('ace/ext/tern', function() {
            var ternStarted = function() {
                try {
                    if (editor.ternServer) {
                        // console.log('userConfig.tern', userConfig.tern);
                        // console.log('editor.ternServer.debug("files") \t\t (use to test files when using require)');
                        // console.log('editor.ternServer.options.defs', editor.ternServer.options.defs);
                        // console.log('userConfig.tern.defs', userConfig.tern.defs);

                        editor.ternServer.options.defs = userConfig.tern.defs;

                        editor.ternServer.options.plugins = userConfig.tern.plugins;


                        //set options that can be changed at any time without restarting server
                        /**
                         * used by tern to get name of current file
                         */
                        editor.ternServer.options.getCurrentFileName = function(callback) {
                            callback(editor.session.fileName);
                        };

                        /**
                         * @returns {string} resolved path
                         * NOTE: chromes filesystem wants to open files with forward slashes and they must start with the name of the opened project folder
                         * @param {string} path - path to resolve
                         */
                        editor.ternServer.options.resolveFilePath = function(path, callback) {
                            try {
                                /**
                                 * get open project directories, needed to build the correct relative path
                                 * (has to guess which directory to use by using string contains...
                                 *  could possibly break)
                                 */
                                editor.session.file.getPath(function(err, p) {
                                    var currentPath = p;
                                    //var currentPath=editor.session.file.entry.fullPath; //this returns /CaretTern/js/ace/ext-tern.js , but doesn't work on first load if retained file...
                                    ////note: current path is path of currently opened file, example: ~\Desktop\localGit\CaretTern\js\ace\ext-tern.js

                                    var projectDirectories = pm.project.folders; //HACK: pm is global
                                    //console.log('path=',path,'currentPath=',currentPath);

                                    var pathPart1 = currentPath;
                                    if (path.toLowerCase().indexOf("http") !== -1) {
                                        return path;
                                    }
                                    path = path.replace(new RegExp('/', 'g'), '\\'); //forward to back slashes
                                    while (path.substr(0, 3) === '..\\') {
                                        var t1 = pathPart1.substr(0, pathPart1.lastIndexOf("\\"));
                                        var t2 = t1.substr(0, t1.lastIndexOf("\\"));
                                        pathPart1 = t2;
                                        path = path.substring(3);
                                    }
                                    var final = pathPart1 + "\\" + path;
                                    final = final.replace(/\\/g, '/'); //back to forward slashes (ghetto)
                                    //console.log('\n\nfinal:', final, '\npath=', path, '\ncurrentPath=', currentPath);

                                    //check project directoires to get relative path to project directory
                                    for (var i = 0; i < projectDirectories.length; i++) {
                                        var dir = projectDirectories[i].path;
                                        if (final.indexOf(dir) !== -1) {
                                            //console.log('found in dir=' + dir);
                                            final = final.substr(final.indexOf(dir));
                                            break;
                                        }
                                        else {
                                            //console.log('NOT in dir=' + dir);
                                        }
                                    }
                                    //console.log('final relative to project:', final);
                                    callback(final);
                                });
                            }
                            catch (ex) {
                                callback("");
                                throw ex;
                            }
                        };

                        /**
                         * tell tern how to get a file (requiredJS, jump to def, vs refs, etc..)
                         * @param {string} name - full file path or relative (will likely be relative)
                         */
                        editor.ternServer.options.getFile = function(name, callback) {
                            require(["ui/projectManager"], function(projectManager) {
                                projectManager.readFile(name, function(err, data) {
                                    if (err) {
                                        console.log('err reading file ' + name, err);
                                    }
                                    callback(err, data);
                                });
                            });
                        };

                        //tell it how to switch to another file
                        editor.ternServer.options.switchToDoc = function(name, start, end) {
                            require(["ui/projectManager"], function(projectManager) {
                                console.log('open project file name: ' + name);
                                projectManager.openFile(name);
                                //GHETTO: hopefully the file is open by now, so lets jump to the start location (need to update project manager openFile to accept callback when its done to trigger this)
                                setTimeout(function() {
                                    editor.gotoLine(start.row, start.column || 0); //this will make sure that the line is expanded
                                    var sel = editor.getSession().getSelection(); // sel.selectionLead.setPosistion();// sel.selectionAnchor.setPosistion();
                                    sel.setSelectionRange({
                                        start: start,
                                        end: end
                                    });
                                }, 250);
                                // console.log('need to add a way to make this jump to start location after switching file. start='+start);
                            });
                        };
                        editor.ternServer.restart();
                    }
                }
                catch (ex) {
                    alert('error setting ternRequireJS: ' + ex.toString());
                }
            };

            var ternOptions = {
                defs: [ /*'jquery',*/ 'browser', 'ecma5' /*, 'ecma6'*/ ],
                plugins: {
                    /* complete_strings:{
                        maxLength:30,
                    },*/
                    /*requirejs: {
                            "baseURL": "./",
                            "paths": {}
                        },*/
                },
                useWorker: true,
                /** use a fake worker for tern server that uses sandbox because chrome app cant use eval outside of sandbox (terns acorn parser uses eval)
                 * todo: once new acorn works in web worker can get rid of this by using acorn_csp!
                 */
                workerClass: function() {
                    var self = this;
                    this.sandboxFrame = document.getElementById('sandboxFrame');
                    this.postMessage = function(message) {
                        this.sandboxFrame.contentWindow.postMessage(message, '*'); //2nd param allows any origin
                    };
                    this.onmessage = null;
                    this.error = null;
                    window.addEventListener('message', function(event) {
                        if (typeof self.onmessage === 'function') {
                            self.onmessage(event);
                        }
                    });
                },
                /** called once tern server has started */
                startedCb: function() {
                    ternStarted();
                }
            };

            editor.setOptions({
                enableTern: userConfig.autocomplete ? ternOptions : false,
                enableSnippets: userConfig.autocomplete,
                enableBasicAutocompletion: userConfig.autocomplete
            });
        });

        ace.config.loadModule('ace/ext/html_beautify', function(beautify) {

            if (!userConfig.hasOwnProperty('autoBeautify')) { userConfig.autoBeautify = true; }

            editor.setOptions({
                //turns on beautify when '}' typed in javacript or css
                autoBeautify: userConfig.autoBeautify,
                //turns on hotkeys
                htmlBeautify: true,
            });

            try {
                if (userConfig.beautify) {
                    for (var k in userConfig.beautify) {
                        beautify.options[k] = userConfig.beautify[k];
                    }
                }
            }
            catch (ex) {
                console.log('beautify error', ex);
            }
        });
    }

    //#endregion

    //#region Split
    //does not work yet
    /* ace.config.loadModule('ace/ext/split', function() {
        var Split = ace.require('ace/ext/split').Split;
        var split = new Split(editor.container,"chrome",1);
        editor = split.getEditor(0);
        split.on("focus", function(editor) {
            editor = editor;
        });
        window.split = split;
        split.setSplits(2);
    });*/
    //#endregion

    //#region ShowMessage
    window.alert = function(s) {
        command.fire("app:show-prompt");
        var cmd = document.find(".command-line input");
        cmd.style.color = "red"; //note: will be set back to red on next show
        cmd.value = s.toString();
    };
    window.command = command; //debugging
    console.log('global: command (caret command manager); commandList(filter): list all commands with optional filter');
    //lists commands in console with optional filter
    window.commandList = function(filter) {
        var arr = [];
        for (var i = 0; i < command.list.length; i++) {
            var c = command.list[i];
            var s = c.command;
            s += c.argument ? " - " + c.argument : "";
            if (filter) {
                if (s.toLowerCase().indexOf(filter.toLowerCase().trim()) === -1) continue;
            }
            arr.push(s);
        }
        arr.sort();
        console.log(arr.join("\n"));
    };

    //#endregion

    //#region DefaultCommands
    var defaultFontSize = function(c) {
        var size = Settings.get("user").fontSize;
        editor.container.style.fontSize = size ? size + "px" : null;
        if (c) c();
    };
    var adjustFontSize = function(delta, c) {
        var current = editor.container.style.fontSize;
        if (current) {
            current = current.replace("px", "") * 1;
        }
        else {
            current = Settings.get("user").fontSize;
        }
        var adjusted = current + delta;
        editor.container.style.fontSize = adjusted + "px";
        if (c) c();
    };
    command.on("editor:default-zoom", defaultFontSize);
    command.on("editor:adjust-zoom", adjustFontSize);
    command.on("init:startup", init);
    command.on("init:restart", reset);
    command.on("editor:theme", function(theme, c) {
        editor.setTheme("ace/theme/" + theme);
        themes.value = theme;
        editor.focus();
        if (c) c();
    });
    command.on("editor:print", function(c) {
        ace.require("ace/config").loadModule("ace/ext/static_highlight", function(_static) {
            var session = editor.getSession();
            var printable = _static.renderSync(session.getValue(), session.getMode(), editor.renderer.theme);
            var iframe = document.createElement("iframe");
            var css = "<style>" + printable.css + "</style>";
            var doc = css + printable.html;
            iframe.srcdoc = doc;
            iframe.width = iframe.height = 1;
            iframe.style.display = "none";
            document.body.append(iframe);
            setTimeout(function() {
                iframe.contentWindow.print();
                setTimeout(function() {
                    iframe.remove();
                });
            });
        });
    });
    command.on("editor:word-count", function(c) {
        var text = editor.getSession().getValue();
        var lines = text.split("\n").length + " lines";
        var characters = text.length + " characters";
        var words = text.match(/\b\S+\b/g);
        words = words ? words.length : 0;
        words += " words";
        command.fire("status:toast", [characters, words, lines].join(", "));
    });
    return editor;
    //#endregion

});
