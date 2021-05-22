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

TTSObject = {
	lang:"en-US",
	voice:null,
	rate:1,
	alltext:"",
	ifrmindex:0,
	gettxtflg:false,
	setVoice:function(voice){
		this.voice = voice;
		if(voice.lang){
			this.lang = voice.lang;
		}
	},
	stat:function(elem){
		var that = this;
		chrome.tts.isSpeaking(function(speaking){
			if(speaking){
				elem.style.background = "";
				chrome.tts.stop()
			}else{
				elem.style.background = "red";
				that.getTxt();
			}
		});		
	},
	getTxt:function(flg){
		var strdirct = B.Package.Spine["page-progression-direction"];
		if(flg){
			var el = document.getElementById("item-"+this.ifrmindex);
		}else{
			var el = checkifrm();
		}

		if(!el || el.tagName !== "IFRAME"){
			return;
		}

		var ifrmrect = el.getClientRects()[0];
		this.ifrmindex = parseInt(el.id.split("item-")[1]-0);
		this.ifrmindex++;

		var body = el.contentDocument.querySelector("body");
		this.getAllText(body,ifrmrect,strdirct);

		function checkifrm(){
			if(strdirct === "rtl"){
				var el = document.elementFromPoint(window.innerWidth-100,window.innerHeight-100);
			}else{
				var el = document.elementFromPoint(100,100);
			}
			if(!el){
				el = document.elementFromPoint(parseInt(window.innerWidth/2),parseInt(window.innerHeight/2));
			}
			return el;
		}
	},
	getAllText:function(body,ifrmrect,strdirct){
		var axis = S["spread-layout-axis"];
		var chktxtnode = function(ifrmrect,item){
			if(item){
				if(strdirct === "rtl"){
					if(axis === "horizontal"){
						if(ifrmrect.top-2 < item.top&&Math.abs(ifrmrect.left)+window.innerWidth >= item.left){
							return true;
						}	
					}else{
						if(Math.abs(ifrmrect.top) < item.top&&Math.abs(ifrmrect.left)+window.innerWidth >= item.left){
							return true;
						}	
					}
				}else{
					if(axis === "horizontal"){
						if(ifrmrect.top-2 < item.top&&Math.abs(ifrmrect.left)-50 <= item.left){
							return true;
						}
					}else{
						if(Math.abs(ifrmrect.top) < item.top&&Math.abs(ifrmrect.left)-50 <= item.left){
							return true;
						}
					}
				}
			}
			return false;
		};
	    var r = document.createRange();
		this.alltext = "";
	    this.gettxtflg = false;
		this.textNodesUnder(body,ifrmrect,chktxtnode,r,false);
		var nhtml  = this.alltext.replace(/<br\s*[\/]?>/gi, "\n");
		if(nhtml){
			this.parseTxt(nhtml);
		}else{
			var bodyhtml = body.textContent;
			if(bodyhtml){
				this.parseTxt(bodyhtml);
			}
		}
	},
	textNodesUnder:function(node,ifrmrect,chktxtnode,r,rubytag){
	    for (node=node.firstChild;node;node=node.nextSibling){
			if (node.nodeType === 3&&node.nodeValue){
				if(!this.gettxtflg){
				    r.selectNode(node);
					var rects = r.getClientRects();
					var item = rects[0];
					if(item){
				    	if(chktxtnode(ifrmrect,item)){
				    		this.gettxtflg = true;
						    this.alltext += node.nodeValue;
				    	}
					}
				}else{
					if(rubytag){
					    this.alltext += rubytag;
					}else{
					    this.alltext += node.nodeValue;
					}
				}
			}else{
				var nodetagname = node.tagName;
				if(this.gettxtflg){
			    	if(/^br$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^h\d$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^address$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^blockquote$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^center$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^div$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^dl$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^fieldset$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^form$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^hr$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^noframes$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^noscript$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^ol$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^p$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^pre$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^table$/i.test(nodetagname)) {
				    	this.alltext += "\n";
					}else if(/^ul$/i.test(nodetagname)) {
				    	this.alltext += "\n";
				    }	
				}

				if(nodetagname === "RT"){
				}else if(nodetagname === "RUBY"){
					var rt = node.getElementsByTagName("rt");
					var rttxt = "";
					if(rt.length > 0){
						rttxt = rt[0].textContent;
					}
					this.textNodesUnder(node,ifrmrect,chktxtnode,r,rttxt);
				}else{
					this.textNodesUnder(node,ifrmrect,chktxtnode,r,false);
				}
			}
		}
	    return;
	},
	parseTxt:function(txt){
		if(!this.lang){
			this.lang = "en-US";
		}
		txt = txt.replace(/(\r\n|\n|\r)/gm,'\r\n').replace(/(\r\n){2,}/gm,'\r\n');
		
		if(this.lang === "ja-JP"){
			this.parseja(txt);
		}else if(this.lang === "zh-CN"){
			this.parseja(txt);
		}else if(this.lang === "ko-KR"){
			this.parseja(txt);
		}else{
			this.parseen(txt);
		}
	},
	parseen:function(str){
		var that = this;
		var ntxts = [];
		str = str.replace(/[\^\)\(\#\"\)\[\]\\\/\{\}\_\>\<]+/g," ");
		var txts = str.split(/[(\r\n)\!\.\?\;\:\,]+/);
		var nary = [],nidx = 0,nstr = "";
		for (var i = 0; i < txts.length; i++) {
			var item = txts[i];
			if(item){
				var len = item.length;
				if(len > 499){
				}else if(len > 0){
					ntxts.push(item);
				}
			}
		};
		that.statspeak(ntxts);
	},
	parseja:function(str){
		var that = this;
		var ntxts = [];
		str = str.replace(/[\^\)\(\#\"\)\[\]\\\/\{\}\_\>\<（）]+/g," ");
		var txts = str.split(/[(\r\n)\!\?\:\;、。？！，．…]+/);
		var nary = [],nidx = 0,nstr = "";
		for (var i = 0; i < txts.length; i++) {
			var item = txts[i];
			if(item){
				var len = item.length;
				if(len > 499){
				}else if(len > 0){
					ntxts.push(item);
				}
			}
		};
		that.statspeak(ntxts);
	},
	statspeak:function(ntxts){
		var that = this;
		chrome.tts.isSpeaking(function(speaking){
			if(speaking){
				chrome.tts.stop()
			}else{
				if(that.voice){
					if(that.voice.lang){
						chrome.tts.speak(ntxts[0],{'lang': that.voice.lang,voiceName:that.voice.voiceName});
					}else{
						chrome.tts.speak(ntxts[0],{'lang': that.lang,voiceName:that.voice.voiceName});
					}
				}else{
					chrome.tts.speak(ntxts[0],{'lang': that.lang});
				}
				for (var i = 1; i < ntxts.length; i++) {
					var item = ntxts[i];
					that.enqueuespeak(item,i,ntxts.length);
				};
			}
		});
	},
	stopspeak:function(){
		chrome.tts.isSpeaking(function(speaking){
			if(speaking){
				chrome.tts.stop();
			}
		});
	},
	enqueuespeak:function(str,i,slength){
		var that = this;
		if(that.voice){
			if(that.voice.lang){
				var opt = {'lang': that.voice.lang,voiceName:that.voice.voiceName,'enqueue': true,rate:that.rate};
			}else{
				var opt = {'lang': that.lang,voiceName:that.voice.voiceName,'enqueue': true,rate:that.rate};
			}
		}else{
			var opt = {'lang': this.lang,'enqueue': true,rate:that.rate};
		}
		opt.onEvent =  function(event) {
			clearTimeout(that.timerid)
			if (event.type == 'error') {
			}else if(event.type == 'end'){
				that.timerid = setTimeout(function(){
					chrome.tts.isSpeaking(function(speaking){
						if(speaking){
							chrome.tts.stop();
						}
						var el = document.getElementById("item-"+that.ifrmindex);
						R.focus(el, { Duration: 0, Easing: 0 });
						setTimeout(function(){
							that.endTimer();
						},700);
					});
				},3000);
			}
		};
		chrome.tts.speak(str,opt);
	},
	timerid:null,
	endTimer:function(){
		this.getTxt(true);
	}
}
            