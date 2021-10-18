/*  
		Simple EPUB Reader based on BiB/i
	    	BiB/i by @satorumurmur
        		http://sarasa.la/bib/i/

    	Licensed under the MIT license
        	http://opensource.org/licenses/mit-license.php

		Modified work Copyright
			Kunihiro Ando
        		senna5150ando@gmail.com
        		2014-11-20T18:17:51Z  
*/

Txt2EPUB = {
	mode:"v",
	file:null,
	name:"NoTitle",
	verticalmode:true,
	addflg:false,
	clbk:null,
	eclbk:null,
	alltext:"",
	blockcontflag:false,
	openFile:function(infoobj,mode){
		var name = infoobj.name;
		if(name.indexOf(".") > -1){
			var nname = name.split(".");
			name = nname[nname.length-2];
		}
		if(!name){
			name = "txtepub";
		}
		this.mode = mode;
		this.file = infoobj.file
		this.name = name;
		this.addflg = infoobj.addflg;
		this.clbk = infoobj.callback;
		this.eclbk = infoobj.ecallback;
		this.preprocess(infoobj.file,false);
	},
	preprocess:function(file,flderflg){
		var that = this;
	    var filetype = file.type;
        var reader = new FileReader();  
        reader.onload = function(e) {  
            var txt = e.target.result;
			var uInt8Array = new Uint8Array(txt);
            var txttype = Encoding.detect(uInt8Array)
            if(txttype === 'SJIS'){
				openfile(file,'shift-jis');
			}else if(txttype === 'EUCJP'){
				openfile(file,'euc-jp');
			}else if(txttype === 'UTF-8'){
				openfile(file,'utf-8');
            }else{
				openfile(file);
            }
        }
        reader.readAsArrayBuffer(file);
        function openfile(file,charcode){
		    var fr = new FileReader();
		    fr.onload = function () {
		        var str = fr.result;
		        if(filetype === "text/html"){
		        	that.checkHTML(str)
		        }else{
		        	that.checkText(str)
		        }
		    };
		    if(charcode){
		        fr.readAsText(file,charcode);
		    }else{
		        fr.readAsText(file);
		    }
        }
	},
	checkHTML:function(str){
		var that = this;
		var parser = new DOMParser();
		var doc = parser.parseFromString(str, "text/html");
		var alltxt = getAllText(doc);
		this.createEPUB(alltxt);
		function getAllText(doc){
			var wikiflg = false;
			that.alltext = "";
	    	that.blockcontflag = false;
			var scrs = doc.querySelectorAll("script,style,link");
			for (var i = scrs.length - 1; i >= 0; i--) {
				var item = scrs[i];
				if(!wikiflg&&item.href&&(item.href.indexOf(".wikimedia.org/") > -1)){
					wikiflg = true;
				}
				item.parentNode.removeChild(item);
			};
			if(wikiflg){
				var susps = doc.querySelectorAll("sup");
				for (var i = susps.length - 1; i >= 0; i--) {
					susps[i].parentNode.removeChild(susps[i]);
				}
			}
			textNodesUnder(doc.body);
			var stxt = that.alltext;
			stxt = stxt.replace(/(<br \/>){4,}/gm,"<br /><br /><br />").replace(/\&nbsp\;/g, " ");
			return stxt;
		}
		function textNodesUnder(node){
			for (node=node.firstChild;node;node=node.nextSibling){
				if (node.nodeType === 3&&node.nodeValue){
					var txt = node.nodeValue;
					if(node.parentNode&&(node.parentNode.tagName === "SCRIPT" || node.parentNode.tagName === "NOSCRIPT" || node.parentNode.tagName === "STYLE")){
						txt = "";
					}else{
						txt = "<span>"+txt.replace(/&/g, "&amp;").replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;")+"</span>";
					}
				    that.alltext += txt;
				}else{
					var nodetagname = node.tagName;
					if(nodetagname){
					    if(/^br$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^h\d$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^address$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^blockquote$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^center$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^div$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^dl$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^fieldset$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^form$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^hr$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^noframes$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^noscript$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^ol$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^p$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^pre$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^table$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
						}else if(/^ul$/i.test(nodetagname)) {
					    	that.alltext += "<br />";
					    }	
					}
					textNodesUnder(node);
				}
			}
			return;
		}
	},
	checkText:function(str){
		str = str.replace(/&/g, "&amp;").replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;");
		str = str.replace(/(\r\n|\n|\r)/gm,"\r\n");
		strs = str.split("\r\n");
		for (var i = 0; i < strs.length; i++) {
			strs[i] = "<span>"+strs[i]+"</span>";
		};
		str = strs.join("\r\n");
		str = str.replace(/(\r\n)/gm,"<br />").replace(/(<br \/>){4,}/gm,"<br /><br /><br />");
		if(/《/i.test(str)) {
			str = this.checkAozora(str);
		}
		this.createEPUB(str);
	},
	checkAozora:function(str){
	    str = str.replace(/《[^》]+》/g, "").replace(/｜/g, "").replace(/［＃.字下げ］/g, "").replace(/［＃ここから.字下げ］/g, "").replace(/［＃ここで字下げ終わり］/g, "");
	    return str;
	},
	createEPUB:function(str){
		var nzipobj = new JSZip();
		this.createMIME(nzipobj);
		var ncxtxt = this.createNCX();
		nzipobj.file("EPUB/toc.ncx",ncxtxt);
		// var covertxt = this.createCoverHTML();
		// nzipobj.folder("EPUB/xhtml").file("cover.xhtml",covertxt);

		if(this.mode === "v"){
			this.createVCSS(nzipobj);
			var opftxt = this.createVOPF();
			nzipobj.file("EPUB/cole.opf",opftxt);

			var navtxt = this.createVNav();
			nzipobj.folder("EPUB/xhtml").file("nav.xhtml",navtxt);

			var htmltxt = this.createVHtml(str);
			nzipobj.folder("EPUB/xhtml").file("0001.xhtml", htmltxt);
		}else if(this.mode === "hlr"){
			this.createHLRCSS(nzipobj);

			var opftxt = this.createHLROPF();
			nzipobj.file("EPUB/cole.opf",opftxt);

			var navtxt = this.createHLRNav();
			nzipobj.folder("EPUB/xhtml").file("nav.xhtml", navtxt);

			var htmltxt = this.createHLRHtml(str);
			nzipobj.folder("EPUB/xhtml").file("0001.xhtml", htmltxt);
		}else if(this.mode === "hrl"){
			this.createHRLCSS(nzipobj);

			var opftxt = this.createHRLOPF();
			nzipobj.file("EPUB/cole.opf",opftxt);

			var navtxt = this.createHRLNav();
			nzipobj.folder("EPUB/xhtml").file("nav.xhtml", navtxt);

			var htmltxt = this.createHRLHtml(str);
			nzipobj.folder("EPUB/xhtml").file("0001.xhtml", htmltxt);
		}
		var content = nzipobj.generate({type:"blob"});
		this.name = this.name.substring(0,15);
		chrome.fileSystem.chooseEntry({'type': 'saveFile',suggestedName:this.name+".kepub.epub"}, function(fileEntry) {
			if(fileEntry){
				fileEntry.createWriter(function(fileWriter) {
					fileWriter.onwriteend = function(e) {
				        fileWriter.onwriteend = function () {};
				        fileWriter.truncate(content.size);
					};
					fileWriter.onerror = function(e) {
					};
					fileWriter.write(content);
				});
			}
		});
	},
	createMIME:function(nzipobj){
		nzipobj.file("mimetype", "application/epub+zip");
		this.createMetaINF(nzipobj);
	}, 
	createMetaINF:function(nzipobj){
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<container xmlns="urn:oasis:names:tc:opendocument:xmlns:container" version="1.0">\n';
		txt += '<rootfiles>\n';
		txt += '<rootfile full-path="EPUB/cole.opf" media-type="application/oebps-package+xml"/>\n';
		txt += '</rootfiles>\n';
		txt += '</container>\n';
		nzipobj.folder("META-INF").file("container.xml",txt);
	},
	createNCX:function(){
		var title = this.name;
		var txt = '';
		var epubid = "urn:uuid:"+this.uuid;
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1">\n';
		txt += '<head>\n';
		txt += '<meta name="dtb:uid" content="'+epubid+'"/>\n';
		txt += '<meta name="dtb:depth" content="1"/>\n';
		txt += '</head>\n';
		txt += '<docTitle><text>'+title+'</text></docTitle>\n';
		txt += '<navMap>\n';
		txt += '<navPoint id="toc1" playOrder="1">\n';
		txt += '<navLabel><text>'+title+'</text></navLabel>\n';
		txt += '<content src="xhtml/0001.xhtml"/>\n';
		txt += '</navPoint></navMap></ncx>\n';
		return txt;
	}, 
	createHRLCSS:function(nzipobj){
		var txt = '';
		nzipobj.folder("EPUB/css").file("cole.css",txt);
	},
	createHRLOPF:function(){
		var d = new Date();
		var year  = d.getFullYear();
		var month  = ( d.getMonth() +1  < 10 ) ? '0' + (d.getMonth()+1)   : d.getMonth()+1;
		var day  = ( d.getDate()   < 10 ) ? '0' + d.getDate()   : d.getDate();
		var hour  = ( d.getHours()   < 10 ) ? '0' + d.getHours()   : d.getHours();
		var min   = ( d.getMinutes() < 10 ) ? '0' + d.getMinutes() : d.getMinutes();
		var sec   = ( d.getSeconds() < 10 ) ? '0' + d.getSeconds() : d.getSeconds();
		var tstmp = year + '-' + month + '-' + day + 'T' + hour + ':' + min + ':' + sec +'Z';
		var title = this.name;
		var creator = "Script";
		var date = tstmp;
		var epubid = "urn:uuid:"+this.uuid;
		var txt = "";
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<package version="3.0" xml:lang="en" unique-identifier="pub-id" prefix="cc: http://creativecommons.org/ns#" xmlns="http://www.idpf.org/2007/opf">\n';
		txt += '<metadata xmlns:dc="http://purl.org/dc/elements/1.1/">\n';
		txt += '<dc:identifier id="pub-id">'+epubid+'</dc:identifier>\n';
		txt += '<dc:language>ar</dc:language>\n';
		txt += '<dc:title id="title">'+title+'</dc:title>\n';
		txt += '<dc:date>'+date+'</dc:date>\n';
		txt += '<meta property="dcterms:modified">'+date+'</meta>\n';
		txt += '</metadata>\n';
		txt += '<manifest>\n';

		txt += '<item id="vertical" href="css/cole.css" media-type="text/css"/>\n';
		txt += '<item id="nav" href="xhtml/nav.xhtml" properties="nav" media-type="application/xhtml+xml"/>\n';
		txt += '<item href="toc.ncx" id="ncx" media-type="application/x-dtbncx+xml"/>\n';
		txt += '<item id="doc" href="xhtml/0001.xhtml" media-type="application/xhtml+xml"/>\n';

		txt += '</manifest>\n';
		txt += '<spine toc="ncx" page-progression-direction="rtl">\n';
		txt += '<itemref idref="doc"/>\n';
		txt += '</spine></package>\n';
		return txt;
	}, 
	createHRLNav:function(){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">\n';
		txt += '<head>\n';
		txt += '<meta charset="utf-8" />\n';
		txt += '</head>\n';
		txt += '<body>\n';
		txt += '<nav epub:type="toc">\n';
		txt += '<ol><li>\n';
		txt += '<a href="0001.xhtml">'+title+'</a>\n';
		txt += '</li></ol>\n';
		txt += '</nav></body></html>\n';
		return txt;
	},
	createHRLHtml:function(str){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html>\n';
		txt += '<html xml:lang="ar" lang="ar" dir="rtl" xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops"><head>\n';
		txt += '<link rel="stylesheet" type="text/css" href="../css/cole.css"/>\n';
		txt += '<title>'+title+'</title></head><body>'+str+'</body></html>\n';
		return txt;
	},	 
	createHLRCSS:function(nzipobj){
		var txt = '@charset "UTF-8";@namespace epub http://www.idpf.org/2007/ops;html{line-height: 1.5em;font-family:Arial, Helmet, Freesans, sans-serif;}body{letter-spacing:.05em}h1,h2{letter-spacing:.16em}body.reflow{margin:2em 4em;background-color:#fff}';
		nzipobj.folder("EPUB/css").file("cole.css",txt);
	},
	createHLROPF:function(){
		var d = new Date();
		var year  = d.getFullYear();
		var month  = ( d.getMonth() +1  < 10 ) ? '0' + (d.getMonth()+1)   : d.getMonth()+1;
		var day  = ( d.getDate()   < 10 ) ? '0' + d.getDate()   : d.getDate();
		var hour  = ( d.getHours()   < 10 ) ? '0' + d.getHours()   : d.getHours();
		var min   = ( d.getMinutes() < 10 ) ? '0' + d.getMinutes() : d.getMinutes();
		var sec   = ( d.getSeconds() < 10 ) ? '0' + d.getSeconds() : d.getSeconds();
		var tstmp = year + '-' + month + '-' + day + 'T' + hour + ':' + min + ':' + sec +'Z';
		var title = this.name;
		var creator = "Script";
		var date = tstmp;
		var epubid = "urn:uuid:"+this.uuid;
		var txt = "";

		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<package xmlns="http://www.idpf.org/2007/opf" version="3.0" xml:lang="en" unique-identifier="pub-id">\n';
		txt += '<metadata xmlns:dc="http://purl.org/dc/elements/1.1/">\n';
		txt += '<dc:title id="title">'+title+'</dc:title>\n';
		txt += '<dc:identifier id="pub-id">'+epubid+'</dc:identifier>\n';
		txt += '<meta property="dcterms:modified">'+date+'</meta>\n';
		txt += '<dc:date>'+date+'</dc:date>\n';
		txt += '<dc:language>en</dc:language>\n';
		txt += '</metadata>\n';
		txt += '<manifest>\n';

		txt += '<item id="vertical" href="css/cole.css" media-type="text/css"/>\n';
		txt += '<item id="nav" href="xhtml/nav.xhtml" properties="nav" media-type="application/xhtml+xml"/>\n';
		txt += '<item href="toc.ncx" id="ncx" media-type="application/x-dtbncx+xml"/>\n';
		txt += '<item id="doc" href="xhtml/0001.xhtml" media-type="application/xhtml+xml"/>\n';

		txt += '</manifest>\n';
		txt += '<spine toc="ncx">\n';
		txt += '<itemref idref="doc"/>\n';
		txt += '</spine></package>\n';
		return txt;
	}, 
	createHLRNav:function(){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">\n';
		txt += '<head>\n';
		txt += '<meta charset="utf-8" />\n';
		txt += '</head>\n';
		txt += '<body>\n';
		txt += '<nav epub:type="toc">\n';
		txt += '<ol><li>\n';
		txt += '<a href="0001.xhtml">'+title+'</a>\n';
		txt += '</li></ol>\n';
		txt += '</nav></body></html>\n';
		return txt;
	},
	createHLRHtml:function(str){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml"><head>\n';
		txt += '<link rel="stylesheet" type="text/css" href="../css/cole.css"/>\n';
		txt += '<title>'+title+'</title></head><body class="reflow">'+str+'</body></html>\n';
		return txt;
	},	 
	createVCSS:function(nzipobj){
		var txt = '@charset "utf-8";@namespace http://www.w3.org/1999/xhtml;p{text-align:justify;margin:0}:link{color:#00C;background:transparent}:visited{color:#609;background:transparent}a:active{color:#C00;background:transparent}a:link img,a:visited img{border-style:none}span.img{display:inline-block}span.img.ft{display:inline;float:left;padding-bottom:.5em}span.img.fb{display:inline;float:right;padding-top:.5em}span.img.fw img{width:100%}span.img.fh img{height:100%}p.clear{clear:both;width:0;line-height:0}p.clear_r{clear:right;width:0;line-height:0}p.clear_l{clear:left;width:0;line-height:0}hr{margin:.5em 0}.strike{text-decoration:line-through}.dbl_strike{text-decoration:line-through}.gaiji{display:inline-block;vertical-align:middle}.gaiji img{width:1em;left:-.2em}.border{border:1px solid #000;margin:.25em;padding:.25em;display:inline-block}.jzm .border{display:block}.jzm .p .border{display:inline-block}.dashed_border{border:1px dashed #000;margin:.25em;padding:.25em;display:inline-block}.jzm .dashed_border{display:block}.jzm .p .dashed_border{display:inline-block}span.sesame{text-emphasis-style:sesame;-webkit-text-emphasis-style:sesame;-epub-text-emphasis-style:sesame}span.open_sesame{text-emphasis-style:open sesame;-webkit-text-emphasis-style:open sesame;-epub-text-emphasis-style:open sesame}span.dot{text-emphasis-style:dot;-webkit-text-emphasis-style:dot;-epub-text-emphasis-style:dot}span.open_dot{text-emphasis-style:open dot;-webkit-text-emphasis-style:open dot;-epub-text-emphasis-style:open dot}span.circle{text-emphasis-style:circle;-webkit-text-emphasis-style:circle;-epub-text-emphasis-style:circle}span.open_circle{text-emphasis-style:open circle;-webkit-text-emphasis-style:open circle;-epub-text-emphasis-style:open circle}span.double-circle{text-emphasis-style:double-circle;-webkit-text-emphasis-style:double-circle;-epub-text-emphasis-style:double-circle}span.open_double-circle{text-emphasis-style:open double-circle;-webkit-text-emphasis-style:open double-circle;-epub-text-emphasis-style:open double-circle}span.triangle{text-emphasis-style:triangle;-webkit-text-emphasis-style:triangle;-epub-text-emphasis-style:triangle}span.open_triangle{text-emphasis-style:open triangle;-webkit-text-emphasis-style:open triangle;-epub-text-emphasis-style:open triangle}span.left_sesame{text-emphasis-style:sesame;text-emphasis-position:under;-webkit-text-emphasis-style:sesame;-webkit-text-emphasis-position:under;-epub-text-emphasis-style:sesame;-epub-text-emphasis-position:under}span.underline,span.double_underline,span.dotted_underline,span.dashed_underline,span.wave_underline{border-right-width:1px;padding-right:1px}span.underline{border-right-style:solid}span.double_underline{border-right-width:3px;border-right-style:double}span.dotted_underline{border-right-style:dotted}span.dashed_underline{border-right-style:dashed}span.wave_underline{border-right-style:solid}span.left_underline{border-left-style:solid;padding-left:1px;border-left-width:1px}.font1{font-size:110%}.font2{font-size:120%}.font3{font-size:130%}.font4{font-size:140%}.font5{font-size:150%}.font6{font-size:160%}.font-1{font-size:90%}.font-2{font-size:83%}.font-3{font-size:77%}.font-4{font-size:70%}.font-5{font-size:66%}.font-6{font-size:62%}.kogaki{font-size:70%}.tcy span{text-combine:horizontal;-webkit-text-combine:horizontal;-epub-text-combine:horizontal}.kindle ruby{white-space:nowrap}span.mado{float:left;display:inline-block;line-height:1em}span.mado.L{font-size:1.5em;padding:0 .625em .33em 0;line-height:1em}span.mado.M{font-size:1.3em;padding:0 .846em .38em 0;line-height:1em}span.mado.S{font-size:1.1em;padding:0 1.091em .45em 0;line-height:1em}span.wrc{display:inline-block;font-size:.6em;line-height:1em;vertical-align:middle;padding:.2em 0 .1em;position:relative;left:-.4em}span.swr{display:inline-block}.swr{text-orientation:sideways-right;-webkit-text-orientation:sideways-right;-epub-text-orientation:sideways-right}div.yoko{display:inline-block;writing-mode:horizontal-tb;-webkit-writing-mode:horizontal-tb;-epub-writing-mode:horizontal-tb}.sup{vertical-align:super;font-size:.66em;letter-spacing:-2px}.sub{vertical-align:sub;font-size:.66em;letter-spacing:-2px}div.center,div.center p{text-align:center}div.pt1{margin-top:1em}div.pt2{margin-top:2em}div.pt3{margin-top:3em}div.pt4{margin-top:4em}div.pt5{margin-top:5em}div.pt6{margin-top:6em}div.pt7{margin-top:7em}div.pt8{margin-top:8em}div.pt9{margin-top:9em}div.pt10{margin-top:10em}div.pt11{margin-top:11em}div.pt12{margin-top:12em}div.pt13{margin-top:13em}div.pt14{margin-top:14em}div.pt15{margin-top:15em}div.pt16{margin-top:16em}div.pt17{margin-top:17em}div.pt18{margin-top:18em}div.pt19{margin-top:19em}div.pt20{margin-top:20em}div.pt21{margin-top:21em}div.pt22{margin-top:22em}div.pt23{margin-top:23em}div.pt24{margin-top:24em}div.pt25{margin-top:25em}div.pt26{margin-top:26em}div.pt27{margin-top:27em}div.pt28{margin-top:28em}div.pt29{margin-top:29em}div.pt30{margin-top:30em}div.pb1{margin-bottom:1em}div.pb2{margin-bottom:2em}div.pb3{margin-bottom:3em}div.pb4{margin-bottom:4em}div.pb5{margin-bottom:5em}div.pb6{margin-bottom:6em}div.pb7{margin-bottom:7em}div.pb8{margin-bottom:8em}div.pb9{margin-bottom:9em}div.pb10{margin-bottom:10em}div.pb11{margin-bottom:11em}div.pb12{margin-bottom:12em}div.pb13{margin-bottom:13em}div.pb14{margin-bottom:14em}div.pb15{margin-bottom:15em}div.pb16{margin-bottom:16em}div.pb17{margin-bottom:17em}div.pb18{margin-bottom:18em}div.pb19{margin-bottom:19em}div.pb20{margin-bottom:20em}div.pb21{margin-bottom:21em}div.pb22{margin-bottom:22em}div.pb23{margin-bottom:23em}div.pb24{margin-bottom:24em}div.pb25{margin-bottom:25em}div.btm,div.btm p{text-align:right}div.btm .jzm{text-align:right;display:inline-block}span.btm.fr{float:right;display:inline-block}div.idt1{text-indent:1em}div.idt2{text-indent:2em}div.idt3{text-indent:3em}div.idt4{text-indent:4em}div.idt5{text-indent:5em}div.idt6{text-indent:6em}div.idt7{text-indent:7em}div.idt8{text-indent:8em}div.idt9{text-indent:9em}div.idt10{text-indent:10em}div.idt11{text-indent:11em}div.idt12{text-indent:12em}div.idt13{text-indent:13em}div.idt14{text-indent:14em}div.idt15{text-indent:15em}div.idt16{text-indent:16em}div.idt17{text-indent:17em}div.idt18{text-indent:18em}div.idt19{text-indent:19em}div.idt20{text-indent:20em}div.idt21{text-indent:21em}div.idt22{text-indent:22em}div.idt23{text-indent:23em}div.idt24{text-indent:24em}div.idt25{text-indent:25em}div.idt-1{text-indent:-1em}div.idt-2{text-indent:-2em}div.idt-3{text-indent:-3em}div.idt-4{text-indent:-4em}div.idt-5{text-indent:-5em}div.idt-6{text-indent:-6em}div.idt-7{text-indent:-7em}div.idt-8{text-indent:-8em}div.idt-9{text-indent:-9em}div.idt-10{text-indent:-10em}div.idt-11{text-indent:-11em}div.idt-12{text-indent:-12em}div.idt-13{text-indent:-13em}div.idt-14{text-indent:-14em}div.idt-15{text-indent:-15em}div.idt-16{text-indent:-16em}div.idt-17{text-indent:-17em}div.idt-18{text-indent:-18em}div.idt-19{text-indent:-19em}div.idt-20{text-indent:-20em}div.idt-21{text-indent:-21em}div.idt-22{text-indent:-22em}div.idt-23{text-indent:-23em}div.idt-24{text-indent:-24em}div.idt-25{text-indent:-25em}div.jzm1{max-height:1em}div.jzm2{max-height:2em}div.jzm3{max-height:3em}div.jzm4{max-height:4em}div.jzm5{max-height:5em}div.jzm6{max-height:6em}div.jzm7{max-height:7em}div.jzm8{max-height:8em}div.jzm9{max-height:9em}div.jzm10{max-height:10em}div.jzm11{max-height:11em}div.jzm12{max-height:12em}div.jzm13{max-height:13em}div.jzm14{max-height:14em}div.jzm15{max-height:15em}div.jzm16{max-height:16em}div.jzm17{max-height:17em}div.jzm18{max-height:18em}div.jzm19{max-height:19em}div.jzm20{max-height:20em}div.jzm21{max-height:21em}div.jzm22{max-height:22em}div.jzm23{max-height:23em}div.jzm24{max-height:24em}div.jzm25{max-height:25em}div.jzm26{max-height:26em}div.jzm27{max-height:27em}div.jzm28{max-height:28em}div.jzm29{max-height:29em}div.jzm30{max-height:30em}div.jzm31{max-height:31em}div.jzm32{max-height:32em}div.jzm33{max-height:33em}div.jzm34{max-height:34em}div.jzm35{max-height:35em}div.jzm36{max-height:36em}div.jzm37{max-height:37em}div.jzm38{max-height:38em}div.jzm39{max-height:39em}div.jzm40{max-height:40em}span.fullsp{padding-top:.5em}';
		txt += 'body{font-family:"@ＭＳ 明朝","@MS Mincho","ヒラギノ明朝 ProN W3","HiraMinProN-W3",serif,sans-serif}.gtc,.b{font-family:sans-serif!important}.b,.gtc{font-weight:700}.i{font-style:italic}';
		txt += 'html{writing-mode:vertical-rl;-webkit-writing-mode:vertical-rl;-epub-writing-mode:vertical-rl;-epub-line-break:strict;line-break:strict;-epub-word-break:normal;word-break:normal;margin:0;padding:0}body{margin:0;padding:0;display:block;color:#000;font-size:1em;line-height:1.9;vertical-align:baseline}body.kindle{line-height:1.6}';
		nzipobj.folder("EPUB/css").file("cole.css",txt);
	}, 
	createVOPF:function(){
		var d = new Date();
		var year  = d.getFullYear();
		var month  = ( d.getMonth() +1  < 10 ) ? '0' + (d.getMonth()+1)   : d.getMonth()+1;
		var day  = ( d.getDate()   < 10 ) ? '0' + d.getDate()   : d.getDate();
		var hour  = ( d.getHours()   < 10 ) ? '0' + d.getHours()   : d.getHours();
		var min   = ( d.getMinutes() < 10 ) ? '0' + d.getMinutes() : d.getMinutes();
		var sec   = ( d.getSeconds() < 10 ) ? '0' + d.getSeconds() : d.getSeconds();
		var tstmp = year + '-' + month + '-' + day + 'T' + hour + ':' + min + ':' + sec +'Z';
		var title = this.name;
		var creator = "Script";
		var date = tstmp;
		var epubid = "urn:uuid:"+this.uuid;
		var txt = "";

		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<package xmlns="http://www.idpf.org/2007/opf" unique-identifier="pub-id" xml:lang="ja" version="3.0">\n';
		txt += '<metadata xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:opf="http://www.idpf.org/2007/opf">\n';
		txt += '<dc:title id="title">'+title+'</dc:title>\n';
		txt += '<meta refines="#title" property="dcterms:title">'+title+'</meta>\n';
		// txt += '<dc:creator id="creator" opf:role="aut"></dc:creator>\n';
		// txt += '<meta refines="#creator" property="dcterms:creator"></meta>\n';
		txt += '<dc:language id="pub-lang">ja</dc:language>\n';
		txt += '<meta refines="#pub-lang" property="dcterms:language">ja</meta>\n';
		txt += '<dc:identifier id="pub-id">'+epubid+'</dc:identifier>\n';
		txt += '<meta refines="#pub-id" property="dcterms:identifier">'+epubid+'</meta>\n';
		txt += '<meta property="dcterms:modified">'+date+'</meta>\n';
		txt += '</metadata>\n';
		txt += '<manifest>\n';

		txt += '<item id="vertical" href="css/cole.css" media-type="text/css"/>\n';
		txt += '<item id="nav" href="xhtml/nav.xhtml" media-type="application/xhtml+xml" properties="nav"/>\n';
		txt += '<item href="toc.ncx" id="ncx" media-type="application/x-dtbncx+xml"/>\n';
		txt += '<item id="sec0001" href="xhtml/0001.xhtml" media-type="application/xhtml+xml"/>\n'

        txt += '</manifest>\n';
        txt += '<spine page-progression-direction="rtl" toc="ncx">\n';
		txt += '<itemref idref="sec0001" linear="yes"/>\n';
		txt += '</spine></package>\n';
		return txt;
	},
	createVNav:function(){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">\n';
		txt += '<head>\n';
		txt += '<meta charset="utf-8" />\n';
		txt += '<link rel="stylesheet" type="text/css" href="../css/cole.css" />\n';
		txt += '</head>\n';
		txt += '<body class="reflow">\n';
		txt += '<nav epub:type="toc" id="toc">\n';
		txt += '<ol><li><a href="0001.xhtml">01</a></li></ol>\n';
		txt += '</nav>\n';
		txt += '</body>\n';
		txt += '</html>\n';
		return txt;
	},
	createVHtml:function(str){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="utf-8"?><!DOCTYPE html>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xml="http://www.w3.org/XML/1998/namespace" xml:lang="ja" lang="ja">\n';
		txt += '<head><link rel="stylesheet" type="text/css" href="../css/cole.css"/>\n';
		txt += '<title>'+title+'</title></head><body>'+str+'</body></html>\n';
		return txt;
	},
	createCoverHTML:function(){
		var title = this.name;
		var txt = '';
		txt += '<?xml version="1.0" encoding="utf-8"?><!DOCTYPE html>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml">\n';
		txt += '<head><meta charset="utf-8" /><title>'+title+'</title></head><body><h3>'+title+'</h3></body></html>\n';
		return txt;
	},
	uuid:(function(){
	    function S4() {
	        return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
	    }
	    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
	})()
};
