/*jshint maxerr:10000 */
define(["sessions", "command", "editor", "settings!menus,user", "ui/statusbar", "ui/projectManager", "util/template!templates/paletteItem.html", "util/dom2"], function(sessions, command, editor, Settings, status, project, inflate) {

    var TokenIterator = ace.require("ace/token_iterator").TokenIterator;
    var refTest = /identifier|variable|function/;
    var jsRefTest = /entity\.name\.function/;

    //build a regex that finds special regex characters for sanitization
    var antiregex = new RegExp("(\\\\|\\" + "?.*+[](){}|^$".split("").join("|\\") + ")", "g");
    var sanitize = function(text) {
        //turn HTML into escaped text for presentation
        return text.replace(/\</g, "&lt;").replace(/\>/g, "&gt;").trim();
    };

    var findResultsLimit = 10;
    //limit sorting in very large projects
    var sortResultsLimit = 1000;

    var re = {
        file: /^([^:#@]*)/,
        line: /:(\d*)/,
        reference: /@([^:#]*)/,
        search: /#([^:@]*)/
    };

    var prefixes = {
        ":": "line",
        "@": "reference",
        "#": "search"
    };

    var modes = {
        "line": ":",
        "search": "#",
        "reference": "@"
    };

    var DEBOUNCE = 50;

    var Palette = function() {
        this.homeTab = null;
        this.results = [];
        this.cache = {};
        this.files = [];
        this.pending = null;
        this.selected = 0;
        this.element = document.find(".palette");
        this.input = this.element.find("input");
        this.resultList = this.element.find(".results");
        this.commandMode = false;
        this.searchAll = false;
        this.needParseScheduled = false;
        this.bindInput();
        this.toggleSearchAll(false);
        this.bindSearchAll();
        this.searchAllStatus = document.find(".searchAllStatus");
        //added to keep the thing open on extra click
        this.DoNotBlur = false;
    };
    Palette.prototype = {

        //set search all status. @status= html string, pass blank to clear and hide status
        setSearchAllStatus: function(status) {
            if (!status) {
                this.searchAllStatus.style.display = "none";
                return;
            }
            this.searchAllStatus.style.display = "block";
            this.searchAllStatus.innerHTML = status;
        },

        /**
         * quick hack to search all files with .js extension
         * TODO: add user input for filter like notepad++
         */
        toggleSearchAll: function(show) {
            var el = document.find(".searchAll");
            if (show === true) {
                el.style.display = "block";
            }
            else {
                el.style.display = "none";
            }
        },

        //binds link to search all
        bindSearchAll: function() {
            var input = this.input;
            var self = this;
            el = document.find(".searchAll");
            el.on('click', function() {
                self.preventHideOnBlur();
                self.findLocations(input.value, true);
            });
        },

        //call to  prevent hiding on blur for 400ms- useful to allow click elsewhere without blur
        preventHideOnBlur: function() {
            var self = this;
            self.DoNotBlur = true;
            setTimeout(function() {
                self.DoNotBlur = false;
            }, 400);
        },

        bindInput: function() {
            var input = this.input;
            var self = this;

            input.on("blur", function() {
                self.deactivate();
            });

            input.on("keydown", function(e) {
                //escape
                if (e.keyCode == 27) {
                    sessions.restoreLocation();
                    editor.clearSelection();
                    return input.blur();
                }
                //enter
                if (e.keyCode == 13) {
                    e.stopImmediatePropagation();
                    e.preventDefault();
                    self.executeCurrent();
                    return;
                }
                //up/down
                if (e.keyCode == 38 || e.keyCode == 40) {
                    e.preventDefault();
                    e.stopImmediatePropagation();
                    self.navigateList(e.keyCode == 38 ? -1 : 1);
                    self.render();
                    return;
                }
                //left/right
                if (e.keyCode == 37 || e.keyCode == 39) {
                    //don't reset selected index or parse the query
                    return;
                }
                self.needParseScheduled = true;
                self.selected = 0;
            });

            input.on("keyup", function(e) {
                if (!self.needParseScheduled) {
                    return;
                }
                self.needParseScheduled = false;
                if (self.pending) {
                    clearTimeout(self.pending);
                }

                self.pending = setTimeout(function() {
                    self.pending = null;
                    self.parse(input.value);
                }, DEBOUNCE);
            });
        },

        parse: function(query) {
            var startsWith = query[0];
            if (startsWith in prefixes) {
                this.commandMode = false;
            }
            if (this.commandMode) {
                this.findCommands(query);
            }
            else {
                this.findLocations(query);
            }
            this.render();
        },

        findCommands: function(query) {
            if (query.length == 0) return this.results = [];
            var fuzzyCommand = new RegExp(query.split("").map(function(char) {
                return char.replace(antiregex, "\\$1");
            }).join(".*?"), "i");
            var results = [];
            //load matches from the menu
            var menus = Settings.get("menus");
            var menuWalker = function(menu) {
                for (var i = 0; i < menu.length; i++) {
                    var item = menu[i];
                    //skip dividers and other special cases
                    if (typeof item == "string") continue;
                    if (item.minVersion && item.minVersion > window.navigator.version) continue;
                    if (item.command && fuzzyCommand.test(item.palette || item.label)) {
                        results.push(item);
                    }
                    if (item.sub) {
                        menuWalker(item.sub);
                    }
                }
            };
            menuWalker(menus);
            //also load from the command list
            var uniques = {};
            //do not duplicate results from menu
            results.forEach(function(r) {
                uniques[r.command] = true;
            });
            for (var i = 0; i < command.list.length; i++) {
                var c = command.list[i];
                if (c.command in uniques) continue;
                if (fuzzyCommand.test(c.label)) {
                    results.push(c);
                }
            }
            //sort the results into best-match
            results.sort(function(a, b) {
                var aMatch = fuzzyCommand.exec(a.palette || a.label);
                var bMatch = fuzzyCommand.exec(b.palette || b.label);
                var aScore = aMatch.index + aMatch[0].length;
                var bScore = bMatch.index + bMatch[0].length;
                if (aScore == bScore) return ((a.palette || a.label) < (b.palette || b.label) ? -1 : 1);
                return aScore - bScore;
            });
            this.results = results.slice(0, findResultsLimit);
        },

        getTabValues: function(tab) {
            var name = tab.fileName;
            if (!this.cache[name]) {
                return this.cacheTab(tab);
            }
            var cache = this.cache[name];
            for (var i = 0; i < cache.length; i++) {
                if (cache[i].tab == tab) {
                    return cache[i];
                }
            }
            return this.cacheTab(tab);
        },

        cacheTab: function(tab) {
            //create cache entry
            var entry = {
                tab: tab,
                refs: [],
                text: tab.getValue()
            };
            //create token iterator, search for all references
            var ti = new TokenIterator(tab, 0);
            var token;
            while (token = ti.stepForward()) {
                if (tab.syntaxMode == "javascript" ? jsRefTest.test(token.type) : refTest.test(token.type)) {
                    //this is a match, let's store it as a valid result object
                    var row = ti.getCurrentTokenRow();
                    var col = ti.getCurrentTokenColumn();
                    var line = sanitize(tab.getLine(row));
                    entry.refs.push({
                        tab: tab,
                        line: row,
                        value: token.value,
                        label: tab.fileName + ":" + row,
                        sublabel: line,
                        column: col
                    });
                }
            }
            var name = tab.fileName;
            if (!this.cache[name]) {
                this.cache[name] = [entry];
            }
            else {
                this.cache[name].push(entry);
            }
            return entry;
        },

        //search all files that are js
        searchAllFiles: function(crawl) {
            var self = this;
            self.element.focus();//refocus on input text after user click on link
            var searchFiles = project.getPaths();
            var totalSearchFiles = 0;
            var readSearchFiles = 0;
            var filteredSearchFiles = [];
            var loopDone = false;
            var results =[];

            //called after all search complete to show results
            //WARNING! this is copied code from the main findLocations function, this is super ghetto and messy
            var showSearchResult = function(results) {
                log('results', results);
                tabs = results;
                if (self.results.length) {
                    var current = self.results[self.selected];
                    if (!current.tab) return;
                    sessions.raiseBlurred(current.tab);
                    if (current.line) {
                        editor.clearSelection();
                        editor.gotoLine(current.line + 1, current.column || 0);
                        //editor.moveCursorTo(current.line, current.column || 0);
                        if (current.column) {
                            editor.execCommand("selectwordright");
                        }
                    }
                }
            };

            //search single tab
            var searchTab = function(tab, found, allFilesSearched, lines) {
                if(allFilesSearched)console.log('all files searched - 3');
                var position = tab.doc.indexToPosition(found.index);
                if (lines.indexOf(position.row) > -1) {

                }
                else {
                    lines.push(position.row);
                    var result = {
                        tab: tab
                    };
                    result.label = result.tab.fileName;
                    result.sublabel = sanitize(result.tab.getLine(position.row));
                    result.line = position.row;
                    results.push(result);
                    //if (results.length >= findResultsLimit) return;
                }
                if (allFilesSearched) {
                    showSearchResult(results);
                }
            };

            //search single path
            var searchPath = function(path, found, allFilesSearched, lines) {
               if(allFilesSearched) console.log('all files searched - 2');
                var tab = sessions.getTabByPath(path);
                if (tab !== null) {
                    searchTab(tab, found, allFilesSearched, lines);
                }
                else {
                    //get tab from project manager (will open new tab or find existing)
                    project.openFile(path, function(tab) {
                        searchTab(tab, found, allFilesSearched, lines);
                    });
                }
            };

            //after files are read, execute search
            var performSearchOnReadFiles = function() {
                var allFilesSearched = false;
                for (var i = 0; i < filteredSearchFiles.length; i++) {
                    if ((i + 1) === totalSearchFiles) {
                        allFilesSearched = true;
                        console.log('all files searched -1');
                    }
                    self.setSearchAllStatus('searching file ' + (i + 1) + ' out of ' + totalSearchFiles);
                    var f = filteredSearchFiles[i];

                    //if (results.length >= findResultsLimit) return;
                    var found;
                    var lines = [];
                    var text = f.fileText;
                    while (found = crawl.exec(text)) {
                        searchPath(f.path, found, allFilesSearched, lines);
                    }
                }
            };

            //adds file to array to search 
            var addFiltereredSearchFile = function(path, fileText) {
                readSearchFiles++;
                self.setSearchAllStatus('reading file ' + readSearchFiles + ' out of ' + totalSearchFiles);
                filteredSearchFiles.push({
                    path: path,
                    fileText: fileText
                });
                if (loopDone && readSearchFiles == totalSearchFiles) {
                    //log('loopDone. results=', filteredSearchFiles);
                    performSearchOnReadFiles();
                }
            };

            searchFiles.forEach(function(element, index, array) {
                if (index === array.length - 1) {
                    loopDone = true;
                }
                //console.log("a[" + index + "] = " + element);
                var ext = '';
                try {
                    ext = element.split('.').pop().toLowerCase();
                }
                catch (ex) {}
                if (ext !== 'js') {
                    return;
                }

                totalSearchFiles++;
                project.readFile(element, function(err, data) {
                    if (err) {
                        readSearchFiles--;
                        log('ERROR reading file, this will break everything');
                        return;
                    }
                    addFiltereredSearchFile(element, data);
                });
            });

        },

        //note: this function is WAY TOO LONG.
        // @param {bool} useSearchAll - pass true when button clicked that fires search all
        findLocations: function(query, useSearchAll) {
            this.toggleSearchAll(false); //morgan
            var file = re.file.test(query) && re.file.exec(query)[1];
            var line = re.line.test(query) && Number(re.line.exec(query)[1]) - 1;
            var search = re.search.test(query) && re.search.exec(query)[1];
            var reference = re.reference.test(query) && re.reference.exec(query)[1];
            var results = [];
            var self = this;

            var tabs, projectFiles = [];

            if (file) {
                //search through open files by name
                var fuzzyFile = new RegExp(file.replace(/ /g, "").split("").map(function(char) {
                    return char.replace(antiregex, "\\$1");
                }).join(".*?"), "i");
                tabs = sessions.getAllTabs().filter(function(tab) {
                    return fuzzyFile.test(tab.fileName);
                });

                //first find matches that have base names starting with the query
                var exact = file.replace(/ /g, "").replace(antiregex, "\\$1");
                var exactBeginsBase = new RegExp("^" + exact, "i");

                var results = this.files.filter(function(path) {
                    var baseName = path.split(/[\/\\]/).pop();
                    return exactBeginsBase.test(baseName);
                });
                if (results.length < sortResultsLimit) {
                    results.sort();
                }

                //now find matches that have base names containing the query
                var exactInBase = new RegExp(exact, "i");
                if (results.length < findResultsLimit) {
                    var exactInBaseMatches = this.files.filter(function(path) {
                        var baseName = path.split(/[\/\\]/).pop();
                        return results.indexOf(path) == -1 && exactInBase.test(baseName);
                    });

                    if (exactInBaseMatches.length < sortResultsLimit) {
                        exactInBaseMatches.sort();
                    }

                    results = results.concat(exactInBaseMatches);
                }

                //now find fuzzy matches
                if (results.length < findResultsLimit) {
                    var fuzzyMatches = this.files.filter(function(path) {
                        var baseName = path.split(/[\/\\]/).pop();
                        return results.indexOf(path) == -1 && fuzzyFile.test(path);
                    });

                    if (fuzzyMatches.length < sortResultsLimit) {
                        fuzzyMatches.sort();
                    }

                    results = results.concat(fuzzyMatches);
                }

                //transform into result objects
                projectFiles = results.map(function(path) {
                    return {
                        label: path.substr(path.search(/[^\/\\]+$/)),
                        sublabel: path,
                        command: "project:open-file",
                        argument: path
                    };
                });
            }
            else {
                //the search domain is the current tab
                var current = this.homeTab;
                tabs = [current];
                if (this.searchAll) {
                    tabs.push.apply(tabs, sessions.getAllTabs().filter(function(t) {
                        return t !== current
                    }));
                }
            }

            tabs = tabs.map(function(t) {
                return {
                    tab: t,
                    line: line
                };
            });

            if (search) {
                //find text in open tab(s)
                this.toggleSearchAll(true);
                var crawl;
                try {
                    crawl = new RegExp(search.replace(antiregex, "\\$1"), "gi");
                }
                catch (e) {
                    return;
                }

                var results = [];
                //my search all custom-- fired when click on search all
                if (useSearchAll) {
                    this.searchAllFiles(crawl);
                    return;
                }
                else {
                    tabs.forEach(function(t) {
                        if (results.length >= findResultsLimit) return;
                        var found;
                        var lines = [];
                        var text = self.getTabValues(t.tab).text;
                        while (found = crawl.exec(text)) {
                            var position = t.tab.doc.indexToPosition(found.index);
                            if (lines.indexOf(position.row) > -1) {
                                continue;
                            }
                            lines.push(position.row);
                            var result = {
                                tab: t.tab
                            };
                            result.label = result.tab.fileName;
                            result.sublabel = sanitize(result.tab.getLine(position.row));
                            result.line = position.row;
                            results.push(result);
                            if (results.length >= findResultsLimit) return;
                        }
                    });
                    tabs = results;
                }
            }
            else if (reference !== false) {
                //search by symbol reference
                try {
                    var crawl = new RegExp(reference.replace(antiregex, "\\$1"), "i");
                }
                catch (e) {
                    return;
                }
                var results = [];
                tabs.forEach(function(t) {
                    if (results.length >= findResultsLimit) return;
                    var refs = self.getTabValues(t.tab).refs;
                    for (var i = 0; i < refs.length; i++) {
                        if (crawl.test(refs[i].value)) {
                            var len = results.push(refs[i]);
                            if (len >= findResultsLimit) return;
                        }
                    }
                });
                tabs = results;
            }

            this.results = tabs.concat(projectFiles).slice(0, findResultsLimit);

            if (this.results.length) {
                var current = this.results[this.selected];
                if (!current.tab) return;
                sessions.raiseBlurred(current.tab);
                if (current.line) {
                    editor.clearSelection();
                    editor.gotoLine(current.line + 1, current.column || 0);
                    //editor.moveCursorTo(current.line, current.column || 0);
                    if (current.column) {
                        editor.execCommand("selectwordright");
                    }
                }
            }
        },

        executeCurrent: function() {
            var current = this.results[this.selected];
            if (!current) return;
            if (current.command) {
                status.toast("Executing: " + current.label + "...");
                command.fire(current.command, current.argument);
            }
            else {
                //must be the file search
                command.fire("session:check-file");
            }
            this.deactivate();
            if (!current.retainFocus) editor.focus();
        },

        activate: function(mode) {
            this.homeTab = sessions.getCurrent();
            this.results = [];
            this.cache = {};
            this.files = project.getPaths();
            this.pending = null;
            this.selected = 0;
            this.searchAll = Settings.get("user").searchAllFiles;
            this.commandMode = mode == "command";
            this.input.value = modes[mode] || "";
            this.render();
            this.element.addClass("active");
            this.input.focus();
            //trigger animation
            var self = this;
            this.element.addClass("enter");
            setTimeout(function() {
                self.element.removeClass("enter");
            });
        },

        deactivate: function() {
            var self = this;
            setTimeout(function() {
                if (self.DoNotBlur) { //morgan
                    return;
                }
                self.element.removeClass("active");
                if (self.pending) clearTimeout(self.pending);
            }, 200);
        },

        navigateList: function(interval) {
            this.selected = (this.selected + interval) % this.results.length;
            if (this.selected < 0) {
                this.selected = this.results.length + this.selected;
            }
            var current = this.results[this.selected];
            if (current && current.tab) {
                sessions.raiseBlurred(current.tab);
                if (current.line) {
                    editor.clearSelection();
                    editor.gotoLine(current.line + 1, current.column || 0);
                    //editor.moveCursorTo(current.line, current.column || 0);
                }
            }
            this.render();
        },

        render: function() {
            var self = this;
            this.element.find(".mode").innerHTML = this.commandMode ? "Command:" : "Go To:";
            this.resultList.innerHTML = "";
            this.results.slice(0, findResultsLimit).forEach(function(r, i) {
                var element = inflate.get("templates/paletteItem.html", {
                    label: r.palette || r.label || (r.tab ? r.tab.fileName : ""),
                    sublabel: r.sublabel,
                    isCurrent: i == self.selected
                });
                self.resultList.append(element);
            });
        }
    };

    var palette = new Palette();

    command.on("palette:open", function(mode) {
        sessions.saveLocation();
        palette.activate(mode);
    });

    window.palette = palette;
    console.log('window.palette');

    return palette;

});