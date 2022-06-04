g_server_url = "https://www.cloudhq.net/";

/* process xhr calls through background */
chrome.runtime.onMessage.addListener(
  function(input_request, sender, sendResponse) {
    if (input_request.what == 'PROXY_AJAX') {
      var out_request = input_request.payload;
      if (!out_request['url'] || !out_request['url'].startsWith(g_server_url)) {
        sendResponse({ what: 'error', payload: 'Invalid request' });
        return;
      }
      try {
        if (out_request.responseType === 'blob') {  // handle blob using XMLHttpRequest
          var xhr = new XMLHttpRequest();
          xhr.open(out_request.type || 'post', out_request.url, true);
          xhr.responseType = 'blob';
          if (out_request.headers) {
            $.each(out_request.headers, function(key, value) {
              xhr.setRequestHeader(key, value);
            });
          }
          xhr.onerror = function () {
            sendResponse({ what: 'error', payload: data, status: xhr.status });
          };
          xhr.onload = function (e) {
            var headerMap = {};
            var headers = xhr.getAllResponseHeaders();  // Get the raw header string
            var arr = headers.trim().split(/[\r\n]+/);
            arr.forEach(function (line) {
              var parts = line.split(': ');
              var header = parts.shift().toLowerCase();
              var value = parts.join(': ');
              headerMap[header] = value;
            });
            
            var reader = new FileReader();
            reader.readAsDataURL(this.response);
            reader.onload = function() {
              sendResponse({ what: 'success', payloadType: 'blob', payload: reader.result, headers: headerMap, status: xhr.status });
            };
          };
          
          xhr.send(JSON.stringify(out_request.data));

        } else {

          // use jquery ajax call to 
          out_request.success = function (data, textStatus, jqXHR) {
            sendResponse({ what: 'success', payload: data, status: jqXHR.status });
          };
          out_request.error = function (data, textStatus, jqXHR) {
            sendResponse({ what: 'error', payload: data, status: jqXHR.status });
          };

          $.ajax(out_request);
        }
      } catch(e) {
        sendResponse({ what: 'error', payload: e });
      }

      return true;  // Will respond asynchronously.
    }
  }
);

function refreshBrowser(target, bring_to_foreground_flag, install_or_update) {

  chrome.windows.getAll({
    populate: true
  }, function(windows) {
    var found_existing_flag = false;

    windows.forEach(function(win) {
      win.tabs.forEach(function(tab) {
        // Ignore tabs not matching the target.
        if (target === 'gmail') {
          if (!/https:\/\/(mail|inbox)\.google\.com/.test(tab.url)) return;
        } else {
          return; // Unknown target.
        }

        // Reload the matching tab.
        chrome.tabs.reload(tab.id);

        // If this is the first one found, activate it.
        if (bring_to_foreground_flag && !found_existing_flag) {
          if (install_or_update === 'install') {
            chrome.tabs.update(tab.id, {
              url : "https://mail.google.com",
              active: true
            });
          } else {
            chrome.tabs.update(tab.id, {
              active: true
            });

          }
        }

        found_existing_flag = true;
      });
    });

    // If no gmail tab found, just open a new one.
    if (bring_to_foreground_flag && !found_existing_flag && install_or_update === 'install') {
      chrome.tabs.create({
        url : "https://mail.google.com",
        active: true
      });
    }
  });
}


// Refresh on install and update
chrome.runtime.onInstalled.addListener(function(details) {
  if (details.reason === 'install' || details.reason === 'update') {
    refreshBrowser('gmail', true, details.reason);
  }
});

// listener for edit html - we basically just proxy all messages between HTML editor 
// and chrome extension content script living inside Gmail
var popup_hash_by_draft_id = {};

