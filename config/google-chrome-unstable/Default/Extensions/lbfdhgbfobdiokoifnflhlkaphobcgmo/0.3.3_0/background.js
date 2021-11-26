/*

TODO
====
-- find CRASH on update. maybe mp4cast.com connection onMessageExternal ? or having a port open while it upgrades? (it also crashed on first install)

- use opensubtitles md5 hash to get the imdb info!
- use qr code to test firewall problems...
- fix media slider to show preview time, also dont set current time value when dragging
- refresh network interfaces when wifi changes (detect with /status to the guessedNetworkInterface)
- use optional management permission to enable/disable chromecast app when no devices are found.
- test on chromeos, the firewall thing. (turn into mini-player)
- consolidate files in history (if filename+size match)
- store playback time for resuming !!!
- show "please leave feedback" after a few successful streams.
- if stream two successive episodes, show tip to select folder containing all the episodes (or all downloads)
- when error dialog, and goes back to playing, hide error dialog.
- if background restarts, and we were streaming, should be smart enough to know to re-start webserver (?)
- maybe ping the streaming computer (call /status constantly) and warn if they closed the lid :-)
- if receiverlistener unavailable (no chromecast devices, show other warning / troubleshooting (ask for chrome://restart maybe) (?)
- settings!!! 
- SUBTITLES!!! (VTT only? srt -> VTT)
- space bar to play/pause
- show next air date (send me a reminder?)
- add IMDB link to episode/series etc
- warn before trying to play XVID, WMV, etc (try anyway?)
- MINIMIZE / OBFUSCATE javascript !!! :-)
- think about when we openDirectory and scan all files inside...
- dont use native dialog showmodal, causes problem..


local storage :::

store mapping
{retainstr->subtitle retainstr} ?

STREAMST = [] -- time ordered array of recently selected files
FILEDATA = {} -- detailed (cached) data about the files (including arraybuffer of poster image?)
*/
console.log("BACKGROUND.JS")
var THINGS = false // if we call a bunch of chrome APIs right away, chrome seems to crash on first install.
var STREAMST = [] // stream history
var opts = {}
var retaincache = {}

function create_hidden() {
    console.log('create_hidden')
    if (OS != 'Chrome') { return }

    if (true) {
        if (chrome.app.window.get('hidden')) { return }
        console.log('creating hidden window')
        var W = 300
        var H = 120
        function oncreated(win) {
            // can also set width/top etc properties directly
            win.outerBounds.setPosition(screen.width - W, screen.availHeight - H - 60)
            win.outerBounds.setSize(W, H)
            win.show()
            win.minimize()
            win.onClosed.addListener( function() {
                // depends on WHY we are closed...
                var wins = chrome.app.window.getAll()
                var havestream = false
                for (var k in webapp.streams) {
                    havestream = true
                    break
                }
                if (havestream) {
                    if ( (wins.length == 1 && win.id == 'hidden') ||
                         wins.length == 0) {
                        setTimeout( function() {
                            create_hidden()
                        }, 1000 )
                    }
                }
            })
        }
        var opts = {id:'hidden',
                    hidden:true,
                   }

        chrome.app.window.create("hidden.html",
                                 opts,
                                 oncreated)
    }
}

function initialize_ga(cb) {
    // this doesnt let the event page unload, so will need to create an event tracker separate page probably and pipe events there.
    return
    console.log('initialize ga')
    var script = document.createElement('script')
    script.src = "google-analytics-bundle.js"
    document.body.appendChild(script)
    function onscript(evt) {
        console.log('ga script loaded',evt)
        var service = analytics.getService('MP4CastApp');
        var tracker = service.getTracker('UA-48050412-7');
        window.tracker = tracker;
        cb()
    }
    script.onload = script.onerror = onscript
}
function onPlatformInfo(info) {
    var chromeinfo = navigator.userAgent.match('Chrome/([0-9]+)')
    var majorVersion = '?'
    if (chromeinfo) {
        majorVersion = chromeinfo[1]
    }
    
    var str = 'OS=' + info.os + ',ARCH=' + info.arch+',VER='+majorVersion
    tracker.sendEvent('Platform',str)
}

