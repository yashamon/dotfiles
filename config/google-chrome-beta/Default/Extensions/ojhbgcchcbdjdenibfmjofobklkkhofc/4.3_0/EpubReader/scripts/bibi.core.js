/***********************************************************
		Simple EPUB Reader
    	Licensed under the MIT license
        	http://opensource.org/licenses/mit-license.php


		Simple EPUB Reader based on BiB/i
			BiB/i
				http://sarasa.la/bib/i

************************************************************
		Copyright (c) 2014 Kunihiro Ando 
			senna5150ando@gmail.com
        		2015-01-02T03:10:05Z    
***********************************************************/


Bibi = { /*!
 *
 *  # BiB/i (core)
 *
 *  - "EPUB Reader on Your Web Site."
 *  - (c) Satoru MATSUSHIMA - http://sarasa.la/bib/i
 *  - Licensed under the MIT license. - http://www.opensource.org/licenses/mit-license.php
 *
 *  - Thu September 11 10:45:00 2014 +0900
 */    Version: "0.997.4", Build: 20140911.0
};



if(location.href.indexOf("#") > -1){
	location.hash = "";
}
A = {}; // Bibi.Archive
B = {}; // Bibi.Book
C = {}; // Bibi.Controls
O = {}; // Bibi.Operator
H = {}; // Bibi Link
R = {}; // Bibi.Reader
S = {}; // Bibi.Setting
X = {}; // Bibi.Extra
L = { // Bibi.Loader
	Fragments : [],
	Fragmode:"all",//use createDocumentFragment  = all,split,not
	FragItems:6,//Fragment iframes
	Lazyloads: [],
	Lazyindex:-1,
	LoadedItems:0,
	zip : new JSZip(),
	PreviousItem:null,
	fromDB:"tmp",
	loadDBItem:false,
	TargetPageIndex:0,
	appendingflag:false,
	appendPageIndex:-1,
	appendPointID:"",
	AutoBackupflag:false,
	historyItemID:"",
	fitImage:false
};
D = new DBOBJ();
P = {
	"name"                              : "BiB/i Default",   // "Name of this preset. As you like."
	"description"                       : "Default Preset.", // "Description of this preset. As you like."
	"book-display-mode"                 : "all",             // "all" or "each"
	"page-progression-direction"        : "ltr",             // "ltr" or "rtl" ("ltr" is recommended.)
	"spread-layout-axis"                : "horizontal",            // "auto" or "vertical" or "horizontal"
	"page-size-format"                  : "portrait",            // "portrait" or "landscape" or "window" or "auto" !!!! changed from "spread-orientation" !!!!
	"book-background"                   : "rgb(0,0,0)",   // CSS value or ""
	"spread-gap"                        : 2,                 // px (if you set odd-number, it will be added 1.)
	"spread-margin-start"               : 2,                 // px
	"spread-margin-end"                 : 2,                 // px
	"spread-border-radius"              : "1px",             // CSS value or ""
	"spread-box-shadow"                 : "none",            // CSS value or ""
	"item-padding-left"                 : 16,                // px
	"item-padding-right"                : 16,                // px
	"item-padding-top"                  : 36,                // px
	"item-padding-bottom"               : 16,                // px
	"item-column-rule"                  : "",                // CSS value or ""
	"fit-images"                        : true,              // true or false, or "in-single-image-only-item" (only one image, without text)
	"page-breaking"                     : true,              // true or false (if true, CSS "page-break-before/after: always;" will work, partially)
	"epub-additional-stylesheet"        : "",
	"epub-additional-script"            : "",
	"loaded": true 
};
function initApp(callback){
	chrome.storage.local.get("_bibi_layout",function(result){
	    var lmode = result["_bibi_layout"];
		if(lmode){
			P["spread-layout-axis"] = lmode;
		}
		chrome.storage.local.get("_from_db",function(result){
		    var dbload = result["_from_db"];
			if(dbload){
				chrome.storage.local.remove("_from_db");
				L.fromDB = dbload;
				L.loadDBItem = true;
			}
			chrome.storage.local.get("_scroll_pos",function(result){
			    var posobj = result["_scroll_pos"];
				if(posobj){
					P["spread-layout-axis"] = posobj.mode;
				}
				callback();
				var timerid = null;
				window.addEventListener("mousewheel", scrollEvent, true);		
				function scrollEvent( e ){
					clearTimeout(timerid)
					timerid = setTimeout(function(){
						if(L.loadDBItem || !R.Started){
							return;
						}
						R.storeScrollPosition();
					},400);
					if(S["spread-layout-axis"] !== "horizontal"){
						 return;
					}
					if ( e.wheelDeltaY ){
						e.preventDefault();
						e.stopPropagation();	
						var x = e.wheelDeltaY,y = 0;
						if(x > 0){
							R.page(-1)
						}else{
							R.page(+1)
						}
					}
				}
			});
		});
	});
}

//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Welcome !

//----------------------------------------------------------------------------------------------------------------------------------------------

