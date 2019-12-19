var optobj = {};
var reloadcount = 0;
optobj.contextmenu = true;
chrome.app.runtime.onLaunched.addListener(function(launchData) {
    if(launchData)LaunchDATA = launchData;
    onLaunched();
});
function onLaunched(launchData) {
	chrome.storage.local.get("_window_state",function(result){
	    var wobj = result["_window_state"];
	    if(!wobj){
	    	var wobj = {};
	    	wobj.height = 660;
	    	wobj.width = 1010;
		    var nwobj = {};
		    nwobj.outerBounds = wobj;
	    }else{
		    var nwobj = {};
		    if(wobj.isMaximized){
		    	nwobj.state = "maximized";
		    }else{
		    	delete wobj.isMaximized;
			    nwobj.outerBounds = wobj;
		    }
	    }
		chrome.app.window.create('EpubReader/index.html', nwobj,function(createdWindow) {
			createdWindow.onClosed.addListener(function (){
				stopTTS();
			});
		});
	});
}
function reloadWindow(wind){
	reloadcount++;
	if(reloadcount < 10){
		wind.close();
		onLaunched();
	}else{
		reloadcount = 0;
		chrome.runtime.reload();
	}
}
function stopTTS(){
	chrome.tts.isSpeaking(function(speaking){
		if(speaking){
			chrome.tts.stop();
		}
	});
}
chrome.contextMenus.create({
	"id": "_chrome_ctxmenu0",
    "contexts": ["all"],
    "title": "Reload",
    "type": "normal"
});
chrome.runtime.onMessageExternal.addListener(function(msg,sender,sendResponse){
	if(msg === "wakeup"&&sender.id === "nekojphbejhlpgdkacijegncaajchhfb"){
		onLaunched();
		sendResponse({});
	}else{
		sendResponse({msg:"install"});
	}
});
chrome.app.runtime.onLaunched.addListener(function(){
	stopTTS();
});