function on_ga() {
    chrome.runtime.getPlatformInfo( onPlatformInfo )
}

function things() {
    if (! window.tracker) {
        initialize_ga(on_ga)
    }
    // only setup a bunch of state when app is launched or externally messaged
    THINGS = true
    console.log = function() {
        var context = "%cBG";
        var context2 = 'color:white;background:green'
        return Function.prototype.bind.call(console.log, console, context, context2);
    }();
    console.log('Things!')
    window.BG_START_TIME = new Date().getTime()
    window.STREAMCTR = 1
    window.WEBAPP_PORT = 8643
    window.MANIFEST = chrome.runtime.getManifest() // causing crash?
    window.STATE = {}
    chrome.storage.local.get('STREAMST',function(d){
        if (d.STREAMST) {
            window.STREAMST = d.STREAMST
        }
    })
    window.DEVMODE = false
    if (! chrome.runtime.getManifest().update_url) {
        console.log('UNPACKED - DEV MODE!')
        DEVMODE = true
    }
    window.VALID_REFERERS = ["http://www.mp4cast.com",
                             "http://local.mp4cast.com",
                             "https://www.mp4cast.com"]
    if (DEVMODE) {
        window.WEB_URL = "http://local.mp4cast.com:8887"
    } else {
        window.WEB_URL = "http://www.mp4cast.com"
    }
    window.OS = null
    if (navigator.userAgent.match('OS X')) {
        OS = 'Mac'
    } else if (navigator.userAgent.match("Windows")) {
        OS = "Win"
        // no matter where taskbar is, seems to pose no big problem.
    } else {
        // TODO: linux?
        OS = "Chrome"
    }
    window.webapp = null
}

var reload = chrome.runtime.reload

function ondisconnect(info1) {
    console.log('port disconnected',info1)
}
function onmessage(info1,info2) {
    console.log('onmessage',info1,info2)
}
function sentmessage(info) { console.log('sentmessage',info) }

function get_status() {
    var status = {
        uptime: (new Date() - BG_START_TIME),
        version: MANIFEST.version
    }
    if (webapp) {
        status.webapp = webapp.get_info()
    } else {
        status.webapp = null
    }
    return status
}


var getOMDBInfo_queue = []
var getOMDBInfo_queue_running = false
var getOMDBInfo_cache = {}

function getOMDBInfo(retainstr, opts, info, callback) {
    opts = opts || {}
    if (! opts.nocache) {
        var cached = getOMDBInfo_cache[retainstr]
        if (cached && cached.error !== undefined) {
            console.log('using cached omdb info',retainstr,cached)
            return callback(cached)
        }
    }
    // use a queue to fetch this otherwise we'll get errors
    getOMDBInfo_queue.push( [retainstr, opts, info, callback] )
    getOMDBInfo_processqueue()
}

