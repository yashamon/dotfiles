function keydown(evt) {
    if (evt.metaKey || evt.ctrlKey) {
        // prevent chrome app close window etc shortcuts
        // metakey is osx
        // ctrlkey for win
        evt.preventDefault()
    }
}
function ondom() {
    document.body.addEventListener('keydown', keydown)
}
document.addEventListener("DOMContentLoaded", ondom)