chrome.runtime.onConnect.addListener(function(gmail_port) {

  console.log("chrome.runtime.onConnect.addListener gmail_port=",gmail_port);
  var draft_id = gmail_port.name;

  popup_hash_by_draft_id[draft_id] = { 'gmail_port': gmail_port };

  gmail_port.onMessage.addListener(function(message) {

    if (message && message.action == 'open_gmail_html_popup') {

      var draft_id = message.draft_id;
      var email_draft_html = message.email_draft_html;
      var url = message.url;

      popup_hash_by_draft_id[draft_id] = { 'gmail_port': gmail_port, 'email_draft_html': email_draft_html, url: url };
      chrome.windows.create({ url: url, type: "popup", focused: true }, function(win) {
        popup_hash_by_draft_id[draft_id]['window_id'] = win.id;
        chrome.windows.update(win.id, {
          left: Math.round(window.left),
          top: Math.round(window.top),
          width: Math.round(window.width),
          height: Math.round(window.height),
          focused: true
        });

      });
      

    } else if (message && message.action == 'open_gmail_html_compser_iframe') {

      var draft_id = message.draft_id;
      var email_draft_html = message.email_draft_html;
      var url = message.url;

      popup_hash_by_draft_id[draft_id] = { 'gmail_port': gmail_port, 'email_draft_html': email_draft_html, url: url };

    }
  });

  gmail_port.onDisconnect.addListener(function(gmail_port_disconnected) {

    popup = popup_hash_by_draft_id[gmail_port_disconnected.name];
    if (popup) {

      // since popup_hash_by_draft_id is going to be null we will reply abort on next save causing
      // everything to die
      var win_id = popup_hash_by_draft_id[draft_id]['window_id'];
      if (win_id) {
        chrome.windows.remove(win_id, function() {
          
        });
      }
      popup_hash_by_draft_id[gmail_port_disconnected.name] = null;

      if (popup['popup_port']) {
        popup_port = popup['popup_port'];
        popup_port.postMessage({ action: 'abort' });
      }

    }
  });

});

// start listening to this external processed and proxy all messages if there is a port
chrome.runtime.onConnectExternal.addListener(function(popup_port) {

  console.log("chrome.runtime.onConnectExternal.addListener popup_port=",popup_port);

  var draft_id = popup_port.name;
  var popup = popup_hash_by_draft_id[draft_id];
  var gmail_port = null;
  if (popup && popup['gmail_port']) {
    gmail_port = popup['gmail_port'];
  }

  if (gmail_port) {

    // listed on popup port
    popup_port.onMessage.addListener(function(message) {

      if (message && message.action == 'edit_start') {

        // send info to the popup
        var draft_id = message.draft_id;
        var popup = popup_hash_by_draft_id[draft_id];
        var email_draft_html = popup['email_draft_html'];

        // update popup with the port
        popup['popup_port'] = popup_port;
        
        popup_port.postMessage({ action: 'edit_start', email_draft_html: email_draft_html, draft_id: draft_id });

      } else if (message && message.action == 'edit_save') {

        gmail_port.postMessage({ action: 'edit_save', email_draft_html: message.email_draft_html, draft_id: message.draft_id });
        popup_port.postMessage({ action: 'edit_save' });

      } else if (message && message.action == 'edit_end') {

        gmail_port.postMessage({ action: 'edit_end' });
        popup_port.postMessage({ action: 'edit_end' });

        if (message.draft_id) {
          var win_id = popup_hash_by_draft_id[message.draft_id]['window_id'];
          chrome.windows.remove(win_id, function() {

          });
        }

        if (gmail_port.sender && gmail_port.sender.tab) {
          chrome.windows.getAll({ populate: true, windowTypes: ["normal", "popup"]}, function(windows_list) {
          
            for (var i = 0; i < windows_list.length; i++) {
              var win = windows_list[i];
              if (win && win.tabs && win.tabs.indexOf(gmail_port.sender.tab.id) > 0) {
                chrome.windows.update(win.id, { focused: true });
              }
            }
          
          });
          chrome.tabs.update(gmail_port.sender.tab.id, { active: true });
        }

      } else if (message && message.action === 'file_upload') {
        
        var xhr, formData;
        var dataURI = message.dataURI;
        var byteString = atob(dataURI.split(',')[1]);
        var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
        var ab = new ArrayBuffer(byteString.length);
        var ia = new Uint8Array(ab);

        // set the bytes of the buffer to the correct values
        for (var i = 0; i < byteString.length; i++) {
          ia[i] = byteString.charCodeAt(i);
        }

        var blob = new Blob([ab], { type: mimeString });

        xhr = new XMLHttpRequest();
        xhr.withCredentials = false;
        xhr.open('POST', g_server_url + 'main_gmail_auto_followup/upload_attachment');
        xhr.onload = function () {
          var json;

          if (xhr.status != 200) {
            popup_port.postMessage({ action: 'file_upload_status', 'status': 'error', 'message': 'HTTP Error: ' + xhr.status });
            return;
          }

          json = JSON.parse(xhr.responseText);

          if (!json || typeof json.location != 'string') {
            popup_port.postMessage({ action: 'file_upload_status', 'status': 'error', 'message': 'Invalid JSON: ' + xhr.responseText });
            return;
          }

          popup_port.postMessage({ action: 'file_upload_status', 'status': 'success', 'file_url': json.location });

        };

        formData = new FormData();
        formData.append('file', blob, message.filename);
        xhr.send(formData);
      }
    });

    // listed on popup port
    popup_port.onDisconnect.addListener(function(message) {
         
      gmail_port.postMessage({ action: 'edit_end' });

    });

  } else {

    // if there is no gmail port related to this popup answer with abort message
    popup_port.postMessage({ action: 'abort' });
  }
  return true;

});