function getOMDBInfo_processqueue() {
    if (getOMDBInfo_queue.length == 0) {
        return
    } else if (getOMDBInfo_queue_running) {
        return
    } else {
        // needs chrome 49 ...
        //var [retainstr, opts, info, callback] = getOMDBInfo_queue.shift(1)
        var p = getOMDBInfo_queue.shift(1)
        var retainstr = p[0], opts = p[1], info = p[2], callback = p[3];
        getOMDBInfo_queue_running = true
        console.log('omdb queue popping',retainstr)
    }

    function cbwrap(arg) {
        getOMDBInfo_queue_running = false
        if (! opts.nocache) {
            console.log("set OMDB cache",retainstr)
            getOMDBInfo_cache[retainstr] = arg
        }
        callback(arg)
        getOMDBInfo_processqueue()
    }
    
    var term = (info.ptn.title || info.ptn.episodeName || info.name)//.replace("Trailer","")
    // TODO - BETTER! search by subtitle hash !!!

    var xhr = new XMLHttpRequest
    if (info.ptn.episode) {
        var season = info.ptn.season || 1
        var queryurl = "http://www.omdbapi.com/?t="+encodeURIComponent(term)+
                 '&y=&plot=short&r=json&season='+season+'&episode='+info.ptn.episode
    } else {
        // TODO if get no result and title has some numbers on end, but plenty of terms, search without the numbers
        
        var queryurl = "http://www.omdbapi.com/?t="+encodeURIComponent(term)+'&y=&plot=short&r=json'
    }
    xhr.open("GET", queryurl)
    console.log('OMDB query',info,queryurl)
    function result(evt) {
        if (evt.target.status == 200) {
            if (evt.target.response.Error) {
                console.error("OMDB error:",evt.target.response)
                cbwrap({error:evt.target.status, evt:evt})
            } else {
                cbwrap(evt.target.response)
            }
        } else {
            console.error('OMDB request error',evt)
            cbwrap({error:evt.target.status, evt:evt})
        }
    }
    xhr.responseType = 'json'
    xhr.timeout = 2000
    xhr.ontimeout = result
    xhr.onload = result
    xhr.onerror = result
    xhr.send()
}

// no longer used?
function getdummy(callback) {
    var dummy = chrome.app.window.get('dummy')
    if (dummy) {
        callback(dummy)
    } else {
        chrome.app.window.create("dummy.html",{hidden:true,id:'dummy'}, function(win) {
            callback(win)
        })
    }
}

function proxyValidation(request) {
    // TODO maybe just test if it's an image file... because referer will be null sometimes (proxy validation)
    return false // not using proxy anymore
    
    for (var i=0; i<VALID_REFERERS.length; i++) {
        if (request.headers.referer && request.headers.referer.startsWith( VALID_REFERERS[i] )) {
            return true
        }
    }
    console.log('proxy validation fail - referer:',request.headers.referer, request.headers)
    return false
}

function StreamHandler(request) {
    WSC.DirectoryEntryHandler.prototype.constructor.call(this, null, request)
}
_.extend(StreamHandler.prototype, {
    before_get: function() {
        var retainstr = this.request.arguments.retainstr
        if (typeof retainstr == 'string') {
            chrome.fileSystem.restoreEntry( this.request.arguments.retainstr, function(entry) {
                this.fs = entry
                this.get()
            }.bind(this))
        } else {
            this.write("need to supply retainstr query parameter")
            this.finish()
        }
    }
},
         WSC.DirectoryEntryHandler.prototype)

function StatusHandler() {
    WSC.BaseHandler.prototype.constructor.call(this)
}
_.extend(StatusHandler.prototype, {
    get: function() {
        //this.setHeader('content-type','text/javascript')
        this.setHeader('content-type','application/json')
        this.setHeader('Access-Control-Allow-Origin','*') // already set globally
        this.write(JSON.stringify({status:"ok"}))
        this.finish()
    }
},
         WSC.BaseHandler.prototype)

function startWebApp(callback) {
    function onwebappstop(reason) {
        console.log('webapp stopped',reason)
        for (var key in allconns) {
            allconns[key].port.postMessage({type:'broadcast',
                                            webapp:webapp.get_info()})
        }
    }
    
    function wrapper(res) {
        // broadcast new webapp to any connections
        console.log('sending broadcast message')
        for (var key in allconns) {
            allconns[key].port.postMessage({type:'broadcast',
                                            webapp:webapp.get_info()})
        }
        if (callback) {callback(res)}
    }
    if (webapp) {
        if (webapp.starting) {
            callback(webapp.get_info())
        } else if (webapp.started) {
            callback(webapp.get_info())
        } else {
            webapp.start(wrapper, false)
        }
        return
    }

    var opts = {}
    opts.port = WEBAPP_PORT
    opts.optPreventSleep = true
    opts.optAllInterfaces = true
    opts.optTryOtherPorts = true
    opts.optRetryInterfaces = true
    opts.useCORSHeaders = true // needed for subtitles
    opts.optStopIdleServer = 1000 * 30 // 20 seconds
    opts.handlers = []
    opts.handlers.push( ['/proxy',WSC.ProxyHandler.bind(null,proxyValidation)] )
    opts.handlers.push( ['/status',StatusHandler] )
    opts.handlers.push( ['/stream.*',StreamHandler] )
    window.webapp = new WSC.WebApplication(opts)
    webapp._stop_callback = onwebappstop
    webapp.start(wrapper)
}

