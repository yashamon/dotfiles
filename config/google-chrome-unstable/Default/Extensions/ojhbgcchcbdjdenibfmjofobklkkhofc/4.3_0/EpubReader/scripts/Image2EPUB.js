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

ImagetoEPUB = {
	imgzip : null,
	name :"NoTitle",
	clbk:null,
	eclbk:null,
	addflg:false,
	openFile:function(infoobj){
		var name = infoobj.name;
		if(name.indexOf(".") > -1){
			var nname = name.split(".");
			name = nname[nname.length-2];
			if(!name){
				name = "epub";
			}
		}
		this.name = name;
		this.addflg = infoobj.addflg;
		this.clbk = infoobj.callback;
		this.eclbk = infoobj.ecallback;
		this.preprocess(infoobj.file,infoobj.flderflg);
	},
	preprocess:function(file,flderflg){
		this.imgzip = file;		
		this.createEPUB(flderflg);
	},
	createEPUB:function(flderflg){
		var nzipobj = new JSZip();
		this.createMIME(nzipobj);
		var that = this;
		if(flderflg){
			this.createImage(nzipobj,true,processing);
		}else{
			this.createImage(nzipobj,false,processing);
		}
		function processing(obj){
			var wh = window.innerHeight;
			var ww = window.innerWidth;
			var aspct = ww/wh;
			var imgpathlist = obj.imgpathlist;
			var imgelemlist = obj.imgelemlist;
			var imagetypelist = obj.imagetypelist;
			var imgwlist = [];
			if(!imgpathlist || !imgelemlist || imgpathlist.length < 1 || imgelemlist.length < 1){
				if(this.eclbk){
					this.eclbk();
				}
				return;
			}
			loadimg(imgelemlist,0);

			function loadimg(imgelemlist,i){
				var arybuf = imgelemlist[i];
			    var blob = new Blob([arybuf], { "type" : imagetypelist[i] });
			    var fileurlobj = window.URL.createObjectURL(blob);
				var imgelem = new Image();
				imgelem.onload = function(){
					var sizeobj = {
						width:this.width,
						height:this.height
					};					
					imgwlist[i] = sizeobj;
					if(imgelemlist.length-1 === i){
						setTimeout(function(){
							createText();
						},300);
					}else{
						i++;
						loadimg(imgelemlist,i);
					}
				};
				imgelem.src = fileurlobj;
			}
			function createText(){
				var ncxtxt = that.createNCX(imgpathlist);
				nzipobj.file("EPUB/toc.ncx",ncxtxt);

				var opftxt = that.createOPF(imgpathlist,imagetypelist);
				nzipobj.file("EPUB/cole.opf",opftxt);

				var navtxt = that.createNav(imgpathlist);
				nzipobj.folder("EPUB/xhtml").file("nav.xhtml",navtxt);
				that.createHtml(imgpathlist,nzipobj,imgwlist);

				if(that.addflg){
					L.preprocessAddDB(nzipobj,true);
				}else{
					var content = nzipobj.generate({type:"blob"});
					that.name = that.name.substring(0,8);
					chrome.fileSystem.chooseEntry({'type': 'saveFile',suggestedName:that.name+".kepub.epub"}, function(fileEntry) {
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
					if(that.clbk){
						that.clbk();
					}
				}
			}
		}
	},
	createImage:function(nzipobj,flg,callback){
		var check = function(Zipobj,nzipobj){
			var imgpathlist = [],imgelemlist = [],imagetypelist = [];
			var idx = 0;
			for(var FileName in Zipobj.files) {
				if(Zipobj.files[FileName]._data) {
					var fname = FileName,type = null;
					var NewFileName = FileName.replace(/(jpg-large|jpg:large)/i,"jpg");

					if(NewFileName.indexOf("/") !== -1){
						var paths = NewFileName.split("/");
						fname = paths[paths.length-1];
					}
					if(/\.(jpe?g)$/i.test(fname)){
						type = "image/jpeg";
					}else if(/\.(gif)$/i.test(fname)){
						type = "image/gif";
					}else if(/\.(png)$/i.test(fname)){
						type = "image/png";
					}
					if(type){
						var arybuf = Zipobj.file(FileName).asUint8Array();
						nzipobj.folder("EPUB/images").file(NewFileName, arybuf);
						imgpathlist[idx] = "images/"+NewFileName;
						imgelemlist[idx] = arybuf;
						imagetypelist[idx] = type;
						idx++;
					}
				}
			}
			var obj = {};
			obj.imgpathlist = imgpathlist;
			obj.imgelemlist = imgelemlist;
			obj.imagetypelist = imagetypelist;
			callback(obj)
		};
		var readfolder = function(elemimgs,nzipobj){
			var imgpathlist = [],imgelemlist = [],imagetypelist = [];
			var idx = 0;
			var imgs = Array.prototype.slice.call(elemimgs,0); 
	        imgs.sort(cmp);

			for (var i = 0; i < imgs.length; i++) {
				var FileName = imgs[i].webkitRelativePath;
				FileName = FileName.replace(/(jpg-large|jpg:large)/i,"jpg");
				var fname = FileName,type = null;
				if(FileName.indexOf("/") !== -1){
					var paths = FileName.split("/");
					fname = paths[paths.length-1];
				}
				if(/\.(jpe?g)$/i.test(fname)){
					type = "image/jpeg";
				}else if(/\.(gif)$/i.test(fname)){
					type = "image/gif";
				}else if(/\.(png)$/i.test(fname)){
					type = "image/png";
				}

				if(type){
					imgpathlist.push("images/"+FileName);
					imgelemlist.push(imgs[i]);
					imagetypelist.push(type);
					idx++;
				}
			}
			filerader(imgpathlist,imgelemlist,imagetypelist,0);
	        function cmp(a, b) {
                return a.webkitRelativePath.localeCompare(b.webkitRelativePath);
	        }
			function filerader(imgpathlist,imgelemlist,imagetypelist,idx){		
		        var reader = new FileReader();  
		        reader.onload = function(e) {  
		            var arybuf = e.target.result; 
		            imgpathlist[idx].split("images/").shift();
					var fname = imgpathlist.join();
					nzipobj.folder("EPUB").file(imgpathlist[idx], arybuf);
					imgelemlist[idx] = arybuf;
					if(idx === imgpathlist.length-1){
						var obj = {};
						obj.imgpathlist = imgpathlist;
						obj.imgelemlist = imgelemlist;
						obj.imagetypelist = imagetypelist;
		        		setTimeout(function(){
							callback(obj);
		        		},200);
					}else{
						setTimeout(function(){
							idx++;
							filerader(imgpathlist,imgelemlist,imagetypelist,idx);
						},10);
					}
		        }
		        reader.readAsArrayBuffer(imgelemlist[idx]);
			}
		};
		nzipobj.folder("EPUB/images");
		if(flg){
		 	readfolder(this.imgzip,nzipobj);
		}else{
			var imgzobj = new JSZip();
		 	var Zipobj = imgzobj.load(this.imgzip);
		 	var list = check(Zipobj,nzipobj);
		 	return list;
		}
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
		this.createCSS(nzipobj)
	},
	createNCX:function(imgpathlist){
		var title = this.name;
		var txt = '';
		var epubid = "urn:uuid:"+this.uuid;
		var fname = imgpathlist[0];
		if(fname.indexOf("/") !== -1){
			var paths = fname.split("/");
			fname = paths[paths.length-1];
		}
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
		txt += '<content src="xhtml/'+fname+'.xhtml"/>\n';
		txt += '</navPoint></navMap></ncx>\n';
		return txt;
	}, 
	createCSS:function(nzipobj){
		var txt = '@charset "UTF-8";*{margin:0;padding:0;}.imgv{height: 100%;width:auto;margin:0 12px;}.imgh{height:auto;width: 100%;}';
		nzipobj.folder("EPUB/css").file("cole.css",txt);
	},
	createOPF:function(imgpathlist,imagetypelist){
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
		txt += '<package xmlns="http://www.idpf.org/2007/opf" version="3.0" xml:lang="en" unique-identifier="pub-id" prefix="rendition: http://www.idpf.org/vocab/rendition/# cc: http://creativecommons.org/ns#">\n';
		txt += '<metadata xmlns:dc="http://purl.org/dc/elements/1.1/">\n';
		txt += '<dc:title id="title">'+title+'</dc:title>\n';
		// txt += '<dc:creator>'+creator+'</dc:creator>\n';
		txt += '<dc:identifier id="pub-id">'+epubid+'</dc:identifier>\n';
		txt += '<dc:language>en-US</dc:language>\n';
		txt += '<meta property="dcterms:modified">'+date+'</meta>\n';
		txt += '</metadata>\n';
		txt += '<manifest>\n';

		for (var i = 0; i < imgpathlist.length; i++) {
			var fname = imgpathlist[i];
			if(fname.indexOf("/") !== -1){
				var paths = fname.split("/");
				fname = paths[paths.length-1];
			}
			txt += '<item id="h'+i+'xhtml" href="xhtml/'+fname+'.xhtml" media-type="application/xhtml+xml" />\n';
			if(i === 0){
				txt += '<item id="i'+i+'" href="'+imgpathlist[i]+'" media-type="'+imagetypelist[i]+'" properties="cover-image"/>\n';
			}else{
				txt += '<item id="i'+i+'" href="'+imgpathlist[i]+'" media-type="'+imagetypelist[i]+'"/>\n';
			}
		};
		txt += '<item href="toc.ncx" id="ncx" media-type="application/x-dtbncx+xml"/>\n';
		txt += '<item id="nav" href="xhtml/nav.xhtml" media-type="application/xhtml+xml" properties="nav"/>\n';
    	txt += '<item id="css" href="css/cole.css" media-type="text/css"/>\n'
        txt += '</manifest>\n';
        txt += '<spine toc="ncx">\n';

		for (var i = 0; i < imgpathlist.length; i++) {
			var fname = imgpathlist[i];
			if(fname.indexOf("/") !== -1){
				var paths = fname.split("/");
				fname = paths[paths.length-1];
			}
			txt += '<itemref idref="h'+i+'xhtml" properties="rendition:layout-pre-paginated rendition:orientation-auto rendition:spread-none"/>\n';
		};
		txt += '</spine></package>\n';
		return txt;
	},
	createNav:function(imgpathlist){
		var title = this.name;
		var txt = '';

		var fname = imgpathlist[0];
		if(fname.indexOf("/") !== -1){
			var paths = fname.split("/");
			fname = paths[paths.length-1];
		}

		txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
		txt += '<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">\n';
		txt += '<head><meta charset="utf-8" /><link rel="stylesheet" type="text/css" href="../css/cole.css" /></head>\n';
		txt += '<body class="reflow">\n';
		txt += '<nav epub:type="toc" id="toc">\n';
		txt += '<ol><li><a href="'+fname+'.xhtml">'+imgpathlist[0]+'.xhtml</a></li>\n';
		txt += '</ol></nav></body></html>\n';
		return txt;
	},
	createHtml:function(imgpathlist,nzipobj,imgwlist){
		for (var i = 0; i < imgpathlist.length; i++) {
			var title = imgpathlist[i];
			var txt = '';
			txt += '<?xml version="1.0" encoding="UTF-8"?>\n';
			txt += '<html xmlns="http://www.w3.org/1999/xhtml">\n';
			txt += '<head><meta charset="utf-8" />\n';
			txt += '<title>'+title+'</title>\n';
			txt += '<meta name="viewport" content="width='+(imgwlist[i].width+24)+',height='+imgwlist[i].height+'" />\n';
			txt += '<link rel="stylesheet" type="text/css" href="../css/cole.css" />\n';
			txt += '</head>\n';
			txt += '<body class="fixed" id="b2">\n';
			if(imgwlist[i].flg){
				txt += '<img id="i2" class="full imgh" src="../'+imgpathlist[i]+'" />\n';
			}else{
				txt += '<img id="i2" class="full imgv" src="../'+imgpathlist[i]+'" />\n';
			}
			txt += '</body></html>'
			var fname = imgpathlist[i];
			if(fname.indexOf("/") !== -1){
				var paths = fname.split("/");
				fname = paths[paths.length-1];
			}
			nzipobj.folder("EPUB/xhtml").file(fname+".xhtml", txt);
		}
	},
	uuid:(function(){
	    function S4() {
	        return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
	    }
	    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
	})()
}