O.welcome = function() {
	var callback = function(){
		var HTMLClassNames = [];
		O.HTML  = document.getElementsByTagName("html" )[0];
		O.Head  = document.getElementsByTagName("head" )[0];
		O.Body  = document.getElementsByTagName("body" )[0];
		O.Title = document.getElementsByTagName("title")[0];
		O.parser = new DOMParser();

		for(var OS in sML.OS) if(sML.OS[OS]                                  ) HTMLClassNames.push(OS);
		for(var UA in sML.UA) if(sML.UA[UA] && UA.length > 2 && UA != "Flash") HTMLClassNames.push(UA);
		O.HTML.className = HTMLClassNames.join(" ") + " preparing";
		O.WindowEmbeded = (function() {
			if(parent == window) {
				sML.addClass(O.HTML, "window-not-embeded");
				return 0;
			} else {
				sML.addClass(O.HTML, "window-embeded");
				try {
					return (location.host == parent.location.host ? 1 : -1);
				} catch(e) {
					return -1;
				}
			}
		})();
		R.Contents = O.Body.appendChild(sML.create("div", { id: "epub-contents" }));
		C.weaveCartain();
		O.readExtra();
		L.getBook(X["book"]);
		O.UserCSS();
		O.setFontSettings();
		O.LoadContentSetting();
		O.createTTSTypeList();
		
		document.getElementById("zipinput").addEventListener("change",function(e){
			document.getElementById("close-convert-img-epub").click();
			L.checkArchive(e.target.files[0],false);
		});
		document.getElementById("folderinput").addEventListener("change",function(e){
			document.getElementById("close-convert-img-epub").click();
		    var files = this.files;
			L.checkArchive(e.target.files,false,true);
		});
		document.getElementById("textinput").addEventListener("change",function(e){
			document.getElementById("close-convert-txt-epub").click();
			var file = e.target.files[0];
			var callback = function(){};
			var infoobj = {
				file:file,
				name:file.name,
				addflg:false,
				flderflg:true,
				callback:callback,
				ecallback:callback
			};
			if(this.getAttribute("data-value") === "v"){
				Txt2EPUB.openFile(infoobj,"v");
			}else if(this.getAttribute("data-value") === "hlr"){
				Txt2EPUB.openFile(infoobj,"hlr");
			}else if(this.getAttribute("data-value") === "hrl"){
				Txt2EPUB.openFile(infoobj,"hrl");
			}
		});
		document.getElementById("Vertical-button").addEventListener("click",function(e){
			var txtelem = document.getElementById("textinput");
			txtelem.setAttribute("data-value","v");
			txtelem.click();
		});
		document.getElementById("Left-to-Right-Horizontal").addEventListener("click",function(e){
			var txtelem = document.getElementById("textinput");
			txtelem.setAttribute("data-value","hlr");
			txtelem.click();
		});
		document.getElementById("Right-to-Left-Horizontal").addEventListener("click",function(e){
			var txtelem = document.getElementById("textinput");
			txtelem.setAttribute("data-value","hrl");
			txtelem.click();
		});
		document.getElementById("aboutModal").addEventListener("mousedown",function(e){
			e.preventDefault();
			e.stopPropagation();
		},false);
		document.getElementById("about-close").addEventListener("mousedown",function(e){
			e.preventDefault();
			e.stopPropagation();
			document.getElementById("aboutModal").style.display = "none";
		},false);
	    chrome.runtime.getBackgroundPage( function(bg) {
	    	if(bg.LaunchDATA&&bg.LaunchDATA.items&&bg.LaunchDATA.items[0]){
			    setTimeout(function(){
	                var fileEntry = bg.LaunchDATA.items[0].entry;
					fileEntry.file(function(file) {
						L.checkArchive(file);
				    	bg.LaunchDATA = null;
					});
				},800);   
	        }
	    });
	};
	initApp(callback);
}
O.initialize = function() {
	L.FileDigit = 3;
	B = {
		Container: { Path: "META-INF/container.xml" },
		Package: {}
	}
	R.Contents.innerHTML = "";
	R.Contents.style.opacity = 0;
	R.CoverImage = null;
	R.Navigation = null;

	var PresetFileName = (typeof X["bibi"]["preset"] == "string" && X["bibi"]["preset"] && !/\//.test(X["bibi"]["preset"])) ? X["bibi"]["preset"].replace(/(\.js)?$/, ".js") : "default.js";
	var applyPreset = function() {
		sML.each(["spread-gap", "spread-margin-start", "spread-margin-end", "item-padding-left", "item-padding-right",  "item-padding-top",  "item-padding-bottom"], function() {
			P[this] = (typeof P[this] != "number" || P[this] < 0) ? 0 : Math.round(P[this]);
		});
		if(P["spread-gap"] % 2) P["spread-gap"]++;
		if(X["bibi"]["book-display-mode" ] && /^(all|each)$/.test(                 X["bibi"]["book-display-mode" ])) P["book-display-mode" ] = X["bibi"]["book-display-mode" ];
		if(X["bibi"]["spread-layout-axis"] && /^(horizontal|vertical)$/.test(      X["bibi"]["spread-layout-axis"])) P["spread-layout-axis"] = X["bibi"]["spread-layout-axis"];
		if(X["bibi"]["page-size-format"  ] && /^(portrait|landscape|window)$/.test(X["bibi"]["page-size-format"  ])) P["page-size-format"  ] = X["bibi"]["page-size-format"  ];
		if(P.FileName !== "default.js") O.updateSetting(P);
	}
}
O.UserCSS = function(){
	chrome.storage.local.get("___opt_zoom",function(result){
	    var zoomlcl = result["___opt_zoom"];
		if(zoomlcl){
			var css2 = 'html,body{'+
				'font-size: '+zoomlcl+'px;'+  
			'}';
			L.modflag2 = css2;
		}
		chrome.storage.local.get("___font_family__",function(result){
		    var famllcl = result["___font_family__"];
			if(famllcl){
				var css3 = 'body{'+
					'font-family: '+famllcl+';'+  
				'}';
				L.modflag3 = css3;
			}
			chrome.storage.local.get("____opt_color_",function(result){
			    var optobj = result["____opt_color_"];
			    if(optobj&&optobj.injectcss){
					var css = '*{'+
						'background: '+optobj.background+' !important;'+  
					    'color: '+optobj.color+' !important;'+  
					'}';	
					L.modflag = css;
				}
			});
		});
	});
}
//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Loading

//----------------------------------------------------------------------------------------------------------------------------------------------


L.sayLoading = function(Message) {
	document.getElementById("bibi-cartain-loadingcover").style.display = "block";
	document.getElementById("bibi-cartain-catcher").style.display = "none";
	document.getElementById("bibi-cartain-message").style.zIndex = 3000;
	sML.addClass(O.HTML, "wait-please");
	sML.addClass(C.Cartain, "animate");
	C.Cartain.Message.note(Message ? Message : 'Loading ...');
}
L.shutUpLoading = function(Message) {
	document.getElementById("bibi-cartain-loadingcover").style.display = "none";
	document.getElementById("bibi-cartain-catcher").style.display = "block";
	document.getElementById("bibi-cartain-message").style.zIndex = "";
	sML.removeClass(O.HTML, "wait-please");
	sML.removeClass(C.Cartain, "animate");
	C.Cartain.Message.note(Message ? Message : '');
}
L.error = function(Message) {
	sML.removeClass(O.HTML, "wait-please");
	sML.removeClass(C.Cartain, "animate");
}
L.download = function(URI, MimeType) {
	var XHR = new XMLHttpRequest();
	if(MimeType) XHR.overrideMimeType(MimeType);
	XHR.open('GET', URI, false);
	XHR.send(null);
	if(XHR.status !== 200) return L.error('XHR HTTP status: ' + XHR.status + ' "' + URI + '"');
	return XHR;
}
L.requestDocument = function(Path,addflg) {
	var IsXML = /\.(xml|opf|ncx)$/i.test(Path);
	if(typeof Document == "undefined" || !Document) {
		if(addflg){
			var DocumentText = addflg;
		}else{
			var DocumentText = !B.Zipped ? XHR.responseText : A.Files[Path];
		}
		var Document = sML.create("object", { innerHTML: IsXML ? O.toBibiXML(DocumentText) : DocumentText });
		if(IsXML) sML.each([Document].concat(sML.toArray(Document.getElementsByTagName("*"))), function() {
			this.getElementsByTagName = function(TagName) {
				return this.querySelectorAll("bibi_" + TagName.replace(/:/g, "_"));
			}
		});
	}
	if(!Document || !Document.childNodes || !Document.childNodes.length) return L.error('Invalid Content. - "' + Path + '"');
	return Document;
}
L.getDBEpub = function(dbname){
	L.fromDB = dbname;
	L.loadDBItem = true;
	var epubied = L.fromDB;
	X = { book: "", bibi: {}, pipi: {} };
	O.initialize();
	D.getByEpubID(epubied,function(items){
		if(!items || !items.files){
			return;
		}
		var keys = Object.keys(items.files);
		if(keys.length > 0){
			C.Cartain.Catcher.style.opacity = 0;
			L.sayLoading();
			R.Started = false;
			L.PreviousItem = null;
			B.Zipped = true;
			B.Name = items.files[keys[0]].BName;
			B.Format = "EPUB";
			L.preprocessEPUB(items,true);
			L.fromDB = epubied;
			L.loadDBItem = true;
			L.parseEPUB();
			L.readContainer();
		}
	});				
}
L.preprocessAddDB = function(zipfile,zipflg){
	var getFile = function(name){
		for (var i = files.length - 1; i >= 0; i--) {
			var item = files[i];
			var matcher = new RegExp("^"+name+"$", "i");
			if(matcher.test(item.FileName)){
				return item;
			}
		};
		return;
	};
	C.Cartain.Catcher.style.opacity = 0;
	L.sayLoading();
	if(zipflg){
		EPUBZip = zipfile;
	}else{
	 	EPUBZip = L.zip.load(zipfile);
	}
	var files = L.preprocessEPUB(EPUBZip,false,true);
	var xml = getFile("META-INF/container.xml");
	var xmldocmnt = L.requestDocument("META-INF/container.xml",xml.astxt);
	var path = xmldocmnt.getElementsByTagName("rootfile")[0].getAttribute("full-path");
	var dir  = path.replace(/\/?[^\/]+$/, "");
	var infofile = getFile(path);
	var Document = L.requestDocument(path,infofile.astxt);
	var title = Document.getElementsByTagName("dc:title");
	if(!title || title.length < 1){
		title = "No Title";
	}else{
		title = title[0].textContent;
	}
	var coverimg = null;
	var Manifest = Document.getElementsByTagName("manifest")[0];
	var ManifestItems = Manifest.getElementsByTagName("item");
	sML.each(ManifestItems, function() {
		var ManifestItem = {
			"id"         : this.getAttribute("id")         || "",
			"href"       : this.getAttribute("href")       || "",
			"media-type" : this.getAttribute("media-type") || "",
			"properties" : this.getAttribute("properties") || "",
			"fallback"   : this.getAttribute("fallback")   || ""
		};
		(function(ManifestItemProperties) {
			if(/ cover-image /.test(ManifestItemProperties)){
				var imgpath =  ManifestItem["href"];
				if(imgpath){
					imgpath = O.getPath(dir, ManifestItem["href"]);
					coverimg = getFile(imgpath);
				}
				return;
			} 
		})(" " + ManifestItem.properties + " ");
	});
	var bookobj= {
		dbid:"bibi_"+ (new Date().getTime()),
		files:files,
		title:title,
		coverimg:coverimg
	};
	L.setEpubtoDB(bookobj,true,function(){
		C.Cartain.Catcher.style.opacity = 1;
		setTimeout(function(){
			document.getElementById("showBooksButton").click();
		},500);
	});
	EPUBZip = null;
	delete EPUBZip;
}
L.checkArchive = function(BookFile,addflg,fldrflg){
	if(fldrflg){
		L.extractArchive(BookFile,"zip",addflg,fldrflg);
	}else if(!BookFile || !BookFile.size) {
		C.Cartain.Message.note('Give me <span style="color:rgb(128,128,128);">EPUB</span>. Drop into this window.');
	}else if((/epub/i.test(BookFile.type)) || (/\.epub$/i.test(BookFile.name))){
		L.extractArchive(BookFile,"epub");
	} else if(/zip$/i.test(BookFile.name)){
		L.extractArchive(BookFile,"zip",addflg);
	}
}
L.extractArchive = function(BookFile,type,addflg,fldrflg){
	X = { book: "", bibi: {}, pipi: {} };
	O.initialize();
	C.Cartain.Catcher.style.opacity = 0;
	L.sayLoading();

	var callback = function(){
		C.Cartain.Catcher.style.opacity = 1;
		O.Body.style.opacity = 1.0; 
		L.shutUpLoading();
	};

	if(fldrflg){
		var dirpath = BookFile[0].webkitRelativePath,fldername = "folder";
		if(dirpath){
			fldername = dirpath.split("/")[0];
		}
		var infoobj = {
			file:BookFile,
			name:fldername,
			addflg:addflg,
			flderflg:true,
			callback:callback,
			ecallback:callback
		};
		ImagetoEPUB.openFile(infoobj);
	}else{
		sML.edit(new FileReader(), {
			onerror : function(e) {
				callback();
				C.Cartain.Message.note('Error. Something trouble...');
			},
			onload  : function(e) {
				if(type === "epub"){
					R.Started = false;
					B.Name = BookFile.name.replace(/\.epub$/i, ""), B.Format = "EPUB", B.Zipped = true;
				 	EPUBZip = L.zip.load(this.result);
					L.PreviousItem = L.preprocessEPUB(EPUBZip);
					L.parseEPUB();
					EPUBZip = null;
					delete EPUBZip;
					L.readContainer();
				}else if(type === "zip"){
					var infoobj = {
						file:this.result,
						name:BookFile.name,
						addflg:addflg,
						flderflg:false,
						callback:callback,
						ecallback:callback
					};
					ImagetoEPUB.openFile(infoobj);
				}
			}
		}).readAsArrayBuffer(BookFile);
	}
}
L.getBook = function(BookFileName) {
	document.body.addEventListener("dragenter", function(e) { e.preventDefault(); O.Body.style.opacity = 0.9; }, 1);
	document.body.addEventListener("dragover",  function(e) { e.preventDefault(); O.Body.style.opacity = 0.9; }, 1);
	document.body.addEventListener("dragleave", function(e) { e.preventDefault(); O.Body.style.opacity = 1.0; }, 1);
	document.body.addEventListener("drop",      function(e) { e.preventDefault(); O.Body.style.opacity = 1.0;
		L.checkArchive(e.dataTransfer.files[0]);
	}, 1);
	if(typeof BookFileName != "string" || !BookFileName || /\//.test(BookFileName)) {
		if(window.File) {
			C.Cartain.createCatcher({ onchange: L.checkArchive });
			C.Cartain.Message.note('Drop an EPUB, or click and select EPUB.');
		}
	}
	var waitdbopen = function(cnt){
		cnt++
		if(cnt < 15){
			if(D&&DBOBJ.DB){
				var epubied = L.fromDB;
				X = { book: "", bibi: {}, pipi: {} };
				O.initialize();
				D.getByEpubID(epubied,function(items){
					if(!items || !items.files){
						return;
					}
					var keys = Object.keys(items.files);
					if(keys.length > 0){
						C.Cartain.Catcher.style.opacity = 0;
						L.sayLoading();
						R.Started = false;
						L.PreviousItem = null;
						B.Zipped = true;
						B.Name = items.files[keys[0]].BName;
						B.Format = "EPUB";
						L.preprocessEPUB(items,true);
						L.fromDB = epubied;
						L.loadDBItem = true;
						L.parseEPUB();
						L.readContainer();
					}
				});
			}else{
				setTimeout(function(){
					waitdbopen(cnt);
				},300);
			}
		}
	}
	if(L.loadDBItem){
		waitdbopen(0);
	}
}
L.preprocessEPUB = function(EPUBZip,fsflg,addbookflg) {
    var URL = window.URL,writeitems = [];
	if(!addbookflg){
		L.fromDB = "tmp";
		L.loadDBItem = false;
	}
	A = {
		Files: {},
		FileURLs: {},
		binFiles:{},
		FileCount: { All:0, HTML:0, CSS:0, SVG:0, Bitmap:0, Font:0, Audio:0, Video:0, PDF:0 },
		getDataURI: function(FilePath) {
			for(var ContentType in O.ContentTypeList) {
				if(O.ContentTypeList[ContentType].test(FilePath)) {
					if(A.binFiles[FilePath])return A.binFiles[FilePath];
				}
			}
			return "";
		}
	}
	var checktype = function(FileName){
		var type = "",binflg = false,plainflg = false;
		A.FileCount.All++;

		if(/\.(x?html?|xml)$/i.test(FileName)) {
			A.FileCount.HTML++;
			type = "text/html";
			plainflg = true;
		}else if(/\.(css)$/i.test(FileName)) {
			A.FileCount.CSS++;
			type = "text/css";
			plainflg = true;
		}else if(/\.(js)$/i.test(FileName)) {
			A.FileCount.CSS++;
			type = "text/javascript";
			plainflg = true;
		}else if(/\.(svg)$/i.test(FileName)) {
			A.FileCount.SVG++;
			type = "image/svg+xml";
			plainflg = true;
		}else if(/\.(ncx)$/i.test(FileName)) {
			A.FileCount.CSS++;
			plainflg = true;
		}else if(/\.(opf)$/i.test(FileName)) {
			A.FileCount.CSS++;
			plainflg = true;
		}else if(/\.(ncx)$/i.test(FileName)) {
			A.FileCount.CSS++;
			plainflg = true;
		}else if(/mimetype$/i.test(FileName)) {
			A.FileCount.CSS++;
			plainflg = true;	
		}else if(/\.(jpe?g)$/i.test(FileName)){
			A.FileCount.Bitmap++;
			type = "image/jpeg";
			binflg = true;
		}else if(/\.(gif)$/i.test(FileName)){
			A.FileCount.Bitmap++;
			type = "image/gif";
			binflg = true;
		}else if(/\.(png)$/i.test(FileName)){
			A.FileCount.Bitmap++;
			type = "image/png";
			binflg = true;
		}else if(/\.(woff)$/i.test(FileName)) {
			A.FileCount.Font++;
			type = "font/woff";
			binflg = true;
		}else if(/\.(otf)$/i.test(FileName)) {
			A.FileCount.Font++;
			type = "font/opentype";
			binflg = true;
		}else if(/\.(ttf)$/i.test(FileName)) {
			A.FileCount.Font++;
			type = "font/truetype";
			binflg = true;
		}else if( /\.(m4a)$/i.test(FileName)) {
			A.FileCount.Audio++;
			type = "audio/aac";
			binflg = true;
		}else if( /\.(aac)$/i.test(FileName)) {
			A.FileCount.Audio++;
			type = "audio/aac";
			binflg = true;
		}else if( /\.(mp3)$/i.test(FileName)) {
			A.FileCount.Audio++;
			type = "audio/mp3";
			binflg = true;
		}else if( /\.(ogg)$/i.test(FileName)) {
			A.FileCount.Audio++;
			type = "audio/ogg";
			binflg = true;
		}else if(/\.(mp4)$/i.test(FileName)) {
			A.FileCount.Video++;
			type = "video/mp4";
			binflg = true;
		}else if(/\.(m4v)$/i.test(FileName)) {
			A.FileCount.Video++;
			type = "video/m4v";
			binflg = true;
		}else if(/\.(ogv)$/i.test(FileName)) {
			A.FileCount.Video++;
			type = "video/ogv";
			binflg = true;
		}else if(/\.(webm)$/i.test(FileName)) {
			A.FileCount.Video++;
			type = "video/webm";
			binflg = true;
		}else if(/\.(pdf)$/i.test(FileName)) {
			A.FileCount.PDF++;
			type = "application/pdf";
			binflg = true;
		}

		if(!fsflg){
			var arybuf = EPUBZip.file(FileName).asUint8Array();
			var astxt = "";
			if(type){
			    var blob = new Blob([arybuf], { "type" : type });
			}else{
			    var blob = new Blob([arybuf]);
			}
		    var fileurlobj = URL.createObjectURL(blob);
		    if(plainflg){
				astxt = EPUBZip.file(FileName).asText();
		    }
			var fobj = {};
			fobj.blob = blob;
			fobj.astxt = astxt+"";
			fobj.FileName = FileName;
			writeitems.push(fobj)
			if(!addbookflg){
			    A.binFiles[FileName] = fileurlobj;
				if(binflg){
				    A.FileURLs[FileName] = fileurlobj;
				}else if(plainflg){
				    A.Files[FileName] = astxt;
				}	
			}
		}else{
			var dbitem = EPUBZip.files[FileName];
			var blob = dbitem.blob;
			var astxt = dbitem.astxt;
		    var fileurlobj = URL.createObjectURL(blob);
		    A.binFiles[FileName] = fileurlobj;
			if(binflg){
			    A.FileURLs[FileName] = fileurlobj;
			}else if(plainflg){
			    A.Files[FileName] = astxt;
			}	
		}
	};
	if(addbookflg){
		for(var FileName in EPUBZip.files) {
			if(EPUBZip.files[FileName]._data) {
				checktype(FileName);
			}
		}
		A.FileCount = { All:0, HTML:0, CSS:0, SVG:0, Bitmap:0, Font:0, Audio:0, Video:0, PDF:0 };
	}else{
		if(!fsflg){
			for(var FileName in EPUBZip.files) {
				if(EPUBZip.files[FileName]._data) {
					checktype(FileName);
				}
			}
		}else{
			for(var FileName in EPUBZip.files) {
				checktype(FileName);
			};
		}
		L.FileDigit = (A.FileCount.All + "").length;
	}
	return writeitems;
}
L.parseEPUB = function() {
	var rRR = replaceResourceRefferences = function(FilePath, ExtLists, getMatchRE) {
		if(typeof getMatchRE != "function") getMatchRE = function(At) { return (new RegExp('<\\??[a-zA-Z1-6:\-]+[^>]*? ' + At + '[ \t]*=[ \t]*[\'"](?!(?:https?|data):)([^"]+?)[\'"]', "g")); };
		var Source = A.Files[FilePath].replace(/[\r\n]/g, "\n").replace(/\r/g, "\n");
		var FileDir = FilePath.replace(/\/?[^\/]+$/, "");
		for(var Attribute in ExtLists) {
			var MatchRE = getMatchRE(Attribute);
			var Matches = Source.match(MatchRE);
			if(Matches) {
				var ExtRE = new RegExp('\.' + ExtLists[Attribute] + '$', "i");
				sML.each(Matches, function() {
					var ResPathInSource = this.replace(MatchRE, "$1");
					var ResPath = O.getPath(FileDir, (!/^(\.*\/+|#)/.test(ResPathInSource) ? "./" : "") + ResPathInSource);
					var ResFnH = ResPath.split("#"), ResFile = ResFnH[0] ? ResFnH[0] : FilePath, ResHash = ResFnH[1] ? ResFnH[1] : "";

					if(A.FileURLs[ResFile]){
						if(ExtRE.test(ResFile) && A.FileURLs[ResFile]) Source = Source.replace(this, this.replace(ResPathInSource, A.FileURLs[ResFile] + (ResHash ? "#" + ResHash : "")));
					}else{
						if(ExtRE.test(ResFile) && A.Files[ResFile]) Source = Source.replace(this, this.replace(ResPathInSource, A.getDataURI(ResFile) + (ResHash ? "#" + ResHash : "")));
					}
				});
			}
		}
		/*
		if(Shelter.length) for(var i = 0, L = Shelter.length; i < L; i++) Source = Source.replace('<bibi:ignored number="' + i + '" />', Shelter[i]);
		Source = Source.replace(/<bibi:lf \/>/g, "\n");
		*/
		return Source;
	}

	var Preprocessed = { CSS:0, SVG:0, HTML:0 };

	for(var FilePath in A.Files) {
		if(/\.css$/.test(FilePath)){
			A.Files[FilePath] = (function(FilePath) { var getImportedCSS = arguments.callee;
				if(!A.Files[FilePath]) return "";
				var RE = /@import[ \t]*(?:url\()?["']?(?!(?:https?|data):)(.+?)['"]?(?:\))?[ \t]*;/g;
				var Imports = A.Files[FilePath].match(RE);
				if(Imports) {
					sML.each(Imports, function() {
						var ImportPath = O.getPath(FilePath.replace(/[^\/]+$/, ""), this.replace(RE, "$1"));
						var atimrt = "@import url("+A.binFiles[ImportPath]+");";
						if(A.Files[ImportPath]) A.Files[FilePath] = A.Files[FilePath].replace(this, atimrt);
					});
				}
				A.Files[FilePath] = rRR(FilePath, {
					"url" : "gif|png|jpe?g|svg|ttf|otf|woff"
				}, function() {
					return /url\(["']?(?!(?:https?|data|blob):)(.+?)['"]?\)/g;
				});
				return A.Files[FilePath];
			})(FilePath);
		    var blob = new Blob([A.Files[FilePath]], { "type" : "text/css" });
		    var fileurlobj = URL.createObjectURL(blob);
		    A.binFiles[FilePath] = fileurlobj;
			Preprocessed.CSS++;
		}else if(/\.svg$/.test(FilePath)){
			A.Files[FilePath] = rRR(FilePath, {
				"href"       : "css",
				"src"        : "gif|png|jpe?g|svg|js",
				"xlink:href" : "gif|png|jpe?g"
			});
		    var blob = new Blob([A.Files[FilePath]], { "type" : "image/svg+xml" });
		    var fileurlobj = URL.createObjectURL(blob);
		    A.binFiles[FilePath] = fileurlobj;
			Preprocessed.SVG++;				
		}else if(/\.(x?html?|xml)$/.test(FilePath)){
			A.Files[FilePath] = rRR(FilePath, {
				"href"       : "css",
				"src"        : "x?html?|xml|gif|png|jpe?g|svg|js|m4v|mp4",
				"xlink:href" : "gif|png|jpe?g"
			});
		    var blob = new Blob([A.Files[FilePath]], { "type" : "text/html" });
		    var fileurlobj = URL.createObjectURL(blob);
		    A.binFiles[FilePath] = fileurlobj;
			Preprocessed.HTML++;
		}
	}
}
L.readContainer = function() {
	Dcument = L.requestDocument(B.Container.Path);
	B.Package.Path = Dcument.getElementsByTagName("rootfile")[0].getAttribute("full-path");
	B.Package.Dir  = B.Package.Path.replace(/\/?[^\/]+$/, "");
	delete Dcument;
	L.readPackageDocument();
}
L.readPackageDocument = function() {
	var Document = L.requestDocument(B.Package.Path);
	var Metadata = Document.getElementsByTagName("metadata")[0];
	var Manifest = Document.getElementsByTagName("manifest")[0];
	var Spine    = Document.getElementsByTagName("spine")[0];
	var ManifestItems = Manifest.getElementsByTagName("item");
	var SpineItemrefs = Spine.getElementsByTagName("itemref");

	B.Package.Metadata = { "title": "", "creator": "", "publisher": "", "language": "", "titles": [], "creators": [], "publishers": [], "languages": [] };
	B.Package.Manifest = { "items": {}, "nav": {}, "cover-image": {}, "toc-ncx": {} };
	B.Package.Spine    = { "itemrefs": [] };

	sML.each(Metadata.getElementsByTagName("meta"), function() {
		if(this.getAttribute("refines")) return;
		if(this.getAttribute("property")) {
			var Property = this.getAttribute("property").replace(/^dcterms:/, "");
			if(/^(title|creator|publisher|language)$/.test(Property)) B.Package.Metadata[Property + "s"].push(this.textContent);
			else if(!B.Package.Metadata[Property]) B.Package.Metadata[Property] = this.textContent;
		}
		if(this.getAttribute("name") && this.getAttribute("content")) {
			B.Package.Metadata[this.getAttribute("name")] = this.getAttribute("content");
		}
	});
	if(!B.Package.Metadata["titles"    ].length) sML.each(Document.getElementsByTagName("dc:title"),     function() { B.Package.Metadata["titles"    ].push(this.textContent); return false; });
	if(!B.Package.Metadata["creators"  ].length) sML.each(Document.getElementsByTagName("dc:creator"),   function() { B.Package.Metadata["creators"  ].push(this.textContent); });
	if(!B.Package.Metadata["publishers"].length) sML.each(Document.getElementsByTagName("dc:publisher"), function() { B.Package.Metadata["publishers"].push(this.textContent); });
	if(!B.Package.Metadata["languages" ].length) sML.each(Document.getElementsByTagName("dc:language"),  function() { B.Package.Metadata["languages" ].push(this.textContent); });
	if(!B.Package.Metadata["languages" ].length) B.Package.Metadata["languages"][0] = "en";
	B.Package.Metadata["title"]     = B.Package.Metadata["titles"].join(    ", ");
	B.Package.Metadata["creator"]   = B.Package.Metadata["creators"].join(  ", ");
	B.Package.Metadata["publisher"] = B.Package.Metadata["publishers"].join(", ");
	B.Package.Metadata["language"]  = B.Package.Metadata["languages"].join( ", ");
	if(!B.Package.Metadata["rendition:layout"])      B.Package.Metadata["rendition:layout"]      = "reflowable";
	if(!B.Package.Metadata["rendition:orientation"]) B.Package.Metadata["rendition:orientation"] = "auto";
	if(!B.Package.Metadata["rendition:spread"])      B.Package.Metadata["rendition:spread"]      = "auto";
	if(!B.Package.Metadata["cover"])                 B.Package.Metadata["cover"]                 = "";
	O.getMetadata = function() { return B.Package.Metadata; };

	// MANIFEST
	var TOCID = Spine.getAttribute("toc");
	sML.each(ManifestItems, function() {
		var ManifestItem = {
			"id"         : this.getAttribute("id")         || "",
			"href"       : this.getAttribute("href")       || "",
			"media-type" : this.getAttribute("media-type") || "",
			"properties" : this.getAttribute("properties") || "",
			"fallback"   : this.getAttribute("fallback")   || ""
		};
		if(ManifestItem["id"] && ManifestItem["href"]) {
			B.Package.Manifest["items"][ManifestItem["id"]] = ManifestItem;
			(function(ManifestItemProperties) {
				if(        / nav /.test(ManifestItemProperties)) B.Package.Manifest["nav"        ].Path = O.getPath(B.Package.Dir, ManifestItem["href"]);
				if(/ cover-image /.test(ManifestItemProperties)) B.Package.Manifest["cover-image"].Path = O.getPath(B.Package.Dir, ManifestItem["href"]);
			})(" " + ManifestItem.properties + " ");
			if(TOCID && ManifestItem["id"] == TOCID) B.Package.Manifest["toc-ncx"].Path = O.getPath(B.Package.Dir, ManifestItem["href"]);
		}
	});

	// SPINE
	B.Package.Spine["page-progression-direction"] = Spine.getAttribute("page-progression-direction");
	if(!B.Package.Spine["page-progression-direction"] || !/^(ltr|rtl)$/.test(B.Package.Spine["page-progression-direction"])) B.Package.Spine["page-progression-direction"] = "default";
	var PropertyREs = [
		/(rendition:layout)-(.+)/,
		/(rendition:orientation)-(.+)/,
		/(rendition:spread)-(.+)/,
		/(rendition:page-spread)-(.+)/,
		/(page-spread)-(.+)/
	];
	sML.each(SpineItemrefs, function(i) {
		var SpineItemref = {
			"idref"                 : this.getAttribute("idref")      || "",
			"linear"                : this.getAttribute("linear")     || "",
			"properties"            : this.getAttribute("properties") || "",
			"page-spread"           : "",
			"rendition:layout"      : B.Package.Metadata["rendition:layout"],
			"rendition:orientation" : B.Package.Metadata["rendition:orientation"],
			"rendition:spread"      : B.Package.Metadata["rendition:spread"]
		};
		SpineItemref["properties"] = SpineItemref["properties"].replace(/^\s+/, "").replace(/\s+$/, "").replace(/\s+/g, " ").split(" ");
		sML.each(PropertyREs, function() {
			var RE = this;
			sML.each(SpineItemref["properties"], function() {
				if(RE.test(this)) {
					SpineItemref[this.replace(RE, "$1")] = this.replace(RE, "$2").replace("rendition:", "");
					return false;
				}
			});
		});
		if(SpineItemref["rendition:page-spread"]) SpineItemref["page-spread"] = SpineItemref["rendition:page-spread"];
		SpineItemref["rendition:page-spread"] = SpineItemref["page-spread"];
		SpineItemref["viewport"] = { content: null, width: null, height: null };
		SpineItemref["viewBox"]  = { content: null, width: null, height: null };
		B.Package.Spine["itemrefs"].push(SpineItemref);
	});

	var TitleFragments = [];
	if(B.Package.Metadata["title"])     { TitleFragments.push(B.Package.Metadata["title"]);     O.log(3, "title: "     + B.Package.Metadata["title"]);     }
	if(B.Package.Metadata["creator"])   { TitleFragments.push(B.Package.Metadata["creator"]);   O.log(3, "creator: "   + B.Package.Metadata["creator"]);   }
	if(B.Package.Metadata["publisher"]) { TitleFragments.push(B.Package.Metadata["publisher"]); O.log(3, "publisher: " + B.Package.Metadata["publisher"]); }
	if(TitleFragments.length) {
		O.Title.innerHTML = "";
		O.Title.appendChild(document.createTextNode(" " + TitleFragments.join(" - ").replace(/&amp;?/gi, "&").replace(/&lt;?/gi, "<").replace(/&gt;?/gi, ">")));
	}
	C.createPanel();
	C.createSwitches();
	delete Document;
	O.updateSetting({ Reset: true });
	L.prepareSpine();
}
L.prepareSpine = function() {
	R.Contents.innerHTML = "";
	R.Spreads = [], R.Items = [], R.Pages = [];
	if(S.PPD == "rtl") var PairBefore = "right", PairAfter = "left";
	else               var PairBefore = "left",  PairAfter = "right";

	L.Fragments.length = 0;
	sML.each(B.Package.Spine["itemrefs"], function(i) {
		var ItemRef = this;
		var Item = sML.create("iframe", { className: "item", id: "item-" +i, scrolling: "no", allowtransparency: "true" });
		Item.ItemRef = ItemRef;
		Item.Path = O.getPath(B.Package.Dir, B.Package.Manifest["items"][ItemRef["idref"]].href);
		Item.Dir = Item.Path.replace(/\/?[^\/]+$/, "");
		Item.IsPrePaginated = (ItemRef["rendition:layout"] == "pre-paginated");

		if(ItemRef["rendition:layout"] == "pre-paginated" && i) {
			var PrevItem = R.Items[i - 1];
			if(PrevItem.ItemRef["rendition:layout"] == "pre-paginated" && PrevItem.ItemRef["page-spread"] == PairBefore && ItemRef["page-spread"] == PairAfter) {
				Item.Pair = PrevItem;
				PrevItem.Pair = Item;
			}
		}
		if(Item.Pair) {
			var Spread = Item.Pair.Spread;
			var ItemBox = Spread.appendChild(sML.create("div", { className: "item-box" }));
		} else {
			var SpreadBox = sML.create("div", { className: "spread-box" });
			var Spread = SpreadBox.appendChild(sML.create("div", { className: "spread" }));
			var ItemBox = Spread.appendChild(sML.create("div", { className: "item-box" }));
			if(ItemRef["rendition:layout"] == "pre-paginated") sML.addClass(SpreadBox, "pre-paginated");
			Spread.SpreadBox = SpreadBox;
			Spread.Items = [];
			Spread.Pages = [];
			Spread.SpreadIndex = R.Spreads.length;
			R.Spreads.push(Spread);
			L.Fragments.push(document.createDocumentFragment().appendChild(SpreadBox));
		}
		if(ItemRef["page-spread"]) sML.addClass(ItemBox, "page-spread-" + ItemRef["page-spread"]);
		Item.Spread = Spread;
		Item.ItemBox = ItemBox;
		Item.Pages = [];
		Item.ItemIndexInSpread = Spread.Items.length; Spread.Items.push(Item);
		Item.ItemIndex         =      R.Items.length;      R.Items.push(Item);
		ItemBox.appendChild(Item)
	});
	setTimeout(function(){
		L.loadCoverImage();
	},1);
	setTimeout(function(){
		L.loadNavigation();
	},2);
}
L.loadCoverImage = function() {
	if(!R.CoverImage) {
		if(B.Package.Manifest["cover-image"].Path) {
			R.CoverImage = { Path: B.Package.Manifest["cover-image"].Path };
		} else {
			return;
		}
	}
	sML.create("img", {
		onload: function() {
			sML.style(C.Cartain.Cover, {
				backgroundImage: "url(" + this.src + ")",
				opacity: 1
			});
		}
	}).src = (function() {
		if(!B.Zipped){
			return "../bookshelf/" + B.Name + "/" + R.CoverImage.Path + "?cover-image";
		}else{
			if(A.FileURLs[R.CoverImage.Path]){
				return A.FileURLs[R.CoverImage.Path];
			}else if(A.binFiles[R.CoverImage.Path]){
				return A.binFiles[R.CoverImage.Path];
			}else {
				return "";
			}
		}         
	})();
}
L.loadNavigation = function() {
	if(B.Package.Manifest["nav"].Path) {
		R.Navigation = { Path: B.Package.Manifest["nav"].Path, Type: "NavigationDocument" };
	} else {
		if(B.Package.Manifest["toc-ncx"].Path) {
			R.Navigation = { Path: B.Package.Manifest["toc-ncx"].Path, Type: "TOC-NCX" };
		} else {
			return L.loadItems();
		}
	}
	var Document = L.requestDocument(R.Navigation.Path);

	if(R.Navigation.Type == "NavigationDocument") {
		sML.each(Document.querySelectorAll("nav"), function() { sML.each(this.querySelectorAll("*"), function() { this.removeAttribute("style"); }); C.Panel.Navigation.Item.appendChild(this); });
	} else {
		var TempTOCNCX = Document.getElementsByTagName("navMap")[0];
		sML.each(TempTOCNCX.getElementsByTagName("navPoint"), function() {
			sML.insertBefore(
				sML.create("a", { href: this.getElementsByTagName("content")[0].getAttribute("src"), innerHTML: this.getElementsByTagName("text")[0].innerHTML }),
				this.getElementsByTagName("navLabel")[0]
			);
			sML.removeElement(this.getElementsByTagName("navLabel")[0]);
			sML.removeElement(this.getElementsByTagName("content")[0]);
			var LI = sML.create("li");
			LI.setAttribute("id", this.getAttribute("id"));
			LI.setAttribute("playorder", this.getAttribute("playorder"));
			sML.insertBefore(LI, this).appendChild(this);
			if(!LI.previousSibling || !LI.previousSibling.tagName || /^a$/i.test(LI.previousSibling.tagName)) {
				sML.insertBefore(sML.create("ul"), LI).appendChild(LI);
			} else {
				LI.previousSibling.appendChild(LI);
			}
		});
		C.Panel.Navigation.Item.innerHTML = '<nav>' + TempTOCNCX.innerHTML.replace(/<(bibi_)?navPoint( [^>]+)?>/ig, "").replace(/<\/(bibi_)?navPoint>/ig, "") + '</nav>';
	}

	L.postprocessLinkage(R.Navigation.Path, C.Panel.Navigation.Item, "InBibiNavigation");

	delete Document;

	if(!X["pipi"]["wait"]){
		L.loadItems();
	} else {
		L.shutUpLoading();
		C.Cartain.createPlayButton({
			onplay: function() {
				L.loadItems();
			}
		});
		C.Cartain.Message.note('');
	}
}
L.loadItems = function() {
	L.Lazyloads = [];
	L.Lazyindex = -1;
	H = {};
	sML.style(O.HTML, { backgroundImage: "none" });
	sML.removeClass(O.HTML, "with-poster");
	R.resetStage();
	R.resetNavigation();
	R.ToRelayout = false;
	window.addEventListener("resize", L.listenResizingWhileLoading);

	var PageB = R.StageSize.Breadth - (S["item-padding-" + S.BASE.s] + S["item-padding-" + S.BASE.e]);
	var PageL = R.StageSize.Length  - (S["item-padding-" + S.BASE.b] + S["item-padding-" + S.BASE.a]);
	var PageGap = S["item-padding-" + S.BASE.a] + S["spread-gap"] + S["item-padding-" + S.BASE.b];

	if((S.SIZE.l == "width" && S["page-size-format"] == "portrait") || (S.SIZE.l == "height" && S["page-size-format"] == "landscape")){
		PageL = Math.floor(PageL*0.5)-PageGap-6;
	} 
	document.getElementById("epub-contents").style.display = "none";
	L.loadItem(0,R.Items,PageB,PageL,PageGap);
}
L.listenResizingWhileLoading = function() { R.ToRelayout = true; };
L.loadItem = function(itemidx,Items,PageB,PageL,PageGap) {
	var Item = Items[itemidx];
	var Path = Item.Path;
	Item.Loaded = false;
	if(/\.(x?html?|xml)$/i.test(Path)) {
		L.writeItemHTML(
						itemidx,
						Items,
						Item, 
						A.Files[Path],
						false,
						false,PageB,PageL,PageGap
						);
	} else if(/\.(svg)$/i.test(Path)) {
		Item.IsSVG = true;
		if(B.Zipped) {
			L.writeItemHTML(
				itemidx,
				Items,
				Item, 
				false, 
				'', 
				A.Files[Path].replace(/<\?xml-stylesheet (.+?)[ \t]?\?>/g, '<link rel="stylesheet" $1 />'),PageB,PageL,PageGap
				);
		} else {
			var URI = "../bookshelf/" + B.Name + "/" + Path;
			L.writeItemHTML(
				itemidx,
				Items,
				Item, 
				false, 
				'<base href="' + URI + '" />', 
				L.download(URI).responseText.replace(/<\?xml-stylesheet (.+?)[ \t]?\?>/g, '<link rel="stylesheet" $1 />'),PageB,PageL,PageGap
				);
		}
	} else if(/\.(gif|jpe?g|png)$/i.test(Path)) {
		Item.IsBitmap = true;
		L.writeItemHTML(
			itemidx,
			Items,
			Item, 
			false, 
			'', 
			'<img src="' + (B.Zipped ? A.FileURLs[Path] : "../bookshelf/" + B.Name + "/" + Path) + '" />',PageB,PageL,PageGap
			);
	} else if(/\.(pdf)$/i.test(Path)) {
		Item.IsPDF = true;
		L.writeItemHTML(
			itemidx,
			Items,
			Item, 
			false, 
			'', 
			'<iframe src="' + (B.Zipped ? A.FileURLs[Path] : "../bookshelf/" + B.Name + "/" + Path) + '" />',PageB,PageL,PageGap
			);
	}
}
L.writeItemHTML = function(itemidx,Items,Item, HTML, Head, Body,PageB,PageL,PageGap) {
	if(HTML){
		var hdoc = O.parser.parseFromString(HTML, 'text/html');
		var phead = hdoc.getElementsByTagName("head")[0];
		var pbody = hdoc.getElementsByTagName("body")[0];
	}else{
		var phead = document.createElement("head");
		var pbody = document.createElement("body");
		phead.innerHTML += Head;
		pbody.innerHTML = Body;
	}
	// sML.each(pbody.getElementsByTagName("link"), function() { phead.appendChild(this); });

	var ifrmelem = pbody.getElementsByTagName("iframe");
	var imgelem = pbody.getElementsByTagName("img");
	var svgelem = pbody.getElementsByTagName("svg");
	if((imgelem.length+svgelem.length) == 1) {
		if(svgelem.length == 1) {
			Item.SingleSVG = true;
		}else if(imgelem.length == 1) {
			Item.SingleIMG = true;
		}
	}
	var InnerText = pbody.textContent.replace(/[\r\n\s\t ]/g, "");
	if(!InnerText){	
		if(ifrmelem.length == 1) {
			Item.IsSingleFrameItem = true;
		}
		if(imgelem.length == 1) {
			Item.IsSingleImageItem = true;
		}
	}
	var ItemRef = Item.ItemRef;
	sML.each(phead.getElementsByTagName("meta"), function() { // META Viewport
		if(this.name == "viewport") {
			ItemRef["viewport"].content = this.getAttribute("content");
			if(ItemRef["viewport"].content) {
				var ViewportWidth  = ItemRef["viewport"].content.replace( /^.*?width=([^\, ]+).*$/, "$1") * 1;
				var ViewportHeight = ItemRef["viewport"].content.replace(/^.*?height=([^\, ]+).*$/, "$1") * 1;
				if(!isNaN(ViewportWidth) && !isNaN(ViewportHeight)) {
					ItemRef["viewport"].width  = ViewportWidth;
					ItemRef["viewport"].height = ViewportHeight;
				}
			}
		}
	});
	if(ItemRef["rendition:layout"] == "pre-paginated" && !(ItemRef["viewport"].width * ItemRef["viewport"].height)) { // If Fixed-Layout Item without Viewport
		if(Item.SingleSVG) {
			var ItemBodyChildren = pbody.getElementsByTagName("svg");
			if(ItemBodyChildren[0]){
				if(ItemBodyChildren[0].getAttribute("viewBox")) {
					ItemRef["viewBox"].content = ItemBodyChildren[0].getAttribute("viewBox");
					var ViewBoxCoords  = ItemRef["viewBox"].content.split(" ");
					if(ViewBoxCoords.length == 4) {
						var ViewBoxWidth  = ViewBoxCoords[2] * 1 - ViewBoxCoords[0] * 1;
						var ViewBoxHeight = ViewBoxCoords[3] * 1 - ViewBoxCoords[1] * 1;
						if(ViewBoxWidth && ViewBoxHeight) {
							ItemBodyChildren[0].setAttribute("width",  "100%");
							ItemBodyChildren[0].setAttribute("height", "100%");
							ItemRef["viewport"].width  = ItemRef["viewBox"].width  = ViewBoxWidth;
							ItemRef["viewport"].height = ItemRef["viewBox"].height = ViewBoxHeight;
						}
					}
				}
			}
		}
	}
	var ifrmscript = document.createElement("script") ;
	ifrmscript.type = 'text/javascript';
	if(!Item.IsSingleImageItem){
		if(S["spread-layout-axis"] === "horizontal"){
			var scrltmpL = "scroll" + S.SIZE.L;
			ifrmscript.textContent = "document.addEventListener('DOMContentLoaded',function(){"+
			"var ItemL = document.body['"+scrltmpL+"'];"+
			"var Pages = Math.ceil((ItemL + "+PageGap+") / ("+PageL+"+ "+PageGap+"));"+
			"ItemL = ("+PageL+" + "+PageGap+") * Pages - "+PageGap+";"+
			// "document.body.style['"+S.SIZE.l+"'] = ItemL+'px';"+
			"document.documentElement.style['"+S.SIZE.l+"'] = ItemL+'px';},true);";
		}else{

		}
	} else{
		ifrmscript.textContent = "document.addEventListener('DOMContentLoaded',function(){"+
			"var ItemL = "+PageL+";"+
			"var Pages = Math.ceil((ItemL + "+PageGap+") / ("+PageL+"+ "+PageGap+"));"+
			"ItemL = ("+PageL+" + "+PageGap+") * Pages - "+PageGap+";"+
			"document.documentElement.style['"+S.SIZE.l+"'] = "+PageL+"+'px';},true)";
	}
	phead.appendChild(ifrmscript);

	var SpreadBox = Item.Spread.SpreadBox;
	SpreadBox.style["margin" + S.BASE.B] = SpreadBox.style["margin" + S.BASE.A] = "";
	SpreadBox.style["margin" + S.BASE.E] = SpreadBox.style["margin" + S.BASE.S] = "auto";
	SpreadBox.style.padding = "";

	Item.onload = function() {
		Item.HTML = Item.contentDocument.getElementsByTagName("html")[0];
		Item.Body = Item.HTML.getElementsByTagName("body")[0];
		Item.Head = Item.HTML.getElementsByTagName("head")[0];
		L.postprocessItem(Item,itemidx,Items);
		setTimeout(function(){
			var atags = Item.Body.querySelectorAll("a");
			for (var i = 0; i < atags.length; i++) {
				atags[i].addEventListener("click",function(e){	
					L.clickLinkage(e);
				},true);
			};
		},500);
	};

	L.addCustomCSS(Item,phead,pbody,true,PageB,PageL,PageGap);
	L.postprocessLinkage(Item.Path, pbody);

	if(hdoc){
		var plinhtml = hdoc.getElementsByTagName("html")[0].outerHTML;
	}else{
		var plinhtml = phead.outerHTML+pbody.outerHTML;
	}
    var blob = new Blob([plinhtml], { "type" : "text/html" });
    var ifrmurl = window.URL.createObjectURL(blob);
    Item.setAttribute("src",ifrmurl);

	if(L.Fragmode === "all" || L.Fragmode === "split"){
		itemidx++;
		if(Items[itemidx]){
			L.loadItem(itemidx,Items,PageB,PageL,PageGap);
		}else{
			L.addFragment(Items)
		}
	}else{
		if(L.Fragments[itemidx]){
	    	R.Contents.appendChild(L.Fragments[itemidx]);
		}
	}
}
L.addFragment = function(Items){
	for (var i = 0; i < L.Fragments.length; i++) {
		var lfrgitem = L.Fragments[i];
		if(i % L.FragItems === 0){
			L.Lazyindex++;
			var frg = document.createDocumentFragment();
			frg.appendChild(lfrgitem);
			L.Lazyloads[L.Lazyindex] = frg;
		}else{
			L.Lazyloads[L.Lazyindex].appendChild(lfrgitem);
		}
	};
	for (var i = 0; i < L.Lazyloads.length; i++) {
		var lzyitem = L.Lazyloads[i];
	};
	L.Lazyindex = 0;
	L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
}
L.addCustomCSS = function(Item,phead,pbody,flg,PageB,PageL,PageGap){
	var itemstyle = Item.style;
	Item.ItemBox.style[S.SIZE.b] = PageB + ( S["item-padding-" + S.BASE.s] + S["item-padding-" + S.BASE.e] ) + "px";
	itemstyle["padding-" + S.BASE.b] = S["item-padding-" + S.BASE.b] + "px";
	itemstyle["padding-" + S.BASE.a] = S["item-padding-" + S.BASE.a] + "px";
	itemstyle["padding-" + S.BASE.s] = S["item-padding-" + S.BASE.s] + "px";
	itemstyle["padding-" + S.BASE.e] = S["item-padding-" + S.BASE.e] + "px";
	itemstyle[S.SIZE.b] = PageB + "px";
	itemstyle[S.SIZE.l] = PageL + "px";

	var stylefrg = document.createDocumentFragment();
	var style = document.createElement("style") ;
	style.setAttribute("class","_user_css__css");
	var singleflg = false;

	if(S["spread-layout-axis"] === "horizontal"){
		var htmlcss = 'html{'+
		S.SIZE.b+':'+PageB + "px;"+
		S.SIZE.l+':'+PageL + "px;"+
		'transform-origin: "";'+
		'transformOrigin: "";'+
		'column-width: "";'+
		'column-gap: "";'+
		'column-rule: "";'+
		'}';
	}
	if(Item.IsSingleFrameItem){
		singleflg = true;
		htmlcss += 'iframe{'+
			S.SIZE.b+':100%;'+
			S.SIZE.l+':100%;'+
		'}';
	}
	if(Item.IsSingleImageItem){
		singleflg = true;
		if(S["fit-images"]){
			htmlcss += "html{"+
				'transform-origin: "";'+
				'transformOrigin: "";'+
				'transform: "";'+
			'}';
		}
	}
	Item.Reflowable = (Item.ItemRef["rendition:layout"] != "pre-paginated" || !Item.ItemRef["viewport"][S.SIZE.b] || !Item.ItemRef["viewport"][S.SIZE.l]);
	if(!Item.SingleSVG&&!Item.SingleIMG&&Item.Reflowable){
		if(S["spread-layout-axis"] === "horizontal"){
			var bdcss = 'body{'+
				// S.SIZE.b+':'+PageB + "px;"+
				S.SIZE.l+':'+PageL + "px;"+
			'}';
			var bcss = document.createElement("style") ;
			bcss.type = 'text/css';
			bcss.textContent = bdcss;
			bcss.setAttribute("class","_user_css__css_body_size_recet");
			stylefrg.appendChild(bcss);
		}
	}
	if((S.SIZE.l == "width" && S["page-size-format"] == "portrait") || (S.SIZE.l == "height" && S["page-size-format"] == "landscape")){
		var mrstr = 'body{'+
			'margin:0 !important;'+
			'padding:0 !important;'+
		'}';
		var mreset = document.createElement("style") ;
		mreset.type = 'text/css';
		mreset.textContent = mrstr;
		mreset.setAttribute("class","_user_css__cssmarginreset");
		stylefrg.appendChild(mreset);
	}
	style.textContent = htmlcss;
	stylefrg.appendChild(style);
	if(L.modflag){
		var modstyle = document.createElement("style") ;
		modstyle.type = 'text/css';
		modstyle.textContent = L.modflag;
		modstyle.setAttribute("class","_user_css__cssfont");
		stylefrg.appendChild(modstyle);
	}
	if(L.modflag2){
		var modstyle2 = document.createElement("style") ;
		modstyle2.type = 'text/css';
		modstyle2.textContent = L.modflag2;
		modstyle2.setAttribute("class","_user_css__cssfontzoom");
		stylefrg.appendChild(modstyle2);
	}
	if(L.modflag3){
		var modstyle3 = document.createElement("style") ;
		modstyle3.type = 'text/css';
		modstyle3.textContent = L.modflag3;
		modstyle3.setAttribute("class","_user_css__cssfontfamily");
		stylefrg.appendChild(modstyle3);
	}
	phead.appendChild(stylefrg) ;
}
L.removeCustomCSS = function(){
	var ifrms = document.querySelectorAll("iframe");
	for (var i = 0; i < ifrms.length; i++) {
		var item = ifrms[i];
		var cccs = item.contentDocument.querySelector("._user_css__css");
		if(cccs){
			cccs.parentNode.removeChild(cccs);
		}
	};
}
L.clickLinkage = function(e){
	var chkprnt = function(elem){
		var prnt = elem.parentNode;
		if(prnt.tagName === "A"){
			A =  prnt;
		}else if(prnt.tagName === "BODY"){
			A = null;
		}else{
			arguments.callee(prnt);
		}
	};
	var A = e.srcElement;
	if(A.tagName !== "A"){
		chkprnt(A);
		if(!A){
			return
		}
	}
	var HrefPathInSource = A.getAttribute("href");
	var InBibiNavigation = A.getAttribute("data-bibi-InBibiNavigation");
	var NavAIndex = A.getAttribute("data-bibi-NavAIndex");
	var thisTarget = H[HrefPathInSource];

	if(!HrefPathInSource) {
		if(A.classList.contains("bibi-navigation-inactive-link")){
			e.preventDefault();
			e.stopPropagation();		
		}
	}else{
		if(R.Started) {
			if(!thisTarget) return false;
			if(InBibiNavigation == "InBibiNavigation") {
				e.preventDefault();
				e.stopPropagation();					
				var Target = thisTarget;
				C.Panel.toggle(function() { R.focus(Target); });
			}else {
				e.preventDefault();
				e.stopPropagation();	
				R.focus(thisTarget);
			}
		} else {
			e.preventDefault();
			e.stopPropagation();					
			C.Cartain.PlayButton.play(thisTarget, NavAIndex);
		}
	}
};
L.postprocessLinkage = function(FilePath, RootElement, InBibiNavigation) {
	var FileDir  = FilePath.replace(/\/?([^\/]+)$/, "");
	var FileName = FilePath.replace(/^.+?([^\/]+)$/, "$1");

	sML.each(RootElement.getElementsByTagName("a"), function(i) {
		var A = this;
		A.NavAIndex = i;
		A.setAttribute("data-bibi-NavAIndex", A.NavAIndex);
		var HrefPathInSource = A.getAttribute("href");
		if(!HrefPathInSource) {
			if(InBibiNavigation) {
				A.onclick = function() { return false; };
				sML.addClass(A, "bibi-navigation-inactive-link");
			}
			return;
		}
		if(/^[a-zA-Z]+:/.test(HrefPathInSource)) return A.setAttribute("target", "_blank");
		var HrefPath = O.getPath(FileDir, (!/^\.*\/+/.test(HrefPathInSource) ? "./" : "") + (/^#/.test(HrefPathInSource) ? FileName : "") + HrefPathInSource);
		var HrefFnH = HrefPath.split("#"), HrefFile = HrefFnH[0] ? HrefFnH[0] : FilePath, HrefHash = HrefFnH[1] ? HrefFnH[1] : "";
		sML.each(R.Items, function() {
			var rItem = this;
			if(HrefFile == rItem.Path) {
				A.setAttribute("data-bibi-original-href", HrefPathInSource);
				A.setAttribute("href", "bibi://" + B.Name + "/" + HrefPathInSource);
				A.InBibiNavigation = InBibiNavigation;
				A.Target = { Item: rItem, Element: (HrefHash ? "#" + HrefHash : null) };
				A.setAttribute("data-bibi-InBibiNavigation", InBibiNavigation);
				H["bibi://" + B.Name + "/" + HrefPathInSource] = A.Target;
				A.onclick = function(e) {					
					if(R.Started) {
						if(this.InBibiNavigation) {
							var Target = this.Target;
							sML.stopPropagation(e);
							C.Panel.toggle(function() { R.focus(Target); });
						}
						else R.focus(this.Target);
					} else {
						C.Cartain.PlayButton.play(this.Target, this.NavAIndex);
					}
					return false;
				};
				return;
			}
		});
		if(HrefHash && /^epubcfi\(.+\)$/.test(HrefHash)) {
			A.setAttribute("data-bibi-original-href", HrefPathInSource);
			A.setAttribute("href", "bibi://" + B.Name + "/#" + HrefHash);
			A.InBibiNavigation = InBibiNavigation;
			A.Target = O.getEPUBCFITarget(HrefHash);
			A.setAttribute("data-bibi-InBibiNavigation", InBibiNavigation);
			H["bibi://" + B.Name + "/#" + HrefHash] = A.Target;
			A.onclick = function(e) {
				if(!this.Target) return false;
				if(R.Started) {
					if(this.InBibiNavigation) {
						var Target = this.Target;
						sML.stopPropagation(e);
						C.Panel.toggle(function() { R.focus(Target); });
					}
					else R.focus(this.Target);
				} else {
					C.Cartain.PlayButton.play(this.Target, this.NavAIndex);
				}
				return false;
			};
		}
		if(InBibiNavigation && typeof  X["pipi"]["nav"] == "number" && i ==  X["pipi"]["nav"] && A.Target) X["bibi"].To = A.Target;
	});
}
L.postprocessItem = function(Item,itemidx,Items) {
	var ItemRef = Item.ItemRef;
	if(ItemRef["rendition:layout"] == "pre-paginated" && !(ItemRef["viewport"].width * ItemRef["viewport"].height)) { // If Fixed-Layout Item without Viewport
		if(Item.SingleIMG) {
			var ItemBodyChildren =  Item.Body.getElementsByTagName("img");
			if(ItemBodyChildren[0]){
				ItemRef["viewport"].width  = parseInt(getComputedStyle(ItemBodyChildren[0]).width);
				ItemRef["viewport"].height = parseInt(getComputedStyle(ItemBodyChildren[0]).height);
			}
		}
	}
	if(!R.ToRelayout) {
		R.resetItem(Item,true);
	}
	Item.contentWindow.addEventListener("keydown", C.listenKeys, false);
	Item.Loaded = true;

	if(L.Fragmode === "split"){
		L.LoadedItems--;
		if(L.LoadedItems === 0){
			L.Lazyindex++;
			if(L.Lazyindex === 1){
				setTimeout(function(){
					document.body.style.display = "";
					document.getElementById("epub-contents").style.display = "block";
					R.addPages(true);
					L.start();
				},120);
			}else if(L.appendPageIndex >= L.Lazyindex){
				if(L.Lazyloads[L.Lazyindex]){
					L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
					setTimeout(function(){
				    	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
					},L.FragItems*10);
				}
			}else{
				document.getElementById("epub-contents").style.display = "block";
				R.addPages();
				L.shutUpLoading();	
				R.Contents.style.opacity = 1;
				setTimeout(function(){
					var TargetPage = null;
					if(L.appendPointID){
						if(typeof L.appendPointID === "object"){
							TargetPage = L.appendPointID;
						}else{
							TargetPage = document.getElementById(L.appendPointID);
						}
					}else{
						TargetPage = R.Pages[L.TargetPageIndex];
					}
					setTimeout(function(){
						if(L.appendPointID){
							L.appendPointID = "";
						}
					},3000);
					R.layout({
						Target: TargetPage
					},function(){
						setTimeout(function(){
							L.appendingflag = false;
						},600);
					},true);

				},150);
			}
		}
	}else if(L.Fragmode === "all"){
		L.LoadedItems--;
		if(L.LoadedItems === 0){
			L.Lazyindex++;
			if(L.Lazyloads[L.Lazyindex]){
				L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
				setTimeout(function(){
			    	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
				},L.FragItems*10);
			}else{
				setTimeout(function(){
					document.body.style.display = "";
					document.getElementById("epub-contents").style.display = "block";
					R.addPages(true);
					L.start();
				},120);
			}
		}
	}else{
		itemidx++;
		if(Items[itemidx]){
			setTimeout(function(){
				L.loadItem(itemidx,Items,PageB,PageL,PageGap);
			},15);
		}else{
			setTimeout(function(){
				document.body.style.display = "";
				document.getElementById("epub-contents").style.display = "block";
				R.addPages(true);
				L.start();
			},120);
		}
	}
}
L.startedafter = function(){
	C.createArrows();
	sML.removeClass(O.HTML, "preparing");
	window.removeEventListener("resize", L.listenResizingWhileLoading);
	window.removeEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);

	sML.style(C.Switches.Panel, { display: "block" });
	sML.style(C.Arrows, { opacity: 1 });
	sML.style(C.Arrows.Forward, { opacity: 1 });
	if(X["bibi"].To) sML.style(C.Arrows.Back, { opacity: 1 });	
	window.removeEventListener("keydown", C.listenKeys, false);
	window.addEventListener("keydown", C.listenKeys, false);
	sML.style(R.Contents, {
		transition: "opacity 0.75s ease-in-out",
		opacity: 1
	});
	setTimeout(function() {
		C.Cartain.close(function() {
			setTimeout(function() {
				sML.each([C.Arrows.Back, C.Arrows.Forward], function() {
					sML.style(this, { opacity: "" });
				});
			}, 500);
		});
	}, 1);
	L.shutUpLoading();		
	window.addEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);
}
L.start = function(flg) {
	sML.removeClass(O.HTML, "preparing");
	L.shutUpLoading();		
	C.createArrows();
	R.layout({
		Target: (X["bibi"].To ? X["bibi"].To : "head")
	},function(){
		window.removeEventListener("resize", L.listenResizingWhileLoading);
		window.removeEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);
		window.removeEventListener("keydown", C.listenKeys, false);
		window.addEventListener("keydown", C.listenKeys, false);

		sML.style(C.Switches.Panel, { display: "block" });
		sML.style(C.Arrows, { opacity: 1 });
		sML.style(C.Arrows.Forward, { opacity: 1 });
		if(X["bibi"].To) sML.style(C.Arrows.Back, { opacity: 1 });	

		sML.style(R.Contents, {
			transition: "opacity 0.75s ease-in-out",
			opacity: 1
		});
		setTimeout(function() {
			C.Cartain.close(function() {
				setTimeout(function() {
					sML.each([C.Arrows.Back, C.Arrows.Forward], function() {
						sML.style(this, { opacity: "" });
					});
				}, 500);
			});
		}, 1);
		if(L.loadDBItem){
			setTimeout(function(){
				setTimeout(function(){
					L.loadDBItem = false;
				},1500);
				D.sendScrollPosition(L.fromDB,function(result){
					if(result&&result.xy&&result.xy.x > -1&&result.xy.y > -1){
						var scrcnt = 0;
						setTimeout(function(){
							window.scrollTo(result.xy.x-0,result.xy.y-0);
							scrcnt++;
							if(scrcnt < 8){
								R.storeScrollPosition();
								setTimeout(arguments.callee,200)
							}
						},200);
					}
				});
			},400);
		}else if(L.AutoBackupflag){
            setTimeout(function(){
                D.clearByEpubID("tmp",function(){
                    if(L.PreviousItem){
                        var coverimg = "No Title";
                        if(R.CoverImage&&R.CoverImage.Path){
                            coverimg = R.CoverImage.Path;
                        }
                        var bookobj= {
                            dbid:"tmp",
                            files:L.PreviousItem,
                            title:B.Package.Metadata["title"],
                            coverimg:coverimg
                        };
                        L.setEpubtoDB(bookobj);
                    }
                });
            },8000);
		}
		L.shutUpLoading();		
		window.addEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);
		R.Started = true;
	});
}
L.setEpubtoDB = function(bookobj,addflg,callback){
	if(bookobj.dbid&&bookobj.files&&bookobj.files.length > 0&&bookobj.title){
		var tmpflg = false;
		chrome.storage.local.get("___booklist__",function(result){
		    var bookidlist = result["___booklist__"];
	    	if(!bookidlist){
	    		bookidlist = [];
	    	}
	    	for (var i = 0; i < bookidlist.length; i++) {
	    		var item = bookidlist[i];
	    		if(item.dbid === "tmp"){
	    			tmpflg = true;
	    		}
	    	};
	    	var lclobj = {
	    		dbid:bookobj.dbid,
	    		title:bookobj.title
	    	};
	    	if(!tmpflg){
		    	bookidlist.push(lclobj);
	    	}
			var obj = {
				epubid:bookobj.dbid,
				files:bookobj.files,
				BName:bookobj.title,
				coverimg:bookobj.coverimg
			};
		    var info = document.getElementById("epubdbinfo");
		    if(!addflg){
		    	info.style.display = "block";
		    }
			D.create(obj,function(){
			    if(!addflg){
			    	info.style.display = "none";
				}else{
					L.shutUpLoading();		
				}
		        if(callback&&typeof callback == "function"){
		        	var seobj = {};
		        	seobj["___booklist__"] = bookidlist;
					chrome.storage.local.set(seobj,function(result){
			            callback();
			        });
		        }
			});
		});
	}else{
		L.shutUpLoading();		
	}
}

//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Manipuration

//----------------------------------------------------------------------------------------------------------------------------------------------

R.resetStage = function() {
	if(sML.OS.iOS && sML.UA.Sa) O.Body.style.height = S["spread-layout-direction"] == "ttb" ? "100%" : window.innerHeight + "px";
	R.StageSize = {
		Breadth: document.documentElement["client" + S.SIZE.B] - S["spread-margin-start"] - S["spread-margin-end"]/* - 35*/,
		Length:  document.documentElement["client" + S.SIZE.L] - S["spread-gap"] * 2
	}
	//R.Contents.style["padding" + S.BASE.B] = R.Contents.style["padding" + S.BASE.A] = S["spread-gap"] + "px";
	R.Contents.style["padding" + S.BASE.S] = R.Contents.style["padding" + S.BASE.E] = S["spread-margin-start"]/* + 35*/ + "px";
	R.Contents.style["background"] = S["book-background"];
	/*
	if(!R.Bar) R.Bar = document.body.appendChild(
		sML.create("div", {}, {
			position: "fixed",
			zIndex: 1000,
			left: 0,
			top: 0,
			width: "100%",
			height: "35px",
			background: "rgb(248,248,248)",
			background: "rgb(64,64,64)"
		})
	);
	*/
}
R.resetItem = function(Item,loadflg) {
	Item.Reset = false;
	Item.Reflowable = (Item.ItemRef["rendition:layout"] != "pre-paginated" || !Item.ItemRef["viewport"][S.SIZE.b] || !Item.ItemRef["viewport"][S.SIZE.l]);
	Item.Reflowable ? R.resetItem_Reflowable(Item,loadflg) : R.resetItem_PrePagenated(Item);
	Item.Reset = true;
}
R.shock = function(Item) {
	var Z = 0, H = Item.HTML, B = Item.Body;
	Z = H.clientWidth; Z = H.clientHeight; Z = H.scrollWidth; Z = H.scrollHeight; Z = H.offsetWidth; Z = H.offsetHeight;
	Z = B.clientWidth; Z = B.clientHeight; Z = B.scrollWidth; Z = B.scrollHeight; Z = B.offsetWidth; Z = B.offsetHeight;
	return;
	sML.each(Item.HTML.querySelectorAll("body>*"), function() {
		Item.Body.removeChild(this);
		Item.Body.appendChild(this);
	});
}
R.getItemInnerText = function(Item) {
	var InnerText = "InnerText";
	/**/ if(typeof Item.Body.innerText   != "undefined") InnerText = Item.Body.innerText;
	else if(typeof Item.Body.textContent != "undefined") InnerText = Item.Body.textContent;
	return InnerText.replace(/[\r\n\s\t ]/g, "");
}
R.resetItem_Reflowable = function(Item,loadingflg) {
	var ItemIndex = Item.ItemIndex, ItemRef = Item.ItemRef, ItemBox = Item.ItemBox, Spread = Item.Spread;
	Item.Pages = [];
	Item.scrolling = "no";
	var PageB = R.StageSize.Breadth - (S["item-padding-" + S.BASE.s] + S["item-padding-" + S.BASE.e]);
	var PageL = R.StageSize.Length  - (S["item-padding-" + S.BASE.b] + S["item-padding-" + S.BASE.a]);
	var PageGap = S["item-padding-" + S.BASE.a] + S["spread-gap"] + S["item-padding-" + S.BASE.b];

	if((S.SIZE.l == "width" && S["page-size-format"] == "portrait") || (S.SIZE.l == "height" && S["page-size-format"] == "landscape")){
		PageL = Math.floor(PageL*0.5)-PageGap-6;
		if(!loadingflg){
			Item.Body.style.margin = 0;
			Item.Body.style.padding = 0;
		}
	}else{
		if(!loadingflg || S["spread-layout-axis"] === "vertical"){
			var rmcss = document.getElementsByClassName("_user_css__cssmarginreset");
			if(rmcss&&rmcss.length > 0){
				rmcss[0].parentNode.removeChild(rmcss[0]);
			}
			Item.Body.style.margin = "";
			Item.Body.style.padding = "";
		}
	}
	var WordWrappingStyleSheetIndex = sML.CSS.addRule("*", "word-wrap: break-word;", Item.contentDocument);
	if(!loadingflg || (L.Fragmode === "split") || S["spread-layout-axis"] === "vertical"){
		sML.style(Item.HTML, { "column-width": "", "column-gap": "", "column-rule": "" });
		ItemBox.style[S.SIZE.b] = PageB + ( S["item-padding-" + S.BASE.s] + S["item-padding-" + S.BASE.e] ) + "px";
		var itemstyle = Item.style;
		itemstyle["padding-" + S.BASE.b] = S["item-padding-" + S.BASE.b] + "px";
		itemstyle["padding-" + S.BASE.a] = S["item-padding-" + S.BASE.a] + "px";
		itemstyle["padding-" + S.BASE.s] = S["item-padding-" + S.BASE.s] + "px";
		itemstyle["padding-" + S.BASE.e] = S["item-padding-" + S.BASE.e] + "px";
		itemstyle[S.SIZE.b] = PageB + "px";
		itemstyle[S.SIZE.l] = PageL + "px";
		Item.HTML.style[S.SIZE.b] = PageB + "px";
		Item.HTML.style[S.SIZE.l] = PageL + "px";

		var InnerText = Item.Body.textContent.replace(/[\r\n\s\t ]/g, "");
		Item.IsSingleImageItem = (!InnerText && Item.Body.getElementsByTagName("img"   ).length == 1); // textContent... mmm...
		Item.IsSingleFrameItem = (!InnerText && Item.Body.getElementsByTagName("iframe").length == 1); // textContent... mmm...	
		Item.Columned = false, Item.ColumnBreadth = 0, Item.ColumnLength = 0, Item.ColumnGap = 0;
		if(Item.IsSingleFrameItem) {
			var IFrame = Item.Body.getElementsByTagName("iframe")[0];
			IFrame.style[S.SIZE.b] = IFrame.style[S.SIZE.l] = "100%";
		}
		if(Item.IsSingleImageItem){
			if(S["fit-images"]) {
				sML.style(Item.HTML, {
					"transform-origin": "",
					"transformOrigin": "",
					"transform": ""
				});	
			}
		}
	}

	if(Item.IsSingleImageItem) {
		if(S["fit-images"]) {
			if(Item.HTML["scroll" + S.SIZE.B] > PageB || Item.HTML["scroll" + S.SIZE.L] > PageL) {
				var Scale = Math.floor(Math.min(PageB / Item.HTML["scroll" + S.SIZE.B], PageL / Item.HTML["scroll" + S.SIZE.L]) * 100) / 100;
				var TranslateX = (S.SIZE.B == "Width" ? PageB - Item.HTML["scroll" + S.SIZE.B] : PageL - Item.HTML["scroll" + S.SIZE.L]) / 2;
				sML.style(Item.HTML, {
					"transform-origin": "50% 0",
					"transformOrigin": "50% 0",
					"transform": "scale(" + Scale + ") translateX(" + TranslateX + "px)"
				});
			}else{
				resizeImage();
			}
		}
	} else {
		if(S["fit-images"] && S["fit-images"] != "in-single-image-only-item") {
			resizeImage();
		}

		if(S["book-display-mode"] == "each" || Item.HTML["scroll" + S.SIZE.B] > PageB){
			Item.HTML.style[S.SIZE.b] = PageB + "px";
			Item.Columned = true, Item.ColumnBreadth = PageB, Item.ColumnLength = PageL, Item.ColumnGap = PageGap;

			sML.style(Item.HTML, {
				"column-width": Item.ColumnLength + "px",
				"column-gap": Item.ColumnGap + "px",
				"column-rule": ""
			});

			// if(Item.HTML["scroll" + S.SIZE.B] > PageB) {
			// 	O.updateSetting({ "spread-layout-axis": S["spread-layout-axis"] == "vertical" ? "horizontal" : "vertical" });
			// 	R.ToRelayout = true;
			// 	return;
			// }
		}		
		if(S["page-breaking"]) {
			var PBR; // PageBreakerRulers
			if(Item.Body["offset" + S.SIZE.B] <= PageB) PBR = [(S.SLA == "vertical" ? "Top" : "Left"), window["inner" + S.SIZE.L]/*PageL*/, S.SIZE.L, S.SIZE.l, S.BASE.a];
			else                                        PBR = [(S.SLA == "vertical" ? "Left" : "Top"), /*window["inner" + S.SIZE.B]*/PageB, S.SIZE.B, S.SIZE.b, S.BASE.e];
			sML.each(Item.contentDocument.querySelectorAll("html>body *"), function() {
				var ComputedStyle = getComputedStyle(this);
				if(ComputedStyle.pageBreakBefore != "always" && ComputedStyle.pageBreakAfter != "always") return;
				if(this.BibiPageBreakerBefore) this.BibiPageBreakerBefore.style[PBR[3]] = "";
				if(this.BibiPageBreakerAfter)  this.BibiPageBreakerAfter.style[PBR[3]] = "";
				var E = this, BreakPoint = E["offset" + PBR[0]], Add = 0;
				while(E.offsetParent) E = E.offsetParent, BreakPoint += E["offset" + PBR[0]];
				if(S.SLD == "rtl") BreakPoint = window["innerWidth"] + BreakPoint * -1 - this["offset" + PBR[2]];
				if(ComputedStyle.pageBreakBefore == "always") {
					if(!this.BibiPageBreakerBefore) this.BibiPageBreakerBefore = sML.insertBefore(sML.create("span", { className: "bibi-page-breaker-before" }, { display: "block" }), this);
					Add = (PBR[1] - BreakPoint % PBR[1]); if(Add == PBR[1]) Add = 0;
					this.BibiPageBreakerBefore.style[PBR[3]] = Add + "px";
				}
				if(ComputedStyle.pageBreakAfter == "always") {
					BreakPoint += Add + this["offset" + PBR[2]];
					this.style["margin-" + PBR[4]] = 0;
					if(!this.BibiPageBreakerAfter) this.BibiPageBreakerAfter = sML.insertAfter(sML.create("span", { className: "bibi-page-breaker-after" }, { display: "block" }), this);
					Add = (PBR[1] - BreakPoint % PBR[1]); if(Add == PBR[1]) Add = 0;
					this.BibiPageBreakerAfter.style[PBR[3]] = Add + "px";
				}
			});
		}
	}
	if(S["spread-layout-axis"] === "horizontal"){
		Item.Body.style[S.SIZE.l] = "";
		Item.HTML.style[S.SIZE.l] = "";
		setTimeout(function(){
			var css = Item.HTML.getElementsByClassName("_user_css__css_body_size_recet");		
			if(css&&css.length > 0){
				css[0].parentNode.removeChild(css[0]);
			}
			Item.Body.style[S.SIZE.l] = "";
			Item.Body.style[S.SIZE.b] = "";		
		},1200);
	}else{
		Item.Body.style.margin = "1px";
		setTimeout(function(){
			Item.Body.style.margin = "";
		},1200);
	}
	sML.CSS.removeRule(WordWrappingStyleSheetIndex, Item.contentDocument);
	if(Item.IsSingleImageItem) var ItemL = PageL;
	else  var ItemL = Item.Body["scroll" + S.SIZE.L];
	var Pages = Math.ceil((ItemL + PageGap) / (PageL + PageGap));
	ItemL = (PageL + PageGap) * Pages - PageGap;
	var boxh = ItemL + (S["item-padding-" + S.BASE.b] + S["item-padding-" + S.BASE.a]);
	ItemBox.style[S.SIZE.l] = boxh + "px";
	Item.style[S.SIZE.l] = ItemL + "px";
	Item.HTML.style[S.SIZE.l] = ItemL + "px";
	resizeParent();

	if(loadingflg){
		setTimeout(function(){	
			//Chrome Bug
			if(Item.IsSingleImageItem) var ItemL = PageL;
			else  var ItemL = Item.Body["scroll" + S.SIZE.L];
			var Pages = Math.ceil((ItemL + PageGap) / (PageL + PageGap));
			ItemL = (PageL + PageGap) * Pages - PageGap;
			var boxh = ItemL + (S["item-padding-" + S.BASE.b] + S["item-padding-" + S.BASE.a]);
			ItemBox.style[S.SIZE.l] = boxh + "px";
			Item.style[S.SIZE.l] = ItemL + "px";
			Item.HTML.style[S.SIZE.l] = ItemL + "px";
			resizeParent(true);
		},20);
	}
	function resizeImage(){
		var bodycomp = getComputedStyle(Item.Body);
		sML.each(Item.Body.getElementsByTagName("img"), function() {
			var imgb = this["offset" + S.SIZE.B];
			var imgl = this["offset" + S.SIZE.L];
			var bodyb = parseInt(bodycomp[S.SIZE.b]);
			var bodyl = parseInt(bodycomp[S.SIZE.l]);
			if(bodyb < 2){
				bodyb = PageB;
			}
			if(bodyl < 2){
				bodyl = PageL;
			}
			var MaxB = Math.floor(Math.min(bodyb, PageB));
			var MaxL = Math.floor(Math.min(bodyl, PageL));

			if(imgb >= MaxB || imgl >= MaxL) {
				this.style.display = "inline-block";
				this.style.verticalAlign = "top";
				this.style.margin = 0;
				this.style.padding = 0;
				if(S["spread-layout-axis"] === "vertical"){
					if(imgl >= MaxL) {
						this.style[S.SIZE.l] = MaxL + "px";
						this.style[S.SIZE.b] = "auto";
					}
					imgb = this["offset" + S.SIZE.B];
					imgl = this["offset" + S.SIZE.L];
					if(imgb >= MaxB) {
						this.style[S.SIZE.b] =  MaxB+ "px";
						this.style[S.SIZE.l] = "auto";
					}
				}else{
					if(imgb >= MaxB || imgl >= MaxL){
						if(imgl >= MaxL) {
							this.style[S.SIZE.l] = MaxL + "px";
							this.style[S.SIZE.b] = "auto";
						}
						imgb = this["offset" + S.SIZE.B];
						imgl = this["offset" + S.SIZE.L];
						if(imgb >= MaxB) {
							this.style[S.SIZE.b] =  MaxB+ "px";
							this.style[S.SIZE.l] = "auto";
						}
					}
				}
			}
		});
	}
	function resizeParent(flg){
		if(!flg){
			var frgm = document.createDocumentFragment();
			for(var i = 0; i < Pages; i++) {
				(function(i){
					var Page = sML.create("span", { className: "page" });
					var Pagestyle = Page.style;
					Pagestyle["padding" + S.BASE.B] = S["item-padding-" + S.BASE.b] + "px";//S["spread-gap"] / 2 + "px";
					Pagestyle["padding" + S.BASE.A] = S["item-padding-" + S.BASE.a] + "px";//S["spread-gap"] / 2 + "px";
					Pagestyle["padding" + S.BASE.S] = S["item-padding-" + S.BASE.s] + "px";
					Pagestyle["padding" + S.BASE.E] = S["item-padding-" + S.BASE.e] + "px";
					Pagestyle[            S.SIZE.b] = PageB + "px";
					Pagestyle[            S.SIZE.l] = PageL + "px";
					Pagestyle[            S.BASE.b] = (PageL + PageGap) * i/* - S["spread-gap"]*/ + "px";
					Page.Item = Item, Page.Spread = Spread;
					Page.PageIndexInItem = Item.Pages.length;
					Item.Pages.push(Page);
					frgm.appendChild(Page);
				})(i);
			}
			ItemBox.appendChild(frgm);
		}
		var SpreadBox = Spread.SpreadBox;
		SpreadBox.style["margin" + S.BASE.B] = SpreadBox.style["margin" + S.BASE.A] = "";
		SpreadBox.style["margin" + S.BASE.E] = SpreadBox.style["margin" + S.BASE.S] = "auto";
		SpreadBox.style.padding = "";

		var SpreadBox = Spread.SpreadBox;
		if(Spread.Items.length == 1) {
			SpreadBox.style[S.SIZE.b] = Spread.style[S.SIZE.b] = Spread.Items[0].ItemBox.style[S.SIZE.b];
			SpreadBox.style[S.SIZE.l] = Spread.style[S.SIZE.l] = Spread.Items[0].ItemBox.style[S.SIZE.l];
		} else {
			SpreadBox.style.width  = Spread.style.width  = Math.ceil(        (parseFloat(Spread.Items[0].ItemBox.style.width) + parseFloat(Spread.Items[1].ItemBox.style.width) )) + "px";
			SpreadBox.style.height = Spread.style.height = Math.ceil(Math.max(parseFloat(Spread.Items[0].ItemBox.style.height), parseFloat(Spread.Items[1].ItemBox.style.height))) + "px";
		}
		return Item;
	}
}
R.resetItem_PrePagenated = function(Item) {
	var ItemIndex = Item.ItemIndex, ItemRef = Item.ItemRef, ItemBox = Item.ItemBox, Spread = Item.Spread;
	Item.Pages = [];
	Item.HTML.style.margin = Item.HTML.style.padding = Item.Body.style.margin = Item.Body.style.padding = 0;
	var PageB = R.StageSize.Breadth;
	var PageL = R.StageSize.Length;

	Item.style["padding" + S.BASE.B] = Item.style["padding" + S.BASE.A] = Item.style["padding" + S.BASE.S] = Item.style["padding" + S.BASE.E] = 0;
	if((S["spread-layout-direction"] == "ttb") && (ItemRef["page-spread"] == "right" || ItemRef["page-spread"] == "left")) {
		PageB = PageB / 2;
	}
	if(L.fitImage){
		var Scale = Math.min(
			PageB / ItemRef["viewport"][S.SIZE.b],
			PageL / ItemRef["viewport"][S.SIZE.l]
		);
	}else{
		var Scale = Math.min(
			Math.min(ItemRef["viewport"][S.SIZE.b], PageB) / ItemRef["viewport"][S.SIZE.b],
			Math.min(ItemRef["viewport"][S.SIZE.l], PageL) / ItemRef["viewport"][S.SIZE.l]
		);
	}
	PageL = Math.floor(ItemRef["viewport"][S.SIZE.l] * Scale);
	PageB = Math.floor(ItemRef["viewport"][S.SIZE.b] * (PageL / ItemRef["viewport"][S.SIZE.l]));
	Item.style[S.SIZE.l] = ItemBox.style[S.SIZE.l] = PageL + "px";
	Item.style[S.SIZE.b] = ItemBox.style[S.SIZE.b] = PageB + "px";
	sML.style(Item.HTML, {
		"width": ItemRef["viewport"].width + "px",
		"height": ItemRef["viewport"].height + "px",
		"transform-origin": "0 0",
		"transformOrigin": "0 0",
		"transform": "scale(" + Scale + ")"
	});
	var Page = ItemBox.appendChild(sML.create("span", { className: "page" }));
	if(ItemRef["page-spread"] == "right") Page.style.right = 0;
	else                                  Page.style.left  = 0;
	Page.style[S.SIZE.b] = PageB + "px";
	Page.style[S.SIZE.l] = PageL + "px";
	Page.Item = Item, Page.Spread = Spread;
	Page.PageIndexInItem = Item.Pages.length;
	Item.Pages.push(Page);

	var SpreadBox = Spread.SpreadBox;
	SpreadBox.style["margin" + S.BASE.B] = SpreadBox.style["margin" + S.BASE.A] = "";
	SpreadBox.style["margin" + S.BASE.E] = SpreadBox.style["margin" + S.BASE.S] = "auto";
	SpreadBox.style.padding = "";

	if(Spread.Items.length == 1) {
		SpreadBox.style[S.SIZE.b] = Spread.style[S.SIZE.b] = Spread.Items[0].ItemBox.style[S.SIZE.b];
		SpreadBox.style[S.SIZE.l] = Spread.style[S.SIZE.l] = Spread.Items[0].ItemBox.style[S.SIZE.l];
	} else {
		SpreadBox.style.width  = Spread.style.width  = Math.ceil(        (parseFloat(Spread.Items[0].ItemBox.style.width) + parseFloat(Spread.Items[1].ItemBox.style.width) )) + "px";
		SpreadBox.style.height = Spread.style.height = Math.ceil(Math.max(parseFloat(Spread.Items[0].ItemBox.style.height), parseFloat(Spread.Items[1].ItemBox.style.height))) + "px";
	}
	return Item;
}
R.resetPages = function(loadflg) {
	R.Pages.forEach(function(Page) {
		if(Page.parentNode){
			Page.parentNode.removeChild(Page);
			delete Page;
		}
	});	
	R.Pages = [];
	return R.Pages;
}
R.addPages = function(){
	R.Pages = [];
	R.Spreads.forEach(function(Spread) {
		Spread.Pages = [];
		Spread.Items.forEach(function(Item) {
			Item.Pages.forEach(function(Page) {
				Page.PageIndexInSpread = Spread.Pages.length; Spread.Pages.push(Page);
				Page.PageIndex         =      R.Pages.length;      R.Pages.push(Page);
			});
		});
	});
	return R.Pages;
}
R.resetNavigation = function() {
	sML.style(C.Panel.Navigation.Item, { float: "" });
	if(S.SLD == "rtl") {
		var theWidth = C.Panel.Navigation.Item.scrollWidth - window.innerWidth;
		if(C.Panel.Navigation.Item.scrollWidth < window.innerWidth) sML.style(C.Panel.Navigation.Item, { float: "right" });
		C.Panel.Navigation.ItemBox.scrollLeft = C.Panel.Navigation.ItemBox.scrollWidth - window.innerWidth;
	}
}
R.layoutSpread = function(Spread) {
	var SpreadBox = Spread.SpreadBox;
	var IsHeadSpread = IsFootSpread = false;
	if(S.BDM == "each") {
		IsHeadSpread = IsFootSpread = true;
	} else {
		IsHeadSpread = (Spread.SpreadIndex == 0);
		IsFootSpread = (Spread.SpreadIndex == R.Spreads.length - 1);
	}
	SpreadBox.style.padding = "";
	var PaddingBefore = PaddingAfter = (SpreadBox.offsetHeight < R.StageSize[S.SIZE.H]) ? Math.floor((R.StageSize[S.SIZE.H] - SpreadBox.offsetHeight) / 2) : 0;
	if(S.SLA == "vertical") {
		//      if(Spread.Items.length == 1 && Spread.Items[0].ItemRef["page-spread"] == "right") SpreadBox.style.paddingLeft  = Spread.offsetWidth + "px";
		// else if(Spread.Items.length == 1 && Spread.Items[0].ItemRef["page-spread"] == "left")  SpreadBox.style.paddingRight = Spread.offsetWidth + "px";
		     if(Spread.Items.length == 1 && Spread.Items[0].ItemRef["page-spread"] == "right") Spread.Items[0].ItemBox.style.float  = "right";
		else if(Spread.Items.length == 1 && Spread.Items[0].ItemRef["page-spread"] == "left")  Spread.Items[0].ItemBox.style.float = "left";
		     if(IsHeadSpread)                                           PaddingBefore += S["spread-gap"];
		else if(B.Package.Metadata["rendition:layout"] == "reflowable") PaddingBefore += S["spread-gap"];
		else                                                            PaddingBefore += Math.floor( R.StageSize.Length  / 4 - S["spread-gap"]);
		SpreadBox.style.paddingTop    = PaddingBefore ? PaddingBefore + "px" : "";
		SpreadBox.style.paddingBottom = PaddingAfter  ? PaddingAfter  + "px" : "";
	} else {
		if(IsHeadSpread) {
			PaddingBefore += Math.floor((R.StageSize.Length - SpreadBox["offset" + S.SIZE.L]) / 2);
			if(PaddingBefore < S["spread-gap"]) PaddingBefore = S["spread-gap"];
		}else if(B.Package.Metadata["rendition:layout"] == "reflowable") {
			PaddingBefore += S["spread-gap"];
		}else{                                  
			PaddingBefore += Math.floor(R.StageSize.Breadth / 2/* - S["spread-gap"]*/);
		}
		if(IsFootSpread) {
			PaddingAfter  += Math.ceil( (R.StageSize.Length - SpreadBox["offset" + S.SIZE.L]) / 2);
			if(PaddingAfter  < S["spread-gap"]) PaddingAfter  = S["spread-gap"];
		}
		SpreadBox.style["padding" + S.BASE.B] = PaddingBefore ? PaddingBefore + "px" : "";
		SpreadBox.style["padding" + S.BASE.A] = PaddingAfter  ? PaddingAfter  + "px" : "";		
	}
}

/*
R.layoutStage = function() {
	for(var L = R.Spreads.length, i = 0, StageLength = 0; i < L; i++) StageLength += R.Spreads[i].SpreadBox["offset" + S.SIZE.L];
	R.Contents.style[S.SIZE.l] = StageLength + "px";
}
*/
R.Relayouting = 0;
R.resizetimerid = null;
R.layout = function(Param,callbak) {
	R.Layouted = true;
	if(!Param) Param = {};
	if(!Param.Target) {
		var CurrentPage = R.getCurrentPages().Start;
		Param.Target = {
			ItemIndex: CurrentPage.Item.ItemIndex,
			PageProgressInItem: CurrentPage.PageIndexInItem / CurrentPage.Item.Pages.length
		}
	}
	if(Param.Setting) O.updateSetting(Param.Setting);

	if(Param.Reset || R.ToRelayout) {
		R.ToRelayout = false;
		R.resetStage();
		var itemslist = [],prntlist = [];
		R.resetPages();
		for(var SL = R.Spreads.length, SI = 0; SI < SL; SI++) {
			for(var IL = R.Spreads[SI].Items.length, II = 0; II < IL; II++) {
				var iitem = R.Spreads[SI].Items[II]
				var prntnd = iitem.parentNode;
				prntlist.push(prntnd);
				itemslist.push(iitem);
				iitem.style.display = "none";
			}
		}
		var precallback = function(){
			R.addPages();
			R.resetNavigation();
			Param.Target = R.getTarget(Param.Target);
			sML.each(R.Spreads, function() {
				R.layoutSpread(this);
			});
			R.focus(Param.Target, { Duration: 0, Easing: 0 });
			if(callbak&&typeof callbak == "function"){
				callbak();
				return S;
			}else{
				return S;
			}
		};
		var PageB = R.StageSize.Breadth - (S["item-padding-" + S.BASE.s] + S["item-padding-" + S.BASE.e]);
		var PageL = R.StageSize.Length  - (S["item-padding-" + S.BASE.b] + S["item-padding-" + S.BASE.a]);
		var PageGap = S["item-padding-" + S.BASE.a] + S["spread-gap"] + S["item-padding-" + S.BASE.b];

		if((S.SIZE.l == "width" && S["page-size-format"] == "portrait") || (S.SIZE.l == "height" && S["page-size-format"] == "landscape")){
			PageL = Math.floor(PageL*0.5)-PageGap-6;
		} 
		document.getElementById("epub-contents").style.display = "none";
		R.lazyresetItem(itemslist,0,precallback,Param,prntlist,PageB,PageL,PageGap);
	}else{
		Param.Target = R.getTarget(Param.Target);
		sML.each(R.Spreads, function() {
			R.layoutSpread(this);
		});
		R.focus(Param.Target, { Duration: 0, Easing: 0 });
		if(callbak&&typeof callbak == "function"){
			callbak();
			return S;
		}else{
			return S;
		}
	}
}
R.lazyresetItem = function(list,idx,precallback,Param,prntlist,PageB,PageL,PageGap) {
	if(R.ToRelayout){
		return R.layout(Param,callbak);
	}
	if(list[idx]){
		var Item = list[idx];
		Item.style.display = "";
		if(Item.HTML){
			Item.HTML[S.SIZE.b] = PageB+"px";
			if(Item.IsSingleImageItem) var ItemL = PageL;
			else  var ItemL = Item.Body["scroll" + S.SIZE.L];
			Item.HTML[S.SIZE.l] = ItemL+"px";
			R.resetItem(Item);
		}
		idx++;
		setTimeout(arguments.callee,25,list,idx,precallback,Param,prntlist,PageB,PageL,PageGap);
	}else{
		document.getElementById("epub-contents").style.display = "block";
		precallback();
	}
}
R.relayout = function(Setting, Timing) {
	window.removeEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);
	if(R.Relayouting) return;
	R.Relayouting++;
	var CurrentPages = R.getCurrentPages();
	var Target = CurrentPages.Start ? {
		ItemIndex: CurrentPages.Start.Item.ItemIndex,
		PageProgressInItem: CurrentPages.Start.PageIndexInItem / CurrentPages.Start.Item.Pages.length
	} : {
		ItemIndex: 0,
		PageProgressInItem: 0
	};
	setTimeout(function() {
		sML.style(R.Contents, { transition: "opacity 0.4s ease", opacity: 0 });
		setTimeout(function() {
			R.layout({
				Target: Target,
				Reset: true,
				Setting: Setting
			},function(){
				R.Relayouting--;
				if(!R.Relayouting) setTimeout(function() {
					sML.style(R.Contents, { transition: "opacity 0.4s ease", opacity: 1 });
				}, 100);
				window.addEventListener(O.SmartPhone ? "orientationchange" : "resize", R.onresize);
			});
		}, 100);
	}, (typeof Timing == "number" && Timing >= 0 ? Timing : 100));
}
R.onresize = function(){
	clearTimeout(R.resizetimerid)
	R.resizetimerid = setTimeout(function(){
		setTimeout(function(){
			O.storeWindowState();
		},10);
		R.relayout(null, (sML.OS.iOS || sML.OS.Android) ? 888 : 444);
	},800);
}
R.changePageSizeFormat   = function(PSF) { if(PSF != S.PSF) R.relayout({ "page-size-format"   : PSF }); }
R.getTarget = function(Target) {
	if(typeof Target == "string") Target = { Edge: Target };
	else if(typeof Target == "number") Target = { Item: R.Items[Target] };
	if(typeof Target != "object" || !Target) return null;
	if(Target.tagName) {
		TargetElement = Target, Target = {};
		if(typeof TargetElement.SpreadIndex == "number") Target.Item    = TargetElement.Items[0];
		else if(typeof TargetElement.ItemIndex   == "number") Target.Item    = TargetElement;
		else if(typeof TargetElement.PageIndex   == "number") Target.Page    = TargetElement;
		else                                                  Target.Element = TargetElement;
	}
	if(typeof Target.Edge == "string") {
		if(Target.Edge == "head") return { Edge: "head", EdgeTRBL: (S.SLD == "ttb" ? "T" : (S.SLD == "rtl" ? "R" : "L")), Item: R.Items[0],                  Page: R.Pages[0] };
		if(Target.Edge == "foot") return { Edge: "foot", EdgeTRBL: (S.SLD == "ttb" ? "B" : (S.SLD == "rtl" ? "L" : "R")), Item: R.Items[R.Items.length - 1], Page: R.Pages[R.Pages.length - 1] };
	}
	if(!Target.Item && typeof Target.ItemIndex == "number") Target.Item = R.Items[Target.ItemIndex];
	if(!L.appendingflag&&(L.Fragmode === "split")){
		if(Target.Item&&Target.Item.id){
			var elemid = Target.Item.id;

			for (var i = L.Lazyindex; i < L.Lazyloads.length; i++) {
				var item = L.Lazyloads[i];
				if(item.querySelector('#'+elemid)){
					var ifrm = item.querySelector('#'+elemid);
					L.appendPageIndex = i;
					L.appendPointID = Target;
					L.appendingflag = true;
					R.Contents.style.opacity = 0;
					L.sayLoading();
					L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
					document.getElementById("epub-contents").style.display = "none";
			    	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
					return;
				}
			};
		}
	}
	if(Target.Element) {
		if(Target.Element.tagName&&!Target.Item) {
			var elem = Target.Element.ownerDocument.body.Item;
			if(elem){
				Target.Item = elem;
			}
		} else if(typeof Target.Element == "string" && Target.Item) { // Selector	
			var elemid = Target.Element.replace(/\./g,"\\\.");
			var telem = Target.Item.contentDocument.querySelector(elemid);
			if(telem){
				Target.Element = telem;
			}
			if(!Target.Element) delete Target.Element;
		}
		if(!Target.Page){
			Target.Page = Target.Item.Pages[0];			
		}
	} else if(Target.Page) {
		Target.Item = Target.Page.Item;
	} else if(typeof Target.PageIndexInItem == "number" && Target.Item) {
		Target.Page = Target.Item.Pages[Target.PageIndexInItem];
	} else if(typeof Target.PageProgressInItem == "number" && Target.Item) {
		Target.Page = Target.Item.Pages[Math.floor(Target.Item.Pages.length * Target.PageProgressInItem)];
	} else if(typeof Target.PageIndex == "number") {
		Target.Page = R.Pages[Target.PageIndex];
		Target.Item = Target.Page.Item;
	}
	if(!Target.Item){
		return null;
	}
	if(!Target.Page){
		if(Target.Item&&Target.Item.Pages&&Target.Item.Pages.length > 0){
			Target.Page = Target.Item.Pages[0];
		}
	}
	return Target;
}
R.getCurrentPages = function() {
	var WindowCoord = sML.getCoord(window);
	var CurrentPages = [], CenterPage = null, Longest = 0, Nearest = WindowCoord[S.SIZE.l] / 2;
	for(var L = R.Pages.length, i = 0; i < L; i++) {
		if(R.Pages[i].style.display == "none") continue;
		var PageCoord = sML.getCoord(R.Pages[i]);
		var Length   = Math.min(WindowCoord[S.BASE.a] / R.Scale * S.AXIS.PM, PageCoord[S.BASE.a] * S.AXIS.PM) - Math.max(WindowCoord[S.BASE.b] / R.Scale * S.AXIS.PM, PageCoord[S.BASE.b] * S.AXIS.PM);
		var Distance = Math.abs((WindowCoord[S.BASE.b] / R.Scale + WindowCoord[S.BASE.a] / R.Scale) - (PageCoord[S.BASE.b] + PageCoord[S.BASE.a]));
		Length = (Length <= 0 || !PageCoord[S.SIZE.l] || isNaN(Length)) ? -1 : Math.round(Length / PageCoord[S.SIZE.l] * 100);
		     if(Length <  Longest) { if(!CurrentPages.length) continue; else break; }
		else if(Length == Longest) CurrentPages.push(R.Pages[i]);
		else if(Length  > Longest) CurrentPages[0] = R.Pages[i], Longest = Length;
		if(Distance < Nearest) CenterPage = R.Pages[i], Nearest = Distance;
	}
	return {
		All:    CurrentPages,
		Start:  CurrentPages[0],
		Center: CenterPage,
		End:    CurrentPages[CurrentPages.length - 1]
	};
}
R.getPageGroup = function(Target) {
	Target = R.getTarget(Target);
	var Next = (Target.Side == "a") ? -1 : +1;
	var Pages = [], Length = 0, Space = window["inner" + S.SIZE.L];
	var breakflg = false;

	for(var i = Target.Page.PageIndex; 0 <= i && i < R.Pages.length; i += Next) {
		if((Target.Item.IsPrePaginated && R.Pages[i].Spread != Target.Page.Spread)) break;
		if(Space - R.Pages[i]["offset" + S.SIZE.L] < 0) break;
		Pages.push(R.Pages[i]);
		if(S.SLD == "ttb" && R.Pages[i].Item.Pair && R.Pages[i].Item.Pair == Target.Page.Item) continue;
		var PageGap = (i < 0 ? S["spread-gap"] : 0);
		Space  -= R.Pages[i]["offset" + S.SIZE.L] + PageGap;
		Length += R.Pages[i]["offset" + S.SIZE.L] + PageGap;
		if(breakflg){
			break;
		}
	}
	var MarginBeforeGroup = Math.floor(Space / 2), MarginBeforePage = MarginBeforeGroup;
	if(Target.Side == "a") {
		Pages.reverse();
		MarginBeforePage += (Length - Target.Page["offset" + S.SIZE.L]);
	}
	return {
		Page:              Target.Page,
		Pages:             Pages,
		Length:            Length,
		MarginBeforeGroup: MarginBeforeGroup,
		MarginBeforePage:  MarginBeforePage
	};
}
R.focus = function(Target, ScrollOption) {
	if(R.Started){
		setTimeout(function(){
			R.storeScrollPosition();
		},400);
	}
	var FocusTarget = R.getTarget(Target); if(typeof FocusTarget != "object" || !FocusTarget) return false;
	if(FocusTarget.Edge) {
		var FocusPoint = /^[TL]$/.test(FocusTarget.EdgeTRBL) ? 0 : O.Body["scroll" + S.SIZE.L] - O.Body["client" + S.SIZE.L];
		O.scrollTo((S.SLD == "ttb" ? { Y: FocusPoint * R.Scale } : { X: FocusPoint * R.Scale }), ScrollOption);
		return false;
	}
	var Top_or_Left = (S.SLD == "ttb") ? ["Top", "Left"] : ["Left", "Top"];
	var E, FocusPoint, TextLocationTarget = { Element: FocusTarget.Element, TextNodeIndex: FocusTarget.TextNodeIndex, TermStep: FocusTarget.TermStep };

	if(FocusTarget.Element) {
		E = FocusTarget.Item.Pages[0];
		var ElementPoint = E["offset" + Top_or_Left[0]];
		while(E.offsetParent) E = E.offsetParent, ElementPoint += E["offset" + Top_or_Left[0]];
		E = FocusTarget.Element;              var OffsetInItem  = E["offset" + Top_or_Left[0]], OffsetInItemO  = E["offset" + Top_or_Left[1]];
		while(E.offsetParent) E = E.offsetParent, OffsetInItem += E["offset" + Top_or_Left[0]], OffsetInItemO += E["offset" + Top_or_Left[1]];
		if(sML.getCoord(FocusTarget.Element)[S.BASE.s] > FocusTarget.Item["offset" + S.SIZE.B] - S["item-padding-" + S.BASE.s] - S["item-padding-" + S.BASE.e]) {
			// Columned
			if(OffsetInItemO == 0) {
				OffsetInItem = 0;
			} else if(S.PPD != "rtl") {
				OffsetInItem = (FocusTarget.Item.ColumnLength + FocusTarget.Item.ColumnGap) * Math.floor(OffsetInItemO / FocusTarget.Item.ColumnBreadth) - (S["item-padding-" + S.BASE.b]);
			} else {
				OffsetInItem = (FocusTarget.Item.ColumnLength + FocusTarget.Item.ColumnGap) * Math.ceil( OffsetInItemO / FocusTarget.Item.ColumnBreadth) - (S["item-padding-" + S.BASE.a]);
			}
			if(S.SLD == "rtl") OffsetInItem = FocusTarget.Item["offsetWidth"] - OffsetInItem;
		} else {
			if(S.SLD == "rtl") OffsetInItem += FocusTarget.Element["offsetWidth"];
		}
		ElementPoint += S["item-padding-" + Top_or_Left[0].toLowerCase()] + OffsetInItem;
		// Find Nearest Page
		sML.each(FocusTarget.Item.Pages, function() {
			var PageBefore = sML.getCoord(this)[S.BASE.b];
			if((ElementPoint + 8) * S.AXIS.PM < PageBefore * S.AXIS.PM) return false;
			FocusPoint = PageBefore;
		});
		if(S.SLD == "rtl") FocusPoint += S["spread-gap"];
		else               FocusPoint -= S["spread-gap"];
		if(typeof TextLocationTarget.TextNodeIndex == "number") R.pointTextLocation(TextLocationTarget); // Colorize Target with Selection
	} else {
		if(!L.appendingflag&&(L.Fragmode === "split")){
			for (var i = L.Lazyindex; i < L.Lazyloads.length; i++) {
				var item = L.Lazyloads[i];
				var elemid = FocusTarget.Item.id;
				if(item.querySelector('#'+elemid)){
					L.appendPageIndex = i;
					L.appendPointID = elemid;
					L.appendingflag = true;
					R.Contents.style.opacity = 0;
					L.sayLoading();
					L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
					document.getElementById("epub-contents").style.display = "none";
			    	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
					return;
				}
			};
		}
		var FocusTargetPageGroup = R.getPageGroup(FocusTarget);
		E = FocusTargetPageGroup.Pages[0];
		FocusPoint = E["offset" + Top_or_Left[0]];
		while(E.offsetParent) E = E.offsetParent, FocusPoint += E["offset" + Top_or_Left[0]];
		if(S.SLD == "rtl") FocusPoint += Math.floor(FocusTargetPageGroup.Pages[0]["offset" + S.SIZE.L]);
		if(window["inner" + S.SIZE.L] > FocusTargetPageGroup.Pages[0]["offset" + S.SIZE.L]) {
			var PageMargin = Math.floor((window["inner" + S.SIZE.L] - FocusTargetPageGroup.Length) / 2);
			if(PageMargin > 0) FocusPoint -= PageMargin * S.AXIS.PM;
		}
	}
	if(S.SLD == "rtl") FocusPoint = FocusPoint - window["inner" + S.SIZE.L];
	O.scrollTo((S.SLD == "ttb" ? { Y:FocusPoint * R.Scale } : { X:FocusPoint * R.Scale }), ScrollOption);
	return false;
}
R.pointTextLocation = function(Target) {
	if(typeof Target.TextNodeIndex != "number") return;
	var TargetNode = Target.Element.childNodes[Target.TextNodeIndex];
	if(!TargetNode || !TargetNode.textContent) return;
	var Sides = { Start: { Node: TargetNode, Index: 0 }, End: { Node: TargetNode, Index: TargetNode.textContent.length } };
	if(Target.TermStep) {
		if(Target.TermStep.Preceding || Target.TermStep.Following) {
			Sides.Start.Index = Target.TermStep.Index, Sides.End.Index = Target.TermStep.Index;
			if(Target.TermStep.Preceding) Sides.Start.Index -= Target.TermStep.Preceding.length;
			if(Target.TermStep.Following)   Sides.End.Index += Target.TermStep.Following.length;
			if(Sides.Start.Index < 0 || TargetNode.textContent.length < Sides.End.Index) return;
			if(TargetNode.textContent.substr(Sides.Start.Index, Sides.End.Index - Sides.Start.Index) != Target.TermStep.Preceding + Target.TermStep.Following) return;
		} else if(Target.TermStep.Side && Target.TermStep.Side == "a") {
			Sides.Start.Node = TargetNode.parentNode.firstChild; while(Sides.Start.Node.childNodes.length) Sides.Start.Node = Sides.Start.Node.firstChild;
			Sides.End.Index = Target.TermStep.Index - 1;
		} else {
			Sides.Start.Index = Target.TermStep.Index;
			Sides.End.Node = TargetNode.parentNode.lastChild; while(Sides.End.Node.childNodes.length) Sides.End.Node = Sides.End.Node.lastChild;
			Sides.End.Index = Sides.End.Node.textContent.length;
		}
	}
	return sML.select(Sides);
}
R.page = function(Distance) {
	if(L.appendingflag){
		return;
	}
	if(Distance != -1) Distance = +1;
	var CurrentPages = R.getCurrentPages(), CurrentPage = Distance < 0 ? CurrentPages.Start : CurrentPages.End;
	if(CurrentPage){
		var TargetPageIndex = CurrentPage.PageIndex + Distance;
	}else{
		var TargetPageIndex = 0;
	}
	if(TargetPageIndex <                  0) return R.focus({ Edge: "head" });
	if(!L.appendingflag&&(L.Fragmode === "split") && (TargetPageIndex > R.Pages.length - 1)){
		if(L.Lazyloads[L.Lazyindex]){
			L.appendingflag = true;
			L.TargetPageIndex = TargetPageIndex;
			L.LoadedItems = L.Lazyloads[L.Lazyindex].querySelectorAll("iframe").length;
			L.sayLoading();
			// R.Contents.style.opacity = 0;
			document.getElementById("epub-contents").style.display = "none";
	    	R.Contents.appendChild(L.Lazyloads[L.Lazyindex]);
	    	return;
		}
	}
	if(TargetPageIndex > R.Pages.length - 1) return R.focus({ Edge: "foot" });
	var TargetPage = R.Pages[TargetPageIndex];
	if(S.SLA == "vertical" && TargetPage.Item.Pair) {
		if(CurrentPage.Item.Pair == TargetPage.Item) TargetPageIndex += (Distance > 0 ? +1 : -1);
	}
	if(S.SLA == "horizontal" && TargetPage.Item.Pair && window["inner" + S.SIZE.L] > TargetPage.Item[S.SIZE.L] * 2) {
		if(Distance < 0 && TargetPage.PageIndexInSpread == 0) TargetPage = TargetPage.Spread.Pages[1];
		if(Distance > 0 && TargetPage.PageIndexInSpread == 1) TargetPage = TargetPage.Spread.Pages[0];
	}
	var wCoord = sML.getCoord(window);
	/*
	if(S.BDM == "each" && TargetPage.Spread != CurrentPage.Spread) {
		return R.focus(TargetPage, { p:1, t:1 });
	}
	*/
	return R.focus({ Page: TargetPage, Side: (Distance > 0 ? "b" : "a") });
}
R.scroll = function(Distance) {
	if(Distance != -1) Distance = +1;
	var WindowCoord = sML.getCoord(window), ScrollTo = {};
	switch(S.SLD) {
		case "ttb": ScrollTo = { Y: WindowCoord.top  + (R.StageSize.Length + S["spread-gap"]) * Distance      }; break;
		case "ltr": ScrollTo = { X: WindowCoord.left + (R.StageSize.Length + S["spread-gap"]) * Distance      }; break;
		case "rtl": ScrollTo = { X: WindowCoord.left + (R.StageSize.Length + S["spread-gap"]) * Distance * -1 }; break;
	}
	return O.scrollTo(ScrollTo);
}
R.to = function(BibitoString) {
	return R.focus(O.getBibitoTarget(BibitoString));
}
R.Scale = 1;
R.zoom = function(Scale) {
	if(typeof Scale != "number" || Scale <= 0) Scale = 1;
	sML.style(R.Contents, {
		"transition": "0.25s ease",
		"transformOrigin":  S.SLD == "rtl" ? "100% 0" : "0 0",
		"transform-origin": S.SLD == "rtl" ? "100% 0" : "0 0"
	});
	if(Scale == 1) {
		O.HTML.style.overflow = "";
		sML.style(R.Contents, {
			"transform": ""
		});
	} else {
		sML.style(R.Contents, {
			transform: "scale(" + Scale + ")"
		});
		O.HTML.style.overflow = "auto";
	}
	R.Scale = Scale;
}
R.scrollTimerid = null;
R.storeScrollPosition = function () {
	clearTimeout(R.scrollTimerid);
	R.scrollTimerid = setTimeout(function(){
		var pos = {
			x:window.scrollX,
			y:window.scrollY
		};
		var obj = {
			xy:pos,
			epubid:L.fromDB
		};
		D.updateScrollPosition(obj);
	},1000);
	// epubid+"__epub__dbitem_META-INF/container.xml"

}


//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Controls

//----------------------------------------------------------------------------------------------------------------------------------------------

C.weaveCartain = function() {
	C.Cartain = O.Body.appendChild(
		sML.create("div", { id: "bibi-cartain",
			State: 1, // Translate: 240, /* % */ // Rotate: -48, /* deg */ // Perspective: 240, /* px */
			open: function(Cb) {
				if(this.State == 1) return (typeof Cb == "function" ? Cb() : this.State);
				this.State = 1;
				this.style.display = "block";
				this.style.zIndex = 100;
				sML.style(this, {
					transition: "0.5s ease-out",
					transform: "translate" + S.AXIS.XY + "(0)",
					opacity: 0.75
				}, function() {
					if(typeof Cb == "function") Cb();
				});
				return this.State;
			},
			close: function(Cb) {
				if(this.State == 0) return (typeof Cb == "function" ? Cb() : this.State);
				this.State = 0;
				this.Message.style.opacity = 0;
				sML.style(this, {
					transition: "0.5s ease-in",
					transform: "translate" + S.AXIS.XY + "(" + (S.AXIS.PM * -1 * 240) + "%)",
					opacity: 0
				}, function() {
					sML.style(this, {
						transition: "none",
						transform: "translate" + S.AXIS.XY + "(" + (S.AXIS.PM * 240) + "%)"
					});
					this.style.zIndex = 1;
					this.style.display = "none";
					if(typeof Cb == "function") Cb();
				});
				return this.State;
			},
			toggle: function(Cb) {
				return (this.State == 0 ? this.open(Cb) : this.close(Cb));
			}
		})
	);

	C.Cartain.Cover   = C.Cartain.appendChild(sML.create("div", { id: "bibi-cartain-cover" }));
	// C.Cartain.Mark    = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-mark",    className: "animate" }));
	C.Cartain.Mark    = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-mark",innerHTML:'<div class="circles"></div>'}));

	C.Cartain.Message = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-message", className: "animate" }));
	C.Cartain.Powered = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-powered", innerHTML: '' + O.getLogo({ Linkify: true }),}));
	C.Cartain.Cover   = C.Cartain.appendChild(sML.create("div", { id: "bibi-cartain-loadingcover" }));
///////////////////////
	C.Cartain.Powered2 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-lastepub",className: "bibi-cartain-lastepub" , innerHTML: '<span class="bibi-icon bibi-icon-recent bibi-icon-etc bibi-icon-etc" title="Recently read book"></span>',
		onclick: function() {
			L.getDBEpub("tmp");
		}
	}));
	C.Cartain.Powered5 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-books3",className: "bibi-cartain-lastepub" , innerHTML: '<a href="#openModal" id="showMainFontButton" class="modalbutton"><span class="bibi-icon bibi-icon-font bibi-icon-etc" title="Font Settings"></span></a>',
		onclick: function() {
		}
	}));
	C.Cartain.Powered3 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-books",className: "bibi-cartain-lastepub" , innerHTML: '<a href="#EpubModal" id="showBooksButton" class="modalbutton"><span class="bibi-icon bibi-icon-bookshelf bibi-icon-etc" title="Library"></span></a>',
		onclick: function() {
			O.showBookshelf();
	    }
	}));
	C.Cartain.Powered4 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-books2",className: "bibi-cartain-lastepub" , innerHTML: '<span class="bibi-icon bibi-icon-addepub bibi-icon-etc" title="Add to Library"></span>',
		onclick: function() {
			if(!this.Input) this.Input = this.appendChild(
				sML.create("input", { type: "file",
					onchange: function(e) {
						sML.edit(new FileReader(), {
							onload  : function(e) {
								L.preprocessAddDB(this.result);
							}
						}).readAsArrayBuffer(e.target.files[0]);
					}
				})
			);
			this.Input.click();
		}
	}));
	C.Cartain.Powered6 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-convert-img",className: "bibi-cartain-lastepub" , innerHTML: '<a href="#ConvertIMGModal" class="modalbutton"><span class="bibi-icon bibi-icon-convertimg bibi-icon-etc" title="JPEG to Epub Converter"></span></a>',
		onclick: function() {
		}
	}));
	C.Cartain.Powered7 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-convert-txt",className: "bibi-cartain-lastepub" , innerHTML: '<a href="#ConvertTXTModal" class="modalbutton"><span class="bibi-icon bibi-icon-converttxt bibi-icon-etc" title="Text to Epub Converter"></span></a>',
		onclick: function() {
		}
	}));
	C.Cartain.Powered8 = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-load-setting",className: "bibi-cartain-lastepub" , innerHTML: '<a href="#LoadSettingModal" class="modalbutton"><span class="bibi-icon bibi-icon-load-setting bibi-icon-etc" title="Settings"></span></a>',
		onclick: function() {
		}
	}));
	C.Cartain.PoweredAbout = C.Cartain.appendChild(sML.create("p",   { id: "bibi-cartain-about-info",className: "bibi-cartain-lastepub" , innerHTML: '<span class="bibi-icon bibi-icon-load-about bibi-icon-etc" title="About"></span>',
		onclick: function() {
			document.getElementById("aboutModal").style.display = "block";
		}
	}));