function collectAllFileInfo(retainstr, fileresult, callback) {
    // might be nice to store this in local storage. maybe even the images.
    //if (fileresult === undefined) { return callback(undefined) } // should catch this earlier
    if (! retainstr) { debugger }
    var retinfo = {
        name: fileresult.name,
        retainstr: retainstr,
        fullPath: fileresult.fullPath,
        ptn: ptn(fileresult.name)
    }
    function onOMDBInfo(imdb_info) {
        retinfo.imdb_info = imdb_info
        callback(retinfo)
    }
    function onmeta(meta) {
        //console.log('onmeta',meta)
        retinfo.metadata = meta
        // get imdb / OMDB info...
        var lasterr = chrome.runtime.lastError
        if (lasterr || ! meta) {
            console.error('mediaGalliers fetch error',lasterr, meta)
        }
        getOMDBInfo(retainstr, {}, retinfo, onOMDBInfo)
    }
    function onfile(f) {
        //console.log('onfile',f)
        if (! f) {
            console.error('entry.file() onfile error',f)
            debugger
            onmeta()
        }
        retinfo.size = f.size
        retinfo.modified = f.lastModified
        // check runtime.lastError
        chrome.mediaGalleries.getMetadata(f, {}, onmeta)
    }
    fileresult.file( onfile, onfile )
}

function getEntry(s,cb) {
    chrome.fileSystem.restoreEntry( s, function(entry) {
        if (entry === undefined) {
            var lasterr = chrome.runtime.lastError
            console.log('getEntry(restore) lasterr:',lasterr)
            cb({error:"file not found",message:lasterr.message})
        } else {
            cb(entry)
        }
    })
}

function getSubtitles(retainstr, callback) {
    getEntry(retainstr, function(entry) {
        function onfile(file) {
            OSTHash(file, function(f, hash) {
                console.log('got opensubtitle hash',hash)
                var url = 'http://www.opensubtitles.org/search/sublanguageid-eng/moviebytesize-'+file.size+'/moviehash-' + hash
                console.log("OPENSUBTITLE URL",url)
                callback(url)
            })
        }
        entry.file( onfile, onfile )
    })
}



function getURL(url, callback) {
    // WILL NOT WORK too well cannot transfer array buffer out of process
    var xhr = new WSC.ChromeSocketXMLHttpRequest
    xhr.open("GET",url)
    function onload(evt) {
        callback(evt)
    }
    xhr.onload = xhr.onerror = xhr.ontimeout = onload
    xhr.send()
}

function onconnectexternal(port) {
    if (!THINGS) { things() }
    //tracker.sendEvent('PortCreate',port.sender.url) // race condition with tracker... need queue
    var conn = new WebsiteConnection(port)
}

chrome.runtime.onInstalled.addListener( function(installinfo, previous) {
    //"install", "update", "chrome_update", or "shared_module_update"
    var reason = installinfo.reason
    console.log('onInstalled',installinfo,reason,previous)
    if (reason == "install") {
        chrome.storage.sync.get('everInstalled', function(d) {
            console.log('everInstalled',d)
            if (d.everInstalled) {
                // do nothing, this was from sync profile, like first
                // login on new computer
            } else {
                chrome.storage.sync.set({'everInstalled':true})
            }
        })
    }
})

function hasKey(obj) {
    for (var k in obj) {
        return true
    }
    return false
}

