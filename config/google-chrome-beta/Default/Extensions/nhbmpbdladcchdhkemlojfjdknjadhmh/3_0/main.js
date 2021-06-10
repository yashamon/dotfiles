const croshId = 'nkoccljplnhpfnfiajclkommnmllphnl';
const stableId = 'pnhechapfaindjhompbnflcldabbghjo';
const devId = 'okddffdblfhhnmhodogpojmfkjmhinfp';

chrome.app.runtime.onLaunched.addListener(() => {
  // We try stable & dev apps because they have background pages & crosh access.
  // The crosh app doesn't have a bg page, and the extensions don't have crosh
  // access (at least currently).

  const msg = {
    'command': 'crosh',
    'width': 735,
    'height': 440,
    'window': true
  };

  const sendMessage = (id, onerror) => {
    console.log(`Sending message to ${id} ...`);
    chrome.runtime.sendMessage(id, msg, null, (response) => {
      if (chrome.runtime.lastError) {
        console.log(`Extension doesn't exist: ${chrome.runtime.lastError.message}`);
        onerror();
      } else {
        if (response.error) {
          console.log(`Remote failed:`, response);
          onerror();
        } else {
          console.log(`Remote worked:`, response);
        }
      }
    });
  };

  // Try the dev app first.
  sendMessage(devId, () => {
    // Fallback to the stable app.
    sendMessage(stableId, () => {
      console.log('Falling back to window.open()');
      // Try our old window.open method until secure shell releases have been
      // made with the new APIs.
      window.open(
          `chrome-extension://${stableId}/html/crosh.html`, '',
          `chrome=no,close=yes,resize=yes,scrollbars=yes,minimizable=yes,` +
          `width=${msg.width},height=${msg.height},` +
          // Note: "background" here (and in the manifest) are to workaround
          // https://crbug.com/708870.  Once that hits stable, we can drop it.
          `background`
      );
    });
  });
});
