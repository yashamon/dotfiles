// This is in order that we try.
const ids = [
  'algkcnfjnajfhgimadimbjhmpaeohhln',  // Dev Extension.
  'iodihamcpbpeioajjeobimgagajmlibd',  // Stable Extension.
  'okddffdblfhhnmhodogpojmfkjmhinfp',  // Dev App.
  'pnhechapfaindjhompbnflcldabbghjo',  // Stable App.
  // This doesn't have a bg page we can send messages to.
  //'nkoccljplnhpfnfiajclkommnmllphnl',  // Crosh.
];

function sendMessage(id, msg) {
  return new Promise((resolve) => {
    console.log(`Sending message to ${id} ...`);
    chrome.runtime.sendMessage(id, msg, null, (response) => {
      let ret = false;
      if (chrome.runtime.lastError) {
        console.log(`Extension doesn't exist: ${chrome.runtime.lastError.message}`);
      } else {
        if (response.error) {
          console.log(`Remote failed:`, response);
        } else {
          console.log(`Remote worked:`, response);
          ret = true;
        }
      }
      resolve(ret);
    });
  });
}

chrome.app.runtime.onLaunched.addListener(async () => {
  const msg = {
    'command': 'crosh',
    'width': 735,
    'height': 440,
    'window': true,
  };

  for (let i = 0; i < ids.length; ++i) {
    const ret = await sendMessage(ids[i], msg);
    if (ret) {
      return;
    }
  }

  // If we're still here, we haven't been able to talk to any Secure Shell.
  chrome.app.window.create('error.html');
});