function openTab(tab_data, match_url) {
  console.log("openTab:",match_url)
  if (match_url) {
    chrome.tabs.query({ }, function(tabs) {
      var tabs_length = tabs.length;
      var tab_found = false;
      for (var i = 0; i < tabs_length; i++) {
        var tab = tabs[i];
        if (!tab_found && tab && tab.url && tab.url.match(match_url) && tab.status == "complete") {
          tab_found = true;
          tab_data['active'] = true;
          chrome.tabs.update(tab.id, tab_data);
          focusWindow(tab.id);
        }
      }
      window.setTimeout(function() {
        if (!tab_found) {
          chrome.tabs.create(tab_data);
        }
      }, 0);
    });
  } else {
    chrome.tabs.create(tab_data);
  }
}

/*
 * On click of extension icon on top right corner, try to switch email if multiple gmail accounts and redirect them to dashboard
 */
chrome.browserAction.onClicked.addListener(function(tab) { 
    
  chrome.permissions.contains({
    permissions: ['storage']
  }, function(result) {
    if (result) {
      // get current information about extension
      var install_timestamp = new Date().getTime();
      chrome.storage.sync.get("install_timestamp", function (result) {
        if (!result) {
          try { 
            chrome.storage.sync.set(timestamp, function() {
            }); 
          } catch (err) {}
        } else {
          install_timestamp = result;
        }
      });

    } else {
      alert('storage permissions missing');
      // The extension doesn't have the permissions.
    }
  });

  chrome.tabs.query({ active: true, currentWindow: true }, function(tabs) {
    var tab = tabs[0];
    var email_or_login = null;
    
    if (tab && tab.url && tab.url.startsWith('https://mail.google.com/') && tab.status == "complete") {
      chrome.tabs.sendMessage(tab.id, { action: "getUserEmailAddress" }, function(email_or_login) {
        var url_dashboard;
        if (email_or_login) {
          url_dashboard = g_server_url + 'dashboard/apps/gmail_html?email_or_login='+encodeURIComponent(email_or_login)+'&switch_login=1&registration_code=via_gmail_html&provider_mode=google_gmail&auto_login=true';
        } else {
          url_dashboard = g_server_url + 'dashboard/apps/gmail_html?registration_code=via_gmail_html&provider_mode=google_gmail&auto_login=true';
        }
        openTab({url: url_dashboard}, url_dashboard);
      });
    } else {
      var url_dashboard = g_server_url + 'dashboard/apps/gmail_html?registration_code=via_gmail_html&provider_mode=google_gmail&auto_login=true';
      openTab({url: url_dashboard}, url_dashboard);
    }
    
  });
  
});

chrome.runtime.setUninstallURL("https://www.cloudhq.net/uninstall_chrome_extension?product_what=gmail_html");
