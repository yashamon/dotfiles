mejs.Utility={b64toBlob:function(b,g,d){g=g||"";d=d||1024;function e(h){return h.charCodeAt(0)}var c=atob(b),a=[];for(var f=0;f<c.length;f+=d){a.push(new Uint8Array(Array.prototype.map.call(c.slice(f,f+d),e)))}return new Blob(a,{type:g})},secondsToTimeCode:function(c){var a=Math.floor(c/3600)%24,b=Math.floor(c/60)%60,d=Math.floor(c%60);return(a?("0"+a).slice(-2)+":":"")+("0"+b).slice(-2)+":"+("0"+d).slice(-2)},timeCodeToSeconds:function(c){var e=c.replace(",",".").split(":"),b=parseInt(e[0],10),d=parseInt(e[1],10),a=parseFloat(e[2]);return(b*3600)+(d*60)+a},addToPixel:function(b,a){return(parseFloat(b)||0)+a},deBounce:function(a,b){var c=null;return function(){var d=Array.prototype.slice.call(arguments);if(c!==null){clearTimeout(c)}c=setTimeout(function(){a.apply(null,d);c=null},b||500)}},storage:{get:function(c,d,a){if(packaged_app){var b={};b[c]=d;chrome.storage.sync.get(b,function(e){a(e[c])})}},set:function(c,d,a){if(packaged_app){var b={};b[c]=d;chrome.storage.sync.set(b,a)}}},unzip:function(b,a){zip.createReader(new zip.BlobReader(b),function(c){var d=[];c.getEntries(function(e){mejs.Utility.waterfall(e,function(h,f,g){h.getData(new zip.BlobWriter(),function(i){d.push(new File([i],h.filename));if(f===e.length-1){a(d)}g()})})})},function(){a([])})},gunzip:function(b,a){zip.createGZipReader(new zip.BlobReader(mejs.Utility.b64toBlob(b)),function(c){c.gunzip(new zip.BlobWriter(),function(d){a(d)})})},waterfall:function(e,d){var b=-1,a=e.length,c=function(){if(++b===a){return}d(e[b],b,c)};c()},webvvt:function(h){var e=/^([a-zA-z]+-)?[0-9]+$/,f=/^([0-9]{2}:[0-9]{2}:[0-9]{2}([,.][0-9]{1,3})?) --\> ([0-9]{2}:[0-9]{2}:[0-9]{2}([,.][0-9]{3})?)(.*)$/;var d,c=h.split(/\r?\n/),b={text:[],times:[]},a,g;for(d=0;d<c.length;d++){if(e.exec(c[d])){d++;a=f.exec(c[d]);if(a&&d<c.length){d++;g=c[d];d++;while(c[d]){g+="\n"+c[d++]}b.text.push(g);b.times.push({start:mejs.Utility.timeCodeToSeconds(a[1]),stop:mejs.Utility.timeCodeToSeconds(a[3]),settings:a[5]})}}}return b},ass:function(f){var e,c,d,b=f.split(/\r?\n/),a={text:[],times:[]};for(e=0;e<b.length;e++){c=b[e];if(c.startsWith("Dialogue: ")){c=c.slice(10).split(",");if(c.length>10){c.push(c.splice(9).join(","))}a.text.push(c.pop().replace("\\N","\n").replace(/\{.*?\}/g,""));a.times.push({start:mejs.Utility.timeCodeToSeconds(c[1]),stop:mejs.Utility.timeCodeToSeconds(c[2])})}}return a},dfxp:function(d){var c=/<p begin="(.*?)" end="(.*?)">(.*?)<\/p>/g,b,a={text:[],times:[]};while(b=c.exec(d)){a.text.push(b[3]);a.times.push({start:mejs.Utility.timeCodeToSeconds(b[1]),stop:mejs.Utility.timeCodeToSeconds(b[2])})}return a}};