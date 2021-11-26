function Notify() {
  chrome.notifications.clear("bingwall", function() {});
  chrome.notifications.create("bingwall", {type: 'basic', iconUrl: 'icons/128.png', title: "Bing Background Wallpaper", message: "Wallpaper refreshed ..."},function() {});
}

function reload() {
  console.log("force refresh starting ...");
  var httpRequest = new XMLHttpRequest();
  httpRequest.onreadystatechange = function() {
    if (httpRequest.readyState === 4) {
      if (httpRequest.status === 200) {
        data = this.response;
        url = data.images[0].url;
        if(url) {
          chrome.wallpaper.setWallpaper({'url': 'https://www.bing.com'+url, 'layout': 'STRETCH', 'filename': 'bing_wallpaper'}, Notify);
          }
      } else {
        console.log("Something went wrong. Are you connected to internet?");
      }
    }
  };
  httpRequest.open('GET', 'https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1');
  httpRequest.responseType = 'json';
  httpRequest.send();
}

document.getElementById("reload").addEventListener("click", reload);
