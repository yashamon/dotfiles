document.getElementById('texforgmail').addEventListener('click', texforgmail_fun);
document.getElementById('options').addEventListener('click', options_fun);
document.getElementById('help').addEventListener('click', help_fun);
document.getElementById('about').addEventListener('click', about_fun);
//document.getElementById('changelog').addEventListener('click', changelog_fun);

function texforgmail_fun() {
    window.open('https://chrome.google.com/webstore/detail/tex-for-gmail-inbox/gjnmclkoadjdljnfmbnnhaahilafoeji', '_blank');
}
function options_fun() {
    window.open('options.html', '_blank');
}
function help_fun() {
    window.open('help.html', '_blank');
}
function about_fun() {
    window.open('about.html', '_blank');
}
function changelog_fun() {
    window.open('changelog.html', '_blank');
}

