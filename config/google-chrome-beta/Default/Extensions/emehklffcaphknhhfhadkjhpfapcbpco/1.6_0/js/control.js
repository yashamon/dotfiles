$('document').ready( function() {
	
	////////////////////////////////////////////////////////////////////////////////////////
	//
	// Functions
	//
	////////////////////////////////////////////////////////////////////////////////////////
	
	// Update password length
	function updateLength(val) {
		
		var oldLength = Number($('#optionLength').val());
		var newLength = oldLength;
		var storedLength = localStorage['optionLength'];
		var optLengthDisabled = $('#optionLengthWrapper').hasClass('disabled')
		
		if(isNaN(oldLength))
			oldLength = lengthDefault;
		
		if(val != undefined)
			newLength = oldLength + val;
		
		if(newLength < lengthMin)
			newLength = lengthMin;
			
		if(newLength > lengthMax)
			newLength = lengthMax;
		
		if(newLength != oldLength && optLengthDisabled == false)
			$('#optionLength').val(newLength);
		
		if(newLength != storedLength)
			storeSetting('optionLength', newLength);
			
	}
	
	// Generate new password
	function generate() {
		
		var length;
		var keys = '';
		var result = '';

		if($('#optionLengthRandom').is(':checked') == true) {
			length = lengthMin + Math.round(Math.random() * (lengthMax - lengthMin));
		}
		else {
			length = Number($('#optionLength').val());
		}

		if($('#optionLowercase').is(':checked') == true)
			keys += 'abcdefghijklmnopqrstuvwxyz';
		if($('#optionUppercase').is(':checked') == true)
			keys += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		if($('#optionNumber').is(':checked') == true)
			keys += '0123456789';
		if($('#optionCustom').is(':checked') == true)
			keys += $('#optionCustomBox').attr('value');

		for(var i = 1; i <= length; i++) {
			var keyPos = Math.round(Math.random() * (keys.length - 1));
			result += keys.charAt(keyPos);
		}
    
		$('#result').html(result.length > lengthDisplay ? result.substr(0, lengthDisplay - 3) + '...' : result);
		$('#result').attr('title', result);
		$('#resultContainer').html(result);

		historyItems[historyItemCount] = result;

		if( $('#optionsRememberPasswords').is(':checked') == true ) {
			storeSetting( 'passwordHistory', JSON.stringify(historyItems) );
		}

		addToList(result);
	}
	
	// Adds generated password to history tab
	function addToList(pass) {
		
		var itemCount = ++historyItemCount;
		var itemString = '<label class="historyItem"><input type="checkbox" /><span title="' + pass.replace(/"/g, '&quot;') + '">' + (pass.length > lengthDisplay ? pass.substr(0, lengthDisplay - 3) + '...' : pass) + '</span></label>';
		
		if(itemCount == 1) {
			$('#historyListWrapper').html(itemString);
			$('#historySelectionWrapper').show();
		}
		else {
			$('#historyListWrapper').prepend(itemString);
		}
		
		checkButtonStates();
		
	}
	
	// Checks / sets buttons states
	function checkButtonStates() {
		// Custom letters box
		if($('#optionCustom').is(':checked') == true) {
			$('#optionCustomBox').css('display', 'block');
		}
		else {
			$('#optionCustomBox').css('display', 'none');
		}
		
		// Random length checkbox
		if($('#optionLengthRandom').is(':checked') == true) {
			$('#optionLengthWrapper').addClass('disabled');
			$('#optionLength').attr('readonly', 'readonly');
		}
		else {
			$('#optionLengthWrapper').removeClass('disabled');
			$('#optionLength').attr('readonly', '');
		}
		
		// Button Generate
		if($('#optionLowercase').is(':checked') == false && $('#optionUppercase').is(':checked') == false && $('#optionNumber').is(':checked') == false && ($('#optionCustom').is(':checked') == false || $('#optionCustomBox').attr('value') == ''))
			$('#btnGenerate').addClass('disabled');
		else
			$('#btnGenerate').removeClass('disabled');
		
		// Button CopyResult
		if($('#result').html() == '')
			$('#btnCopyResult').addClass('disabled');
		else
			$('#btnCopyResult').removeClass('disabled');
		
		// Button CopySelected
		if($('#historyListWrapper .historyItem input[type="checkbox"]').is(':checked'))
			$('#btnCopySelected').removeClass('disabled');
		else
			$('#btnCopySelected').addClass('disabled');
		
		// Button CopyAll
		if(historyItemCount == 0)
			$('#btnCopyAll').addClass('disabled');
		else
			$('#btnCopyAll').removeClass('disabled');
		
		// Remember password history
		if($('#optionsRememberPasswords').is(':checked') == true) {
			storeSetting( 'passwordHistory', JSON.stringify(historyItems) );
		}
		else {
			localStorage.removeItem('passwordHistory');
		}
		

	}
	
	// Copy given text to clipboard
	function copyToClipboard(text) {
		$('#copyField').val(text);
		$('#copyField').select();
		document.execCommand('Copy');
		$('#copyField').blur();
	}
	
	// Loads localization strings
	function loadLocalizations() {
		$('#appClose').attr('title', chrome.i18n.getMessage("appClose"))
		
		$('#tabGenerator').html(chrome.i18n.getMessage("tabGenerator"));
		$('#tabHistory').html(chrome.i18n.getMessage("tabHistory"));
		$('#tabOptions').attr('title', chrome.i18n.getMessage("tabOptions"));
		
		$('#optUse').html(chrome.i18n.getMessage("optUse"));
		$('#optLength').html(chrome.i18n.getMessage("optLength"));
		$('#optLengthRandom').html(chrome.i18n.getMessage("optLengthRandom"));
		$('#optUseLowercase').html(chrome.i18n.getMessage("optUseLowercase"));
		$('#optUseUppercase').html(chrome.i18n.getMessage("optUseUppercase"));
		$('#optUseNumber').html(chrome.i18n.getMessage("optUseNumber"));
		$('#optUseCustom').html(chrome.i18n.getMessage("optUseCustom"));
		
		$('#btnGenerate').html(chrome.i18n.getMessage("btnGenerate"));
		$('#btnCopyResult').attr('title', chrome.i18n.getMessage("btnCopyResult"));
		$('#btnCopySelected').html(chrome.i18n.getMessage("btnCopySelected"));
		$('#btnCopyAll').html(chrome.i18n.getMessage("btnCopyAll"));
		
		$('#historySelectLabel').html(chrome.i18n.getMessage("historySelectLabel"));
		$('#historySelectAll').html(chrome.i18n.getMessage("historySelectAll"));
		$('#historySelectNone').html(chrome.i18n.getMessage("historySelectNone"));
		$('#historySelectInvert').html(chrome.i18n.getMessage("historySelectInvert"));
		
		$('#historyClearList').html(chrome.i18n.getMessage("historyClearList"));
		$('#historyClearConfirmMessage').html(chrome.i18n.getMessage("historyClearListConfirm"));
		$('#btnClearYes').html(chrome.i18n.getMessage("historyClearListConfirmYes"));
		$('#btnClearNo').html(chrome.i18n.getMessage("historyClearListConfirmNo"));
		
		$('#optionsRememberPasswordsLabel').html(chrome.i18n.getMessage("optionsRememberHistory"));
		$('#rememberPassWarning').html(chrome.i18n.getMessage("rememberPassWarning"));
		
		$('.noItems').html(chrome.i18n.getMessage("noItems"));
	}
	
	// Initialize default settings
	function initDefaultSettings() {
		defaultSettings['optionLowercase']          = true;
		defaultSettings['optionUppercase']          = true;
		defaultSettings['optionNumber']             = true;
		defaultSettings['optionCustom']             = false;
		defaultSettings['optionCustomBox']          = '@$#';
		defaultSettings['optionLength']             = 12;
		defaultSettings['optionLengthRandom']       = false;
		defaultSettings['optionsRememberPasswords'] = false;
	}

	// Loads complete settings from localStorage or sets default value
	function loadSettings() {

		$('#optionLowercase').attr('checked', (localStorage['optionLowercase'] == undefined ? defaultSettings['optionLowercase'] : (localStorage['optionLowercase'] == 'true' ? true : false)));
		$('#optionUppercase').attr('checked', (localStorage['optionUppercase'] == undefined ? defaultSettings['optionUppercase'] : (localStorage['optionUppercase'] == 'true' ? true : false)));
		$('#optionNumber').attr('checked', (localStorage['optionNumber'] == undefined ? defaultSettings['optionNumber'] : (localStorage['optionNumber'] == 'true' ? true : false)));
		$('#optionCustom').attr('checked', (localStorage['optionCustom'] == undefined ? defaultSettings['optionCustom'] : (localStorage['optionCustom'] == 'true' ? true : false)));
		$('#optionCustomBox').attr('value', (localStorage['optionCustomBox'] == undefined ? defaultSettings['optionCustomBox'] : localStorage['optionCustomBox']));
		$('#optionLength').attr('value', (localStorage['optionLength'] == undefined ? defaultSettings['optionLength'] : localStorage['optionLength']));
		$('#optionLengthRandom').attr('checked', (localStorage['optionLengthRandom'] == undefined ? defaultSettings['optionLengthRandom'] : (localStorage['optionLengthRandom'] == 'true' ? true : false)));
		$('#optionsRememberPasswords').attr('checked', (localStorage['optionsRememberPasswords'] == undefined ? defaultSettings['optionsRememberPasswords'] : (localStorage['optionsRememberPasswords'] == 'true' ? true : false)));
		
		if( localStorage['passwordHistory'] != undefined ) {
			historyItems = JSON.parse(localStorage['passwordHistory']);
			
			if( historyItems.length > 0 ) {
				for ( i = 0; i < historyItems.length; i++ ) {
					addToList( historyItems[i] );
				}
			}
			
		}
		
		checkButtonStates();
	}
	
	// Store settings to localStorage
	function storeSetting(name, value) {
		localStorage[name] = value;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////
	//
	// Event handlers
	//
	////////////////////////////////////////////////////////////////////////////////////////
	
	// X to close window
	$('#appClose').click(function() {
		window.close();
	});
	
	// Tab switching
	$('#appTabs .tab').click(function() {
		$('#appTabs .tab.selected').removeClass('selected');
		$(this).addClass('selected');
		
		var contentId = 'content' + $(this).attr('id').substr(3);
		
		$('#appContents .content.selected').removeClass('selected');
		$('#appContents #' + contentId).addClass('selected');
	});
	
	// Password length field keydown handler
	$('#optionLength').keydown(function(e) {
		if((e.keyCode == 33 || e.keyCode == 34) || (e.keyCode >= 37 && e.keyCode <= 40) || (e.keyCode >= 96 && e.keyCode <= 105) || e.keyCode == 16 || (e.keyCode >= 48 && e.keyCode <= 57)) {
			
			switch(e.keyCode) {
			case 38:
				updateLength(1);
				return false;
				break;
			case 40:
				updateLength(-1);
				return false;
				break;
			case 33:
				updateLength(5);
				return false;
				break;
			case 34:
				updateLength(-5);
				return false;
				break;
			}
		}
		else {
			return false;
		}
			
	});
	
	// Password length field keyup handler
	$('#optionLength').keyup(function() {
		updateLength(0);
	});
	
	// Password length increase button
	$('#optionLengthUp').click(function() {
		updateLength(1);
		$('#optionLength').focus();
		return false;
	});
	
	// Password length decrease button
	$('#optionLengthDown').click(function() {
		updateLength(-1);
		$('#optionLength').focus();
		return false;
	});
	
	// Options checkboxes + Options tabs settings
	$('#tblOptions input[type="checkbox"], #optionsRememberPasswords').click(function() {
		storeSetting($(this).attr('id'), $(this).is(':checked'));
		checkButtonStates();
	});
	
	// Custom letters box keyup handler
	$('#optionCustomBox').keyup(function() {
		storeSetting($(this).attr('id'), $(this).attr('value'));
		checkButtonStates();
	});
	
	// Random length checkbox
	$('#optionLengthRandom').click(function() {
		checkButtonStates();
	});
	
	// Button Generate
	$('#btnGenerate').click(function() {
		if(!$(this).hasClass('disabled'))
			generate();
		return false;
	});
	
	// Button CopyResult
	$('#btnCopyResult').click(function() {
		if(!$(this).hasClass('disabled')) {
			copyToClipboard($('#resultContainer').html());
		}
		return false;
	});
	
	// Button CopySelected
	$('#btnCopySelected').click(function() {
		if(!$(this).hasClass('disabled')) {
			var copyContent = '';
			
			$('#historyListWrapper .historyItem').each(function() {
				if($(this).find('input[type="checkbox"]').is(':checked') == true)
					copyContent += $(this).find('span').attr('title') + "\n";
			});
			
			copyToClipboard(copyContent);
		}
		return false;
	});
	
	// Button CopyAll
	$('#btnCopyAll').click(function() {
		if(!$(this).hasClass('disabled')) {
			var copyContent = '';
			
			$('#historyListWrapper .historyItem span').each(function() {
				copyContent += $(this).attr('title') + "\n";
			});
			
			copyToClipboard(copyContent);
		}
		return false;
	});
	
	// History List - Select all
	$('#historySelectAll').click(function() {
		$('#historyListWrapper .historyItem input[type="checkbox"]').attr('checked', true);
		checkButtonStates();
		return false;
	});
	
	// History List - Select none
	$('#historySelectNone').click(function() {
		$('#historyListWrapper .historyItem input[type="checkbox"]').attr('checked', false);
		checkButtonStates();
		return false;
	});
	
	// History List - Select invert
	$('#historySelectInvert').click(function() {
		$('#historyListWrapper .historyItem input[type="checkbox"]').each(function() {
			if( $(this).is(':checked') == true )
				$(this).attr('checked', false);
			else
				$(this).attr('checked', true);
		});
		checkButtonStates();
		return false;
	});
	
	// Clear history confirm
	$('#historyClearList').click(function() {
		$('#historyClearConfirmWrapper').fadeIn('fast');
	});
	
	// Clear history confirm yes
	$('#btnClearYes').click(function() {
		historyItems = new Array;
		historyItemCount = 0;
		localStorage.removeItem('passwordHistory');
		$('#historyListWrapper').html('<div class="noItems"></div>');
		$('.noItems').html(chrome.i18n.getMessage("noItems"));
		$('#historySelectionWrapper').hide();
		$('#historyClearConfirmWrapper').hide();
		checkButtonStates();
	});
	
	// Clear history confirm no
	$('#btnClearNo').click(function() {
		$('#historyClearConfirmWrapper').fadeOut('fast');
	});
	
	// History list items event delegation
	$('#historyListWrapper .historyItem input[type="checkbox"]').live('click', function() {
		checkButtonStates();
	});

	////////////////////////////////////////////////////////////////////////////////////////
	//
	// Extension settings initialization
	//
	////////////////////////////////////////////////////////////////////////////////////////
	
	var defaultSettings = new Array;
	var historyItems = new Array;
	var historyItemCount = 0;
	var lengthMin = 1;
	var lengthMax = 128;
	var lengthDisplay = 25;
	
	initDefaultSettings();
	loadSettings();
	loadLocalizations();
});