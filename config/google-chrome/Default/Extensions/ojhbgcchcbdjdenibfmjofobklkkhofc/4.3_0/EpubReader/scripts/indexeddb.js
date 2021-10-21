/*  
        Simple EPUB Reader based on BiB/i
            BiB/i by @satorumurmur
                http://sarasa.la/bib/i/

        Licensed under the MIT license
            http://opensource.org/licenses/mit-license.php

        Modified work Copyright
            Kunihiro Ando
                senna5150ando@gmail.com
                2014-11-20T18:17:51Z  
*/

var indexedDB = window.indexedDB;
var IDBTransaction = window.IDBTransaction;
var openRequest = indexedDB.open("epub",1);
var DBOBJ = function(){};
openRequest.onupgradeneeded = function(e) {
    var thisDb = e.target.result;
    if(!thisDb.objectStoreNames.contains("epub")) {
        var objectStore = thisDb.createObjectStore("epub", { keyPath: "id", autoIncrement:false });  
        objectStore.createIndex("epubid","epubid", {unique:false,multiEntry:true});         
    }
}
openRequest.onsuccess = function(e) {
    DBOBJ.DB = e.target.result;
    DBOBJ.DB.onerror = function(e) {};
}
DBOBJ.remvoelastflag = false;
DBOBJ.prototype.create = function(obj,callback){
    if(obj.epubid&&obj.files&&obj.BName){
        var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
        var objectStore = transaction.objectStore("epub");   
        var files = obj.files;
        for (var i = 0; i < files.length; i++) {
            var item = files[i];
            if(!item.astxt){
                item.astxt = "";
            }
            var req = objectStore.put({
                id:obj.epubid+"__epub__dbitem_"+item.FileName,
                epubid:obj.epubid,
                FileName:item.FileName,
                blob:item.blob,
                astxt:item.astxt,
                BName:obj.BName,
                xy:obj.xy,
                coverimg:obj.coverimg
            });
            req.onsuccess = function() {};
        };
        transaction.oncomplete = function(){
            setTimeout(function(){
                if(callback&&typeof callback == "function"){
                    callback();
                }
            },1200);
        };
    }else{
        L.shutUpLoading();      
    }
};
DBOBJ.prototype.updateScrollPosition = function(obj,callback){
    var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
    var store = transaction.objectStore("epub");   
    var rq = store.get(obj.epubid+"__epub__dbitem_META-INF/container.xml");
    rq.onsuccess = function() {
        var result = this.result;
        if(result){
            var epubid = obj.epubid;
            obj.id = epubid+"__epub__dbitem_META-INF/container.xml#pos";
            var request = store.put(obj);
        }
    };
};
DBOBJ.prototype.sendScrollPosition = function(epubid,callback){  
    var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
    var store = transaction.objectStore("epub");   
    var rq = store.get(epubid+"__epub__dbitem_META-INF/container.xml#pos");
    rq.onsuccess = function() {
        var result = this.result;
        if(result){
            callback(result);
        }
    };
};
DBOBJ.prototype.getByEpubID = function(epubid,callback){
    var transaction = DBOBJ.DB.transaction(["epub"], "readonly");
    var objectStore = transaction.objectStore("epub");
    var index = objectStore.index("epubid");
    var rangeTest = IDBKeyRange.only(epubid);
    var items = {};
    index.openCursor(rangeTest).onsuccess = function(e) {
        var cursor = e.target.result;
        if (cursor){
            if(cursor.key === epubid) {
                items[cursor.value.FileName] = cursor.value;
            }
            cursor.continue();
        }else{
	        if(callback&&typeof callback == "function"){
                var obj = {};
                obj.files = items;
                callback(obj);
            }
        }
    };
    index.openCursor(rangeTest).onerror = function(e) {
    };
    transaction.oncomplete = function(){
    };
}
DBOBJ.prototype.clearByEpubID = function(epubid,callback){
    var that = this;
    DBOBJ.remvoelastflag = false;
    var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
    var objectStore = transaction.objectStore("epub");
    var index = objectStore.index("epubid");
    var rangeTest = IDBKeyRange.only(epubid);
    var items = {};
    var emptyflg = true;
    index.openCursor(rangeTest).onsuccess = function(e) {
        var cursor = e.target.result;
        if (cursor){
            if(cursor.key === epubid) {
                emptyflg = false;
                that.delete(cursor.value.id,callback);
            }
            cursor.continue();
        }else{
            if(emptyflg){
                if(callback&&typeof callback == "function")callback();
            }else if(callback&&typeof callback == "function"){
                DBOBJ.remvoelastflag = true;
            }   
        }
    };
    index.openCursor(rangeTest).onerror = function(e) {
    };
    transaction.oncomplete = function(){
    }; 
}
DBOBJ.prototype.getAllInfo = function(epubids,idx,items,callback){
    var that = this;
    var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
    var store = transaction.objectStore("epub");   
    var epubid = epubids[idx];
    var rq = store.get(epubid);
    rq.onsuccess = function() {
        var result = this.result;
        if(result){
            items.push(result);
        }
        idx++
        var epubid = epubids[idx];
        if(epubid){
            that.getAllInfo(epubids,idx,items,callback);
        }else{
            if(callback&&typeof callback == "function"){
                callback(items);
            }
        }
    };
    transaction.oncomplete = function(){
    };
}
DBOBJ.prototype.delete = function(id,callback){
    var transaction = DBOBJ.DB.transaction(["epub"], "readwrite");
    var objectStore = transaction.objectStore("epub");
    var req = objectStore.delete(id);
    req.onsuccess = function() {
    };
    transaction.oncomplete = function(){
        if(DBOBJ.remvoelastflag){
            DBOBJ.remvoelastflag = false;
            callback();
        }
    };
}
DBOBJ.prototype.deleteObjectStore = function(){
    var trans = DBOBJ.DB.transaction(["epub"], "readwrite");
    var store = trans.objectStore("epub");
    var request = store.clear();
    request.onsuccess = function (e) {}
}

