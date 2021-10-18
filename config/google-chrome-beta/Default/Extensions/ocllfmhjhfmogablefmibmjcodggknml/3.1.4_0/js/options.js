function setKey(value) {
	var parseKeyObj = keyutil.parseKey(value);
	if (parseKeyObj['array']) {
		if (!parseKeyObj['array'][0]['ctrl'] && !parseKeyObj['array'][0]['alt'] && !parseKeyObj['array'][0]['shift'] && parseKeyObj['array'][0]['code'] == 8) {
			document.getElementById("shortcut").value = "";
			document.getElementById("shortcutNotes").innerHTML = '&nbsp;';
			return;
		} else {
			document.getElementById("shortcut").value = value;
		}
	}
	var shortcutNotes = document.getElementById("shortcutNotes");
	shortcutNotes.style.color = 'black';
	shortcutNotes.style.fontWeight = 'normal';
	if (parseKeyObj['error']) {
		shortcutNotes.innerHTML = parseKeyObj['error'];
		shortcutNotes.style.color = 'red';
	} else if (parseKeyObj['note']) {
		shortcutNotes.innerHTML = 'Note: ' + parseKeyObj['note'];
		shortcutNotes.style.color = 'blue';
	} else {
		shortcutNotes.innerHTML = '&nbsp;';
	}
	localStorage.keyString = value;
}

function key() {
	var shortcut = document.getElementById("shortcut");
	if (shortcut.value == "Meta") {
		return shortcut.value;
	}
}

$(document).ready(function() {
    chrome.storage.local.get(null, storage => {
        chrome.permissions.contains({origins: ["<all_urls>"]}, result => {
            $("#enabled").get(0).checked = result && storage["enabled"];
        });

        $("#enabled").change(function() {
            if (this.checked) {
                chrome.permissions.request({origins:["<all_urls>"], permissions:["tabs"]}, granted => {
                    if (granted) {
                        chrome.storage.local.set({"enabled": true});
                    } else {
                        $("#enabled").get(0).checked = false;
                    }
                });
            } else {
                chrome.storage.local.set({"enabled": this.checked});
            }
        });
        
        var shortcut = document.getElementById("shortcut");
        var keyString = localStorage.keyString;
        if (keyString) {
            shortcut.value = keyString;
        }
        new keyutil.InputBoxListener(shortcut,
           util.bind(key, this),
           util.bind(setKey, this));
        $("#displayTabCylcer").prop("checked", pref(storage["displayTabCylcer"], true));
        var maxRecentTabs = pref(storage["maxRecentTabs"], 10);
        $("#maxRecentTabs").val(maxRecentTabs);
        $("#save").click(function() {
            const itemsToSave = {
                "displayTabCylcer": $("#displayTabCylcer").prop("checked") ? "true" : "false",
                "maxRecentTabs": $("#maxRecentTabs").val()
            }
            if (shortcut.value) {
                itemsToSave["keys"] = JSON.stringify(keyutil.parseKey(shortcut.value));
            }
            chrome.storage.local.set(itemsToSave);
            $("#status").show().fadeOut(2000);
            $("#note").show();
        });
    });
});