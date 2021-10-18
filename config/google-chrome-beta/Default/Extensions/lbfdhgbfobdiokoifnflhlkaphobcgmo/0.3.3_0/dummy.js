function selectFile(opts, callback) {
    function wrapcallback(result) {
        console.log('file select result',result)
        if (result === undefined) {
            callback(result)
        } else {
            callback(result)
        }
        setTimeout( function() {
            //chrome.app.window.get('dummy').close()
            window.close()
        }, 1)

    }

    // acceptsMultiple:true, // TODO, allow multi select.
    chrome.fileSystem.chooseEntry(opts, wrapcallback)
}

if (window._after_load) {
    selectFile( window._after_load[0], window._after_load[1] )
    window._after_load = undefined
}
