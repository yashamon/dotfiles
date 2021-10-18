/*
if ((localStorage.server !== false && localStorage.server !== "false")  && (window.location.hostname != "freevpn.one" && window.location.hostname != "www.freevpn.one" && window.location.hostname != "ipunblock.com")) {

  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function()
  {
      if (xhr.readyState === XMLHttpRequest.DONE) {
          if (xhr.status === 200) {
                      var tleft = JSON.parse(xhr.responseText).timeleft;
                      //
                      if (tleft < 1  && localStorage.server != "Direct Connection") {
                        document.write('<html><body style="width:100%;height:100vh;background:#eeeeee;"><div style="margin: 60px auto;width: 400px;background:#ffffff;font-weight:100;font-size:16px;line-height:1.6em;padding:20px;font-family:sans-serif;text-align:center;">Disconnected from VPN.<br> <img src=\'https://freevpn.one/icon-128.png\'><br><br> Please visit <a href=\'https://ipunblock.com/freevpn/\'>https://www.freevpn.one</a><br>to extended your free time.</div></body></html>');
                        window.stop();
                      }
          } else {
              // console.log(xhr);
          }
      }
  };
  xhr.open("GET", 'https://www.ipunblock.com/timeleft.php', true);
  xhr.send();
}
*/