chrome.runtime.onUpdateAvailable.addListener( function(details) {
    console.log('update available',details)
    // TODO - only if not currently streaming...
    if (window.mp4cast && window.webapp && hasKey(window.webapp.streams)) {
        console.log("dont update now. looks like we're busy")
    } else {
        console.log('going to reload app now.')
        chrome.runtime.reload()
    }
})

chrome.runtime.onMessageExternal.addListener( function(message,sender,response) {
    console.log('onMessageExternal',message,sender)
    response("ok")
})

chrome.runtime.onConnectExternal.addListener( onconnectexternal )

function launch(info) {
    if (! THINGS) { things() }
    console.log("Launch with opts",info)
    if (info.source == 'reload') { return }

    var conncount = 0
    for (var key in allconns) {
        console.log('closing tab',key)
        allconns[key].port.postMessage({command:'onLaunchClose'})
        conncount++
    }
    // remove any existing tabs.
    //chrome.runtime.sendMessage({event:'launch',info:info})

    function ondummy(win) {
        var url = WEB_URL
        chrome.browser.openTab({url:url})
        //var url = 'chrome-extension://' + chrome.runtime.id + '/app.html'
        //window.open(url)
        win.contentWindow.close()
    }
    //chrome.app.window.create("launch.html",{id:'launch',hidden:true}, ondummy)

    chrome.browser.openTab({url:WEB_URL})

    //createReallyHiddenWindow()
}

//chrome.notifications.onClicked.addListener

function notifyHiddenWindow() {
    function oncreated() {
        
    }
    var opts = {
        type:'basic',
        iconUrl:'/icons/icon-128.png',
        title:'MP4Cast',
        message:'For this app to work, we need a window to be open.'
    }
    chrome.notifications.create('hidden',opts,oncreated)
}

function createReallyHiddenWindow() {

    /* 
       making it really hidden is a bad idea...
       instead, just create it minimized, with some basic controls available (play/pause etc)

       when they close it, simply re-open it ? hmm
       
       HM. maybe a notification is UI surface enough? like a progress bar one? and some buttons?

    */

    if (OS != "Chrome") { return }
    var win = chrome.app.window.get('hidden')
    if (win) {
        return resetPosition(win)
    }
    var SZ = 1
    var top = 0
    if (screen.availHeight > 0) {
        top = screen.availHeight - SZ
    }

    console.log('create really hidden window')
    function resetPosition(inwin) {
        var win = inwin || chrome.app.window.get('hidden')
        console.log('resetting bounds')
        win.setBounds({left:0,top:top, width:SZ, height:SZ})
        win.show()
    }

    function onBoundsChanged(win) {
        resetPosition(win)
    }

    function justClose(win) {
        win.close()
    }

    function onRestored(){
        console.log('onrestored')
        setTimeout( function() {
            resetPosition()
        }, 1)
    }
    
    function oncreated(win) {
        resetPosition(win)
        win.show()
        //win.onBoundsChanged.addListener( resetPositionTwice )
        //win.onMaximized.addListener( resetPositionTwice )
        //win.onMinimized.addListener( resetPositionTwice )

        win.onRestored.addListener( onRestored )
        win.onClosed.addListener( notifyHiddenWindow )
    }
    var opts = {
        frame:'none',
        id:'hidden',
        hidden:true,
        state:'minimized',
        resizable: false,
        focused: false
    }
    chrome.app.window.create('hidden.html',opts, oncreated)
}

chrome.app.runtime.onLaunched.addListener( launch )

/*
window.onerror = function(message, url, line) {
    // broadcast message back to webpage ? create window to do it?
    try {
        tracker.sendEvent("window.onerror("+chrome.runtime.getManifest().version+")",
                          url + "(" + line + ")", message
                         )
    } catch(e) {
        console.error('error sending window.onerror analytics event')
    }

    console.log('window.onerror triggered',[message,url,line])
}
*/
