(function(){
	chrome.storage.local.get("____opt_color_",function(result){
	    var optobj = result["____opt_color_"];
	    if(optobj&&optobj.injectcss){
			var css = 'iframe{'+
			    'background-color: '+optobj.background+' !important;'+
			    'color :'+optobj.color+' !important;'+
			'}';
			var style = document.createElement("style") ;
			style.appendChild( document.createTextNode(css) ) ;
			style.type = 'text/css';
			style.setAttribute("class","_user_css__cssfont");
			document.head.appendChild(style) ;
		}
	});
})();