///////////////////////
	// for(var i = 1; i <= 8; i++) C.Cartain.Mark.appendChild(sML.create("span", { className: "dot" + i }));

	C.Cartain.createPlayButton = function(Param) {
		C.Cartain.PlayButton = C.Cartain.appendChild(
			sML.create("p", { id: "bibi-cartain-playbutton", title: (sML.OS.iOS || sML.OS.Android ? 'Tap' : 'Click') + ' to Open',
				play: function(To, NavAIndex) {
					if(O.SmartPhone) {
						var URI = location.href.replace(/&wait=[^&]+/g, "");
						if(typeof NavAIndex == "number") URI = [URI, 'pipi(nav:' + NavAIndex + ')'].join(/#/.test(URI) ? "," : "#");
						return window.open(URI);
					}
					if(To) X["bibi"].To = To;
					L.sayLoading();
					this.onclick = function() { return false; };
					sML.style(this, { opacity: 0, cursor: "default" });
					Param.onplay();
				},
				onclick: function(e) {
					this.play();
					sML.stopPropagation(e);
				}
			})
		);
		C.Cartain.PlayButton.innerHTML = '<span class="non-visual">' + C.Cartain.PlayButton.title + ' to Open</span>';
	}

	C.Cartain.createCatcher = function(Param) {
		C.Cartain.Catcher = C.Cartain.appendChild(
			sML.create("p", { id: "bibi-cartain-catcher", title: '',
				onclick: function() {

				}
			})
		);
		C.Cartain.Catcher.appendChild(
			sML.create("p", { id: "bibi-cartain-catcher-drop", title: 'Drop me an EPUB! or Click me!',
				onclick: function() {
					chrome.fileSystem.chooseEntry({'type': 'openFile'}, function(fileEntry) {
						if(fileEntry){
							fileEntry.file(function(file) {
								L.checkArchive(file);
							});
							chrome.fileSystem.getDisplayPath(fileEntry, function (displayPath){
								chrome.storage.local.get("_openfile_history",function(result){
								    var hlist = result["_openfile_history"];
								    if(!hlist){
								    	hlist = [];
								    }
									var fid = chrome.fileSystem.retainEntry(fileEntry);
								    var obj = {};
								    obj.name = fileEntry.name;
								    obj.path = displayPath;
								    obj.fid = fid;
								    for (var i = 0; i < hlist.length; i++) {
								    	var item = hlist[i];
								    	if(item.path === obj.path){
								    		var tmp = hlist.splice(i,1);
								    		break;
								    	}
								    };
								    if(hlist.length > 4){
								    	hlist.shift()
								    }
								    hlist.push(obj);

								    var sobj = {};
								    sobj["_openfile_history"] = hlist;
									chrome.storage.local.set(sobj);
								});
							});
						}
					});
				}
			})
		);
		var historycont = C.Cartain.Catcher.appendChild(
			sML.create("p", { id: "bibi-cartain-catcher-click"})
		);
		historycont.appendChild(
			sML.create("h4", { innerHTML:"Help"})
		);
		historycont.appendChild(
			sML.create("div", { className:"helpcontent",innerHTML:"j=Next, k=Previous, Space=Next"})
		);
		historycont.appendChild(
			sML.create("h3", { innerHTML:"History"})
		);
		var hisdiv = historycont.appendChild(
			sML.create("div", { id: "bibi-cartain-catcher-click-cont"})
		);
		O.HistoryFile(hisdiv);
	}
	C.Cartain.Message.note = function(Note) {
		C.Cartain.Message.innerHTML = Note;
		return Note;
	}
}
C.createPanel = function() {
	if(C.Panel) C.Panel.innerHTML = "";
	else C.Panel = O.Body.appendChild(
		sML.create("div", { id: "bibi-panel",
			State: 0,
			open: function(Cb) {
				if(this.State == 1) return (typeof Cb == "function" ? Cb() : this.State);
				this.State = 1;
				C.Switches.Panel.toggleState(this.State);
				sML.style(C.Panel, { transition: "0.2s ease-in" });
				sML.style(R.Contents, { transition: "0.2s ease-in" });
				sML.addClass(O.HTML, "panel-opened");
				setTimeout(function(){
					if(Cb){
						Cb();
					}
				}, 250);
				var toc = document.getElementById("toc");
				if(toc){
					var width = toc.scrollWidth;
					toc.parentNode.style.width = width+500+"px";
				}
				return this.State;
			},
			close: function(Cb) {
				if(this.State == 0) return (typeof Cb == "function" ? Cb() : this.State);
				this.State = 0;
				C.Switches.Panel.toggleState(this.State);
				sML.style(C.Panel, { transition: "0.2s ease-out" });
				sML.style(R.Contents, { transition: "0.2s ease-out" });
				sML.removeClass(O.HTML, "panel-opened");
				setTimeout(function(){
					if(Cb){
						Cb();
					}
				}, 250);
				return this.State;
			},
			toggle: function(Cb) {
				return (this.State == 0 ? this.open(Cb) : this.close(Cb));
			}
		})
	);

	C.Panel.Misc = C.Panel.appendChild(sML.create("div", { id: "bibi-panel-misc", innerHTML: O.getLogo({ Linkify: true }) }));
	C.Panel.Navigation         = C.Panel.appendChild(                   sML.create("div", { id: "bibi-panel-navigation" }));
	C.Panel.Navigation.ItemBox = C.Panel.Navigation.appendChild(        sML.create("div", { id: "bibi-panel-navigation-item-box", onclick: function() { C.Panel.toggle(); } }));
	C.Panel.Navigation.Item    = C.Panel.Navigation.ItemBox.appendChild(sML.create("div", { id: "bibi-panel-navigation-item" }));
	C.Panel.Menu = C.Panel.appendChild(sML.create("div", { id: "bibi-panel-menu" }));

	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////
	if(sML.UA.InternetExplorer < 12 || sML.UA.Opera < 15) return;
	if(sML.UA.Gecko) return;
	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////

	var Shape = {};
	Shape.Item     = '<span class="bibi-shape bibi-shape-item"></span>';
	Shape.Spread   = '<span class="bibi-shape bibi-shape-spread">' + Shape.Item + Shape.Item + '</span>';
	Shape.Spreads  = '<span class="bibi-shape bibi-shape-spreads">' + Shape.Spread + Shape.Spread + Shape.Spread + '</span>';
	Shape.SpreadsV = '<span class="bibi-shape bibi-shape-spreads-vertical">' + Shape.Spread + Shape.Spread + Shape.Spread + '</span>';
	Shape.SpreadsH = '<span class="bibi-shape bibi-shape-spreads-horizontal">' + Shape.Spread + Shape.Spread + Shape.Spread + '</span>';

	C.Panel.Menu["book-display-mode"] = C.Panel.Menu.appendChild(sML.create("ul", { id: "book-display-mode" }));
	C.Panel.Menu["book-display-mode"].Buttons = {
		"each": C.Panel.Menu["book-display-mode"].appendChild(
			sML.create("li", { className: "display-each", innerHTML: '<a href="#openModal" id="showModalButton"><span class="bibi-icon bibi-icon-fontsetting" title=""></span></a>'})
		),
		"all": C.Panel.Menu["book-display-mode"].appendChild(
			sML.create("li", { className: "display-all", innerHTML: '<span class="bibi-icon bibi-icon-all" title="Display All">' + Shape.Spreads + '</span>',
				onclick: function() {
					L.removeCustomCSS();
					C.Panel.toggle(function() {
						if("all" != S.BDM) {
							var RelayoutRecipe = { "book-display-mode" : "all" };
							RelayoutRecipe["spread-layout-axis"] =  S["spread-layout-axis"];
							R.relayout(RelayoutRecipe);
						}
					});
				}
			})
		),
		"each": C.Panel.Menu["book-display-mode"].appendChild(
			sML.create("li", { className: "display-each", innerHTML: '<span class="bibi-icon bibi-icon-each" title="Display Each">' + Shape.Spread + '</span>',
				onclick: function() {
					L.removeCustomCSS();
					C.Panel.toggle(function() {
						if("each" != S.BDM) {
							var RelayoutRecipe = { "book-display-mode" : "each" };
							R.relayout(RelayoutRecipe);
						}
					});
				}
			})
		)
	}
	C.Panel.Menu["spread-layout-axis"] = C.Panel.Menu.appendChild(sML.create("ul", { id: "spread-layout-axis" }));
	C.Panel.Menu["spread-layout-axis"].Buttons = {
		"vertical": C.Panel.Menu["spread-layout-axis"].appendChild(
			sML.create("li", { className: "layout-vertical", innerHTML: '<span class="bibi-icon bibi-icon-vertical" title="Layout Vertically">' + Shape.SpreadsV + '</span>',
				onclick: function() {
					L.removeCustomCSS();
					C.Panel.toggle(function() {
						C.setDefaultLayout("vertical");
						if("vertical" != S.SLA) R.relayout({ "spread-layout-axis" : "vertical" }); 
					});
				}
			})
		),
		"horizontal": C.Panel.Menu["spread-layout-axis"].appendChild(
			sML.create("li", { className: "layout-horizontal", innerHTML: '<span class="bibi-icon bibi-icon-horizontal" title="Layout Horizontally">' + Shape.SpreadsH + '</span>',
				onclick: function() {
					L.removeCustomCSS();
					C.Panel.toggle(function() {
						C.setDefaultLayout("horizontal");
						 if("horizontal" != S.SLA) R.relayout({ "spread-layout-axis" : "horizontal" }); 
					});
				}
			})
		)
	}
	sML.each(C.Panel.Menu.getElementsByClassName("bibi-icon"), function() { this.innerHTML = '<span class="non-visual">' + this.title + '</span>' + this.innerHTML; });
}
C.setDefaultLayout = function(mode){
	var opt = {};
	opt["_bibi_layout"] = mode;
	chrome.storage.local.set(opt);
}
C.createSwitches = function() {

	if(C.Switches) C.Switches.innerHTML = "";
	else           C.Switches = O.Body.appendChild(sML.create("div", { id: "bibi-switches" }, { "transition": "opacity 0.75s linear" }));

	var toggleState = function(State) {
		this.State = typeof State == "number" ? State : Math.abs(this.State - 1);
		var Language = B.Package.Metadata["languages"][0].split("-")[0];
		var Label = (Language && /^(ja)$/.test(Language) ? this.Labels[this.State][Language] + " / " : "") + this.Labels[this.State]["en"];
		this.title = Label;
		this.innerHTML = '<span class="non-visual">' + Label + '</span>';
		return this.State;
	}

	C.Switches.Panel = C.Switches.appendChild(
		sML.create("span", { className: "bibi-switch bibi-switch-panel",
			State: 0,
			Labels: [
				{ ja: 'メニューを開く',   en: 'Open Menu'  },
				{ ja: 'メニューを閉じる', en: 'Close Menu' }
			],
			toggleState: toggleState,
			onclick: function() { return C.Panel.toggle(); }
		})
	);
	C.Switches.Dbinfo = C.Switches.appendChild(sML.create("div", { id: "epubdbinfo",innerHTML:"Backup"}));

	if((function() {
		if(document.body.requestFullscreen       || document.body.requestFullScreen)       return true;
		if(document.body.webkitRequestFullscreen || document.body.webkitRequestFullScreen) return true;
		if(document.body.mozRequestFullscreen    || document.body.mozRequestFullScreen)    return true;
		if(document.body.msRequestFullscreen)                                              return true;
		return false;
	})()) {
		sML.addClass(O.HTML, "fullscreen-enabled");
		if(!O.WindowEmbeded) C.Switches.Fullscreen = C.Switches.appendChild(
			sML.create("span", { className: "bibi-switch bibi-switch-fullscreen",title: "Home",
				onclick: function() {
					O.storeWindowState(true);
				}
			})
		);
		chrome.tts.getVoices(function(voices) {
			if(voices&&voices.length > 0){
				if(!O.WindowEmbeded) C.Switches.Fullscreen = C.Switches.appendChild(
					sML.create("span", { className: "bibi-switch bibi-switch-speak",title: "Text To Speech",
						onclick: function() {
							TTSObject.stat(this);
						}
					})
				);
			}
	    });
	} else {
		sML.addClass(O.HTML, "fullscreen-not-enabled");
	}

	sML.each(C.Switches.getElementsByClassName("bibi-switch"), function() {});
}
C.createArrows = function() {
	if(C.Arrows) C.Arrows.innerHTML = "";
	else C.Arrows = O.Body.appendChild(
		sML.create("div", { id: "bibi-arrows" }, { transition: "opacity 0.75s linear", opacity: 0 })
	);
	C.Arrows.Back    =   C.Arrows.appendChild(sML.create("div", { title: "Back",    className: "bibi-arrow", id: "bibi-arrow-back",    onclick: function() { R.page(-1); } }));
	C.Arrows.Forward =   C.Arrows.appendChild(sML.create("div", { title: "Forward", className: "bibi-arrow", id: "bibi-arrow-forward", onclick: function() { R.page(+1); } }));
	sML.each([C.Arrows.Back, C.Arrows.Forward], function() {
		this.addEventListener("mouseover", function() { if(this.clickedTimer) clearTimeout(this.clickedTimer); sML.addClass(this, "shown"); });
		this.addEventListener("mouseout",  function() { sML.removeClass(this, "shown"); });
		this.addEventListener("click", function() {
			sML.addClass(this, "shown");
			var This = this;
			if(this.clickedTimer) clearTimeout(this.clickedTimer);
			this.clickedTimer = setTimeout(function() { sML.removeClass(This, "shown"); }, 500);
		});
	});
}
C.listenKeys = function(e) {
	if(!R.Started) return;
	var Window = (parent != window && parent.Bibi) ? parent : window;
	Window.C.KeyCode = e.keyCode;
	var Dir = null; //
	if(e.keyCode == 74){
		R.page(+1)
	}else if(e.keyCode == 75){
		R.page(-1)
	}else if(e.keyCode == 32){
		R.page(+1)
	}else if(S["spread-layout-direction"] == "ttb") switch(e.keyCode) {  case 37: Dir =  0; break;  case 38: Dir = -1; break;  case 39: Dir =  0; break;  case 40: Dir = +1; break;  }
	else if(S["spread-layout-direction"] == "ltr") switch(e.keyCode) {  case 37: Dir = -1; break;  case 38: Dir =  0; break;  case 39: Dir = +1; break;  case 40: Dir =  0; break;  }
	else if(S["spread-layout-direction"] == "rtl") switch(e.keyCode) {  case 37: Dir = +1; break;  case 38: Dir =  0; break;  case 39: Dir = -1; break;  case 40: Dir =  0; break;  }
	switch(Dir) {
		case -1: return Window.R.page(-1);
		case +1: return Window.R.page(+1);
		case  0: return Window.C.Panel.toggle();
	}
}


