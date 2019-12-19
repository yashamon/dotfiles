(function() {
    'use strict';
    var allconnsctr = 1
    window.allconns = {}
    window.urlcache = {} // would be better to tie this to retainstr so we can invalidate when needed?

    function WebsiteConnection(port) {
        this.port = port
        this.thisportid = allconnsctr++
        allconns[this.thisportid] = this
        console.log('received onconnection request on port',port, port.sender.url)
        //createReallyHiddenWindow()
        port.postMessage(get_status())
        this._setup()
    }
    WebsiteConnection.prototype = {
        onDisconnect: function(port) {
            console.warn('port disconnected',port,port.sender.url)
            delete allconns[this.thisportid]
            this._cleanup()
        },
        onMessage: function(msg, port) {
            function response(msgout) {
                port.postMessage({reqid:msg.reqid,
                                  body: msgout})
            }
            // add to a message queue and handle at our leisure
            console.log('portMsg',msg.body)
            if (msg.reqid) {
                var body = msg.body

                if (body.command == 'status') {
                    port.postMessage( { reqid: msg.reqid,
                                        body: get_status() } )
                } else if (body.command == 'selectFile') {
                    // TODO -- make sure dont have another session going...
                    function ondummy(dummy) {
                        var cwincb = function(fileresult) {
                            if (fileresult) {
                                // todo accept multi file select (in which it becomes an array of length > 0
                                
                                var retainstr = chrome.fileSystem.retainEntry(fileresult)

                                //console.log('fileresult',fileresult)
                                function oncollected(info) {
                                    info.retainstr = retainstr

                                    // store this in file history
                                    STREAMST.push({ // TODO consolidate duplicates
                                        // TODO store subtitle files separately..
                                        time:new Date().getTime(),
                                        size:info.size,
                                        name:info.name,
                                        retainstr:info.retainstr
                                    }) // store this in local storage
                                    if (STREAMST.length > 500) {
                                        STREAMST = STREAMST.slice(1,STREAMST.length)
                                    }
                                    chrome.storage.local.set({STREAMST:STREAMST})

                                    response(info)
                                }
                                if (body.type != 'subtitle') {
                                    collectAllFileInfo(retainstr, fileresult, oncollected)
                                } else {
                                    var retainstr = chrome.fileSystem.retainEntry(fileresult)
                                    // setup a URL route?
                                    response({retainstr:retainstr})
                                }
                            } else {
                                response(fileresult)
                            }
                        }
                        if (body.type == 'subtitle') {
                            var selectOpts = { type:'openFile',
                                               accepts:[{extensions:["srt","vtt"],
                                                         mimeTypes:['text/vtt','application/x-subrip']}]
                                             }
                            
                        } else {
                            var selectOpts = { type:'openFile',
                                               accepts:[{extensions:["mkv","mp4"],
                                                         mimeTypes:['video/*']}]
                                             }
                        }
                        var cwin = dummy.contentWindow
                        if (cwin.selectFile) {
                            cwin.selectFile( selectOpts, cwincb )
                        } else {
                            // javascript not yet loaded
                            cwin._after_load = [ selectOpts, cwincb ]
                        }
                        
                    }
                    getdummy(ondummy)
                    
                } else if (body.command == 'getMediaInfo') {
                    // get the info ...
                    chrome.fileSystem.restoreEntry(body.retainstr, function(entry) {
                        if (entry === undefined) {
                            var lasterr = chrome.runtime.lastError
                            console.log('getMediaInfo->restoreEntry lasterr:',lasterr)
                            response({error:"file not found",message:lasterr.message})
                        } else {
                            collectAllFileInfo(body.retainstr, entry, response)
                        }
                    })
                } else if (body.command == 'getPreviousStreams') {
                    response(STREAMST)
                } else if (body.command == 'ensureFirewallOpen') {
                    if (window.create_hidden) {
                        create_hidden()
                    }
                    response("ok")
                } else if (body.command == 'clearHistory') {
                    STREAMST = []
                    chrome.storage.local.set({'STREAMST':STREAMST})
                    response(STREAMST)
                } else if (body.command == 'getSubtitles') {
                    getSubtitles(body.retainstr, response)
                } else if (body.command == 'getURL') {
                    // needs to come through message passing (possibly in multiple messages...)
                    // does not need to split into multiples, since limit is around 128MB
                    // (http://stackoverflow.com/a/31928402/1236215)
                    console.log('get url',body.url)
                    if (! body.nocache) {
                        var cached = urlcache[body.url]
                        if (cached) {
                            console.log('using cached url',body.url)
                            response(cached)
                            return
                        }
                    }
                    getURL(body.url, function(evt,xhr) {
                        if (evt.target.code == 200) {
                            // success!
                            var ab = evt.target.response
                            //var b = new Blob([ab], {type:evt.target.responseHeadersParsed['content-type']})
                            var b = new Blob([ab]) // dont care about mime type really
                            var fr = new FileReader
                            var onread = function(data) {
                                var d = data.target.result
                                var result = {data:d, headers:evt.target.responseHeadersParsed}
                                if (! body.nocache) {
                                    urlcache[body.url] = result
                                }
                                response(result)
                            }
                            fr.onload = fr.onerror = onread
                            fr.readAsBinaryString(b)
                        } else {
                            response({error:evt.target.code})
                        }
                    })
                } else if (body.command == 'checkForUpdate') {
                    if (DEVMODE) {
                        response({error:"devmode"})
                    } else {
                        console.log('requesting app update check')
                        chrome.runtime.requestUpdateCheck(function(status, details) {
                            var info = {status:status,details:details}
                            console.log('requested app update info',info)
                            response(info)
                        })
                    }
                } else if (body.command == 'checkServerStatus') {
                    var xhr = new XMLHttpRequest
                    xhr.open('GET',body.URL)
                    xhr.responseType = 'json'
                    function onload(evt) {
                        console.log('server status check result',evt)
                        if (evt.type == 'timeout') {
                            // maybe put the refreshNetwork interface command in here
                            response({error:'timeout'})
                        } else if (evt.target.status == 200) {
                            response(evt.target.response)
                        } else {
                            response({error:'unknown', status:evt.target.status})
                        }
                    }
                    xhr.timeout = 1000
                    xhr.onload = xhr.onerror = xhr.ontimeout = onload
                    try {
                        xhr.send()
                    } catch(e) {
                        response({error:e})
                    }
                } else if (body.command == 'refreshNetworkInterfaces') {
                    if (window.webapp) { webapp.refreshNetworkInterfaces(response) }
                } else if (body.command == 'prepareStream') {
                    var retainstr = body.retainstr
                    createReallyHiddenWindow()                    
                    prepareStream( retainstr, response )
                } else if (body.command == 'reload') {
                    port.postMessage( { reqid: msg.reqid,
                                        body: "restarting..." } )
                    setTimeout( chrome.runtime.reload, 500 )
                } else if (body.command == 'stopWebServer') {
                    if (window.webapp) {
                        webapp.stop()
                        return port.postMessage( { reqid: msg.reqid,
                                                   body: { success: true } } )
                    } else {
                        return port.postMessage( { reqid: msg.reqid,
                                                   body: { error: "did not have webapp" } } )
                    }
                } else if (body.command == 'startWebServer') {
                    startWebApp( response )
                } else {
                    port.postMessage( { reqid: msg.reqid,
                                        body: "unknown command" } )
                }
            } else {
                console.warn('unhandled message from port',port)
            }
        },
        _setup: function() {
            this._boundOnDisconnect = this.onDisconnect.bind(this)
            this._boundOnMessage = this.onMessage.bind(this)    
            this.port.onDisconnect.addListener( this._boundOnDisconnect )
            this.port.onMessage.addListener( this._boundOnMessage )
        },
        _cleanup: function() {
            this.port.onDisconnect.removeListener( this._boundOnDisconnect )
            this.port.onMessage.removeListener( this._boundOnMessage )
            this.port = null
        },
    }

    window.WebsiteConnection = WebsiteConnection
})()
