
function InputHandler(element, callback) {

	function isContentEditable(target){
		return target.contentEditable == "true";
	}

	function setCaret(target, position){
		
		if(target.setSelectionRange != undefined) {
		    target.setSelectionRange(position, position);
		}

		else if(isContentEditable(target)){

			var selection = window.getSelection();
	        var range = document.createRange();

	        range.setStart(selection.focusNode, position);
	        range.collapse(false);
	        selection.removeAllRanges();
	    	selection.addRange(range);
		}
	}

	function getCaret(target) {

		if(target.selectionStart != undefined)
			return target.selectionStart;

		if(isContentEditable(target)){
        	var selection = window.getSelection();
        	if (selection.rangeCount)
            	return selection.getRangeAt(0).endOffset;
    	}

	    return null;
	}

	function getValue(target){

		if(target.value != undefined)
			return target.value;

		if(isContentEditable(target)){
			var selection = window.getSelection();
			return selection.focusNode.textContent;
		}
		
		return null;
	}

	function setValue(target, value){

		if(target.value != undefined)
			target.value = value;

		else if(isContentEditable(target)){
			var selection = window.getSelection();
			selection.focusNode.textContent = value;
		} 
	}

	var sequence = 0;
    var skip = false;

    function inputEventHandler(e) {

        if (e.target.matches(":-webkit-autofill"))
            return;

        if (skip) {
            skip = false;
            return;
        }

        var value = getValue(e.target);
        if (value == null) return;

        var end = getCaret(e.target);
        if (end == null) return;

        var start = Math.max(end - 3, 0);

        for (var i = end - 1; i >= start; --i)
            if (!/[A-z\u0400-\u04FF'#"]/.test(value[i])) {
                start = i + 1;
                break;
            }

        var text = value.substring(start, end);

        if (text.length == 0) {
            if (callback) callback(value);
            return;
        }

        chrome.runtime.sendMessage({
                command: 'translit',
                text: text,
                sequence: ++sequence
            },
            function(response) {

                var rValue = response.value;
                var ldiff = text.length - rValue.length;
                if (response.sequence == sequence && text != rValue) {
                    setValue(e.target, value.substring(0, start) + rValue + value.substring(end));
                    setCaret(e.target, end - ldiff);
                }

                if (callback) callback(e.target.value);
            });
    }

    function pasteEventHandler(e) {
         skip = true;
    }

    function keydownEventHandler(e) {
        if (e.keyCode == 8 || e.keyCode == 46)
            skip = true;
    }

    this.enable = function(enable) {

        skip = false;

        var events = {
            "input": inputEventHandler,
            "paste": pasteEventHandler,
            "keydown": keydownEventHandler
        };

        for (var evt in events)
            (enable ? element.addEventListener : element.removeEventListener)(evt, events[evt], true);

    }

}