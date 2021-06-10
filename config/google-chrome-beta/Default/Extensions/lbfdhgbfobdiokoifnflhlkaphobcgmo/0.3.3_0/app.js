function onmessage(msg) {
    console.log('got msg',msg)
    if (msg.event == 'launch') {
        window.close()
    }
}
function onchoose() {
    chrome.fileSystem.chooseEntry({type:"openDirectory"},function(d){window.d=d})
}
function ondom() {
    document.getElementById('choose').addEventListener('click',onchoose)
}
document.addEventListener("DOMContentLoaded",ondom)
chrome.runtime.onMessage.addListener( onmessage )