//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Setting

//----------------------------------------------------------------------------------------------------------------------------------------------


O.updateSetting = function(Setting) {
	if(typeof Setting != "object") return S;

	var PrevBDM = S.BDM, PrevSLA = S.SLA, PrevSLD = S.SLD, PrevPSF = S.PSF, PrevPPD = S.PPD;

	// Reset
	if(Setting.Reset) {
		for(var Property in S) delete S[Property];
		for(var Property in P) S[Property] = P[Property];
		S["page-progression-direction"] = B.Package.Spine["page-progression-direction"];
		if(S["page-progression-direction"] == "default") S["page-progression-direction"] = P["page-progression-direction"];
		delete Setting.Reset;
	}
	for(var Property in Setting) S[Property] = Setting[Property];

	// BackCompat
	if(sML.UA.InternetExplorer < 11 || sML.UA.Opera < 15) {
		S["book-display-mode"] = "all";
		S["spread-layout-axis"] = "vertical";
		S["page-size-format"] = "window";
	}
	if(sML.UA.Gecko) {
		S["book-display-mode"] = "all";
		S["spread-layout-axis"] = "vertical";
		S["page-size-format"] = "window";
	}

	// Spread Layout Axis
	if(S["spread-layout-axis"] == "auto")       S["spread-layout-axis"]      = B.Package.Spine["page-progression-direction"];
	if(S["spread-layout-axis"] == "default")    S["spread-layout-axis"]      = (B.Package.Metadata["rendition:layout"] == "pre-paginated") ? S["page-progression-direction"] : "vertical";
	if(S["spread-layout-axis"] != "vertical")   S["spread-layout-axis"]      = "horizontal";

	// Spread Layout Direction
	if(S["spread-layout-axis"] == "vertical")   S["spread-layout-direction"] = "ttb";
	if(S["spread-layout-axis"] == "horizontal") S["spread-layout-direction"] = S["page-progression-direction"] != "rtl" ? "ltr" : "rtl";

	// Shortening
	S.BDM = S["book-display-mode"];
	S.SLA = S["spread-layout-axis"];
	S.SLD = S["spread-layout-direction"];
	S.PPD = S["page-progression-direction"];
	S.PSF = S["page-size-format"];

	// Layout Dictionary
	if(S.SLA == "vertical") {
		/**/S.SIZE = { b: "width",  B: "Width",  l: "height", L: "Height", w: "breadth", W: "Breadth", h: "length",  H: "Length" };
		/**/S.AXIS = { XY: "Y",     YX: "X",     PM: +1 };
		if(S.PPD == "ltr") {
			S.BASE = { b: "top",    B: "Top",    a: "bottom", A: "Bottom", s: "left",    S: "Left",    e: "right",   E: "Right",  c: "center", m: "middle" };
		} else {
			S.BASE = { b: "top",    B: "Top",    a: "bottom", A: "Bottom", s: "right",   S: "Right",   e: "left",    E: "Left",   c: "center", m: "middle" };
		}
	} else {
		/**/S.SIZE = { b: "height", B: "Height", l: "width",  L: "Width",  w: "length",  W: "Length",  h: "breadth", H: "Breadth" };
		if(S.PPD == "ltr") {
			S.AXIS = { XY: "X",     YX: "Y",     PM: +1 };
			S.BASE = { b: "left",   B: "Left",   a: "right",  A: "Right",  s: "top",     S: "Top",     e: "bottom",  E: "Bottom", c: "middle", m: "center" };
		} else {
			S.AXIS = { XY: "X",     YX: "Y",     PM: -1 };
			S.BASE = { b: "right",  B: "Right",  a: "left",   A: "Left",   s: "top",     S: "Top",     e: "bottom",  E: "Bottom", c: "middle", m: "center" };
		}
	}

	// Root Class
	if(PrevBDM != S.BDM) { sML.replaceClass(O.HTML, "display-" + PrevBDM, "display-" + S.BDM ); }
	if(PrevSLA != S.SLA) { sML.replaceClass(O.HTML, "spread-"  + PrevSLA, "spread-"  + S.SLA ); }
	if(PrevSLD != S.SLD) { sML.replaceClass(O.HTML, "spread-"  + PrevSLD, "spread-"  + S.SLD ); }
	if(PrevPSF != S.PSF) { sML.replaceClass(O.HTML, "page-"    + PrevPSF, "page-"    + S.PSF ); }
	if(PrevPPD != S.PPD) { sML.replaceClass(O.HTML, "page-"    + PrevPPD, "page-"    + S.PPD ); }

	return S;

}


