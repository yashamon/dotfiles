// Created by BrowserNative http://browsernative.com/bing-wallpaper-chromebook-app/

function Run() {
  console.log("Got Alarm! Updating wallpaper ...");
  var httpRequest = new XMLHttpRequest();
  httpRequest.onreadystatechange = function() {
    if (httpRequest.readyState === 4) {
      if (httpRequest.status === 200) {
        // data = JSON.parse(httpRequest.responseText);
        data = this.response;
        if(data.images[0].url) {
          var imgURL = data.images[0].url;
          var hash = data.images[0].hsh;
          var message = data.images[0].copyright;
          chrome.storage.local.get({lastHash: 'None'}, function(items) {
            if(hash != items.lastHash) setWall(imgURL, hash, message);
            else console.log("New wallpaper not available.");
          });
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

function Notify(title) {
  chrome.notifications.create("bingwall", {type: 'basic', iconUrl: 'icons/128.png', title: "Bing Background Wallpaper", message: title, contextMessage: "New wallpaper! Click to see ..."},function() {}) }

function reply() {
  window.open(launchURL);
}



function setWall(url, hash, message) {
  chrome.wallpaper.setWallpaper({
    'url': 'https://www.bing.com'+url,
    'layout': 'STRETCH',
    'filename': 'bing_wallpaper'
  }, function() {
    chrome.storage.local.set({lastHash: hash});
    Notify(message);
    launchURL = 'https://www.bing.com'+url;
    }
  );
}


chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('app.html', {state: 'maximized'});
});


chrome.alarms.onAlarm.addListener(Run);

chrome.notifications.onClicked.addListener(reply);

// refresh wallpaper every hour

chrome.runtime.onStartup.addListener( function() {
  chrome.alarms.create("update", {"delayInMinutes": 2,"periodInMinutes": 60});
});

chrome.runtime.onInstalled.addListener( function(details) {
  if(details.reason == "install") {
    open("https://browsernative.com/bing-wallpaper-chromebook-app/");
    Run();
    chrome.alarms.create("update", {"delayInMinutes": 60,"periodInMinutes": 60});
  }
});
