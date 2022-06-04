
document.addEventListener("DOMContentLoaded", function() {
    console.log("wrapper: loaded");
    // Create iframe
    var chat_url = decodeURIComponent(window.location.href.replace(/.*iframe_src=/, ''));
    if (!chat_url || chat_url == '') {
      return;
    }
    var iframe = document.getElementById('iframe_container');
    iframe.setAttribute('src', chat_url);
    var re = /https:\/\/.*\//i;
    var g_server_url = re.exec(chat_url)[0];
    // forward messages
    window.addEventListener('message', function(e) {
      if (g_server_url.startsWith(e.origin)) {
        // forward this to parent 
        parent.postMessage(e.data, '*');
      } else if (e.origin == 'chrome-extension://' + chrome.runtime.id || 'https://mail.google.com'.startsWith(e.origin)) {
        if (iframe) {
          iframe.contentWindow.postMessage(e.data, '*');
        } else {
          console.log("label_sharing_chat_wrapper: message ignored. no iframe")
        }
      } else {
        console.log("label_sharing_chat_wrapper: message ignored. e.origin=" + e.origin)
      }
    });
  });