//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Extra (Hash / Queries / CFI)

//----------------------------------------------------------------------------------------------------------------------------------------------


O.readExtra = function() {

	O.EPUBCFI = BibiEPUBCFI;

	X = O.parseHash(), X["book"] = sML.getQueries()["book"];
	if(history.replaceState) history.replaceState(null, null, location.href.replace(/[\,#]pipi\([^\)]*\)$/g, ""));

	if(!X["book"]) {
		var PathFragments = location.pathname.split("/");
		var BibiFileName = PathFragments[PathFragments.length - 1];
		if(BibiFileName != "" && BibiFileName != "index.html") X["book"] = BibiFileName.replace(/\.html$/, "");
	}

	if(!X["bibi"]) {
		X["bibi"] = {};
	} else {
		X["bibi"] = { Data: X["bibi"] };
		sML.each(X["bibi"].Data.replace(" ", "").split(","), function() {
			var KnV = this.split(":"); if(!KnV[0]) return;
			if(!KnV[1]) {
				switch(KnV[0]) {
					case "all": case "each":                          KnV[1] = KnV[0], KnV[0] = "book-display-mode";  break;
					case "horizontal": case "vertical":               KnV[1] = KnV[0], KnV[0] = "spread-layout-axis"; break;
					case "window": case "portrait": case "landscape": KnV[1] = KnV[0], KnV[0] = "page-size-format";   break;
					default: return;
				}
			}
			switch(KnV[0]) {
				case "preset": KnV[1] = KnV[1].replace(/(\.js)?$/, ".js"); break;
				case "to":     KnV[1] = O.getBibitoTarget(KnV[1]); break;
				case "book-display-mode": case "spread-layout-axis": case "page-size-format": break;
				default: return;
			}
			X["bibi"][KnV[0]] = KnV[1];
		});
	}

	if(!X["pipi"]) {
		X["pipi"] = {};
	} else {
		X["pipi"] = { Data: X["pipi"] };
		sML.each(X["pipi"].Data.replace(" ", "").split(","), function() {
			var KnV = this.split(":"); if(!KnV[0]) return;
			if(!KnV[1]) {
				switch(KnV[0]) {
					case "wait":      KnV[1] = true, KnV[0] = "wait";      break;
					case "autostart": KnV[1] = true, KnV[0] = "autostart"; break;
					default: return;
				}
			}
			switch(KnV[0]) {
				case "wait": case "autostart": break;
				case "poster": KnV[1] = decodeURIComponent(KnV[1].replace("_BibiKakkoClose_", ")").replace("_BibiKakkoOpen_", "(")); break;
				case "nav": KnV[1] = KnV[1] * 1; break;
				default: return;
			}
			X["pipi"][KnV[0]] = KnV[1];
		});
	}

	X["pipi"]["wait"] = (!X["pipi"]["autostart"] && (X["pipi"]["wait"] || parent != window));

	if(X["pipi"]["poster"]) {
		sML.addClass(O.HTML, "with-poster");
		O.HTML.style.backgroundImage = "url(" + X["pipi"]["poster"] + ")";
	}

	if(!X["bibi"].To && X["epubcfi"]) X["bibi"].To = O.getEPUBCFITarget(X["epubcfi"]);

}
O.parseHash = function() {
	if(!location.hash) return {};
	var Hash = location.hash.replace(/^#/, ""), CurrentPosition = 0, Fragments = {};
	var parseFragment = function() {
		var Foothold = CurrentPosition, Label = "";
		while(/[a-z_]/.test(Hash.charAt(CurrentPosition))) CurrentPosition++;
		if(Hash.charAt(CurrentPosition) == "(") Label = Hash.substr(Foothold, CurrentPosition - 1 - Foothold + 1), CurrentPosition++; else return null;
		while(Hash.charAt(CurrentPosition) != ")") CurrentPosition++;
		Fragments[Label] = Hash.substr(Foothold, CurrentPosition - Foothold + 1).replace(/^[a-z_]+\(/, "").replace(/\)$/, "");
		CurrentPosition++;
	};
	(function() {
		parseFragment();
		while(Hash.charAt(CurrentPosition) == ",") {
			CurrentPosition++;
			parseFragment();
		}
	})();
	return Fragments;
}
O.getBibitoTarget = function(BibitoString) {
	if(typeof BibitoString == "number") BibitoString = "" + BibitoString;
	if(typeof BibitoString != "string" || !/^[1-9][0-9]*(-[1-9][0-9]*(\.[1-9][0-9]*)*)?$/.test(BibitoString)) return null;
	var ElementSelector = "", InE = BibitoString.split("-"), ItemIndex = parseInt(InE[0]), ElementIndex = InE[1] ? InE[1] : null;
	if(ElementIndex) sML.each(ElementIndex.split("."), function() { ElementSelector += ">*:nth-child(" + this + ")"; });
	return {
		BibitoString: BibitoString,
		ItemIndex: ItemIndex - 1,
		Element: (ElementSelector ? "body" + ElementSelector : null)
	};
}
O.getEPUBCFITarget = function(CFIString) {
	var CFI = O.EPUBCFI.parse(CFIString);
	if(!CFI || CFI.Path.Steps.length < 2 || !CFI.Path.Steps[1].Index || CFI.Path.Steps[1].Index % 2 == 1) return null;
	var ItemIndex = CFI.Path.Steps[1].Index / 2 - 1, ElementSelector = null, TextNodeIndex = null, TermStep = null, IndirectPath = null;
	if(CFI.Path.Steps[2] && CFI.Path.Steps[2].Steps) {
		ElementSelector = "";
		sML.each(CFI.Path.Steps[2].Steps, function(i) {
			if(this.Type == "IndirectPath") { IndirectPath = this; return false; }
			if(this.Type == "TermStep")     { TermStep     = this; return false; }
			if(this.Index % 2 == 1) {
				TextNodeIndex = this.Index - 1;
				if(i != CFI.Path.Steps[2].Steps.length - 2) return false;
			}
			if(TextNodeIndex === null) ElementSelector = this.ID ? "#" + this.ID : ElementSelector + ">*:nth-child(" + (this.Index / 2) + ")";
		});
		if(ElementSelector && /^>/.test(ElementSelector)) ElementSelector = "html" + ElementSelector;
		if(!ElementSelector) ElementSelector = null;
	}
	return {
		CFI: CFI,
		CFIString: CFIString,
		ItemIndex: ItemIndex,
		Element: ElementSelector,
		TextNodeIndex: TextNodeIndex,
		TermStep: TermStep,
		IndirectPath: IndirectPath
	};
}


//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Utilities

//----------------------------------------------------------------------------------------------------------------------------------------------


O.scrollTo = function(Goal, Param) {
	if(typeof Goal != "object" || (typeof Goal.X != "number" && typeof Goal.Y != "number")) return;
	if(typeof Param != "object") Param = {};
	Param.Duration = (typeof Param.Duration == "number" && Param.Duration >= 0) ? Param.Duration : 100;
	Param.Easing   = (typeof Param.Easing   == "number")                        ? Param.Easing   : 100;
	if(!Goal.Y)Goal.Y = 0;
	if(!Goal.X)Goal.X = 0;
	if(O.SrollingTimer) clearTimeout(O.SrollingTimer);
	(function(Start, Goal, Param) {
		var TimeProgress = ((new Date()).getTime() - Start.Time) / Param.Duration;
		if(TimeProgress >= 1) return window.scrollTo(Goal.X, Goal.Y);
		var Progress = TimeProgress + Param.Easing / 100 * (1 - TimeProgress) * TimeProgress;
		window.scrollTo(
			Math.round(Start.X + (Goal.X - Start.X) * Progress),
			Math.round(Start.Y + (Goal.Y - Start.Y) * Progress)
		);
		O.ScrollingTimer = setTimeout(arguments.callee, 10, Start, Goal, Param);
	})(
		{
			X: (document.body.scrollLeft || document.documentElement.scrollLeft || 0),
			Y: (document.body.scrollTop  || document.documentElement.scrollTop  || 0),
			Time: (new Date()).getTime()
		},
		Goal,
		Param
	);
}
O.getLogo = function(Setting) {
	return [
		'<', (Setting.Linkify ? 'a' : 'span'), ' class="bibi-logo"', (Setting.Linkify ? ' href="http://sarasa.la/bib/i" target="_blank" title="BiB/i | Web Site"' : ''), '>',
			'<span class="bibi-type-B">B</span>',
			'<span class="bibi-type-i">i</span>',
			'<span class="bibi-type-B">B</span>',
			'<span class="bibi-type-slash">/</span>',
			'<span class="bibi-type-i">i</span>',
		'</', (Setting.Linkify ? 'a' : 'span') , '>'
	].join("");
}
O.log = function(Lv, Message) {
	// if(!O.Log || !Message || typeof Message != "string") return;
	// O.showStatus(Message);
	// // if(Lv == 2) C.Cartain.Message.note(Message);
	//      if(Lv == 0) Message = "[ERROR] " + Message;
	// else if(Lv == 1) Message = "---------------- " + Message + " ----------------";
	// else if(Lv == 2) Message = Message;
	// else if(Lv == 3) Message = " - " + Message;
	// else if(Lv == 4) Message = "   . " + Message;
	// console.log('BiB/i: ' + Message);
}
O.showStatus = function(Message) {
	if(O.statusClearer) clearTimeout(O.statusClearer);
	O.statusClearer = setTimeout(function() { window.status = ""; }, 3210);
}
O.isBin = function(T) {
	return /\.(gif|jpe?g|png|ttf|otf|woff|mp[g34]|m4[av]|ogg|webm|pdf)$/i.test(T);
}
O.getPath = function() {
	return (function(Arguments) {
		for(var Path = Arguments[0], L = Arguments.length, i = 1; i < L; i++) Path += "/" + Arguments[i];
		return Path;
	})(arguments).replace(
		/\/\.\//g, "/"
	).replace(
		/[^\/]+\/\.\.\//g, ""
	).replace(
		/\/\//g, "/"
	).replace(
		/^\//, ""
	);
}
O.toBibiXML = function(XML) {
	return XML.replace(
		/<\?[^>]*?\?>/g, ""
	).replace(
		/<(\/?)([\w\d]+):/g, "<$1$2_"
	).replace(
		/<(\/?)(opf_)?([^!\?\/ >]+)/g, "<$1bibi_$3"
	).replace(
		/<([\w\d_]+) ([^>]+?)\/>/g, "<$1 $2></$1>"
	);
}
O.setFontSettings = function(){
	chrome.storage.local.get("____opt_color_",function(result){
	    var lcl = result["____opt_color_"];
		chrome.storage.local.get("___opt_zoom",function(result){
		    var zoomlcl = result["___opt_zoom"];
			var zoomval = 13,prezoomval = 13, fontchange = false;
			var fntval = "";
			var bgval = "";
		    var bgr = document.getElementById("bgredrange");
		    var bgg = document.getElementById("bggreenrange");
		    var bgb = document.getElementById("bgbluerange");
		    var fr = document.getElementById("fntredrange");
		    var fg = document.getElementById("fntgreenrange");
		    var fb = document.getElementById("fntbluerange");
		    var p = function () {
			    var cont = document.getElementById("samplecolorcontainer");
		        cont.style.background = "rgb(" + bgr.value + "," + bgg.value + "," + bgb.value + ")";
		        cont.style.color = "rgb(" + fr.value + "," + fg.value + "," + fb.value + ")";
		        bgval = "rgb(" + bgr.value + "," + bgg.value + "," + bgb.value + ")";
		        fntval = "rgb(" + fr.value + "," + fg.value + "," + fb.value + ")";
		    };
		    var chngtype = function(e){
		    	if(this.id === "select-nomal-font-setting"){
				    var cont = document.getElementById("samplecolorcontainer");
		    		document.getElementById("color-setting-container").style.display = "none";
		    		cont.style.background = "";
		    		cont.style.color = "";
		    	}else{
		    		p();
		    		document.getElementById("color-setting-container").style.display = "block";
		    	}
		    };
		    var chngzoom = function(e){
		    	if(this.id === "select-nomal-font-zoom"){
		    		document.getElementById("font-zoom-setting-container").style.display = "none";
			    	zoomval = -1;
		    	}else{
		    		document.getElementById("font-zoom-setting-container").style.display = "block";
			    	zoomval = document.getElementById("select-nomal-font-size").value;
		    	}
		    };
		    var chngzoomval = function(){
		    	zoomval = document.getElementById("select-nomal-font-size").value;
		    	document.getElementById("samplecolorcontainer").style.fontSize = this.value+"px";
		    };
		    var closesetting = function(){
		    	var that = this;
		    	this.style.display = "none";
		    	setTimeout(function(){
			      	var selelem = document.getElementById("select-nomal-font-setting");
			    	var zoomelem = document.getElementById("select-nomal-font-size");
			    	var zdefelem = document.getElementById("select-nomal-font-zoom");
				    var cont = document.getElementById("samplecolorcontainer");

				    if(bgval&&fntval){
				    	var optobj = {
				    		injectcss:true,
				    		background:bgval,
				    		color:fntval
				    	};
				    }else{
				    	selelem.checked = true;
				    }

				    var addclass = {},query = [];
			    	if(selelem.checked){
						chrome.storage.local.remove("____opt_color_");
						injectcss(optobj);
						addclass.color = null;
			    	}else{
			    		var cobj = {};
			    		cobj["____opt_color_"] = optobj;
						chrome.storage.local.set(cobj);
						injectcss(optobj,true);
						var css = '*{'+
							'background: '+optobj.background+' !important;'+  
						    'color: '+optobj.color+' !important;'+  
						'}';
						addclass.color = css;
					}

					query.push("style._user_css__cssfontzoom");
			    	if(zdefelem.checked){
						chrome.storage.local.remove("___opt_zoom");
			    	}else{
			    		var zobj = {};
			    		zobj["___opt_zoom"] = zoomelem.value;
						chrome.storage.local.set(zobj);
				    	if(!zdefelem.checked){
							var css = 'html,body{'+
								'font-size: '+zoomelem.value+'px;'+  
							'}';
						}
						addclass.size = css;
					}
					query.push("style._user_css__cssfont");
				    var elSel = document.getElementById("fontlistselect");
			    	if(!elSel.value){
						chrome.storage.local.remove("___font_family__");
			    	}else{
			    		var fobj = {};
			    		fobj["___font_family__"] = elSel.value;
						chrome.storage.local.set(fobj);
						var css = 'body{'+
							'font-family: "'+elSel.value+'";'+  
						'}';
						addclass.family = css;
					}
					query.push("style._user_css__cssfontfamily");

					injectiframecss(query,addclass)
			    	that.style.display = "";
					O.UserCSS();

					setTimeout(function(){
						if(C.Panel&&C.Panel.toggle){
							C.Panel.toggle(function(){
								if(zoomval != prezoomval || fontchange){
									prezoomval = zoomval;
									fontchange = false;
									setTimeout(function(){
										R.onresize();
									},600);
								}
							});
						}else{
							O.UserCSS();
						}
					},400);
			    },300);
		    };
		    var injectiframecss = function(query,addclass){
		    	var ifrms = document.querySelectorAll("iframe.item");
		    	for (var i = 0; i < ifrms.length; i++) {
		    		var ifrmitem = ifrms[i];
		    		var frg = document.createDocumentFragment();
		    		var ihead = ifrmitem.contentDocument.querySelector("head");
		    		var icss = ihead.querySelectorAll(query.join());
		    		for (var ii = 0; ii < icss.length; ii++) {
		    			var item = icss[ii];
		    			item.parentNode.removeChild(item);
		    		};

		    		if(Object.keys(addclass).length < 1){
		    			continue;
		    		}
		    		if(addclass.color){
			   			var style = document.createElement("style") ;
						style.type = 'text/css';
						style.setAttribute("class","_user_css__cssfont");
						style.textContent = addclass.color;
						frg.appendChild(style);
		    		}
		    		if(addclass.size){
			   			var style = document.createElement("style") ;
						style.type = 'text/css';
						style.setAttribute("class","_user_css__cssfontzoom");
						style.textContent = addclass.size;
						frg.appendChild(style);
		    		}
		    		if(addclass.family){
			   			var style = document.createElement("style") ;
						style.type = 'text/css';
						style.setAttribute("class","_user_css__cssfontfamily");
						style.textContent = addclass.family;
						frg.appendChild(style);
		    		}
					ihead.appendChild(frg);
		    	};
		    };
		    var injectcss = function(optobj,createflg){
		    	if(createflg){
					var css2 = 'iframe{'+
					    'background-color: '+optobj.background+' !important;'+
					    'color :'+optobj.color+' !important;'+
					'}';
				}
		    	var bodycss = document.querySelectorAll("style");
		    	for (var i = 0; i < bodycss.length; i++) {
		    		var item = bodycss[i];
					item.parentNode.removeChild(item);
		    	};
		    	if(createflg){
					var style2 = document.createElement("style") ;
					style2.type = 'text/css';
					style2.setAttribute("class","_user_css__cssfont");
					style2.textContent = css2;
					document.head.appendChild(style2);
				}
		    };
		    var createFontlist = function(){
				chrome.storage.local.get("_fontlist_",function(result){
				    var OFontList = result["_fontlist_"];
			    	if(OFontList&&OFontList.length > 0){
			    		document.getElementById("fontlist-maincontainer").style.display = "block";
			    		document.getElementById("font-family-setting-container").style.display = "block";

					    var elSel = document.getElementById("fontlistselect");
				        OFontList.forEach(function(item){
				            createSubGenres(item.displayName,item.fontId,elSel);
				        });
						chrome.storage.local.get("___font_family__",function(result){
						    var fntlstpos = result["___font_family__"];
					        if(fntlstpos){
					            elSel.value = fntlstpos;
					        }
						    elSel.addEventListener("change",function(){
						    	document.getElementById("samplecolorcontainer").style.fontFamily = "'"+this.value+"'";
						    	fontchange = true;
						    },false);
						});
						function createSubGenres(optv,optt,elSel){
						    var elOptNew = document.createElement("option");
						    elOptNew.text = optt;
						    elOptNew.value = optv;
						    elSel.add(elOptNew);
						}
					}
				});
		    };
			if(zoomlcl){
				document.getElementById("select-custom-font-zoom").checked = true;
				document.getElementById("font-zoom-setting-container").style.display = "block";
				document.getElementById("select-nomal-font-size").value = zoomlcl;
				prezoomval = zoomlcl;
			}else{
				document.getElementById("select-nomal-font-zoom").checked = true;
				document.getElementById("font-zoom-setting-container").style.display = "none";
			}
			if(lcl){
				document.getElementById("select-custom-font-setting").checked = true;
				document.getElementById("color-setting-container").style.display = "block";
		        var bgstr = lcl.background;
		        var hstr = lcl.color;
		        var rgbary = bgstr.split(",");
		        var frgbary = hstr.split(",");

		        bgr.value = parseInt(rgbary[0].substring(4),10);
		        bgg.value = parseInt(rgbary[1],10);
		        bgb.value = parseInt(rgbary[2].slice(0, -1),10);

		        fr.value = parseInt(frgbary[0].substring(4),10);
		        fg.value = parseInt(frgbary[1],10);
		        fb.value = parseInt(frgbary[2].slice(0, -1),10);
			}else{
				document.getElementById("select-nomal-font-setting").checked = true;
				document.getElementById("color-setting-container").style.display = "none";
			}
			p();
		    bgr.addEventListener("change", p, false);
		    bgg.addEventListener("change", p, false);
		    bgb.addEventListener("change", p, false);
		    fr.addEventListener("change", p, false);
		    fg.addEventListener("change", p, false);
		    fb.addEventListener("change", p, false);  
		    document.getElementById("select-nomal-font-setting").addEventListener("change", chngtype, false);
		    document.getElementById("select-custom-font-setting").addEventListener("change", chngtype, false);  
		    document.getElementById("select-nomal-font-zoom").addEventListener("change", chngzoom, false);
		    document.getElementById("select-custom-font-zoom").addEventListener("change", chngzoom, false);  
		    document.getElementById("select-nomal-font-size").addEventListener("change", chngzoomval, false);  
		    document.getElementById("closemodalWindow").addEventListener("click", closesetting, true);  
			zoomval = prezoomval;
			createFontlist();
		});
	});
}
O.showBookshelf = function(){
	var show = function(){
		document.getElementById("EpubModalContainer").style.height = parseInt(window.innerHeight*0.7)+"px";
		document.getElementById("EpubModalContainer").style.maxHeight = parseInt(window.innerHeight*0.7)+"px";
		chrome.storage.local.get("___booklist__",function(result){
		    var bookidlist = result["___booklist__"];
	    	if(bookidlist){
	    		if(bookidlist.length > 0){
	    			var epubids = []
	    			for (var i = 0; i < bookidlist.length; i++) {
	    				var item = bookidlist[i];
	    				var epubid = item.dbid+"__epub__dbitem_META-INF/container.xml";
	    				epubids.push(epubid)
	    			};
	    			D.getAllInfo(epubids,0,[],function(items){
	    				if(items.length > 0){
							create(items);
	    				}
	    			});
				}
	    	}
	    });
	};
	var create = function(items){;
		var coverlist = [],coveridx = 0;
		coverlist.push("cover/c0.png");
		coverlist.push("cover/c1.png");
		coverlist.push("cover/c2.jpg");
		coverlist.push("cover/c3.jpg");
		coverlist.push("cover/c4.jpg");

		var frg = document.createDocumentFragment();
		var mcont = document.getElementById("book-shelf-container");
		mcont.innerHTML = "";
		for (var i = items.length - 1; i >= 0; i--) {
			coveridx++
			if(!coverlist[coveridx]){
				coveridx = 0;
			}
			var item = items[i];
			frg.appendChild(createdom(item,i,coverlist,coveridx));
		}
		mcont.appendChild(frg);
	};
	var createdom = function(item,idx,coverlist,coveridx){
		var cont = document.createElement("li");
		cont.style.display = "block";
		cont.setAttribute("class","bookshelfitem");
		cont.setAttribute("id","bookshelfitemcont"+idx);

		var closeimg = document.createElement("img");
		cont.appendChild(closeimg);
		closeimg.setAttribute("src","res/close.png")
		closeimg.setAttribute("class","closeimgclass");
		closeimg.setAttribute("data-epubid",item.epubid);
		closeimg.addEventListener("click",clickclose,false);

		var capimg = document.createElement("img");
		cont.appendChild(capimg);
		capimg.setAttribute("class","bookshelfcover");
		capimg.setAttribute("id","img"+idx);

		if(item.coverimg&&item.coverimg.blob){
		    var imgurl = URL.createObjectURL(item.coverimg.blob);
			capimg.setAttribute("src",imgurl);
		}else{
			capimg.setAttribute("src",coverlist[coveridx]);
			var hover = document.createElement("div");
			cont.appendChild(hover);
			hover.appendChild(document.createTextNode(item.BName));
			hover.setAttribute("class","bookshelfhover");
		}
		capimg.setAttribute("data-epubid",item.epubid);
		capimg.addEventListener("click",clickimg,false);

		var head = document.createElement("div");
		cont.appendChild(head);
		head.appendChild(document.createTextNode(item.BName));
		head.setAttribute("class","bookshelftitle");
		return cont;
	};
	var clickclose = function(e){
		var rmcover = document.getElementById("removeInfoCover");
		rmcover.style.display = "block";
		var epubid = this.getAttribute("data-epubid");
		if(epubid){
			this.style.display = "none";
			this.parentNode.style.display = "none";
			chrome.storage.local.get("___booklist__",function(result){
			    var bookidlist = result["___booklist__"];
		    	if(bookidlist){
		    		for (var i = bookidlist.length - 1; i >= 0; i--) {
	    				var item = bookidlist[i];
	    				if(item.dbid === epubid){
	    					bookidlist.splice(i,1);
	    					break;
	    				}
	    			};
	    			var bklobj = {};
	    			bklobj["___booklist__"] = bookidlist;
					chrome.storage.local.set(bklobj);
		    	}
				D.clearByEpubID(epubid,function(){
					setTimeout(function(){
						rmcover.style.display = "none";
					},400);
				});
			});
		}
	};
	var clickimg = function(e){
		var epubid = this.getAttribute("data-epubid");
		if(epubid){
			document.getElementById("book-shelf-container").innerHTML = "";
			document.getElementById("close-epub-modal").click();
			setTimeout(function(){
				L.getDBEpub(epubid);
			},400);
		}
	};
	show();
}
O.LoadContentSetting = function(){
    var closesetting = function(){
    	if(document.getElementById("load-mode-all").checked){
    		L.Fragmode = "all";
    		L.FragItems = 6;
			chrome.storage.local.remove("_load_split");
    	}else{
    		L.Fragmode = "split";
    		L.FragItems = 10;
    		var dbobj = {};
    		dbobj["_load_split"] = "on";
			chrome.storage.local.set(dbobj);
    	}
    	if(document.getElementById("auto-backup-enable").checked){
    		L.AutoBackupflag = true;
    		var atobj = {};
    		atobj["_auto_backup_enable"] = "on";
			chrome.storage.local.set(atobj);
			document.getElementById("bibi-cartain-lastepub").style.display = "block";
    	}else{
    		L.AutoBackupflag = false;
			chrome.storage.local.remove("_auto_backup_enable");
			document.getElementById("bibi-cartain-lastepub").style.display = "none";
    	}
    	if(document.getElementById("fit-image-enable").checked){
    		L.fitImage = true;
    		var ftobj = {};
    		ftobj["_fit_image_enable_"] = "on";
			chrome.storage.local.set(ftobj);
    	}else{
    		L.fitImage = false;
			chrome.storage.local.remove("_fit_image_enable_");
    	}
	};
    document.getElementById("loadsettingclose").addEventListener("click", closesetting, true); 
	chrome.storage.local.get("_load_split",function(result){
	    var lodmod = result["_load_split"];
		if(lodmod){
			document.getElementById("load-mode-lazy").checked = true;
			L.Fragmode = "split";
			L.FragItems = 12;
		} 
		chrome.storage.local.get("_auto_backup_enable",function(result){
		    var atload = result["_auto_backup_enable"];
			if(atload){
				document.getElementById("auto-backup-enable").checked = true;
				document.getElementById("bibi-cartain-lastepub").style.display = "block";
				L.AutoBackupflag = true;
			}
			chrome.storage.local.get("_fit_image_enable_",function(result){
			    var atload = result["_fit_image_enable_"];
				if(atload){
					document.getElementById("fit-image-enable").checked = true;
					L.fitImage = true;
				}
			});
		});
	});
}
O.storeWindowState = function(reload){
	var wind = chrome.app.window.current()
	var wobj = {
		isMaximized:wind.isMaximized(),
		height:wind.outerBounds.height,
		width:wind.outerBounds.width,
		top:wind.outerBounds.top,
		left:wind.outerBounds.left
	};
	var obj = {};
	obj["_window_state"] = wobj;
	chrome.storage.local.set(obj,function(result){
		if(reload){
			chrome.runtime.getBackgroundPage(function (bg){
				bg.reloadWindow(wind);
			});	
		}
	});
}
O.HistoryFile = function(cont){
	chrome.storage.local.get("_openfile_history",function(result){
	    var hlist = result["_openfile_history"];
	    if(hlist){
	    	var cont = document.getElementById("bibi-cartain-catcher-click-cont");

	    	for (var i = hlist.length - 1; i >= 0; i--) {
	    		var item = hlist[i];
		    	var itemcont = document.createElement("div");
		    	cont.appendChild(itemcont);
		    	itemcont.setAttribute("class","historyItem");
		    	itemcont.textContent = item.name;
		    	itemcont.setAttribute("data-name",item.name);
		    	itemcont.setAttribute("data-path",item.path);
		    	itemcont.setAttribute("data-fid",item.fid);
		    	itemcont.index = i;
		    	itemcont.addEventListener("click",function(e){
		    		clickItem(e,hlist);
		    	},false);
	    	};
	    }
	});
	function clickItem(e,hlist){
		var elem = e.currentTarget;
		var name = elem.getAttribute("data-name");
		var path = elem.getAttribute("data-path");
		var fid = elem.getAttribute("data-fid");
		var indx = elem.index;
		hlist.splice(indx,1);
	    var obj = {};
	    obj.name = name;
	    obj.path = path;
	    obj.fid = fid;
	    hlist.push(obj);
	    var sobj = {};
	    sobj["_openfile_history"] = hlist;
		chrome.storage.local.set(sobj);
		chrome.fileSystem.restoreEntry(fid, function (isRestorable){
			if(isRestorable){
				chrome.fileSystem.restoreEntry(fid, function (fileEntry){
					fileEntry.file(function(file) {
						L.historyItemID = fid;
						L.checkArchive(file);
					});
				});
			}
		});
	}
}
O.createTTSTypeList = function(){
	chrome.tts.getVoices(function(voices) {
		if(!voices[0])return;
		var voiceslist = voices;
		var selid = voices[0].voiceName;
	    var elSel = document.getElementById("ttstypeselect");
	    var numinput = document.getElementById("speaking-speed");
        for (var i = 0; i < voices.length; i++) {
        	createSubGenres(voices[i].voiceName,voices[i].voiceName,elSel,i);
        	if(voices[i].lang&&voices[i].lang.indexOf(navigator.language) > -1){
        		selid = voices[i].voiceName;
        	}
        }
		chrome.storage.local.get("_tts_type",function(result){
		    var tts = result["_tts_type"];
	        if(tts){
	            elSel.value = tts;
	        }else{
		        elSel.value = selid;
	        }
	    	TTSObject.setVoice(voiceslist[elSel.selectedOptions[0].index]);
		});
		chrome.storage.local.get("_tts_speed",function(result){
		    var speed = result["_tts_speed"];
	        if(speed){
	        	numinput.value = speed-0;
		    	TTSObject.rate = numinput.value-0;
	        }
		});
	    numinput.addEventListener("change",function(e){
	    	if(0.1 < this.value-0 && 3.1 > this.value-0){
		    	TTSObject.rate = this.value-0;
	    		var obj = {};
	    		obj["_tts_speed"] = this.value;
				chrome.storage.local.set(obj);
			}
	    },false);
	    elSel.addEventListener("change",function(e){
	    	TTSObject.setVoice(voiceslist[e.srcElement.selectedOptions[0].index]);
    		var obj = {};
    		obj["_tts_type"] = this.value;
			chrome.storage.local.set(obj);
	    },false);
    });
	function createSubGenres(optv,optt,elSel,idx){
	    var elOptNew = document.createElement("option");
	    elOptNew.text = optt;
	    elOptNew.value = optv;
	    elOptNew.index = idx;
	    elSel.add(elOptNew);
	}
}
chrome.contextMenus.onClicked.addListener(function (info,tab){
	if(info.menuItemId.indexOf("_chrome_ctxmenu0") > -1){
		O.storeWindowState(true);
	}
});
O.sendMessageExternalID = "nekojphbejhlpgdkacijegncaajchhfb";
chrome.runtime.sendMessage(O.sendMessageExternalID,"getfont",function(resp){});
chrome.runtime.sendMessage("kpicnocpchcoefkhhfchhiapibcbdbad","getfont",function(resp){});
chrome.runtime.onMessageExternal.addListener(function(msg,sender,sendResponse){
	if(msg&&sender.id === O.sendMessageExternalID){
		var fontlist = JSON.parse(msg);
		if(fontlist&&fontlist.length > 1&&fontlist[0].fontId){
		    var sobj = {};
		    sobj["_fontlist_"] = fontlist;
			chrome.storage.local.set(sobj);
		}
	}else if(msg&&sender.id === "kpicnocpchcoefkhhfchhiapibcbdbad"){
		var fontlist = JSON.parse(msg);
		if(fontlist&&fontlist.length > 1&&fontlist[0].fontId){
		    var sobj = {};
		    sobj["_fontlist_"] = fontlist;
			chrome.storage.local.set(sobj);
		}
	}
});
O.ContentTypeList = {
	"image/gif"             :   /\.gif$/i,
	"image/png"             :   /\.png$/i,
	"image/jpeg"            : /\.jpe?g$/i,
	"image/svg+xml"         :   /\.svg$/i,
	"font/truetype"         :   /\.ttf$/i,
	"font/opentype"         :   /\.otf$/i,
	"font/woff"             :  /\.woff$/i,
	"text/css"              :   /\.css$/i,
	"text/javascript"       :    /\.js$/i,
	"text/html"             : /\.html?$/i,
	"application/xhtml+xml" : /\.xhtml$/i,
	"application/xml"       :   /\.xml$/i,
	"application/pdf"       :   /\.pdf$/i
};


//==============================================================================================================================================
//----------------------------------------------------------------------------------------------------------------------------------------------

//-- Ready?

//----------------------------------------------------------------------------------------------------------------------------------------------
sML.ready(O.welcome);


