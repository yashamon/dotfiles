/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./node_modules/event-lite/event-lite.js":
/*!***********************************************!*\
  !*** ./node_modules/event-lite/event-lite.js ***!
  \***********************************************/
/***/ ((module) => {

/**
 * event-lite.js - Light-weight EventEmitter (less than 1KB when gzipped)
 *
 * @copyright Yusuke Kawasaki
 * @license MIT
 * @constructor
 * @see https://github.com/kawanet/event-lite
 * @see http://kawanet.github.io/event-lite/EventLite.html
 * @example
 * var EventLite = require("event-lite");
 *
 * function MyClass() {...}             // your class
 *
 * EventLite.mixin(MyClass.prototype);  // import event methods
 *
 * var obj = new MyClass();
 * obj.on("foo", function() {...});     // add event listener
 * obj.once("bar", function() {...});   // add one-time event listener
 * obj.emit("foo");                     // dispatch event
 * obj.emit("bar");                     // dispatch another event
 * obj.off("foo");                      // remove event listener
 */

function EventLite() {
  if (!(this instanceof EventLite)) return new EventLite();
}

(function(EventLite) {
  // export the class for node.js
  if (true) module.exports = EventLite;

  // property name to hold listeners
  var LISTENERS = "listeners";

  // methods to export
  var methods = {
    on: on,
    once: once,
    off: off,
    emit: emit
  };

  // mixin to self
  mixin(EventLite.prototype);

  // export mixin function
  EventLite.mixin = mixin;

  /**
   * Import on(), once(), off() and emit() methods into target object.
   *
   * @function EventLite.mixin
   * @param target {Prototype}
   */

  function mixin(target) {
    for (var key in methods) {
      target[key] = methods[key];
    }
    return target;
  }

  /**
   * Add an event listener.
   *
   * @function EventLite.prototype.on
   * @param type {string}
   * @param func {Function}
   * @returns {EventLite} Self for method chaining
   */

  function on(type, func) {
    getListeners(this, type).push(func);
    return this;
  }

  /**
   * Add one-time event listener.
   *
   * @function EventLite.prototype.once
   * @param type {string}
   * @param func {Function}
   * @returns {EventLite} Self for method chaining
   */

  function once(type, func) {
    var that = this;
    wrap.originalListener = func;
    getListeners(that, type).push(wrap);
    return that;

    function wrap() {
      off.call(that, type, wrap);
      func.apply(this, arguments);
    }
  }

  /**
   * Remove an event listener.
   *
   * @function EventLite.prototype.off
   * @param [type] {string}
   * @param [func] {Function}
   * @returns {EventLite} Self for method chaining
   */

  function off(type, func) {
    var that = this;
    var listners;
    if (!arguments.length) {
      delete that[LISTENERS];
    } else if (!func) {
      listners = that[LISTENERS];
      if (listners) {
        delete listners[type];
        if (!Object.keys(listners).length) return off.call(that);
      }
    } else {
      listners = getListeners(that, type, true);
      if (listners) {
        listners = listners.filter(ne);
        if (!listners.length) return off.call(that, type);
        that[LISTENERS][type] = listners;
      }
    }
    return that;

    function ne(test) {
      return test !== func && test.originalListener !== func;
    }
  }

  /**
   * Dispatch (trigger) an event.
   *
   * @function EventLite.prototype.emit
   * @param type {string}
   * @param [value] {*}
   * @returns {boolean} True when a listener received the event
   */

  function emit(type, value) {
    var that = this;
    var listeners = getListeners(that, type, true);
    if (!listeners) return false;
    var arglen = arguments.length;
    if (arglen === 1) {
      listeners.forEach(zeroarg);
    } else if (arglen === 2) {
      listeners.forEach(onearg);
    } else {
      var args = Array.prototype.slice.call(arguments, 1);
      listeners.forEach(moreargs);
    }
    return !!listeners.length;

    function zeroarg(func) {
      func.call(that);
    }

    function onearg(func) {
      func.call(that, value);
    }

    function moreargs(func) {
      func.apply(that, args);
    }
  }

  /**
   * @ignore
   */

  function getListeners(that, type, readonly) {
    if (readonly && !that[LISTENERS]) return;
    var listeners = that[LISTENERS] || (that[LISTENERS] = {});
    return listeners[type] || (listeners[type] = []);
  }

})(EventLite);


/***/ }),

/***/ "./node_modules/ieee754/index.js":
/*!***************************************!*\
  !*** ./node_modules/ieee754/index.js ***!
  \***************************************/
/***/ ((__unused_webpack_module, exports) => {

exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = (e * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = (m * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = ((value * c) - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}


/***/ }),

/***/ "./node_modules/webextension-polyfill/dist/browser-polyfill.js":
/*!*********************************************************************!*\
  !*** ./node_modules/webextension-polyfill/dist/browser-polyfill.js ***!
  \*********************************************************************/
/***/ (function(module, exports, __webpack_require__) {

/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");
var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;/*** IMPORTS FROM imports-loader ***/

browser = undefined;

(function (global, factory) {
  if (true) {
    !(__WEBPACK_AMD_DEFINE_ARRAY__ = [module], __WEBPACK_AMD_DEFINE_FACTORY__ = (factory),
		__WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ?
		(__WEBPACK_AMD_DEFINE_FACTORY__.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__)) : __WEBPACK_AMD_DEFINE_FACTORY__),
		__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
  } else { var mod; }
})(typeof globalThis !== "undefined" ? globalThis : typeof self !== "undefined" ? self : this, function (module) {
  /* webextension-polyfill - v0.8.0 - Tue Apr 20 2021 11:27:38 */

  /* -*- Mode: indent-tabs-mode: nil; js-indent-level: 2 -*- */

  /* vim: set sts=2 sw=2 et tw=80: */

  /* This Source Code Form is subject to the terms of the Mozilla Public
   * License, v. 2.0. If a copy of the MPL was not distributed with this
   * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
  "use strict";

  if (typeof browser === "undefined" || Object.getPrototypeOf(browser) !== Object.prototype) {
    const CHROME_SEND_MESSAGE_CALLBACK_NO_RESPONSE_MESSAGE = "The message port closed before a response was received.";
    const SEND_RESPONSE_DEPRECATION_WARNING = "Returning a Promise is the preferred way to send a reply from an onMessage/onMessageExternal listener, as the sendResponse will be removed from the specs (See https://developer.mozilla.org/docs/Mozilla/Add-ons/WebExtensions/API/runtime/onMessage)"; // Wrapping the bulk of this polyfill in a one-time-use function is a minor
    // optimization for Firefox. Since Spidermonkey does not fully parse the
    // contents of a function until the first time it's called, and since it will
    // never actually need to be called, this allows the polyfill to be included
    // in Firefox nearly for free.

    const wrapAPIs = extensionAPIs => {
      // NOTE: apiMetadata is associated to the content of the api-metadata.json file
      // at build time by replacing the following "include" with the content of the
      // JSON file.
      const apiMetadata = {
        "alarms": {
          "clear": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "clearAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "get": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "getAll": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "bookmarks": {
          "create": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "get": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getChildren": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getRecent": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getSubTree": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getTree": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "move": {
            "minArgs": 2,
            "maxArgs": 2
          },
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeTree": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "search": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "update": {
            "minArgs": 2,
            "maxArgs": 2
          }
        },
        "browserAction": {
          "disable": {
            "minArgs": 0,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "enable": {
            "minArgs": 0,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "getBadgeBackgroundColor": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getBadgeText": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getPopup": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getTitle": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "openPopup": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "setBadgeBackgroundColor": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "setBadgeText": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "setIcon": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "setPopup": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "setTitle": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          }
        },
        "browsingData": {
          "remove": {
            "minArgs": 2,
            "maxArgs": 2
          },
          "removeCache": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeCookies": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeDownloads": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeFormData": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeHistory": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeLocalStorage": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removePasswords": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removePluginData": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "settings": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "commands": {
          "getAll": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "contextMenus": {
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "update": {
            "minArgs": 2,
            "maxArgs": 2
          }
        },
        "cookies": {
          "get": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getAll": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getAllCookieStores": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "set": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "devtools": {
          "inspectedWindow": {
            "eval": {
              "minArgs": 1,
              "maxArgs": 2,
              "singleCallbackArg": false
            }
          },
          "panels": {
            "create": {
              "minArgs": 3,
              "maxArgs": 3,
              "singleCallbackArg": true
            },
            "elements": {
              "createSidebarPane": {
                "minArgs": 1,
                "maxArgs": 1
              }
            }
          }
        },
        "downloads": {
          "cancel": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "download": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "erase": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getFileIcon": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "open": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "pause": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeFile": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "resume": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "search": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "show": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          }
        },
        "extension": {
          "isAllowedFileSchemeAccess": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "isAllowedIncognitoAccess": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "history": {
          "addUrl": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "deleteAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "deleteRange": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "deleteUrl": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getVisits": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "search": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "i18n": {
          "detectLanguage": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getAcceptLanguages": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "identity": {
          "launchWebAuthFlow": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "idle": {
          "queryState": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "management": {
          "get": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "getSelf": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "setEnabled": {
            "minArgs": 2,
            "maxArgs": 2
          },
          "uninstallSelf": {
            "minArgs": 0,
            "maxArgs": 1
          }
        },
        "notifications": {
          "clear": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "create": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "getAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "getPermissionLevel": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "update": {
            "minArgs": 2,
            "maxArgs": 2
          }
        },
        "pageAction": {
          "getPopup": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getTitle": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "hide": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "setIcon": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "setPopup": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "setTitle": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          },
          "show": {
            "minArgs": 1,
            "maxArgs": 1,
            "fallbackToNoCallback": true
          }
        },
        "permissions": {
          "contains": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getAll": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "request": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "runtime": {
          "getBackgroundPage": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "getPlatformInfo": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "openOptionsPage": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "requestUpdateCheck": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "sendMessage": {
            "minArgs": 1,
            "maxArgs": 3
          },
          "sendNativeMessage": {
            "minArgs": 2,
            "maxArgs": 2
          },
          "setUninstallURL": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "sessions": {
          "getDevices": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "getRecentlyClosed": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "restore": {
            "minArgs": 0,
            "maxArgs": 1
          }
        },
        "storage": {
          "local": {
            "clear": {
              "minArgs": 0,
              "maxArgs": 0
            },
            "get": {
              "minArgs": 0,
              "maxArgs": 1
            },
            "getBytesInUse": {
              "minArgs": 0,
              "maxArgs": 1
            },
            "remove": {
              "minArgs": 1,
              "maxArgs": 1
            },
            "set": {
              "minArgs": 1,
              "maxArgs": 1
            }
          },
          "managed": {
            "get": {
              "minArgs": 0,
              "maxArgs": 1
            },
            "getBytesInUse": {
              "minArgs": 0,
              "maxArgs": 1
            }
          },
          "sync": {
            "clear": {
              "minArgs": 0,
              "maxArgs": 0
            },
            "get": {
              "minArgs": 0,
              "maxArgs": 1
            },
            "getBytesInUse": {
              "minArgs": 0,
              "maxArgs": 1
            },
            "remove": {
              "minArgs": 1,
              "maxArgs": 1
            },
            "set": {
              "minArgs": 1,
              "maxArgs": 1
            }
          }
        },
        "tabs": {
          "captureVisibleTab": {
            "minArgs": 0,
            "maxArgs": 2
          },
          "create": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "detectLanguage": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "discard": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "duplicate": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "executeScript": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "get": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getCurrent": {
            "minArgs": 0,
            "maxArgs": 0
          },
          "getZoom": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "getZoomSettings": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "goBack": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "goForward": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "highlight": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "insertCSS": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "move": {
            "minArgs": 2,
            "maxArgs": 2
          },
          "query": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "reload": {
            "minArgs": 0,
            "maxArgs": 2
          },
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "removeCSS": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "sendMessage": {
            "minArgs": 2,
            "maxArgs": 3
          },
          "setZoom": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "setZoomSettings": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "update": {
            "minArgs": 1,
            "maxArgs": 2
          }
        },
        "topSites": {
          "get": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "webNavigation": {
          "getAllFrames": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "getFrame": {
            "minArgs": 1,
            "maxArgs": 1
          }
        },
        "webRequest": {
          "handlerBehaviorChanged": {
            "minArgs": 0,
            "maxArgs": 0
          }
        },
        "windows": {
          "create": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "get": {
            "minArgs": 1,
            "maxArgs": 2
          },
          "getAll": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "getCurrent": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "getLastFocused": {
            "minArgs": 0,
            "maxArgs": 1
          },
          "remove": {
            "minArgs": 1,
            "maxArgs": 1
          },
          "update": {
            "minArgs": 2,
            "maxArgs": 2
          }
        }
      };

      if (Object.keys(apiMetadata).length === 0) {
        throw new Error("api-metadata.json has not been included in browser-polyfill");
      }
      /**
       * A WeakMap subclass which creates and stores a value for any key which does
       * not exist when accessed, but behaves exactly as an ordinary WeakMap
       * otherwise.
       *
       * @param {function} createItem
       *        A function which will be called in order to create the value for any
       *        key which does not exist, the first time it is accessed. The
       *        function receives, as its only argument, the key being created.
       */


      class DefaultWeakMap extends WeakMap {
        constructor(createItem, items = undefined) {
          super(items);
          this.createItem = createItem;
        }

        get(key) {
          if (!this.has(key)) {
            this.set(key, this.createItem(key));
          }

          return super.get(key);
        }

      }
      /**
       * Returns true if the given object is an object with a `then` method, and can
       * therefore be assumed to behave as a Promise.
       *
       * @param {*} value The value to test.
       * @returns {boolean} True if the value is thenable.
       */


      const isThenable = value => {
        return value && typeof value === "object" && typeof value.then === "function";
      };
      /**
       * Creates and returns a function which, when called, will resolve or reject
       * the given promise based on how it is called:
       *
       * - If, when called, `chrome.runtime.lastError` contains a non-null object,
       *   the promise is rejected with that value.
       * - If the function is called with exactly one argument, the promise is
       *   resolved to that value.
       * - Otherwise, the promise is resolved to an array containing all of the
       *   function's arguments.
       *
       * @param {object} promise
       *        An object containing the resolution and rejection functions of a
       *        promise.
       * @param {function} promise.resolve
       *        The promise's resolution function.
       * @param {function} promise.reject
       *        The promise's rejection function.
       * @param {object} metadata
       *        Metadata about the wrapped method which has created the callback.
       * @param {boolean} metadata.singleCallbackArg
       *        Whether or not the promise is resolved with only the first
       *        argument of the callback, alternatively an array of all the
       *        callback arguments is resolved. By default, if the callback
       *        function is invoked with only a single argument, that will be
       *        resolved to the promise, while all arguments will be resolved as
       *        an array if multiple are given.
       *
       * @returns {function}
       *        The generated callback function.
       */


      const makeCallback = (promise, metadata) => {
        return (...callbackArgs) => {
          if (extensionAPIs.runtime.lastError) {
            promise.reject(new Error(extensionAPIs.runtime.lastError.message));
          } else if (metadata.singleCallbackArg || callbackArgs.length <= 1 && metadata.singleCallbackArg !== false) {
            promise.resolve(callbackArgs[0]);
          } else {
            promise.resolve(callbackArgs);
          }
        };
      };

      const pluralizeArguments = numArgs => numArgs == 1 ? "argument" : "arguments";
      /**
       * Creates a wrapper function for a method with the given name and metadata.
       *
       * @param {string} name
       *        The name of the method which is being wrapped.
       * @param {object} metadata
       *        Metadata about the method being wrapped.
       * @param {integer} metadata.minArgs
       *        The minimum number of arguments which must be passed to the
       *        function. If called with fewer than this number of arguments, the
       *        wrapper will raise an exception.
       * @param {integer} metadata.maxArgs
       *        The maximum number of arguments which may be passed to the
       *        function. If called with more than this number of arguments, the
       *        wrapper will raise an exception.
       * @param {boolean} metadata.singleCallbackArg
       *        Whether or not the promise is resolved with only the first
       *        argument of the callback, alternatively an array of all the
       *        callback arguments is resolved. By default, if the callback
       *        function is invoked with only a single argument, that will be
       *        resolved to the promise, while all arguments will be resolved as
       *        an array if multiple are given.
       *
       * @returns {function(object, ...*)}
       *       The generated wrapper function.
       */


      const wrapAsyncFunction = (name, metadata) => {
        return function asyncFunctionWrapper(target, ...args) {
          if (args.length < metadata.minArgs) {
            throw new Error(`Expected at least ${metadata.minArgs} ${pluralizeArguments(metadata.minArgs)} for ${name}(), got ${args.length}`);
          }

          if (args.length > metadata.maxArgs) {
            throw new Error(`Expected at most ${metadata.maxArgs} ${pluralizeArguments(metadata.maxArgs)} for ${name}(), got ${args.length}`);
          }

          return new Promise((resolve, reject) => {
            if (metadata.fallbackToNoCallback) {
              // This API method has currently no callback on Chrome, but it return a promise on Firefox,
              // and so the polyfill will try to call it with a callback first, and it will fallback
              // to not passing the callback if the first call fails.
              try {
                target[name](...args, makeCallback({
                  resolve,
                  reject
                }, metadata));
              } catch (cbError) {
                console.warn(`${name} API method doesn't seem to support the callback parameter, ` + "falling back to call it without a callback: ", cbError);
                target[name](...args); // Update the API method metadata, so that the next API calls will not try to
                // use the unsupported callback anymore.

                metadata.fallbackToNoCallback = false;
                metadata.noCallback = true;
                resolve();
              }
            } else if (metadata.noCallback) {
              target[name](...args);
              resolve();
            } else {
              target[name](...args, makeCallback({
                resolve,
                reject
              }, metadata));
            }
          });
        };
      };
      /**
       * Wraps an existing method of the target object, so that calls to it are
       * intercepted by the given wrapper function. The wrapper function receives,
       * as its first argument, the original `target` object, followed by each of
       * the arguments passed to the original method.
       *
       * @param {object} target
       *        The original target object that the wrapped method belongs to.
       * @param {function} method
       *        The method being wrapped. This is used as the target of the Proxy
       *        object which is created to wrap the method.
       * @param {function} wrapper
       *        The wrapper function which is called in place of a direct invocation
       *        of the wrapped method.
       *
       * @returns {Proxy<function>}
       *        A Proxy object for the given method, which invokes the given wrapper
       *        method in its place.
       */


      const wrapMethod = (target, method, wrapper) => {
        return new Proxy(method, {
          apply(targetMethod, thisObj, args) {
            return wrapper.call(thisObj, target, ...args);
          }

        });
      };

      let hasOwnProperty = Function.call.bind(Object.prototype.hasOwnProperty);
      /**
       * Wraps an object in a Proxy which intercepts and wraps certain methods
       * based on the given `wrappers` and `metadata` objects.
       *
       * @param {object} target
       *        The target object to wrap.
       *
       * @param {object} [wrappers = {}]
       *        An object tree containing wrapper functions for special cases. Any
       *        function present in this object tree is called in place of the
       *        method in the same location in the `target` object tree. These
       *        wrapper methods are invoked as described in {@see wrapMethod}.
       *
       * @param {object} [metadata = {}]
       *        An object tree containing metadata used to automatically generate
       *        Promise-based wrapper functions for asynchronous. Any function in
       *        the `target` object tree which has a corresponding metadata object
       *        in the same location in the `metadata` tree is replaced with an
       *        automatically-generated wrapper function, as described in
       *        {@see wrapAsyncFunction}
       *
       * @returns {Proxy<object>}
       */

      const wrapObject = (target, wrappers = {}, metadata = {}) => {
        let cache = Object.create(null);
        let handlers = {
          has(proxyTarget, prop) {
            return prop in target || prop in cache;
          },

          get(proxyTarget, prop, receiver) {
            if (prop in cache) {
              return cache[prop];
            }

            if (!(prop in target)) {
              return undefined;
            }

            let value = target[prop];

            if (typeof value === "function") {
              // This is a method on the underlying object. Check if we need to do
              // any wrapping.
              if (typeof wrappers[prop] === "function") {
                // We have a special-case wrapper for this method.
                value = wrapMethod(target, target[prop], wrappers[prop]);
              } else if (hasOwnProperty(metadata, prop)) {
                // This is an async method that we have metadata for. Create a
                // Promise wrapper for it.
                let wrapper = wrapAsyncFunction(prop, metadata[prop]);
                value = wrapMethod(target, target[prop], wrapper);
              } else {
                // This is a method that we don't know or care about. Return the
                // original method, bound to the underlying object.
                value = value.bind(target);
              }
            } else if (typeof value === "object" && value !== null && (hasOwnProperty(wrappers, prop) || hasOwnProperty(metadata, prop))) {
              // This is an object that we need to do some wrapping for the children
              // of. Create a sub-object wrapper for it with the appropriate child
              // metadata.
              value = wrapObject(value, wrappers[prop], metadata[prop]);
            } else if (hasOwnProperty(metadata, "*")) {
              // Wrap all properties in * namespace.
              value = wrapObject(value, wrappers[prop], metadata["*"]);
            } else {
              // We don't need to do any wrapping for this property,
              // so just forward all access to the underlying object.
              Object.defineProperty(cache, prop, {
                configurable: true,
                enumerable: true,

                get() {
                  return target[prop];
                },

                set(value) {
                  target[prop] = value;
                }

              });
              return value;
            }

            cache[prop] = value;
            return value;
          },

          set(proxyTarget, prop, value, receiver) {
            if (prop in cache) {
              cache[prop] = value;
            } else {
              target[prop] = value;
            }

            return true;
          },

          defineProperty(proxyTarget, prop, desc) {
            return Reflect.defineProperty(cache, prop, desc);
          },

          deleteProperty(proxyTarget, prop) {
            return Reflect.deleteProperty(cache, prop);
          }

        }; // Per contract of the Proxy API, the "get" proxy handler must return the
        // original value of the target if that value is declared read-only and
        // non-configurable. For this reason, we create an object with the
        // prototype set to `target` instead of using `target` directly.
        // Otherwise we cannot return a custom object for APIs that
        // are declared read-only and non-configurable, such as `chrome.devtools`.
        //
        // The proxy handlers themselves will still use the original `target`
        // instead of the `proxyTarget`, so that the methods and properties are
        // dereferenced via the original targets.

        let proxyTarget = Object.create(target);
        return new Proxy(proxyTarget, handlers);
      };
      /**
       * Creates a set of wrapper functions for an event object, which handles
       * wrapping of listener functions that those messages are passed.
       *
       * A single wrapper is created for each listener function, and stored in a
       * map. Subsequent calls to `addListener`, `hasListener`, or `removeListener`
       * retrieve the original wrapper, so that  attempts to remove a
       * previously-added listener work as expected.
       *
       * @param {DefaultWeakMap<function, function>} wrapperMap
       *        A DefaultWeakMap object which will create the appropriate wrapper
       *        for a given listener function when one does not exist, and retrieve
       *        an existing one when it does.
       *
       * @returns {object}
       */


      const wrapEvent = wrapperMap => ({
        addListener(target, listener, ...args) {
          target.addListener(wrapperMap.get(listener), ...args);
        },

        hasListener(target, listener) {
          return target.hasListener(wrapperMap.get(listener));
        },

        removeListener(target, listener) {
          target.removeListener(wrapperMap.get(listener));
        }

      });

      const onRequestFinishedWrappers = new DefaultWeakMap(listener => {
        if (typeof listener !== "function") {
          return listener;
        }
        /**
         * Wraps an onRequestFinished listener function so that it will return a
         * `getContent()` property which returns a `Promise` rather than using a
         * callback API.
         *
         * @param {object} req
         *        The HAR entry object representing the network request.
         */


        return function onRequestFinished(req) {
          const wrappedReq = wrapObject(req, {}
          /* wrappers */
          , {
            getContent: {
              minArgs: 0,
              maxArgs: 0
            }
          });
          listener(wrappedReq);
        };
      }); // Keep track if the deprecation warning has been logged at least once.

      let loggedSendResponseDeprecationWarning = false;
      const onMessageWrappers = new DefaultWeakMap(listener => {
        if (typeof listener !== "function") {
          return listener;
        }
        /**
         * Wraps a message listener function so that it may send responses based on
         * its return value, rather than by returning a sentinel value and calling a
         * callback. If the listener function returns a Promise, the response is
         * sent when the promise either resolves or rejects.
         *
         * @param {*} message
         *        The message sent by the other end of the channel.
         * @param {object} sender
         *        Details about the sender of the message.
         * @param {function(*)} sendResponse
         *        A callback which, when called with an arbitrary argument, sends
         *        that value as a response.
         * @returns {boolean}
         *        True if the wrapped listener returned a Promise, which will later
         *        yield a response. False otherwise.
         */


        return function onMessage(message, sender, sendResponse) {
          let didCallSendResponse = false;
          let wrappedSendResponse;
          let sendResponsePromise = new Promise(resolve => {
            wrappedSendResponse = function (response) {
              if (!loggedSendResponseDeprecationWarning) {
                console.warn(SEND_RESPONSE_DEPRECATION_WARNING, new Error().stack);
                loggedSendResponseDeprecationWarning = true;
              }

              didCallSendResponse = true;
              resolve(response);
            };
          });
          let result;

          try {
            result = listener(message, sender, wrappedSendResponse);
          } catch (err) {
            result = Promise.reject(err);
          }

          const isResultThenable = result !== true && isThenable(result); // If the listener didn't returned true or a Promise, or called
          // wrappedSendResponse synchronously, we can exit earlier
          // because there will be no response sent from this listener.

          if (result !== true && !isResultThenable && !didCallSendResponse) {
            return false;
          } // A small helper to send the message if the promise resolves
          // and an error if the promise rejects (a wrapped sendMessage has
          // to translate the message into a resolved promise or a rejected
          // promise).


          const sendPromisedResult = promise => {
            promise.then(msg => {
              // send the message value.
              sendResponse(msg);
            }, error => {
              // Send a JSON representation of the error if the rejected value
              // is an instance of error, or the object itself otherwise.
              let message;

              if (error && (error instanceof Error || typeof error.message === "string")) {
                message = error.message;
              } else {
                message = "An unexpected error occurred";
              }

              sendResponse({
                __mozWebExtensionPolyfillReject__: true,
                message
              });
            }).catch(err => {
              // Print an error on the console if unable to send the response.
              console.error("Failed to send onMessage rejected reply", err);
            });
          }; // If the listener returned a Promise, send the resolved value as a
          // result, otherwise wait the promise related to the wrappedSendResponse
          // callback to resolve and send it as a response.


          if (isResultThenable) {
            sendPromisedResult(result);
          } else {
            sendPromisedResult(sendResponsePromise);
          } // Let Chrome know that the listener is replying.


          return true;
        };
      });

      const wrappedSendMessageCallback = ({
        reject,
        resolve
      }, reply) => {
        if (extensionAPIs.runtime.lastError) {
          // Detect when none of the listeners replied to the sendMessage call and resolve
          // the promise to undefined as in Firefox.
          // See https://github.com/mozilla/webextension-polyfill/issues/130
          if (extensionAPIs.runtime.lastError.message === CHROME_SEND_MESSAGE_CALLBACK_NO_RESPONSE_MESSAGE) {
            resolve();
          } else {
            reject(new Error(extensionAPIs.runtime.lastError.message));
          }
        } else if (reply && reply.__mozWebExtensionPolyfillReject__) {
          // Convert back the JSON representation of the error into
          // an Error instance.
          reject(new Error(reply.message));
        } else {
          resolve(reply);
        }
      };

      const wrappedSendMessage = (name, metadata, apiNamespaceObj, ...args) => {
        if (args.length < metadata.minArgs) {
          throw new Error(`Expected at least ${metadata.minArgs} ${pluralizeArguments(metadata.minArgs)} for ${name}(), got ${args.length}`);
        }

        if (args.length > metadata.maxArgs) {
          throw new Error(`Expected at most ${metadata.maxArgs} ${pluralizeArguments(metadata.maxArgs)} for ${name}(), got ${args.length}`);
        }

        return new Promise((resolve, reject) => {
          const wrappedCb = wrappedSendMessageCallback.bind(null, {
            resolve,
            reject
          });
          args.push(wrappedCb);
          apiNamespaceObj.sendMessage(...args);
        });
      };

      const staticWrappers = {
        devtools: {
          network: {
            onRequestFinished: wrapEvent(onRequestFinishedWrappers)
          }
        },
        runtime: {
          onMessage: wrapEvent(onMessageWrappers),
          onMessageExternal: wrapEvent(onMessageWrappers),
          sendMessage: wrappedSendMessage.bind(null, "sendMessage", {
            minArgs: 1,
            maxArgs: 3
          })
        },
        tabs: {
          sendMessage: wrappedSendMessage.bind(null, "sendMessage", {
            minArgs: 2,
            maxArgs: 3
          })
        }
      };
      const settingMetadata = {
        clear: {
          minArgs: 1,
          maxArgs: 1
        },
        get: {
          minArgs: 1,
          maxArgs: 1
        },
        set: {
          minArgs: 1,
          maxArgs: 1
        }
      };
      apiMetadata.privacy = {
        network: {
          "*": settingMetadata
        },
        services: {
          "*": settingMetadata
        },
        websites: {
          "*": settingMetadata
        }
      };
      return wrapObject(extensionAPIs, staticWrappers, apiMetadata);
    };

    if (typeof chrome != "object" || !chrome || !chrome.runtime || !chrome.runtime.id) {
      throw new Error("This script should only be loaded in a browser extension.");
    } // The build process adds a UMD wrapper around this file, which makes the
    // `module` variable available.


    module.exports = wrapAPIs(chrome);
  } else {
    module.exports = browser;
  }
});
//# sourceMappingURL=browser-polyfill.js.map


/***/ }),

/***/ "./node_modules/int64-buffer/int64-buffer.js":
/*!***************************************************!*\
  !*** ./node_modules/int64-buffer/int64-buffer.js ***!
  \***************************************************/
/***/ (function(__unused_webpack_module, exports) {

// int64-buffer.js

/*jshint -W018 */ // Confusing use of '!'.
/*jshint -W030 */ // Expected an assignment or function call and instead saw an expression.
/*jshint -W093 */ // Did you mean to return a conditional instead of an assignment?

var Uint64BE, Int64BE, Uint64LE, Int64LE;

!function(exports) {
  // constants

  var UNDEFINED = "undefined";
  var BUFFER = (UNDEFINED !== typeof Buffer) && Buffer;
  var UINT8ARRAY = (UNDEFINED !== typeof Uint8Array) && Uint8Array;
  var ARRAYBUFFER = (UNDEFINED !== typeof ArrayBuffer) && ArrayBuffer;
  var ZERO = [0, 0, 0, 0, 0, 0, 0, 0];
  var isArray = Array.isArray || _isArray;
  var BIT32 = 4294967296;
  var BIT24 = 16777216;

  // storage class

  var storage; // Array;

  // generate classes

  Uint64BE = factory("Uint64BE", true, true);
  Int64BE = factory("Int64BE", true, false);
  Uint64LE = factory("Uint64LE", false, true);
  Int64LE = factory("Int64LE", false, false);

  // class factory

  function factory(name, bigendian, unsigned) {
    var posH = bigendian ? 0 : 4;
    var posL = bigendian ? 4 : 0;
    var pos0 = bigendian ? 0 : 3;
    var pos1 = bigendian ? 1 : 2;
    var pos2 = bigendian ? 2 : 1;
    var pos3 = bigendian ? 3 : 0;
    var fromPositive = bigendian ? fromPositiveBE : fromPositiveLE;
    var fromNegative = bigendian ? fromNegativeBE : fromNegativeLE;
    var proto = Int64.prototype;
    var isName = "is" + name;
    var _isInt64 = "_" + isName;

    // properties
    proto.buffer = void 0;
    proto.offset = 0;
    proto[_isInt64] = true;

    // methods
    proto.toNumber = toNumber;
    proto.toString = toString;
    proto.toJSON = toNumber;
    proto.toArray = toArray;

    // add .toBuffer() method only when Buffer available
    if (BUFFER) proto.toBuffer = toBuffer;

    // add .toArrayBuffer() method only when Uint8Array available
    if (UINT8ARRAY) proto.toArrayBuffer = toArrayBuffer;

    // isUint64BE, isInt64BE
    Int64[isName] = isInt64;

    // CommonJS
    exports[name] = Int64;

    return Int64;

    // constructor
    function Int64(buffer, offset, value, raddix) {
      if (!(this instanceof Int64)) return new Int64(buffer, offset, value, raddix);
      return init(this, buffer, offset, value, raddix);
    }

    // isUint64BE, isInt64BE
    function isInt64(b) {
      return !!(b && b[_isInt64]);
    }

    // initializer
    function init(that, buffer, offset, value, raddix) {
      if (UINT8ARRAY && ARRAYBUFFER) {
        if (buffer instanceof ARRAYBUFFER) buffer = new UINT8ARRAY(buffer);
        if (value instanceof ARRAYBUFFER) value = new UINT8ARRAY(value);
      }

      // Int64BE() style
      if (!buffer && !offset && !value && !storage) {
        // shortcut to initialize with zero
        that.buffer = newArray(ZERO, 0);
        return;
      }

      // Int64BE(value, raddix) style
      if (!isValidBuffer(buffer, offset)) {
        var _storage = storage || Array;
        raddix = offset;
        value = buffer;
        offset = 0;
        buffer = new _storage(8);
      }

      that.buffer = buffer;
      that.offset = offset |= 0;

      // Int64BE(buffer, offset) style
      if (UNDEFINED === typeof value) return;

      // Int64BE(buffer, offset, value, raddix) style
      if ("string" === typeof value) {
        fromString(buffer, offset, value, raddix || 10);
      } else if (isValidBuffer(value, raddix)) {
        fromArray(buffer, offset, value, raddix);
      } else if ("number" === typeof raddix) {
        writeInt32(buffer, offset + posH, value); // high
        writeInt32(buffer, offset + posL, raddix); // low
      } else if (value > 0) {
        fromPositive(buffer, offset, value); // positive
      } else if (value < 0) {
        fromNegative(buffer, offset, value); // negative
      } else {
        fromArray(buffer, offset, ZERO, 0); // zero, NaN and others
      }
    }

    function fromString(buffer, offset, str, raddix) {
      var pos = 0;
      var len = str.length;
      var high = 0;
      var low = 0;
      if (str[0] === "-") pos++;
      var sign = pos;
      while (pos < len) {
        var chr = parseInt(str[pos++], raddix);
        if (!(chr >= 0)) break; // NaN
        low = low * raddix + chr;
        high = high * raddix + Math.floor(low / BIT32);
        low %= BIT32;
      }
      if (sign) {
        high = ~high;
        if (low) {
          low = BIT32 - low;
        } else {
          high++;
        }
      }
      writeInt32(buffer, offset + posH, high);
      writeInt32(buffer, offset + posL, low);
    }

    function toNumber() {
      var buffer = this.buffer;
      var offset = this.offset;
      var high = readInt32(buffer, offset + posH);
      var low = readInt32(buffer, offset + posL);
      if (!unsigned) high |= 0; // a trick to get signed
      return high ? (high * BIT32 + low) : low;
    }

    function toString(radix) {
      var buffer = this.buffer;
      var offset = this.offset;
      var high = readInt32(buffer, offset + posH);
      var low = readInt32(buffer, offset + posL);
      var str = "";
      var sign = !unsigned && (high & 0x80000000);
      if (sign) {
        high = ~high;
        low = BIT32 - low;
      }
      radix = radix || 10;
      while (1) {
        var mod = (high % radix) * BIT32 + low;
        high = Math.floor(high / radix);
        low = Math.floor(mod / radix);
        str = (mod % radix).toString(radix) + str;
        if (!high && !low) break;
      }
      if (sign) {
        str = "-" + str;
      }
      return str;
    }

    function writeInt32(buffer, offset, value) {
      buffer[offset + pos3] = value & 255;
      value = value >> 8;
      buffer[offset + pos2] = value & 255;
      value = value >> 8;
      buffer[offset + pos1] = value & 255;
      value = value >> 8;
      buffer[offset + pos0] = value & 255;
    }

    function readInt32(buffer, offset) {
      return (buffer[offset + pos0] * BIT24) +
        (buffer[offset + pos1] << 16) +
        (buffer[offset + pos2] << 8) +
        buffer[offset + pos3];
    }
  }

  function toArray(raw) {
    var buffer = this.buffer;
    var offset = this.offset;
    storage = null; // Array
    if (raw !== false && offset === 0 && buffer.length === 8 && isArray(buffer)) return buffer;
    return newArray(buffer, offset);
  }

  function toBuffer(raw) {
    var buffer = this.buffer;
    var offset = this.offset;
    storage = BUFFER;
    if (raw !== false && offset === 0 && buffer.length === 8 && Buffer.isBuffer(buffer)) return buffer;
    var dest = new BUFFER(8);
    fromArray(dest, 0, buffer, offset);
    return dest;
  }

  function toArrayBuffer(raw) {
    var buffer = this.buffer;
    var offset = this.offset;
    var arrbuf = buffer.buffer;
    storage = UINT8ARRAY;
    if (raw !== false && offset === 0 && (arrbuf instanceof ARRAYBUFFER) && arrbuf.byteLength === 8) return arrbuf;
    var dest = new UINT8ARRAY(8);
    fromArray(dest, 0, buffer, offset);
    return dest.buffer;
  }

  function isValidBuffer(buffer, offset) {
    var len = buffer && buffer.length;
    offset |= 0;
    return len && (offset + 8 <= len) && ("string" !== typeof buffer[offset]);
  }

  function fromArray(destbuf, destoff, srcbuf, srcoff) {
    destoff |= 0;
    srcoff |= 0;
    for (var i = 0; i < 8; i++) {
      destbuf[destoff++] = srcbuf[srcoff++] & 255;
    }
  }

  function newArray(buffer, offset) {
    return Array.prototype.slice.call(buffer, offset, offset + 8);
  }

  function fromPositiveBE(buffer, offset, value) {
    var pos = offset + 8;
    while (pos > offset) {
      buffer[--pos] = value & 255;
      value /= 256;
    }
  }

  function fromNegativeBE(buffer, offset, value) {
    var pos = offset + 8;
    value++;
    while (pos > offset) {
      buffer[--pos] = ((-value) & 255) ^ 255;
      value /= 256;
    }
  }

  function fromPositiveLE(buffer, offset, value) {
    var end = offset + 8;
    while (offset < end) {
      buffer[offset++] = value & 255;
      value /= 256;
    }
  }

  function fromNegativeLE(buffer, offset, value) {
    var end = offset + 8;
    value++;
    while (offset < end) {
      buffer[offset++] = ((-value) & 255) ^ 255;
      value /= 256;
    }
  }

  // https://github.com/retrofox/is-array
  function _isArray(val) {
    return !!val && "[object Array]" == Object.prototype.toString.call(val);
  }

}( true && typeof exports.nodeName !== 'string' ? exports : (this || {}));


/***/ }),

/***/ "./node_modules/isarray/index.js":
/*!***************************************!*\
  !*** ./node_modules/isarray/index.js ***!
  \***************************************/
/***/ ((module) => {

var toString = {}.toString;

module.exports = Array.isArray || function (arr) {
  return toString.call(arr) == '[object Array]';
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/browser.js":
/*!**************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/browser.js ***!
  \**************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// browser.js

exports.encode = __webpack_require__(/*! ./encode */ "./node_modules/msgpack-lite/lib/encode.js").encode;
exports.decode = __webpack_require__(/*! ./decode */ "./node_modules/msgpack-lite/lib/decode.js").decode;

exports.Encoder = __webpack_require__(/*! ./encoder */ "./node_modules/msgpack-lite/lib/encoder.js").Encoder;
exports.Decoder = __webpack_require__(/*! ./decoder */ "./node_modules/msgpack-lite/lib/decoder.js").Decoder;

exports.createCodec = __webpack_require__(/*! ./ext */ "./node_modules/msgpack-lite/lib/ext.js").createCodec;
exports.codec = __webpack_require__(/*! ./codec */ "./node_modules/msgpack-lite/lib/codec.js").codec;


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/buffer-global.js":
/*!********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/buffer-global.js ***!
  \********************************************************/
/***/ (function(module) {

/* globals Buffer */

module.exports =
  c(("undefined" !== typeof Buffer) && Buffer) ||
  c(this.Buffer) ||
  c(("undefined" !== typeof window) && window.Buffer) ||
  this.Buffer;

function c(B) {
  return B && B.isBuffer && B;
}

/***/ }),

/***/ "./node_modules/msgpack-lite/lib/buffer-lite.js":
/*!******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/buffer-lite.js ***!
  \******************************************************/
/***/ ((__unused_webpack_module, exports) => {

// buffer-lite.js

var MAXBUFLEN = 8192;

exports.copy = copy;
exports.toString = toString;
exports.write = write;

/**
 * Buffer.prototype.write()
 *
 * @param string {String}
 * @param [offset] {Number}
 * @returns {Number}
 */

function write(string, offset) {
  var buffer = this;
  var index = offset || (offset |= 0);
  var length = string.length;
  var chr = 0;
  var i = 0;
  while (i < length) {
    chr = string.charCodeAt(i++);

    if (chr < 128) {
      buffer[index++] = chr;
    } else if (chr < 0x800) {
      // 2 bytes
      buffer[index++] = 0xC0 | (chr >>> 6);
      buffer[index++] = 0x80 | (chr & 0x3F);
    } else if (chr < 0xD800 || chr > 0xDFFF) {
      // 3 bytes
      buffer[index++] = 0xE0 | (chr  >>> 12);
      buffer[index++] = 0x80 | ((chr >>> 6)  & 0x3F);
      buffer[index++] = 0x80 | (chr          & 0x3F);
    } else {
      // 4 bytes - surrogate pair
      chr = (((chr - 0xD800) << 10) | (string.charCodeAt(i++) - 0xDC00)) + 0x10000;
      buffer[index++] = 0xF0 | (chr >>> 18);
      buffer[index++] = 0x80 | ((chr >>> 12) & 0x3F);
      buffer[index++] = 0x80 | ((chr >>> 6)  & 0x3F);
      buffer[index++] = 0x80 | (chr          & 0x3F);
    }
  }
  return index - offset;
}

/**
 * Buffer.prototype.toString()
 *
 * @param [encoding] {String} ignored
 * @param [start] {Number}
 * @param [end] {Number}
 * @returns {String}
 */

function toString(encoding, start, end) {
  var buffer = this;
  var index = start|0;
  if (!end) end = buffer.length;
  var string = '';
  var chr = 0;

  while (index < end) {
    chr = buffer[index++];
    if (chr < 128) {
      string += String.fromCharCode(chr);
      continue;
    }

    if ((chr & 0xE0) === 0xC0) {
      // 2 bytes
      chr = (chr & 0x1F) << 6 |
            (buffer[index++] & 0x3F);

    } else if ((chr & 0xF0) === 0xE0) {
      // 3 bytes
      chr = (chr & 0x0F)             << 12 |
            (buffer[index++] & 0x3F) << 6  |
            (buffer[index++] & 0x3F);

    } else if ((chr & 0xF8) === 0xF0) {
      // 4 bytes
      chr = (chr & 0x07)             << 18 |
            (buffer[index++] & 0x3F) << 12 |
            (buffer[index++] & 0x3F) << 6  |
            (buffer[index++] & 0x3F);
    }

    if (chr >= 0x010000) {
      // A surrogate pair
      chr -= 0x010000;

      string += String.fromCharCode((chr >>> 10) + 0xD800, (chr & 0x3FF) + 0xDC00);
    } else {
      string += String.fromCharCode(chr);
    }
  }

  return string;
}

/**
 * Buffer.prototype.copy()
 *
 * @param target {Buffer}
 * @param [targetStart] {Number}
 * @param [start] {Number}
 * @param [end] {Number}
 * @returns {number}
 */

function copy(target, targetStart, start, end) {
  var i;
  if (!start) start = 0;
  if (!end && end !== 0) end = this.length;
  if (!targetStart) targetStart = 0;
  var len = end - start;

  if (target === this && start < targetStart && targetStart < end) {
    // descending
    for (i = len - 1; i >= 0; i--) {
      target[i + targetStart] = this[i + start];
    }
  } else {
    // ascending
    for (i = 0; i < len; i++) {
      target[i + targetStart] = this[i + start];
    }
  }

  return len;
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/bufferish-array.js":
/*!**********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/bufferish-array.js ***!
  \**********************************************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

// bufferish-array.js

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");

var exports = module.exports = alloc(0);

exports.alloc = alloc;
exports.concat = Bufferish.concat;
exports.from = from;

/**
 * @param size {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function alloc(size) {
  return new Array(size);
}

/**
 * @param value {Array|ArrayBuffer|Buffer|String}
 * @returns {Array}
 */

function from(value) {
  if (!Bufferish.isBuffer(value) && Bufferish.isView(value)) {
    // TypedArray to Uint8Array
    value = Bufferish.Uint8Array.from(value);
  } else if (Bufferish.isArrayBuffer(value)) {
    // ArrayBuffer to Uint8Array
    value = new Uint8Array(value);
  } else if (typeof value === "string") {
    // String to Array
    return Bufferish.from.call(exports, value);
  } else if (typeof value === "number") {
    throw new TypeError('"value" argument must not be a number');
  }

  // Array-like to Array
  return Array.prototype.slice.call(value);
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/bufferish-buffer.js":
/*!***********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/bufferish-buffer.js ***!
  \***********************************************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

// bufferish-buffer.js

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var Buffer = Bufferish.global;

var exports = module.exports = Bufferish.hasBuffer ? alloc(0) : [];

exports.alloc = Bufferish.hasBuffer && Buffer.alloc || alloc;
exports.concat = Bufferish.concat;
exports.from = from;

/**
 * @param size {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function alloc(size) {
  return new Buffer(size);
}

/**
 * @param value {Array|ArrayBuffer|Buffer|String}
 * @returns {Buffer}
 */

function from(value) {
  if (!Bufferish.isBuffer(value) && Bufferish.isView(value)) {
    // TypedArray to Uint8Array
    value = Bufferish.Uint8Array.from(value);
  } else if (Bufferish.isArrayBuffer(value)) {
    // ArrayBuffer to Uint8Array
    value = new Uint8Array(value);
  } else if (typeof value === "string") {
    // String to Buffer
    return Bufferish.from.call(exports, value);
  } else if (typeof value === "number") {
    throw new TypeError('"value" argument must not be a number');
  }

  // Array-like to Buffer
  if (Buffer.from && Buffer.from.length !== 1) {
    return Buffer.from(value); // node v6+
  } else {
    return new Buffer(value); // node v4
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/bufferish-proto.js":
/*!**********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/bufferish-proto.js ***!
  \**********************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// bufferish-proto.js

/* jshint eqnull:true */

var BufferLite = __webpack_require__(/*! ./buffer-lite */ "./node_modules/msgpack-lite/lib/buffer-lite.js");

exports.copy = copy;
exports.slice = slice;
exports.toString = toString;
exports.write = gen("write");

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var Buffer = Bufferish.global;

var isBufferShim = Bufferish.hasBuffer && ("TYPED_ARRAY_SUPPORT" in Buffer);
var brokenTypedArray = isBufferShim && !Buffer.TYPED_ARRAY_SUPPORT;

/**
 * @param target {Buffer|Uint8Array|Array}
 * @param [targetStart] {Number}
 * @param [start] {Number}
 * @param [end] {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function copy(target, targetStart, start, end) {
  var thisIsBuffer = Bufferish.isBuffer(this);
  var targetIsBuffer = Bufferish.isBuffer(target);
  if (thisIsBuffer && targetIsBuffer) {
    // Buffer to Buffer
    return this.copy(target, targetStart, start, end);
  } else if (!brokenTypedArray && !thisIsBuffer && !targetIsBuffer &&
    Bufferish.isView(this) && Bufferish.isView(target)) {
    // Uint8Array to Uint8Array (except for minor some browsers)
    var buffer = (start || end != null) ? slice.call(this, start, end) : this;
    target.set(buffer, targetStart);
    return buffer.length;
  } else {
    // other cases
    return BufferLite.copy.call(this, target, targetStart, start, end);
  }
}

/**
 * @param [start] {Number}
 * @param [end] {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function slice(start, end) {
  // for Buffer, Uint8Array (except for minor some browsers) and Array
  var f = this.slice || (!brokenTypedArray && this.subarray);
  if (f) return f.call(this, start, end);

  // Uint8Array (for minor some browsers)
  var target = Bufferish.alloc.call(this, end - start);
  copy.call(this, target, 0, start, end);
  return target;
}

/**
 * Buffer.prototype.toString()
 *
 * @param [encoding] {String} ignored
 * @param [start] {Number}
 * @param [end] {Number}
 * @returns {String}
 */

function toString(encoding, start, end) {
  var f = (!isBufferShim && Bufferish.isBuffer(this)) ? this.toString : BufferLite.toString;
  return f.apply(this, arguments);
}

/**
 * @private
 */

function gen(method) {
  return wrap;

  function wrap() {
    var f = this[method] || BufferLite[method];
    return f.apply(this, arguments);
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/bufferish-uint8array.js":
/*!***************************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/bufferish-uint8array.js ***!
  \***************************************************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

// bufferish-uint8array.js

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");

var exports = module.exports = Bufferish.hasArrayBuffer ? alloc(0) : [];

exports.alloc = alloc;
exports.concat = Bufferish.concat;
exports.from = from;

/**
 * @param size {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function alloc(size) {
  return new Uint8Array(size);
}

/**
 * @param value {Array|ArrayBuffer|Buffer|String}
 * @returns {Uint8Array}
 */

function from(value) {
  if (Bufferish.isView(value)) {
    // TypedArray to ArrayBuffer
    var byteOffset = value.byteOffset;
    var byteLength = value.byteLength;
    value = value.buffer;
    if (value.byteLength !== byteLength) {
      if (value.slice) {
        value = value.slice(byteOffset, byteOffset + byteLength);
      } else {
        // Android 4.1 does not have ArrayBuffer.prototype.slice
        value = new Uint8Array(value);
        if (value.byteLength !== byteLength) {
          // TypedArray to ArrayBuffer to Uint8Array to Array
          value = Array.prototype.slice.call(value, byteOffset, byteOffset + byteLength);
        }
      }
    }
  } else if (typeof value === "string") {
    // String to Uint8Array
    return Bufferish.from.call(exports, value);
  } else if (typeof value === "number") {
    throw new TypeError('"value" argument must not be a number');
  }

  return new Uint8Array(value);
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/bufferish.js":
/*!****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/bufferish.js ***!
  \****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// bufferish.js

var Buffer = exports.global = __webpack_require__(/*! ./buffer-global */ "./node_modules/msgpack-lite/lib/buffer-global.js");
var hasBuffer = exports.hasBuffer = Buffer && !!Buffer.isBuffer;
var hasArrayBuffer = exports.hasArrayBuffer = ("undefined" !== typeof ArrayBuffer);

var isArray = exports.isArray = __webpack_require__(/*! isarray */ "./node_modules/isarray/index.js");
exports.isArrayBuffer = hasArrayBuffer ? isArrayBuffer : _false;
var isBuffer = exports.isBuffer = hasBuffer ? Buffer.isBuffer : _false;
var isView = exports.isView = hasArrayBuffer ? (ArrayBuffer.isView || _is("ArrayBuffer", "buffer")) : _false;

exports.alloc = alloc;
exports.concat = concat;
exports.from = from;

var BufferArray = exports.Array = __webpack_require__(/*! ./bufferish-array */ "./node_modules/msgpack-lite/lib/bufferish-array.js");
var BufferBuffer = exports.Buffer = __webpack_require__(/*! ./bufferish-buffer */ "./node_modules/msgpack-lite/lib/bufferish-buffer.js");
var BufferUint8Array = exports.Uint8Array = __webpack_require__(/*! ./bufferish-uint8array */ "./node_modules/msgpack-lite/lib/bufferish-uint8array.js");
var BufferProto = exports.prototype = __webpack_require__(/*! ./bufferish-proto */ "./node_modules/msgpack-lite/lib/bufferish-proto.js");

/**
 * @param value {Array|ArrayBuffer|Buffer|String}
 * @returns {Buffer|Uint8Array|Array}
 */

function from(value) {
  if (typeof value === "string") {
    return fromString.call(this, value);
  } else {
    return auto(this).from(value);
  }
}

/**
 * @param size {Number}
 * @returns {Buffer|Uint8Array|Array}
 */

function alloc(size) {
  return auto(this).alloc(size);
}

/**
 * @param list {Array} array of (Buffer|Uint8Array|Array)s
 * @param [length]
 * @returns {Buffer|Uint8Array|Array}
 */

function concat(list, length) {
  if (!length) {
    length = 0;
    Array.prototype.forEach.call(list, dryrun);
  }
  var ref = (this !== exports) && this || list[0];
  var result = alloc.call(ref, length);
  var offset = 0;
  Array.prototype.forEach.call(list, append);
  return result;

  function dryrun(buffer) {
    length += buffer.length;
  }

  function append(buffer) {
    offset += BufferProto.copy.call(buffer, result, offset);
  }
}

var _isArrayBuffer = _is("ArrayBuffer");

function isArrayBuffer(value) {
  return (value instanceof ArrayBuffer) || _isArrayBuffer(value);
}

/**
 * @private
 */

function fromString(value) {
  var expected = value.length * 3;
  var that = alloc.call(this, expected);
  var actual = BufferProto.write.call(that, value);
  if (expected !== actual) {
    that = BufferProto.slice.call(that, 0, actual);
  }
  return that;
}

function auto(that) {
  return isBuffer(that) ? BufferBuffer
    : isView(that) ? BufferUint8Array
    : isArray(that) ? BufferArray
    : hasBuffer ? BufferBuffer
    : hasArrayBuffer ? BufferUint8Array
    : BufferArray;
}

function _false() {
  return false;
}

function _is(name, key) {
  /* jshint eqnull:true */
  name = "[object " + name + "]";
  return function(value) {
    return (value != null) && {}.toString.call(key ? value[key] : value) === name;
  };
}

/***/ }),

/***/ "./node_modules/msgpack-lite/lib/codec-base.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/codec-base.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// codec-base.js

var IS_ARRAY = __webpack_require__(/*! isarray */ "./node_modules/isarray/index.js");

exports.createCodec = createCodec;
exports.install = install;
exports.filter = filter;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");

function Codec(options) {
  if (!(this instanceof Codec)) return new Codec(options);
  this.options = options;
  this.init();
}

Codec.prototype.init = function() {
  var options = this.options;

  if (options && options.uint8array) {
    this.bufferish = Bufferish.Uint8Array;
  }

  return this;
};

function install(props) {
  for (var key in props) {
    Codec.prototype[key] = add(Codec.prototype[key], props[key]);
  }
}

function add(a, b) {
  return (a && b) ? ab : (a || b);

  function ab() {
    a.apply(this, arguments);
    return b.apply(this, arguments);
  }
}

function join(filters) {
  filters = filters.slice();

  return function(value) {
    return filters.reduce(iterator, value);
  };

  function iterator(value, filter) {
    return filter(value);
  }
}

function filter(filter) {
  return IS_ARRAY(filter) ? join(filter) : filter;
}

// @public
// msgpack.createCodec()

function createCodec(options) {
  return new Codec(options);
}

// default shared codec

exports.preset = createCodec({preset: true});


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/codec.js":
/*!************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/codec.js ***!
  \************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// codec.js

// load both interfaces
__webpack_require__(/*! ./read-core */ "./node_modules/msgpack-lite/lib/read-core.js");
__webpack_require__(/*! ./write-core */ "./node_modules/msgpack-lite/lib/write-core.js");

// @public
// msgpack.codec.preset

exports.codec = {
  preset: __webpack_require__(/*! ./codec-base */ "./node_modules/msgpack-lite/lib/codec-base.js").preset
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/decode-buffer.js":
/*!********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/decode-buffer.js ***!
  \********************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// decode-buffer.js

exports.DecodeBuffer = DecodeBuffer;

var preset = __webpack_require__(/*! ./read-core */ "./node_modules/msgpack-lite/lib/read-core.js").preset;

var FlexDecoder = __webpack_require__(/*! ./flex-buffer */ "./node_modules/msgpack-lite/lib/flex-buffer.js").FlexDecoder;

FlexDecoder.mixin(DecodeBuffer.prototype);

function DecodeBuffer(options) {
  if (!(this instanceof DecodeBuffer)) return new DecodeBuffer(options);

  if (options) {
    this.options = options;
    if (options.codec) {
      var codec = this.codec = options.codec;
      if (codec.bufferish) this.bufferish = codec.bufferish;
    }
  }
}

DecodeBuffer.prototype.codec = preset;

DecodeBuffer.prototype.fetch = function() {
  return this.codec.decode(this);
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/decode.js":
/*!*************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/decode.js ***!
  \*************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// decode.js

exports.decode = decode;

var DecodeBuffer = __webpack_require__(/*! ./decode-buffer */ "./node_modules/msgpack-lite/lib/decode-buffer.js").DecodeBuffer;

function decode(input, options) {
  var decoder = new DecodeBuffer(options);
  decoder.write(input);
  return decoder.read();
}

/***/ }),

/***/ "./node_modules/msgpack-lite/lib/decoder.js":
/*!**************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/decoder.js ***!
  \**************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// decoder.js

exports.Decoder = Decoder;

var EventLite = __webpack_require__(/*! event-lite */ "./node_modules/event-lite/event-lite.js");
var DecodeBuffer = __webpack_require__(/*! ./decode-buffer */ "./node_modules/msgpack-lite/lib/decode-buffer.js").DecodeBuffer;

function Decoder(options) {
  if (!(this instanceof Decoder)) return new Decoder(options);
  DecodeBuffer.call(this, options);
}

Decoder.prototype = new DecodeBuffer();

EventLite.mixin(Decoder.prototype);

Decoder.prototype.decode = function(chunk) {
  if (arguments.length) this.write(chunk);
  this.flush();
};

Decoder.prototype.push = function(chunk) {
  this.emit("data", chunk);
};

Decoder.prototype.end = function(chunk) {
  this.decode(chunk);
  this.emit("end");
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/encode-buffer.js":
/*!********************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/encode-buffer.js ***!
  \********************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// encode-buffer.js

exports.EncodeBuffer = EncodeBuffer;

var preset = __webpack_require__(/*! ./write-core */ "./node_modules/msgpack-lite/lib/write-core.js").preset;

var FlexEncoder = __webpack_require__(/*! ./flex-buffer */ "./node_modules/msgpack-lite/lib/flex-buffer.js").FlexEncoder;

FlexEncoder.mixin(EncodeBuffer.prototype);

function EncodeBuffer(options) {
  if (!(this instanceof EncodeBuffer)) return new EncodeBuffer(options);

  if (options) {
    this.options = options;
    if (options.codec) {
      var codec = this.codec = options.codec;
      if (codec.bufferish) this.bufferish = codec.bufferish;
    }
  }
}

EncodeBuffer.prototype.codec = preset;

EncodeBuffer.prototype.write = function(input) {
  this.codec.encode(this, input);
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/encode.js":
/*!*************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/encode.js ***!
  \*************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// encode.js

exports.encode = encode;

var EncodeBuffer = __webpack_require__(/*! ./encode-buffer */ "./node_modules/msgpack-lite/lib/encode-buffer.js").EncodeBuffer;

function encode(input, options) {
  var encoder = new EncodeBuffer(options);
  encoder.write(input);
  return encoder.read();
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/encoder.js":
/*!**************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/encoder.js ***!
  \**************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// encoder.js

exports.Encoder = Encoder;

var EventLite = __webpack_require__(/*! event-lite */ "./node_modules/event-lite/event-lite.js");
var EncodeBuffer = __webpack_require__(/*! ./encode-buffer */ "./node_modules/msgpack-lite/lib/encode-buffer.js").EncodeBuffer;

function Encoder(options) {
  if (!(this instanceof Encoder)) return new Encoder(options);
  EncodeBuffer.call(this, options);
}

Encoder.prototype = new EncodeBuffer();

EventLite.mixin(Encoder.prototype);

Encoder.prototype.encode = function(chunk) {
  this.write(chunk);
  this.emit("data", this.read());
};

Encoder.prototype.end = function(chunk) {
  if (arguments.length) this.encode(chunk);
  this.flush();
  this.emit("end");
};


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/ext-buffer.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/ext-buffer.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// ext-buffer.js

exports.ExtBuffer = ExtBuffer;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");

function ExtBuffer(buffer, type) {
  if (!(this instanceof ExtBuffer)) return new ExtBuffer(buffer, type);
  this.buffer = Bufferish.from(buffer);
  this.type = type;
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/ext-packer.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/ext-packer.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// ext-packer.js

exports.setExtPackers = setExtPackers;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var Buffer = Bufferish.global;
var packTypedArray = Bufferish.Uint8Array.from;
var _encode;

var ERROR_COLUMNS = {name: 1, message: 1, stack: 1, columnNumber: 1, fileName: 1, lineNumber: 1};

function setExtPackers(codec) {
  codec.addExtPacker(0x0E, Error, [packError, encode]);
  codec.addExtPacker(0x01, EvalError, [packError, encode]);
  codec.addExtPacker(0x02, RangeError, [packError, encode]);
  codec.addExtPacker(0x03, ReferenceError, [packError, encode]);
  codec.addExtPacker(0x04, SyntaxError, [packError, encode]);
  codec.addExtPacker(0x05, TypeError, [packError, encode]);
  codec.addExtPacker(0x06, URIError, [packError, encode]);

  codec.addExtPacker(0x0A, RegExp, [packRegExp, encode]);
  codec.addExtPacker(0x0B, Boolean, [packValueOf, encode]);
  codec.addExtPacker(0x0C, String, [packValueOf, encode]);
  codec.addExtPacker(0x0D, Date, [Number, encode]);
  codec.addExtPacker(0x0F, Number, [packValueOf, encode]);

  if ("undefined" !== typeof Uint8Array) {
    codec.addExtPacker(0x11, Int8Array, packTypedArray);
    codec.addExtPacker(0x12, Uint8Array, packTypedArray);
    codec.addExtPacker(0x13, Int16Array, packTypedArray);
    codec.addExtPacker(0x14, Uint16Array, packTypedArray);
    codec.addExtPacker(0x15, Int32Array, packTypedArray);
    codec.addExtPacker(0x16, Uint32Array, packTypedArray);
    codec.addExtPacker(0x17, Float32Array, packTypedArray);

    // PhantomJS/1.9.7 doesn't have Float64Array
    if ("undefined" !== typeof Float64Array) {
      codec.addExtPacker(0x18, Float64Array, packTypedArray);
    }

    // IE10 doesn't have Uint8ClampedArray
    if ("undefined" !== typeof Uint8ClampedArray) {
      codec.addExtPacker(0x19, Uint8ClampedArray, packTypedArray);
    }

    codec.addExtPacker(0x1A, ArrayBuffer, packTypedArray);
    codec.addExtPacker(0x1D, DataView, packTypedArray);
  }

  if (Bufferish.hasBuffer) {
    codec.addExtPacker(0x1B, Buffer, Bufferish.from);
  }
}

function encode(input) {
  if (!_encode) _encode = __webpack_require__(/*! ./encode */ "./node_modules/msgpack-lite/lib/encode.js").encode; // lazy load
  return _encode(input);
}

function packValueOf(value) {
  return (value).valueOf();
}

function packRegExp(value) {
  value = RegExp.prototype.toString.call(value).split("/");
  value.shift();
  var out = [value.pop()];
  out.unshift(value.join("/"));
  return out;
}

function packError(value) {
  var out = {};
  for (var key in ERROR_COLUMNS) {
    out[key] = value[key];
  }
  return out;
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/ext-unpacker.js":
/*!*******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/ext-unpacker.js ***!
  \*******************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// ext-unpacker.js

exports.setExtUnpackers = setExtUnpackers;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var Buffer = Bufferish.global;
var _decode;

var ERROR_COLUMNS = {name: 1, message: 1, stack: 1, columnNumber: 1, fileName: 1, lineNumber: 1};

function setExtUnpackers(codec) {
  codec.addExtUnpacker(0x0E, [decode, unpackError(Error)]);
  codec.addExtUnpacker(0x01, [decode, unpackError(EvalError)]);
  codec.addExtUnpacker(0x02, [decode, unpackError(RangeError)]);
  codec.addExtUnpacker(0x03, [decode, unpackError(ReferenceError)]);
  codec.addExtUnpacker(0x04, [decode, unpackError(SyntaxError)]);
  codec.addExtUnpacker(0x05, [decode, unpackError(TypeError)]);
  codec.addExtUnpacker(0x06, [decode, unpackError(URIError)]);

  codec.addExtUnpacker(0x0A, [decode, unpackRegExp]);
  codec.addExtUnpacker(0x0B, [decode, unpackClass(Boolean)]);
  codec.addExtUnpacker(0x0C, [decode, unpackClass(String)]);
  codec.addExtUnpacker(0x0D, [decode, unpackClass(Date)]);
  codec.addExtUnpacker(0x0F, [decode, unpackClass(Number)]);

  if ("undefined" !== typeof Uint8Array) {
    codec.addExtUnpacker(0x11, unpackClass(Int8Array));
    codec.addExtUnpacker(0x12, unpackClass(Uint8Array));
    codec.addExtUnpacker(0x13, [unpackArrayBuffer, unpackClass(Int16Array)]);
    codec.addExtUnpacker(0x14, [unpackArrayBuffer, unpackClass(Uint16Array)]);
    codec.addExtUnpacker(0x15, [unpackArrayBuffer, unpackClass(Int32Array)]);
    codec.addExtUnpacker(0x16, [unpackArrayBuffer, unpackClass(Uint32Array)]);
    codec.addExtUnpacker(0x17, [unpackArrayBuffer, unpackClass(Float32Array)]);

    // PhantomJS/1.9.7 doesn't have Float64Array
    if ("undefined" !== typeof Float64Array) {
      codec.addExtUnpacker(0x18, [unpackArrayBuffer, unpackClass(Float64Array)]);
    }

    // IE10 doesn't have Uint8ClampedArray
    if ("undefined" !== typeof Uint8ClampedArray) {
      codec.addExtUnpacker(0x19, unpackClass(Uint8ClampedArray));
    }

    codec.addExtUnpacker(0x1A, unpackArrayBuffer);
    codec.addExtUnpacker(0x1D, [unpackArrayBuffer, unpackClass(DataView)]);
  }

  if (Bufferish.hasBuffer) {
    codec.addExtUnpacker(0x1B, unpackClass(Buffer));
  }
}

function decode(input) {
  if (!_decode) _decode = __webpack_require__(/*! ./decode */ "./node_modules/msgpack-lite/lib/decode.js").decode; // lazy load
  return _decode(input);
}

function unpackRegExp(value) {
  return RegExp.apply(null, value);
}

function unpackError(Class) {
  return function(value) {
    var out = new Class();
    for (var key in ERROR_COLUMNS) {
      out[key] = value[key];
    }
    return out;
  };
}

function unpackClass(Class) {
  return function(value) {
    return new Class(value);
  };
}

function unpackArrayBuffer(value) {
  return (new Uint8Array(value)).buffer;
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/ext.js":
/*!**********************************************!*\
  !*** ./node_modules/msgpack-lite/lib/ext.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// ext.js

// load both interfaces
__webpack_require__(/*! ./read-core */ "./node_modules/msgpack-lite/lib/read-core.js");
__webpack_require__(/*! ./write-core */ "./node_modules/msgpack-lite/lib/write-core.js");

exports.createCodec = __webpack_require__(/*! ./codec-base */ "./node_modules/msgpack-lite/lib/codec-base.js").createCodec;


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/flex-buffer.js":
/*!******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/flex-buffer.js ***!
  \******************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// flex-buffer.js

exports.FlexDecoder = FlexDecoder;
exports.FlexEncoder = FlexEncoder;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");

var MIN_BUFFER_SIZE = 2048;
var MAX_BUFFER_SIZE = 65536;
var BUFFER_SHORTAGE = "BUFFER_SHORTAGE";

function FlexDecoder() {
  if (!(this instanceof FlexDecoder)) return new FlexDecoder();
}

function FlexEncoder() {
  if (!(this instanceof FlexEncoder)) return new FlexEncoder();
}

FlexDecoder.mixin = mixinFactory(getDecoderMethods());
FlexDecoder.mixin(FlexDecoder.prototype);

FlexEncoder.mixin = mixinFactory(getEncoderMethods());
FlexEncoder.mixin(FlexEncoder.prototype);

function getDecoderMethods() {
  return {
    bufferish: Bufferish,
    write: write,
    fetch: fetch,
    flush: flush,
    push: push,
    pull: pull,
    read: read,
    reserve: reserve,
    offset: 0
  };

  function write(chunk) {
    var prev = this.offset ? Bufferish.prototype.slice.call(this.buffer, this.offset) : this.buffer;
    this.buffer = prev ? (chunk ? this.bufferish.concat([prev, chunk]) : prev) : chunk;
    this.offset = 0;
  }

  function flush() {
    while (this.offset < this.buffer.length) {
      var start = this.offset;
      var value;
      try {
        value = this.fetch();
      } catch (e) {
        if (e && e.message != BUFFER_SHORTAGE) throw e;
        // rollback
        this.offset = start;
        break;
      }
      this.push(value);
    }
  }

  function reserve(length) {
    var start = this.offset;
    var end = start + length;
    if (end > this.buffer.length) throw new Error(BUFFER_SHORTAGE);
    this.offset = end;
    return start;
  }
}

function getEncoderMethods() {
  return {
    bufferish: Bufferish,
    write: write,
    fetch: fetch,
    flush: flush,
    push: push,
    pull: pull,
    read: read,
    reserve: reserve,
    send: send,
    maxBufferSize: MAX_BUFFER_SIZE,
    minBufferSize: MIN_BUFFER_SIZE,
    offset: 0,
    start: 0
  };

  function fetch() {
    var start = this.start;
    if (start < this.offset) {
      var end = this.start = this.offset;
      return Bufferish.prototype.slice.call(this.buffer, start, end);
    }
  }

  function flush() {
    while (this.start < this.offset) {
      var value = this.fetch();
      if (value) this.push(value);
    }
  }

  function pull() {
    var buffers = this.buffers || (this.buffers = []);
    var chunk = buffers.length > 1 ? this.bufferish.concat(buffers) : buffers[0];
    buffers.length = 0; // buffer exhausted
    return chunk;
  }

  function reserve(length) {
    var req = length | 0;

    if (this.buffer) {
      var size = this.buffer.length;
      var start = this.offset | 0;
      var end = start + req;

      // is it long enough?
      if (end < size) {
        this.offset = end;
        return start;
      }

      // flush current buffer
      this.flush();

      // resize it to 2x current length
      length = Math.max(length, Math.min(size * 2, this.maxBufferSize));
    }

    // minimum buffer size
    length = Math.max(length, this.minBufferSize);

    // allocate new buffer
    this.buffer = this.bufferish.alloc(length);
    this.start = 0;
    this.offset = req;
    return 0;
  }

  function send(buffer) {
    var length = buffer.length;
    if (length > this.minBufferSize) {
      this.flush();
      this.push(buffer);
    } else {
      var offset = this.reserve(length);
      Bufferish.prototype.copy.call(buffer, this.buffer, offset);
    }
  }
}

// common methods

function write() {
  throw new Error("method not implemented: write()");
}

function fetch() {
  throw new Error("method not implemented: fetch()");
}

function read() {
  var length = this.buffers && this.buffers.length;

  // fetch the first result
  if (!length) return this.fetch();

  // flush current buffer
  this.flush();

  // read from the results
  return this.pull();
}

function push(chunk) {
  var buffers = this.buffers || (this.buffers = []);
  buffers.push(chunk);
}

function pull() {
  var buffers = this.buffers || (this.buffers = []);
  return buffers.shift();
}

function mixinFactory(source) {
  return mixin;

  function mixin(target) {
    for (var key in source) {
      target[key] = source[key];
    }
    return target;
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/read-core.js":
/*!****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/read-core.js ***!
  \****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// read-core.js

var ExtBuffer = __webpack_require__(/*! ./ext-buffer */ "./node_modules/msgpack-lite/lib/ext-buffer.js").ExtBuffer;
var ExtUnpacker = __webpack_require__(/*! ./ext-unpacker */ "./node_modules/msgpack-lite/lib/ext-unpacker.js");
var readUint8 = __webpack_require__(/*! ./read-format */ "./node_modules/msgpack-lite/lib/read-format.js").readUint8;
var ReadToken = __webpack_require__(/*! ./read-token */ "./node_modules/msgpack-lite/lib/read-token.js");
var CodecBase = __webpack_require__(/*! ./codec-base */ "./node_modules/msgpack-lite/lib/codec-base.js");

CodecBase.install({
  addExtUnpacker: addExtUnpacker,
  getExtUnpacker: getExtUnpacker,
  init: init
});

exports.preset = init.call(CodecBase.preset);

function getDecoder(options) {
  var readToken = ReadToken.getReadToken(options);
  return decode;

  function decode(decoder) {
    var type = readUint8(decoder);
    var func = readToken[type];
    if (!func) throw new Error("Invalid type: " + (type ? ("0x" + type.toString(16)) : type));
    return func(decoder);
  }
}

function init() {
  var options = this.options;
  this.decode = getDecoder(options);

  if (options && options.preset) {
    ExtUnpacker.setExtUnpackers(this);
  }

  return this;
}

function addExtUnpacker(etype, unpacker) {
  var unpackers = this.extUnpackers || (this.extUnpackers = []);
  unpackers[etype] = CodecBase.filter(unpacker);
}

function getExtUnpacker(type) {
  var unpackers = this.extUnpackers || (this.extUnpackers = []);
  return unpackers[type] || extUnpacker;

  function extUnpacker(buffer) {
    return new ExtBuffer(buffer, type);
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/read-format.js":
/*!******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/read-format.js ***!
  \******************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// read-format.js

var ieee754 = __webpack_require__(/*! ieee754 */ "./node_modules/ieee754/index.js");
var Int64Buffer = __webpack_require__(/*! int64-buffer */ "./node_modules/int64-buffer/int64-buffer.js");
var Uint64BE = Int64Buffer.Uint64BE;
var Int64BE = Int64Buffer.Int64BE;

exports.getReadFormat = getReadFormat;
exports.readUint8 = uint8;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var BufferProto = __webpack_require__(/*! ./bufferish-proto */ "./node_modules/msgpack-lite/lib/bufferish-proto.js");

var HAS_MAP = ("undefined" !== typeof Map);
var NO_ASSERT = true;

function getReadFormat(options) {
  var binarraybuffer = Bufferish.hasArrayBuffer && options && options.binarraybuffer;
  var int64 = options && options.int64;
  var usemap = HAS_MAP && options && options.usemap;

  var readFormat = {
    map: (usemap ? map_to_map : map_to_obj),
    array: array,
    str: str,
    bin: (binarraybuffer ? bin_arraybuffer : bin_buffer),
    ext: ext,
    uint8: uint8,
    uint16: uint16,
    uint32: uint32,
    uint64: read(8, int64 ? readUInt64BE_int64 : readUInt64BE),
    int8: int8,
    int16: int16,
    int32: int32,
    int64: read(8, int64 ? readInt64BE_int64 : readInt64BE),
    float32: read(4, readFloatBE),
    float64: read(8, readDoubleBE)
  };

  return readFormat;
}

function map_to_obj(decoder, len) {
  var value = {};
  var i;
  var k = new Array(len);
  var v = new Array(len);

  var decode = decoder.codec.decode;
  for (i = 0; i < len; i++) {
    k[i] = decode(decoder);
    v[i] = decode(decoder);
  }
  for (i = 0; i < len; i++) {
    value[k[i]] = v[i];
  }
  return value;
}

function map_to_map(decoder, len) {
  var value = new Map();
  var i;
  var k = new Array(len);
  var v = new Array(len);

  var decode = decoder.codec.decode;
  for (i = 0; i < len; i++) {
    k[i] = decode(decoder);
    v[i] = decode(decoder);
  }
  for (i = 0; i < len; i++) {
    value.set(k[i], v[i]);
  }
  return value;
}

function array(decoder, len) {
  var value = new Array(len);
  var decode = decoder.codec.decode;
  for (var i = 0; i < len; i++) {
    value[i] = decode(decoder);
  }
  return value;
}

function str(decoder, len) {
  var start = decoder.reserve(len);
  var end = start + len;
  return BufferProto.toString.call(decoder.buffer, "utf-8", start, end);
}

function bin_buffer(decoder, len) {
  var start = decoder.reserve(len);
  var end = start + len;
  var buf = BufferProto.slice.call(decoder.buffer, start, end);
  return Bufferish.from(buf);
}

function bin_arraybuffer(decoder, len) {
  var start = decoder.reserve(len);
  var end = start + len;
  var buf = BufferProto.slice.call(decoder.buffer, start, end);
  return Bufferish.Uint8Array.from(buf).buffer;
}

function ext(decoder, len) {
  var start = decoder.reserve(len+1);
  var type = decoder.buffer[start++];
  var end = start + len;
  var unpack = decoder.codec.getExtUnpacker(type);
  if (!unpack) throw new Error("Invalid ext type: " + (type ? ("0x" + type.toString(16)) : type));
  var buf = BufferProto.slice.call(decoder.buffer, start, end);
  return unpack(buf);
}

function uint8(decoder) {
  var start = decoder.reserve(1);
  return decoder.buffer[start];
}

function int8(decoder) {
  var start = decoder.reserve(1);
  var value = decoder.buffer[start];
  return (value & 0x80) ? value - 0x100 : value;
}

function uint16(decoder) {
  var start = decoder.reserve(2);
  var buffer = decoder.buffer;
  return (buffer[start++] << 8) | buffer[start];
}

function int16(decoder) {
  var start = decoder.reserve(2);
  var buffer = decoder.buffer;
  var value = (buffer[start++] << 8) | buffer[start];
  return (value & 0x8000) ? value - 0x10000 : value;
}

function uint32(decoder) {
  var start = decoder.reserve(4);
  var buffer = decoder.buffer;
  return (buffer[start++] * 16777216) + (buffer[start++] << 16) + (buffer[start++] << 8) + buffer[start];
}

function int32(decoder) {
  var start = decoder.reserve(4);
  var buffer = decoder.buffer;
  return (buffer[start++] << 24) | (buffer[start++] << 16) | (buffer[start++] << 8) | buffer[start];
}

function read(len, method) {
  return function(decoder) {
    var start = decoder.reserve(len);
    return method.call(decoder.buffer, start, NO_ASSERT);
  };
}

function readUInt64BE(start) {
  return new Uint64BE(this, start).toNumber();
}

function readInt64BE(start) {
  return new Int64BE(this, start).toNumber();
}

function readUInt64BE_int64(start) {
  return new Uint64BE(this, start);
}

function readInt64BE_int64(start) {
  return new Int64BE(this, start);
}

function readFloatBE(start) {
  return ieee754.read(this, start, false, 23, 4);
}

function readDoubleBE(start) {
  return ieee754.read(this, start, false, 52, 8);
}

/***/ }),

/***/ "./node_modules/msgpack-lite/lib/read-token.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/read-token.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// read-token.js

var ReadFormat = __webpack_require__(/*! ./read-format */ "./node_modules/msgpack-lite/lib/read-format.js");

exports.getReadToken = getReadToken;

function getReadToken(options) {
  var format = ReadFormat.getReadFormat(options);

  if (options && options.useraw) {
    return init_useraw(format);
  } else {
    return init_token(format);
  }
}

function init_token(format) {
  var i;
  var token = new Array(256);

  // positive fixint -- 0x00 - 0x7f
  for (i = 0x00; i <= 0x7f; i++) {
    token[i] = constant(i);
  }

  // fixmap -- 0x80 - 0x8f
  for (i = 0x80; i <= 0x8f; i++) {
    token[i] = fix(i - 0x80, format.map);
  }

  // fixarray -- 0x90 - 0x9f
  for (i = 0x90; i <= 0x9f; i++) {
    token[i] = fix(i - 0x90, format.array);
  }

  // fixstr -- 0xa0 - 0xbf
  for (i = 0xa0; i <= 0xbf; i++) {
    token[i] = fix(i - 0xa0, format.str);
  }

  // nil -- 0xc0
  token[0xc0] = constant(null);

  // (never used) -- 0xc1
  token[0xc1] = null;

  // false -- 0xc2
  // true -- 0xc3
  token[0xc2] = constant(false);
  token[0xc3] = constant(true);

  // bin 8 -- 0xc4
  // bin 16 -- 0xc5
  // bin 32 -- 0xc6
  token[0xc4] = flex(format.uint8, format.bin);
  token[0xc5] = flex(format.uint16, format.bin);
  token[0xc6] = flex(format.uint32, format.bin);

  // ext 8 -- 0xc7
  // ext 16 -- 0xc8
  // ext 32 -- 0xc9
  token[0xc7] = flex(format.uint8, format.ext);
  token[0xc8] = flex(format.uint16, format.ext);
  token[0xc9] = flex(format.uint32, format.ext);

  // float 32 -- 0xca
  // float 64 -- 0xcb
  token[0xca] = format.float32;
  token[0xcb] = format.float64;

  // uint 8 -- 0xcc
  // uint 16 -- 0xcd
  // uint 32 -- 0xce
  // uint 64 -- 0xcf
  token[0xcc] = format.uint8;
  token[0xcd] = format.uint16;
  token[0xce] = format.uint32;
  token[0xcf] = format.uint64;

  // int 8 -- 0xd0
  // int 16 -- 0xd1
  // int 32 -- 0xd2
  // int 64 -- 0xd3
  token[0xd0] = format.int8;
  token[0xd1] = format.int16;
  token[0xd2] = format.int32;
  token[0xd3] = format.int64;

  // fixext 1 -- 0xd4
  // fixext 2 -- 0xd5
  // fixext 4 -- 0xd6
  // fixext 8 -- 0xd7
  // fixext 16 -- 0xd8
  token[0xd4] = fix(1, format.ext);
  token[0xd5] = fix(2, format.ext);
  token[0xd6] = fix(4, format.ext);
  token[0xd7] = fix(8, format.ext);
  token[0xd8] = fix(16, format.ext);

  // str 8 -- 0xd9
  // str 16 -- 0xda
  // str 32 -- 0xdb
  token[0xd9] = flex(format.uint8, format.str);
  token[0xda] = flex(format.uint16, format.str);
  token[0xdb] = flex(format.uint32, format.str);

  // array 16 -- 0xdc
  // array 32 -- 0xdd
  token[0xdc] = flex(format.uint16, format.array);
  token[0xdd] = flex(format.uint32, format.array);

  // map 16 -- 0xde
  // map 32 -- 0xdf
  token[0xde] = flex(format.uint16, format.map);
  token[0xdf] = flex(format.uint32, format.map);

  // negative fixint -- 0xe0 - 0xff
  for (i = 0xe0; i <= 0xff; i++) {
    token[i] = constant(i - 0x100);
  }

  return token;
}

function init_useraw(format) {
  var i;
  var token = init_token(format).slice();

  // raw 8 -- 0xd9
  // raw 16 -- 0xda
  // raw 32 -- 0xdb
  token[0xd9] = token[0xc4];
  token[0xda] = token[0xc5];
  token[0xdb] = token[0xc6];

  // fixraw -- 0xa0 - 0xbf
  for (i = 0xa0; i <= 0xbf; i++) {
    token[i] = fix(i - 0xa0, format.bin);
  }

  return token;
}

function constant(value) {
  return function() {
    return value;
  };
}

function flex(lenFunc, decodeFunc) {
  return function(decoder) {
    var len = lenFunc(decoder);
    return decodeFunc(decoder, len);
  };
}

function fix(len, method) {
  return function(decoder) {
    return method(decoder, len);
  };
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/write-core.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/write-core.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// write-core.js

var ExtBuffer = __webpack_require__(/*! ./ext-buffer */ "./node_modules/msgpack-lite/lib/ext-buffer.js").ExtBuffer;
var ExtPacker = __webpack_require__(/*! ./ext-packer */ "./node_modules/msgpack-lite/lib/ext-packer.js");
var WriteType = __webpack_require__(/*! ./write-type */ "./node_modules/msgpack-lite/lib/write-type.js");
var CodecBase = __webpack_require__(/*! ./codec-base */ "./node_modules/msgpack-lite/lib/codec-base.js");

CodecBase.install({
  addExtPacker: addExtPacker,
  getExtPacker: getExtPacker,
  init: init
});

exports.preset = init.call(CodecBase.preset);

function getEncoder(options) {
  var writeType = WriteType.getWriteType(options);
  return encode;

  function encode(encoder, value) {
    var func = writeType[typeof value];
    if (!func) throw new Error("Unsupported type \"" + (typeof value) + "\": " + value);
    func(encoder, value);
  }
}

function init() {
  var options = this.options;
  this.encode = getEncoder(options);

  if (options && options.preset) {
    ExtPacker.setExtPackers(this);
  }

  return this;
}

function addExtPacker(etype, Class, packer) {
  packer = CodecBase.filter(packer);
  var name = Class.name;
  if (name && name !== "Object") {
    var packers = this.extPackers || (this.extPackers = {});
    packers[name] = extPacker;
  } else {
    // fallback for IE
    var list = this.extEncoderList || (this.extEncoderList = []);
    list.unshift([Class, extPacker]);
  }

  function extPacker(value) {
    if (packer) value = packer(value);
    return new ExtBuffer(value, etype);
  }
}

function getExtPacker(value) {
  var packers = this.extPackers || (this.extPackers = {});
  var c = value.constructor;
  var e = c && c.name && packers[c.name];
  if (e) return e;

  // fallback for IE
  var list = this.extEncoderList || (this.extEncoderList = []);
  var len = list.length;
  for (var i = 0; i < len; i++) {
    var pair = list[i];
    if (c === pair[0]) return pair[1];
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/write-token.js":
/*!******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/write-token.js ***!
  \******************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// write-token.js

var ieee754 = __webpack_require__(/*! ieee754 */ "./node_modules/ieee754/index.js");
var Int64Buffer = __webpack_require__(/*! int64-buffer */ "./node_modules/int64-buffer/int64-buffer.js");
var Uint64BE = Int64Buffer.Uint64BE;
var Int64BE = Int64Buffer.Int64BE;

var uint8 = __webpack_require__(/*! ./write-uint8 */ "./node_modules/msgpack-lite/lib/write-uint8.js").uint8;
var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var Buffer = Bufferish.global;
var IS_BUFFER_SHIM = Bufferish.hasBuffer && ("TYPED_ARRAY_SUPPORT" in Buffer);
var NO_TYPED_ARRAY = IS_BUFFER_SHIM && !Buffer.TYPED_ARRAY_SUPPORT;
var Buffer_prototype = Bufferish.hasBuffer && Buffer.prototype || {};

exports.getWriteToken = getWriteToken;

function getWriteToken(options) {
  if (options && options.uint8array) {
    return init_uint8array();
  } else if (NO_TYPED_ARRAY || (Bufferish.hasBuffer && options && options.safe)) {
    return init_safe();
  } else {
    return init_token();
  }
}

function init_uint8array() {
  var token = init_token();

  // float 32 -- 0xca
  // float 64 -- 0xcb
  token[0xca] = writeN(0xca, 4, writeFloatBE);
  token[0xcb] = writeN(0xcb, 8, writeDoubleBE);

  return token;
}

// Node.js and browsers with TypedArray

function init_token() {
  // (immediate values)
  // positive fixint -- 0x00 - 0x7f
  // nil -- 0xc0
  // false -- 0xc2
  // true -- 0xc3
  // negative fixint -- 0xe0 - 0xff
  var token = uint8.slice();

  // bin 8 -- 0xc4
  // bin 16 -- 0xc5
  // bin 32 -- 0xc6
  token[0xc4] = write1(0xc4);
  token[0xc5] = write2(0xc5);
  token[0xc6] = write4(0xc6);

  // ext 8 -- 0xc7
  // ext 16 -- 0xc8
  // ext 32 -- 0xc9
  token[0xc7] = write1(0xc7);
  token[0xc8] = write2(0xc8);
  token[0xc9] = write4(0xc9);

  // float 32 -- 0xca
  // float 64 -- 0xcb
  token[0xca] = writeN(0xca, 4, (Buffer_prototype.writeFloatBE || writeFloatBE), true);
  token[0xcb] = writeN(0xcb, 8, (Buffer_prototype.writeDoubleBE || writeDoubleBE), true);

  // uint 8 -- 0xcc
  // uint 16 -- 0xcd
  // uint 32 -- 0xce
  // uint 64 -- 0xcf
  token[0xcc] = write1(0xcc);
  token[0xcd] = write2(0xcd);
  token[0xce] = write4(0xce);
  token[0xcf] = writeN(0xcf, 8, writeUInt64BE);

  // int 8 -- 0xd0
  // int 16 -- 0xd1
  // int 32 -- 0xd2
  // int 64 -- 0xd3
  token[0xd0] = write1(0xd0);
  token[0xd1] = write2(0xd1);
  token[0xd2] = write4(0xd2);
  token[0xd3] = writeN(0xd3, 8, writeInt64BE);

  // str 8 -- 0xd9
  // str 16 -- 0xda
  // str 32 -- 0xdb
  token[0xd9] = write1(0xd9);
  token[0xda] = write2(0xda);
  token[0xdb] = write4(0xdb);

  // array 16 -- 0xdc
  // array 32 -- 0xdd
  token[0xdc] = write2(0xdc);
  token[0xdd] = write4(0xdd);

  // map 16 -- 0xde
  // map 32 -- 0xdf
  token[0xde] = write2(0xde);
  token[0xdf] = write4(0xdf);

  return token;
}

// safe mode: for old browsers and who needs asserts

function init_safe() {
  // (immediate values)
  // positive fixint -- 0x00 - 0x7f
  // nil -- 0xc0
  // false -- 0xc2
  // true -- 0xc3
  // negative fixint -- 0xe0 - 0xff
  var token = uint8.slice();

  // bin 8 -- 0xc4
  // bin 16 -- 0xc5
  // bin 32 -- 0xc6
  token[0xc4] = writeN(0xc4, 1, Buffer.prototype.writeUInt8);
  token[0xc5] = writeN(0xc5, 2, Buffer.prototype.writeUInt16BE);
  token[0xc6] = writeN(0xc6, 4, Buffer.prototype.writeUInt32BE);

  // ext 8 -- 0xc7
  // ext 16 -- 0xc8
  // ext 32 -- 0xc9
  token[0xc7] = writeN(0xc7, 1, Buffer.prototype.writeUInt8);
  token[0xc8] = writeN(0xc8, 2, Buffer.prototype.writeUInt16BE);
  token[0xc9] = writeN(0xc9, 4, Buffer.prototype.writeUInt32BE);

  // float 32 -- 0xca
  // float 64 -- 0xcb
  token[0xca] = writeN(0xca, 4, Buffer.prototype.writeFloatBE);
  token[0xcb] = writeN(0xcb, 8, Buffer.prototype.writeDoubleBE);

  // uint 8 -- 0xcc
  // uint 16 -- 0xcd
  // uint 32 -- 0xce
  // uint 64 -- 0xcf
  token[0xcc] = writeN(0xcc, 1, Buffer.prototype.writeUInt8);
  token[0xcd] = writeN(0xcd, 2, Buffer.prototype.writeUInt16BE);
  token[0xce] = writeN(0xce, 4, Buffer.prototype.writeUInt32BE);
  token[0xcf] = writeN(0xcf, 8, writeUInt64BE);

  // int 8 -- 0xd0
  // int 16 -- 0xd1
  // int 32 -- 0xd2
  // int 64 -- 0xd3
  token[0xd0] = writeN(0xd0, 1, Buffer.prototype.writeInt8);
  token[0xd1] = writeN(0xd1, 2, Buffer.prototype.writeInt16BE);
  token[0xd2] = writeN(0xd2, 4, Buffer.prototype.writeInt32BE);
  token[0xd3] = writeN(0xd3, 8, writeInt64BE);

  // str 8 -- 0xd9
  // str 16 -- 0xda
  // str 32 -- 0xdb
  token[0xd9] = writeN(0xd9, 1, Buffer.prototype.writeUInt8);
  token[0xda] = writeN(0xda, 2, Buffer.prototype.writeUInt16BE);
  token[0xdb] = writeN(0xdb, 4, Buffer.prototype.writeUInt32BE);

  // array 16 -- 0xdc
  // array 32 -- 0xdd
  token[0xdc] = writeN(0xdc, 2, Buffer.prototype.writeUInt16BE);
  token[0xdd] = writeN(0xdd, 4, Buffer.prototype.writeUInt32BE);

  // map 16 -- 0xde
  // map 32 -- 0xdf
  token[0xde] = writeN(0xde, 2, Buffer.prototype.writeUInt16BE);
  token[0xdf] = writeN(0xdf, 4, Buffer.prototype.writeUInt32BE);

  return token;
}

function write1(type) {
  return function(encoder, value) {
    var offset = encoder.reserve(2);
    var buffer = encoder.buffer;
    buffer[offset++] = type;
    buffer[offset] = value;
  };
}

function write2(type) {
  return function(encoder, value) {
    var offset = encoder.reserve(3);
    var buffer = encoder.buffer;
    buffer[offset++] = type;
    buffer[offset++] = value >>> 8;
    buffer[offset] = value;
  };
}

function write4(type) {
  return function(encoder, value) {
    var offset = encoder.reserve(5);
    var buffer = encoder.buffer;
    buffer[offset++] = type;
    buffer[offset++] = value >>> 24;
    buffer[offset++] = value >>> 16;
    buffer[offset++] = value >>> 8;
    buffer[offset] = value;
  };
}

function writeN(type, len, method, noAssert) {
  return function(encoder, value) {
    var offset = encoder.reserve(len + 1);
    encoder.buffer[offset++] = type;
    method.call(encoder.buffer, value, offset, noAssert);
  };
}

function writeUInt64BE(value, offset) {
  new Uint64BE(this, offset, value);
}

function writeInt64BE(value, offset) {
  new Int64BE(this, offset, value);
}

function writeFloatBE(value, offset) {
  ieee754.write(this, value, offset, false, 23, 4);
}

function writeDoubleBE(value, offset) {
  ieee754.write(this, value, offset, false, 52, 8);
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/write-type.js":
/*!*****************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/write-type.js ***!
  \*****************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

// write-type.js

var IS_ARRAY = __webpack_require__(/*! isarray */ "./node_modules/isarray/index.js");
var Int64Buffer = __webpack_require__(/*! int64-buffer */ "./node_modules/int64-buffer/int64-buffer.js");
var Uint64BE = Int64Buffer.Uint64BE;
var Int64BE = Int64Buffer.Int64BE;

var Bufferish = __webpack_require__(/*! ./bufferish */ "./node_modules/msgpack-lite/lib/bufferish.js");
var BufferProto = __webpack_require__(/*! ./bufferish-proto */ "./node_modules/msgpack-lite/lib/bufferish-proto.js");
var WriteToken = __webpack_require__(/*! ./write-token */ "./node_modules/msgpack-lite/lib/write-token.js");
var uint8 = __webpack_require__(/*! ./write-uint8 */ "./node_modules/msgpack-lite/lib/write-uint8.js").uint8;
var ExtBuffer = __webpack_require__(/*! ./ext-buffer */ "./node_modules/msgpack-lite/lib/ext-buffer.js").ExtBuffer;

var HAS_UINT8ARRAY = ("undefined" !== typeof Uint8Array);
var HAS_MAP = ("undefined" !== typeof Map);

var extmap = [];
extmap[1] = 0xd4;
extmap[2] = 0xd5;
extmap[4] = 0xd6;
extmap[8] = 0xd7;
extmap[16] = 0xd8;

exports.getWriteType = getWriteType;

function getWriteType(options) {
  var token = WriteToken.getWriteToken(options);
  var useraw = options && options.useraw;
  var binarraybuffer = HAS_UINT8ARRAY && options && options.binarraybuffer;
  var isBuffer = binarraybuffer ? Bufferish.isArrayBuffer : Bufferish.isBuffer;
  var bin = binarraybuffer ? bin_arraybuffer : bin_buffer;
  var usemap = HAS_MAP && options && options.usemap;
  var map = usemap ? map_to_map : obj_to_map;

  var writeType = {
    "boolean": bool,
    "function": nil,
    "number": number,
    "object": (useraw ? object_raw : object),
    "string": _string(useraw ? raw_head_size : str_head_size),
    "symbol": nil,
    "undefined": nil
  };

  return writeType;

  // false -- 0xc2
  // true -- 0xc3
  function bool(encoder, value) {
    var type = value ? 0xc3 : 0xc2;
    token[type](encoder, value);
  }

  function number(encoder, value) {
    var ivalue = value | 0;
    var type;
    if (value !== ivalue) {
      // float 64 -- 0xcb
      type = 0xcb;
      token[type](encoder, value);
      return;
    } else if (-0x20 <= ivalue && ivalue <= 0x7F) {
      // positive fixint -- 0x00 - 0x7f
      // negative fixint -- 0xe0 - 0xff
      type = ivalue & 0xFF;
    } else if (0 <= ivalue) {
      // uint 8 -- 0xcc
      // uint 16 -- 0xcd
      // uint 32 -- 0xce
      type = (ivalue <= 0xFF) ? 0xcc : (ivalue <= 0xFFFF) ? 0xcd : 0xce;
    } else {
      // int 8 -- 0xd0
      // int 16 -- 0xd1
      // int 32 -- 0xd2
      type = (-0x80 <= ivalue) ? 0xd0 : (-0x8000 <= ivalue) ? 0xd1 : 0xd2;
    }
    token[type](encoder, ivalue);
  }

  // uint 64 -- 0xcf
  function uint64(encoder, value) {
    var type = 0xcf;
    token[type](encoder, value.toArray());
  }

  // int 64 -- 0xd3
  function int64(encoder, value) {
    var type = 0xd3;
    token[type](encoder, value.toArray());
  }

  // str 8 -- 0xd9
  // str 16 -- 0xda
  // str 32 -- 0xdb
  // fixstr -- 0xa0 - 0xbf
  function str_head_size(length) {
    return (length < 32) ? 1 : (length <= 0xFF) ? 2 : (length <= 0xFFFF) ? 3 : 5;
  }

  // raw 16 -- 0xda
  // raw 32 -- 0xdb
  // fixraw -- 0xa0 - 0xbf
  function raw_head_size(length) {
    return (length < 32) ? 1 : (length <= 0xFFFF) ? 3 : 5;
  }

  function _string(head_size) {
    return string;

    function string(encoder, value) {
      // prepare buffer
      var length = value.length;
      var maxsize = 5 + length * 3;
      encoder.offset = encoder.reserve(maxsize);
      var buffer = encoder.buffer;

      // expected header size
      var expected = head_size(length);

      // expected start point
      var start = encoder.offset + expected;

      // write string
      length = BufferProto.write.call(buffer, value, start);

      // actual header size
      var actual = head_size(length);

      // move content when needed
      if (expected !== actual) {
        var targetStart = start + actual - expected;
        var end = start + length;
        BufferProto.copy.call(buffer, buffer, targetStart, start, end);
      }

      // write header
      var type = (actual === 1) ? (0xa0 + length) : (actual <= 3) ? (0xd7 + actual) : 0xdb;
      token[type](encoder, length);

      // move cursor
      encoder.offset += length;
    }
  }

  function object(encoder, value) {
    // null
    if (value === null) return nil(encoder, value);

    // Buffer
    if (isBuffer(value)) return bin(encoder, value);

    // Array
    if (IS_ARRAY(value)) return array(encoder, value);

    // int64-buffer objects
    if (Uint64BE.isUint64BE(value)) return uint64(encoder, value);
    if (Int64BE.isInt64BE(value)) return int64(encoder, value);

    // ext formats
    var packer = encoder.codec.getExtPacker(value);
    if (packer) value = packer(value);
    if (value instanceof ExtBuffer) return ext(encoder, value);

    // plain old Objects or Map
    map(encoder, value);
  }

  function object_raw(encoder, value) {
    // Buffer
    if (isBuffer(value)) return raw(encoder, value);

    // others
    object(encoder, value);
  }

  // nil -- 0xc0
  function nil(encoder, value) {
    var type = 0xc0;
    token[type](encoder, value);
  }

  // fixarray -- 0x90 - 0x9f
  // array 16 -- 0xdc
  // array 32 -- 0xdd
  function array(encoder, value) {
    var length = value.length;
    var type = (length < 16) ? (0x90 + length) : (length <= 0xFFFF) ? 0xdc : 0xdd;
    token[type](encoder, length);

    var encode = encoder.codec.encode;
    for (var i = 0; i < length; i++) {
      encode(encoder, value[i]);
    }
  }

  // bin 8 -- 0xc4
  // bin 16 -- 0xc5
  // bin 32 -- 0xc6
  function bin_buffer(encoder, value) {
    var length = value.length;
    var type = (length < 0xFF) ? 0xc4 : (length <= 0xFFFF) ? 0xc5 : 0xc6;
    token[type](encoder, length);
    encoder.send(value);
  }

  function bin_arraybuffer(encoder, value) {
    bin_buffer(encoder, new Uint8Array(value));
  }

  // fixext 1 -- 0xd4
  // fixext 2 -- 0xd5
  // fixext 4 -- 0xd6
  // fixext 8 -- 0xd7
  // fixext 16 -- 0xd8
  // ext 8 -- 0xc7
  // ext 16 -- 0xc8
  // ext 32 -- 0xc9
  function ext(encoder, value) {
    var buffer = value.buffer;
    var length = buffer.length;
    var type = extmap[length] || ((length < 0xFF) ? 0xc7 : (length <= 0xFFFF) ? 0xc8 : 0xc9);
    token[type](encoder, length);
    uint8[value.type](encoder);
    encoder.send(buffer);
  }

  // fixmap -- 0x80 - 0x8f
  // map 16 -- 0xde
  // map 32 -- 0xdf
  function obj_to_map(encoder, value) {
    var keys = Object.keys(value);
    var length = keys.length;
    var type = (length < 16) ? (0x80 + length) : (length <= 0xFFFF) ? 0xde : 0xdf;
    token[type](encoder, length);

    var encode = encoder.codec.encode;
    keys.forEach(function(key) {
      encode(encoder, key);
      encode(encoder, value[key]);
    });
  }

  // fixmap -- 0x80 - 0x8f
  // map 16 -- 0xde
  // map 32 -- 0xdf
  function map_to_map(encoder, value) {
    if (!(value instanceof Map)) return obj_to_map(encoder, value);

    var length = value.size;
    var type = (length < 16) ? (0x80 + length) : (length <= 0xFFFF) ? 0xde : 0xdf;
    token[type](encoder, length);

    var encode = encoder.codec.encode;
    value.forEach(function(val, key, m) {
      encode(encoder, key);
      encode(encoder, val);
    });
  }

  // raw 16 -- 0xda
  // raw 32 -- 0xdb
  // fixraw -- 0xa0 - 0xbf
  function raw(encoder, value) {
    var length = value.length;
    var type = (length < 32) ? (0xa0 + length) : (length <= 0xFFFF) ? 0xda : 0xdb;
    token[type](encoder, length);
    encoder.send(value);
  }
}


/***/ }),

/***/ "./node_modules/msgpack-lite/lib/write-uint8.js":
/*!******************************************************!*\
  !*** ./node_modules/msgpack-lite/lib/write-uint8.js ***!
  \******************************************************/
/***/ ((__unused_webpack_module, exports) => {

// write-unit8.js

var constant = exports.uint8 = new Array(256);

for (var i = 0x00; i <= 0xFF; i++) {
  constant[i] = write0(i);
}

function write0(type) {
  return function(encoder) {
    var offset = encoder.reserve(1);
    encoder.buffer[offset] = type;
  };
}


/***/ }),

/***/ "./src/EventEmitter.ts":
/*!*****************************!*\
  !*** ./src/EventEmitter.ts ***!
  \*****************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "EventEmitter": () => (/* binding */ EventEmitter)
/* harmony export */ });
class EventEmitter {
    constructor() {
        this.listeners = new Map();
    }
    on(event, handler) {
        let handlers = this.listeners.get(event);
        if (handlers === undefined) {
            handlers = [];
            this.listeners.set(event, handlers);
        }
        handlers.push(handler);
    }
    emit(event, ...data) {
        const handlers = this.listeners.get(event);
        if (handlers !== undefined) {
            const errors = [];
            handlers.forEach((handler) => {
                try {
                    handler(...data);
                }
                catch (e) {
                    /* istanbul ignore next */
                    errors.push(e);
                }
            });
            /* Error conditions here are impossible to test for from selenium
             * because it would arise from the wrong use of the API, which we
             * can't ship in the extension, so don't try to instrument. */
            /* istanbul ignore next */
            if (errors.length > 0) {
                throw new Error(JSON.stringify(errors));
            }
        }
    }
}


/***/ }),

/***/ "./src/KeyHandler.ts":
/*!***************************!*\
  !*** ./src/KeyHandler.ts ***!
  \***************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "KeydownHandler": () => (/* binding */ KeydownHandler)
/* harmony export */ });
/* harmony import */ var _EventEmitter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./EventEmitter */ "./src/EventEmitter.ts");
/* harmony import */ var _utils_keys__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./utils/keys */ "./src/utils/keys.ts");


// This class implements the keydown logic that deals with modifiers and is
// shared across both browsers and thunderbird
class KeydownHandler extends _EventEmitter__WEBPACK_IMPORTED_MODULE_0__.EventEmitter {
    constructor(elem, settings) {
        super();
        this.elem = elem;
        const ignoreKeys = settings.ignoreKeys;
        this.elem.addEventListener("keydown", (evt) => {
            // This is a workaround for osx where pressing non-alphanumeric
            // characters like "@" requires pressing <A-a>, which results
            // in the browser sending an <A-@> event, which we want to
            // treat as a regular @.
            // So if we're seeing an alt on a non-alphanumeric character,
            // we just ignore it and let the input event handler do its
            // magic. This can only be tested on OSX, as generating an
            // <A-@> keydown event with selenium won't result in an input
            // event.
            // Since coverage reports are only retrieved on linux, we don't
            // instrument this condition.
            /* istanbul ignore next */
            if (evt.altKey && settings.alt === "alphanum" && !/[a-zA-Z0-9]/.test(evt.key)) {
                return;
            }
            // Note: order of this array is important, we need to check OS before checking meta
            const specialKeys = [["Alt", "A"], ["Control", "C"], ["OS", "D"], ["Meta", "D"]];
            // The event has to be trusted and either have a modifier or a non-literal representation
            if (evt.isTrusted
                && (_utils_keys__WEBPACK_IMPORTED_MODULE_1__.nonLiteralKeys[evt.key] !== undefined
                    || specialKeys.find(([mod, _]) => evt.key !== mod && evt.getModifierState(mod)))) {
                const text = specialKeys.concat([["Shift", "S"]])
                    .reduce((key, [attr, mod]) => {
                    if (evt.getModifierState(attr)) {
                        return (0,_utils_keys__WEBPACK_IMPORTED_MODULE_1__.addModifier)(mod, key);
                    }
                    return key;
                }, (0,_utils_keys__WEBPACK_IMPORTED_MODULE_1__.translateKey)(evt.key));
                let keys = [];
                if (ignoreKeys[this.currentMode] !== undefined) {
                    keys = ignoreKeys[this.currentMode].slice();
                }
                if (ignoreKeys.all !== undefined) {
                    keys.push.apply(keys, ignoreKeys.all);
                }
                if (!keys.includes(text)) {
                    this.emit("input", text);
                    evt.preventDefault();
                    evt.stopImmediatePropagation();
                }
            }
        });
    }
    focus() {
        this.elem.focus();
    }
    moveTo(_, __) {
        // Don't do nuthin
    }
    setMode(s) {
        this.currentMode = s;
    }
}
;


/***/ }),

/***/ "./src/Neovim.ts":
/*!***********************!*\
  !*** ./src/Neovim.ts ***!
  \***********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "neovim": () => (/* binding */ neovim)
/* harmony export */ });
/* harmony import */ var _renderer__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./renderer */ "./src/renderer.ts");
/* harmony import */ var _Stdin__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Stdin */ "./src/Stdin.ts");
/* harmony import */ var _Stdout__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Stdout */ "./src/Stdout.ts");
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");



async function neovim(page, canvas, { port, password }) {
    const functions = {};
    const requests = new Map();
    _renderer__WEBPACK_IMPORTED_MODULE_0__.setCanvas(canvas);
    _renderer__WEBPACK_IMPORTED_MODULE_0__.events.on("resize", ({ grid, width, height }) => {
        functions.ui_try_resize_grid(grid, width, height);
    });
    _renderer__WEBPACK_IMPORTED_MODULE_0__.events.on("frameResize", ({ width, height }) => {
        page.resizeEditor(width, height);
    });
    let prevNotificationPromise = Promise.resolve();
    const socket = new WebSocket(`ws://127.0.0.1:${port}/${password}`);
    socket.binaryType = "arraybuffer";
    socket.addEventListener("close", ((_) => {
        prevNotificationPromise = prevNotificationPromise.finally(() => page.killEditor());
    }));
    await (new Promise(resolve => socket.addEventListener("open", () => {
        resolve(undefined);
    })));
    const stdin = new _Stdin__WEBPACK_IMPORTED_MODULE_1__.Stdin(socket);
    const stdout = new _Stdout__WEBPACK_IMPORTED_MODULE_2__.Stdout(socket);
    let reqId = 0;
    const request = (api, args) => {
        return new Promise((resolve, reject) => {
            reqId += 1;
            requests.set(reqId, { resolve, reject });
            stdin.write(reqId, api, args);
        });
    };
    stdout.on("request", (id, name, args) => {
        console.warn("firenvim: unhandled request from neovim", id, name, args);
    });
    stdout.on("response", (id, error, result) => {
        const r = requests.get(id);
        if (!r) {
            // This can't happen and yet it sometimes does, possibly due to a firefox bug
            console.error(`Received answer to ${id} but no handler found!`);
        }
        else {
            requests.delete(id);
            if (error) {
                r.reject(error);
            }
            else {
                r.resolve(result);
            }
        }
    });
    let lastLostFocus = performance.now();
    stdout.on("notification", async (name, args) => {
        if (name === "redraw" && args) {
            _renderer__WEBPACK_IMPORTED_MODULE_0__.onRedraw(args);
            return;
        }
        prevNotificationPromise = prevNotificationPromise.finally(() => {
            // A very tricky sequence of events could happen here:
            // - firenvim_bufwrite is received page.setElementContent is called
            //   asynchronously
            // - firenvim_focus_page is called, page.focusPage() is called
            //   asynchronously, lastLostFocus is set to now
            // - page.setElementContent completes, lastLostFocus is checked to see
            //   if focus should be grabbed or not
            // That's why we have to check for lastLostFocus after
            // page.setElementContent/Cursor! Same thing for firenvim_press_keys
            const hadFocus = document.hasFocus();
            switch (name) {
                case "firenvim_bufwrite":
                    {
                        const data = args[0];
                        return page.setElementContent(data.text.join("\n"))
                            .then(() => page.setElementCursor(...(data.cursor)))
                            .then(() => {
                            if (hadFocus
                                && !document.hasFocus()
                                && (performance.now() - lastLostFocus > 3000)) {
                                window.focus();
                            }
                        });
                    }
                case "firenvim_eval_js":
                    return page.evalInPage(args[0]).catch(_ => _).then(result => {
                        if (args[1]) {
                            request("nvim_call_function", [args[1], [JSON.stringify(result)]]);
                        }
                    });
                case "firenvim_focus_page":
                    lastLostFocus = performance.now();
                    return page.focusPage();
                case "firenvim_focus_input":
                    lastLostFocus = performance.now();
                    return page.focusInput();
                case "firenvim_hide_frame":
                    lastLostFocus = performance.now();
                    return page.hideEditor();
                case "firenvim_press_keys":
                    return page.pressKeys(args[0]);
                case "firenvim_vimleave":
                    lastLostFocus = performance.now();
                    return page.killEditor();
                case "firenvim_thunderbird_send":
                    return browser.runtime.sendMessage({
                        args: [],
                        funcName: ["thunderbirdSend"],
                    });
            }
        });
    });
    const { 0: channel, 1: apiInfo } = (await request("nvim_get_api_info", []));
    stdout.setTypes(apiInfo.types);
    Object.assign(functions, apiInfo.functions
        .filter(f => f.deprecated_since === undefined)
        .reduce((acc, cur) => {
        let name = cur.name;
        if (name.startsWith("nvim_")) {
            name = name.slice(5);
        }
        acc[name] = (...args) => request(cur.name, args);
        return acc;
    }, {}));
    functions.get_current_channel = () => channel;
    return functions;
}


/***/ }),

/***/ "./src/Stdin.ts":
/*!**********************!*\
  !*** ./src/Stdin.ts ***!
  \**********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "Stdin": () => (/* binding */ Stdin)
/* harmony export */ });
/* harmony import */ var msgpack_lite__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! msgpack-lite */ "./node_modules/msgpack-lite/lib/browser.js");

class Stdin {
    constructor(socket) {
        this.socket = socket;
    }
    write(reqId, method, args) {
        const req = [0, reqId, method, args];
        const encoded = msgpack_lite__WEBPACK_IMPORTED_MODULE_0__.encode(req);
        this.socket.send(encoded);
    }
}


/***/ }),

/***/ "./src/Stdout.ts":
/*!***********************!*\
  !*** ./src/Stdout.ts ***!
  \***********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "Stdout": () => (/* binding */ Stdout)
/* harmony export */ });
/* harmony import */ var msgpack_lite__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! msgpack-lite */ "./node_modules/msgpack-lite/lib/browser.js");
/* harmony import */ var _EventEmitter__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./EventEmitter */ "./src/EventEmitter.ts");


class Stdout extends _EventEmitter__WEBPACK_IMPORTED_MODULE_1__.EventEmitter {
    constructor(socket) {
        super();
        this.socket = socket;
        this.messageNames = new Map([[0, "request"], [1, "response"], [2, "notification"]]);
        // Holds previously-received, incomplete and unprocessed messages
        this.prev = new Uint8Array(0);
        this.msgpackConfig = {};
        this.socket.addEventListener("message", this.onMessage.bind(this));
    }
    setTypes(types) {
        this.msgpackConfig.codec = msgpack_lite__WEBPACK_IMPORTED_MODULE_0__.createCodec({ preset: true });
        Object
            .entries(types)
            .forEach(([_, { id }]) => this
            .msgpackConfig
            .codec
            .addExtUnpacker(id, (data) => data));
    }
    onMessage(msg) {
        const msgData = new Uint8Array(msg.data);
        let data = new Uint8Array(msgData.byteLength + this.prev.byteLength);
        data.set(this.prev);
        data.set(msgData, this.prev.length);
        while (true) {
            let decoded;
            try {
                decoded = msgpack_lite__WEBPACK_IMPORTED_MODULE_0__.decode(data, this.msgpackConfig);
            }
            catch (e) {
                this.prev = data;
                return;
            }
            const encoded = msgpack_lite__WEBPACK_IMPORTED_MODULE_0__.encode(decoded);
            data = data.slice(encoded.byteLength);
            const [kind, reqId, data1, data2] = decoded;
            const name = this.messageNames.get(kind);
            /* istanbul ignore else */
            if (name) {
                this.emit(name, reqId, data1, data2);
            }
            else {
                // Can't be tested because this would mean messages that break
                // the msgpack-rpc spec, so coverage impossible to get.
                console.error(`Unhandled message kind ${name}`);
            }
        }
    }
}


/***/ }),

/***/ "./src/input.ts":
/*!**********************!*\
  !*** ./src/input.ts ***!
  \**********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "setupInput": () => (/* binding */ setupInput)
/* harmony export */ });
/* harmony import */ var _Neovim__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Neovim */ "./src/Neovim.ts");
/* harmony import */ var _renderer__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./renderer */ "./src/renderer.ts");
/* harmony import */ var _utils_configuration__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./utils/configuration */ "./src/utils/configuration.ts");
/* harmony import */ var _utils_utils__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./utils/utils */ "./src/utils/utils.ts");
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");




async function setupInput(page, canvas, keyHandler, connectionPromise) {
    try {
        const [[url, selector, cursor, language], connectionData] = await Promise.all([page.getEditorInfo(), connectionPromise]);
        const nvimPromise = (0,_Neovim__WEBPACK_IMPORTED_MODULE_0__.neovim)(page, canvas, connectionData);
        const contentPromise = page.getElementContent();
        const [cols, rows] = (0,_renderer__WEBPACK_IMPORTED_MODULE_1__.getLogicalSize)();
        const nvim = await nvimPromise;
        keyHandler.on("input", (s) => nvim.input(s));
        _renderer__WEBPACK_IMPORTED_MODULE_1__.events.on("modeChange", (s) => keyHandler.setMode(s));
        // We need to set client info before running ui_attach because we want this
        // info to be available when UIEnter is triggered
        const extInfo = browser.runtime.getManifest();
        const [major, minor, patch] = extInfo.version.split(".");
        nvim.set_client_info(extInfo.name, { major, minor, patch }, "ui", {}, {});
        await _utils_configuration__WEBPACK_IMPORTED_MODULE_2__.confReady;
        const urlSettings = (0,_utils_configuration__WEBPACK_IMPORTED_MODULE_2__.getConfForUrl)(url);
        nvim.ui_attach(cols < 1 ? 1 : cols, rows < 1 ? 1 : rows, {
            ext_linegrid: true,
            ext_messages: urlSettings.cmdline === "firenvim",
            rgb: true,
        }).catch(console.log);
        let resizeReqId = 0;
        page.on("resize", ([id, width, height]) => {
            if (id > resizeReqId) {
                resizeReqId = id;
                // We need to put the keyHandler at the origin in order to avoid
                // issues when it slips out of the viewport
                keyHandler.moveTo(0, 0);
                // It's tempting to try to optimize this by only calling
                // ui_try_resize when nCols is different from cols and nRows is
                // different from rows but we can't because redraw notifications
                // might happen without us actually calling ui_try_resize and then
                // the sizes wouldn't be in sync anymore
                const [nCols, nRows] = (0,_renderer__WEBPACK_IMPORTED_MODULE_1__.computeGridDimensionsFor)(width * window.devicePixelRatio, height * window.devicePixelRatio);
                nvim.ui_try_resize_grid((0,_renderer__WEBPACK_IMPORTED_MODULE_1__.getGridId)(), nCols, nRows);
                page.resizeEditor(Math.floor(width / nCols) * nCols, Math.floor(height / nRows) * nRows);
            }
        });
        page.on("frame_sendKey", (args) => nvim.input(args.join("")));
        page.on("get_buf_content", (r) => r(nvim.buf_get_lines(0, 0, -1, 0)));
        // Create file, set its content to the textarea's, write it
        const filename = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_3__.toFileName)(urlSettings.filename, url, selector, language);
        const content = await contentPromise;
        const [line, col] = cursor;
        const writeFilePromise = nvim.call_function("writefile", [content.split("\n"), filename])
            .then(() => nvim.command(`edit ${filename} `
            + `| call nvim_win_set_cursor(0, [${line}, ${col}])`));
        // Can't get coverage for this as browsers don't let us reliably
        // push data to the server on beforeunload.
        /* istanbul ignore next */
        window.addEventListener("beforeunload", () => {
            nvim.ui_detach();
            nvim.command("qall!");
        });
        // Keep track of last active instance (necessary for firenvim#focus_input() & others)
        const chan = nvim.get_current_channel();
        function setCurrentChan() {
            nvim.set_var("last_focused_firenvim_channel", chan);
        }
        setCurrentChan();
        window.addEventListener("focus", setCurrentChan);
        window.addEventListener("click", setCurrentChan);
        const augroupName = `FirenvimAugroupChan${chan}`;
        // Cleanup means:
        // - notify frontend that we're shutting down
        // - delete file
        // - remove own augroup
        const cleanup = `call rpcnotify(${chan}, 'firenvim_vimleave') | `
            + `call delete('${filename}')`;
        // Ask for notifications when user writes/leaves firenvim
        nvim.call_atomic((`augroup ${augroupName}
                        au!
                        autocmd BufWrite ${filename} `
            + `call rpcnotify(${chan}, `
            + `'firenvim_bufwrite', `
            + `{`
            + `'text': nvim_buf_get_lines(0, 0, -1, 0),`
            + `'cursor': nvim_win_get_cursor(0),`
            + `})
                        au VimLeave * ${cleanup}
                    augroup END`).split("\n").map(command => ["nvim_command", [command]]));
        window.addEventListener("mousemove", (evt) => {
            keyHandler.moveTo(evt.clientX, evt.clientY);
        });
        function onMouse(evt, action) {
            let button;
            // Selenium can't generate wheel events yet :(
            /* istanbul ignore next */
            if (evt instanceof WheelEvent) {
                button = "wheel";
            }
            else {
                // Selenium can't generate mouse events with more buttons :(
                /* istanbul ignore next */
                if (evt.button > 2) {
                    // Neovim doesn't handle other mouse buttons for now
                    return;
                }
                button = ["left", "middle", "right"][evt.button];
            }
            evt.preventDefault();
            evt.stopImmediatePropagation();
            const modifiers = (evt.altKey ? "A" : "") +
                (evt.ctrlKey ? "C" : "") +
                (evt.metaKey ? "D" : "") +
                (evt.shiftKey ? "S" : "");
            const [x, y] = (0,_renderer__WEBPACK_IMPORTED_MODULE_1__.getGridCoordinates)(evt.pageX, evt.pageY);
            nvim.input_mouse(button, action, modifiers, (0,_renderer__WEBPACK_IMPORTED_MODULE_1__.getGridId)(), y, x);
            keyHandler.focus();
        }
        window.addEventListener("mousedown", e => {
            onMouse(e, "press");
        });
        window.addEventListener("mouseup", e => {
            onMouse(e, "release");
        });
        // Selenium doesn't let you simulate mouse wheel events :(
        /* istanbul ignore next */
        window.addEventListener("wheel", evt => {
            if (Math.abs(evt.deltaY) >= Math.abs(evt.deltaX)) {
                onMouse(evt, evt.deltaY < 0 ? "up" : "down");
            }
            else {
                onMouse(evt, evt.deltaX < 0 ? "right" : "left");
            }
        });
        // Let users know when they focus/unfocus the frame
        window.addEventListener("focus", () => {
            document.documentElement.style.opacity = "1";
            keyHandler.focus();
            nvim.command("doautocmd FocusGained");
        });
        window.addEventListener("blur", () => {
            document.documentElement.style.opacity = "0.5";
            nvim.command("doautocmd FocusLost");
        });
        keyHandler.focus();
        return new Promise((resolve, reject) => setTimeout(() => {
            keyHandler.focus();
            writeFilePromise.then(() => resolve(page));
            // To hard to test (we'd need to find a way to make neovim fail
            // to write the file, which requires too many os-dependent side
            // effects), so don't instrument.
            /* istanbul ignore next */
            writeFilePromise.catch(() => reject());
        }, 10));
    }
    catch (e) {
        console.error(e);
        page.killEditor();
        throw e;
    }
}


/***/ }),

/***/ "./src/page.ts":
/*!*********************!*\
  !*** ./src/page.ts ***!
  \*********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "getTabFunctions": () => (/* binding */ getTabFunctions),
/* harmony export */   "getActiveContentFunctions": () => (/* binding */ getActiveContentFunctions),
/* harmony export */   "getNeovimFrameFunctions": () => (/* binding */ getNeovimFrameFunctions),
/* harmony export */   "PageEventEmitter": () => (/* binding */ PageEventEmitter),
/* harmony export */   "getPageProxy": () => (/* binding */ getPageProxy)
/* harmony export */ });
/* harmony import */ var _EventEmitter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./EventEmitter */ "./src/EventEmitter.ts");
/* harmony import */ var _utils_utils__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./utils/utils */ "./src/utils/utils.ts");
/* harmony import */ var _utils_configuration__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./utils/configuration */ "./src/utils/configuration.ts");
/* harmony import */ var _utils_keys__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./utils/keys */ "./src/utils/keys.ts");
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");




/////////////////////////////////////////////
// Functions running in the content script //
/////////////////////////////////////////////
function _focusInput(global, firenvim, addListener) {
    if (addListener) {
        // Only re-add event listener if input's selector matches the ones
        // that should be autonvimified
        const conf = (0,_utils_configuration__WEBPACK_IMPORTED_MODULE_2__.getConf)();
        if (conf.selector && conf.selector !== "") {
            const elems = Array.from(document.querySelectorAll(conf.selector));
            addListener = elems.includes(firenvim.getElement());
        }
    }
    firenvim.focusOriginalElement(addListener);
}
function getFocusedElement(firenvimElems) {
    return Array
        .from(firenvimElems.values())
        .find(instance => instance.isFocused());
}
// Tab functions are functions all content scripts should react to
function getTabFunctions(global) {
    return {
        getActiveInstanceCount: () => global.firenvimElems.size,
        registerNewFrameId: (frameId) => {
            global.frameIdResolve(frameId);
        },
        setDisabled: (disabled) => {
            global.disabled = disabled;
        },
        setLastFocusedContentScript: (frameId) => {
            global.lastFocusedContentScript = frameId;
        }
    };
}
function isVisible(e) {
    const rect = e.getBoundingClientRect();
    const viewHeight = Math.max(document.documentElement.clientHeight, window.innerHeight);
    return !(rect.bottom < 0 || rect.top - viewHeight >= 0);
}
// ActiveContent functions are functions only the active content script should react to
function getActiveContentFunctions(global) {
    return {
        forceNvimify: () => {
            let elem = document.activeElement;
            const isNull = elem === null || elem === undefined;
            const pageNotEditable = document.documentElement.contentEditable !== "true";
            const bodyNotEditable = (document.body.contentEditable === "false"
                || (document.body.contentEditable === "inherit"
                    && document.documentElement.contentEditable !== "true"));
            if (isNull
                || (elem === document.documentElement && pageNotEditable)
                || (elem === document.body && bodyNotEditable)) {
                elem = Array.from(document.getElementsByTagName("textarea"))
                    .find(isVisible);
                if (!elem) {
                    elem = Array.from(document.getElementsByTagName("input"))
                        .find(e => e.type === "text" && isVisible(e));
                }
                if (!elem) {
                    return;
                }
            }
            global.nvimify({ target: elem });
        },
        sendKey: (key) => {
            const firenvim = getFocusedElement(global.firenvimElems);
            if (firenvim !== undefined) {
                firenvim.sendKey(key);
            }
            else {
                // It's important to throw this error as the background script
                // will execute a fallback
                throw new Error("No firenvim frame selected");
            }
        },
    };
}
function getNeovimFrameFunctions(global) {
    return {
        evalInPage: (_, js) => (0,_utils_utils__WEBPACK_IMPORTED_MODULE_1__.executeInPage)(js),
        focusInput: (frameId) => {
            let firenvimElement;
            if (frameId === undefined) {
                firenvimElement = getFocusedElement(global.firenvimElems);
            }
            else {
                firenvimElement = global.firenvimElems.get(frameId);
            }
            _focusInput(global, firenvimElement, true);
        },
        focusPage: (frameId) => {
            const firenvimElement = global.firenvimElems.get(frameId);
            firenvimElement.clearFocusListeners();
            document.activeElement.blur();
            document.documentElement.focus();
        },
        getEditorInfo: (frameId) => global
            .firenvimElems
            .get(frameId)
            .getBufferInfo(),
        getElementContent: (frameId) => global
            .firenvimElems
            .get(frameId)
            .getPageElementContent(),
        hideEditor: (frameId) => {
            const firenvim = global.firenvimElems.get(frameId);
            firenvim.hide();
            _focusInput(global, firenvim, true);
        },
        killEditor: (frameId) => {
            const firenvim = global.firenvimElems.get(frameId);
            const isFocused = firenvim.isFocused();
            firenvim.detachFromPage();
            const conf = (0,_utils_configuration__WEBPACK_IMPORTED_MODULE_2__.getConf)();
            if (isFocused) {
                _focusInput(global, firenvim, conf.takeover !== "once");
            }
            global.firenvimElems.delete(frameId);
        },
        pressKeys: (frameId, keys) => {
            global.firenvimElems.get(frameId).pressKeys((0,_utils_keys__WEBPACK_IMPORTED_MODULE_3__.keysToEvents)(keys));
        },
        resizeEditor: (frameId, width, height) => {
            const elem = global.firenvimElems.get(frameId);
            elem.resizeTo(width, height, true);
            elem.putEditorCloseToInputOriginAfterResizeFromFrame();
        },
        setElementContent: (frameId, text) => {
            return global.firenvimElems.get(frameId).setPageElementContent(text);
        },
        setElementCursor: (frameId, line, column) => {
            return global.firenvimElems.get(frameId).setPageElementCursor(line, column);
        },
    };
}
//////////////////////////////////////////////////////////////////////////////
// Definition of a proxy type that lets the frame script transparently call //
// the content script's functions                                           //
//////////////////////////////////////////////////////////////////////////////
;
class PageEventEmitter extends _EventEmitter__WEBPACK_IMPORTED_MODULE_0__.EventEmitter {
    constructor() {
        super();
        browser.runtime.onMessage.addListener((request, _sender, _sendResponse) => {
            switch (request.funcName[0]) {
                case "pause_keyhandler":
                case "frame_sendKey":
                case "resize":
                    this.emit(request.funcName[0], request.args);
                    break;
                case "get_buf_content":
                    return new Promise(resolve => this.emit(request.funcName[0], resolve));
                default:
                    console.error("Unhandled page request:", request);
            }
        });
    }
}
function getPageProxy(frameId) {
    const page = new PageEventEmitter();
    let funcName;
    for (funcName in getNeovimFrameFunctions({})) {
        // We need to declare func here because funcName is a global and would not
        // be captured in the closure otherwise
        const func = funcName;
        page[func] = ((...arr) => {
            return browser.runtime.sendMessage({
                args: {
                    args: [frameId].concat(arr),
                    funcName: [func],
                },
                funcName: ["messagePage"],
            });
        });
    }
    return page;
}
;


/***/ }),

/***/ "./src/renderer.ts":
/*!*************************!*\
  !*** ./src/renderer.ts ***!
  \*************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "events": () => (/* binding */ events),
/* harmony export */   "setCanvas": () => (/* binding */ setCanvas),
/* harmony export */   "getGlyphInfo": () => (/* binding */ getGlyphInfo),
/* harmony export */   "getLogicalSize": () => (/* binding */ getLogicalSize),
/* harmony export */   "computeGridDimensionsFor": () => (/* binding */ computeGridDimensionsFor),
/* harmony export */   "getGridCoordinates": () => (/* binding */ getGridCoordinates),
/* harmony export */   "getGridId": () => (/* binding */ getGridId),
/* harmony export */   "onRedraw": () => (/* binding */ onRedraw)
/* harmony export */ });
/* harmony import */ var _utils_utils__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./utils/utils */ "./src/utils/utils.ts");
/* harmony import */ var _utils_configuration__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./utils/configuration */ "./src/utils/configuration.ts");
/* harmony import */ var _EventEmitter__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./EventEmitter */ "./src/EventEmitter.ts");



const events = new _EventEmitter__WEBPACK_IMPORTED_MODULE_2__.EventEmitter();
let glyphCache = {};
function wipeGlyphCache() {
    glyphCache = {};
}
let metricsInvalidated = false;
function invalidateMetrics() {
    metricsInvalidated = true;
    wipeGlyphCache();
}
let fontString;
function setFontString(state, s) {
    fontString = s;
    state.context.font = fontString;
    invalidateMetrics();
}
function glyphId(char, high) {
    return char + "-" + high;
}
function setCanvasDimensions(cvs, width, height) {
    cvs.width = width * window.devicePixelRatio;
    cvs.height = height * window.devicePixelRatio;
    cvs.style.width = `${width}px`;
    cvs.style.height = `${height}px`;
}
function makeFontString(fontSize, fontFamily) {
    return `${fontSize} ${fontFamily}`;
}
let defaultFontSize = "";
const defaultFontFamily = "monospace";
let defaultFontString = "";
function setCanvas(cvs) {
    const state = globalState;
    state.canvas = cvs;
    setCanvasDimensions(state.canvas, window.innerWidth, window.innerHeight);
    defaultFontSize = window.getComputedStyle(state.canvas).fontSize;
    defaultFontString = makeFontString(defaultFontSize, defaultFontFamily);
    state.context = state.canvas.getContext("2d", { "alpha": false });
    setFontString(state, defaultFontString);
}
// We first define highlight information.
const defaultBackground = "#FFFFFF";
const defaultForeground = "#000000";
var DamageKind;
(function (DamageKind) {
    DamageKind[DamageKind["Cell"] = 0] = "Cell";
    DamageKind[DamageKind["Resize"] = 1] = "Resize";
    DamageKind[DamageKind["Scroll"] = 2] = "Scroll";
})(DamageKind || (DamageKind = {}));
const globalState = {
    canvas: undefined,
    context: undefined,
    commandLine: {
        status: "hidden",
        content: [],
        pos: 0,
        firstc: "",
        prompt: "",
        indent: 0,
        level: 0,
    },
    cursor: {
        currentGrid: 1,
        display: true,
        x: 0,
        y: 0,
        lastMove: performance.now(),
        movedSinceLastMessage: false,
    },
    gridCharacters: [],
    gridDamages: [],
    gridDamagesCount: [],
    gridHighlights: [],
    gridSizes: [],
    highlights: [newHighlight(defaultBackground, defaultForeground)],
    lastMessage: performance.now(),
    linespace: 0,
    messages: [],
    messagesPositions: [],
    mode: {
        current: 0,
        styleEnabled: false,
        modeInfo: [{
                attr_id: 0,
                attr_id_lm: 0,
                blinkoff: 0,
                blinkon: 0,
                blinkwait: 0,
                cell_percentage: 0,
                cursor_shape: "block",
                name: "normal",
            }]
    },
    ruler: undefined,
    showcmd: undefined,
    showmode: undefined,
};
function pushDamage(grid, kind, h, w, x, y) {
    const damages = globalState.gridDamages[grid];
    const count = globalState.gridDamagesCount[grid];
    if (damages.length === count) {
        damages.push({ kind, h, w, x, y });
    }
    else {
        damages[count].kind = kind;
        damages[count].h = h;
        damages[count].w = w;
        damages[count].x = x;
        damages[count].y = y;
    }
    globalState.gridDamagesCount[grid] = count + 1;
}
let maxCellWidth;
let maxCellHeight;
let maxBaselineDistance;
function recomputeCharSize(ctx) {
    // 94, K+32: we ignore the first 32 ascii chars because they're non-printable
    const chars = new Array(94)
        .fill(0)
        .map((_, k) => String.fromCharCode(k + 32))
        // Concatening Â because that's the tallest character I can think of.
        .concat(["Â"]);
    let width = 0;
    let height = 0;
    let baseline = 0;
    let measure;
    for (const char of chars) {
        measure = ctx.measureText(char);
        if (measure.width > width) {
            width = measure.width;
        }
        let tmp = Math.abs(measure.actualBoundingBoxAscent);
        if (tmp > baseline) {
            baseline = tmp;
        }
        tmp += Math.abs(measure.actualBoundingBoxDescent);
        if (tmp > height) {
            height = tmp;
        }
    }
    maxCellWidth = Math.ceil(width);
    maxCellHeight = Math.ceil(height) + globalState.linespace;
    maxBaselineDistance = baseline;
    metricsInvalidated = false;
}
function getGlyphInfo(state) {
    if (metricsInvalidated
        || maxCellWidth === undefined
        || maxCellHeight === undefined
        || maxBaselineDistance === undefined) {
        recomputeCharSize(state.context);
    }
    return [maxCellWidth, maxCellHeight, maxBaselineDistance];
}
function measureWidth(state, char) {
    const charWidth = getGlyphInfo(state)[0];
    return Math.ceil(state.context.measureText(char).width / charWidth) * charWidth;
}
function getLogicalSize() {
    const state = globalState;
    const [cellWidth, cellHeight] = getGlyphInfo(state);
    return [Math.floor(state.canvas.width / cellWidth), Math.floor(state.canvas.height / cellHeight)];
}
function computeGridDimensionsFor(width, height) {
    const [cellWidth, cellHeight] = getGlyphInfo(globalState);
    return [Math.floor(width / cellWidth), Math.floor(height / cellHeight)];
}
function getGridCoordinates(x, y) {
    const [cellWidth, cellHeight] = getGlyphInfo(globalState);
    return [Math.floor(x * window.devicePixelRatio / cellWidth), Math.floor(y * window.devicePixelRatio / cellHeight)];
}
function newHighlight(bg, fg) {
    return {
        background: bg,
        bold: undefined,
        blend: undefined,
        foreground: fg,
        italic: undefined,
        reverse: undefined,
        special: undefined,
        strikethrough: undefined,
        undercurl: undefined,
        underline: undefined,
    };
}
function getGridId() {
    return 1;
}
function getCommandLineRect(state) {
    const [width, height] = getGlyphInfo(state);
    return {
        x: width - 1,
        y: ((state.canvas.height - height - 1) / 2),
        width: (state.canvas.width - (width * 2)) + 2,
        height: height + 2,
    };
}
function damageCommandLineSpace(state) {
    const [width, height] = getGlyphInfo(state);
    const rect = getCommandLineRect(state);
    const gid = getGridId();
    const dimensions = globalState.gridSizes[gid];
    pushDamage(gid, DamageKind.Cell, Math.min(Math.ceil(rect.height / height) + 1, dimensions.height), Math.min(Math.ceil(rect.width / width) + 1, dimensions.width), Math.max(Math.floor(rect.x / width), 0), Math.max(Math.floor(rect.y / height), 0));
}
function damageMessagesSpace(state) {
    const gId = getGridId();
    const msgPos = globalState.messagesPositions[gId];
    const dimensions = globalState.gridSizes[gId];
    const [charWidth, charHeight] = getGlyphInfo(state);
    pushDamage(gId, DamageKind.Cell, Math.min(Math.ceil((state.canvas.height - msgPos.y) / charHeight) + 2, dimensions.height), Math.min(Math.ceil((state.canvas.width - msgPos.x) / charWidth) + 2, dimensions.width), Math.max(Math.floor(msgPos.x / charWidth) - 1, 0), Math.max(Math.floor(msgPos.y / charHeight) - 1, 0));
    msgPos.x = state.canvas.width;
    msgPos.y = state.canvas.height;
}
const handlers = {
    busy_start: () => {
        pushDamage(getGridId(), DamageKind.Cell, 1, 1, globalState.cursor.x, globalState.cursor.y);
        globalState.cursor.display = false;
    },
    busy_stop: () => { globalState.cursor.display = true; },
    cmdline_hide: () => {
        globalState.commandLine.status = "hidden";
        damageCommandLineSpace(globalState);
    },
    cmdline_pos: (pos, level) => {
        globalState.commandLine.pos = pos;
        globalState.commandLine.level = level;
    },
    cmdline_show: (content, pos, firstc, prompt, indent, level) => {
        globalState.commandLine.status = "shown";
        globalState.commandLine.content = content;
        globalState.commandLine.pos = pos;
        globalState.commandLine.firstc = firstc;
        globalState.commandLine.prompt = prompt;
        globalState.commandLine.indent = indent;
        globalState.commandLine.level = level;
    },
    default_colors_set: (fg, bg, sp) => {
        if (fg !== undefined && fg !== -1) {
            globalState.highlights[0].foreground = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(fg);
        }
        if (bg !== undefined && bg !== -1) {
            globalState.highlights[0].background = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(bg);
        }
        if (sp !== undefined && sp !== -1) {
            globalState.highlights[0].special = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(sp);
        }
        const curGridSize = globalState.gridSizes[getGridId()];
        if (curGridSize !== undefined) {
            pushDamage(getGridId(), DamageKind.Cell, curGridSize.height, curGridSize.width, 0, 0);
        }
        wipeGlyphCache();
    },
    flush: () => {
        scheduleFrame();
    },
    grid_clear: (id) => {
        // glacambre: What should actually happen on grid_clear? The
        //            documentation says "clear the grid", but what does that
        //            mean? I guess the characters should be removed, but what
        //            about the highlights? Are there other things that need to
        //            be cleared?
        // bfredl: to default bg color
        //         grid_clear is not meant to be used often
        //         it is more "the terminal got screwed up, better to be safe
        //         than sorry"
        const charGrid = globalState.gridCharacters[id];
        const highGrid = globalState.gridHighlights[id];
        const dims = globalState.gridSizes[id];
        for (let j = 0; j < dims.height; ++j) {
            for (let i = 0; i < dims.width; ++i) {
                charGrid[j][i] = " ";
                highGrid[j][i] = 0;
            }
        }
        pushDamage(id, DamageKind.Cell, dims.height, dims.width, 0, 0);
    },
    grid_cursor_goto: (id, row, column) => {
        const cursor = globalState.cursor;
        pushDamage(getGridId(), DamageKind.Cell, 1, 1, cursor.x, cursor.y);
        cursor.currentGrid = id;
        cursor.x = column;
        cursor.y = row;
        cursor.lastMove = performance.now();
        cursor.movedSinceLastMessage = true;
    },
    grid_line: (id, row, col, changes) => {
        const charGrid = globalState.gridCharacters[id];
        const highlights = globalState.gridHighlights[id];
        let prevCol = col;
        let high = 0;
        for (let i = 0; i < changes.length; ++i) {
            const change = changes[i];
            const chara = change[0];
            if (change[1] !== undefined) {
                high = change[1];
            }
            const repeat = change[2] === undefined ? 1 : change[2];
            pushDamage(id, DamageKind.Cell, 1, repeat, prevCol, row);
            const limit = prevCol + repeat;
            for (let j = prevCol; j < limit; j += 1) {
                charGrid[row][j] = chara;
                highlights[row][j] = high;
            }
            prevCol = limit;
        }
    },
    grid_resize: (id, width, height) => {
        const state = globalState;
        const createGrid = state.gridCharacters[id] === undefined;
        if (createGrid) {
            state.gridCharacters[id] = [];
            state.gridCharacters[id].push([]);
            state.gridSizes[id] = { width: 0, height: 0 };
            state.gridDamages[id] = [];
            state.gridDamagesCount[id] = 0;
            state.gridHighlights[id] = [];
            state.gridHighlights[id].push([]);
            state.messagesPositions[id] = {
                x: state.canvas.width,
                y: state.canvas.height,
            };
        }
        const curGridSize = globalState.gridSizes[id];
        pushDamage(id, DamageKind.Resize, height, width, curGridSize.width, curGridSize.height);
        const highlights = globalState.gridHighlights[id];
        const charGrid = globalState.gridCharacters[id];
        if (width > charGrid[0].length) {
            for (let i = 0; i < charGrid.length; ++i) {
                const row = charGrid[i];
                const highs = highlights[i];
                while (row.length < width) {
                    row.push(" ");
                    highs.push(0);
                }
            }
        }
        if (height > charGrid.length) {
            while (charGrid.length < height) {
                charGrid.push((new Array(width)).fill(" "));
                highlights.push((new Array(width)).fill(0));
            }
        }
        pushDamage(id, DamageKind.Cell, 0, width, 0, curGridSize.height);
        curGridSize.width = width;
        curGridSize.height = height;
    },
    grid_scroll: (id, top, bot, left, right, rows, _cols) => {
        const dimensions = globalState.gridSizes[id];
        const charGrid = globalState.gridCharacters[id];
        const highGrid = globalState.gridHighlights[id];
        if (rows > 0) {
            const bottom = (bot + rows) >= dimensions.height
                ? dimensions.height - rows
                : bot;
            for (let y = top; y < bottom; ++y) {
                const srcChars = charGrid[y + rows];
                const dstChars = charGrid[y];
                const srcHighs = highGrid[y + rows];
                const dstHighs = highGrid[y];
                for (let x = left; x < right; ++x) {
                    dstChars[x] = srcChars[x];
                    dstHighs[x] = srcHighs[x];
                }
            }
            pushDamage(id, DamageKind.Cell, dimensions.height, dimensions.width, 0, 0);
        }
        else if (rows < 0) {
            for (let y = bot - 1; y >= top && (y + rows) >= 0; --y) {
                const srcChars = charGrid[y + rows];
                const dstChars = charGrid[y];
                const srcHighs = highGrid[y + rows];
                const dstHighs = highGrid[y];
                for (let x = left; x < right; ++x) {
                    dstChars[x] = srcChars[x];
                    dstHighs[x] = srcHighs[x];
                }
            }
            pushDamage(id, DamageKind.Cell, dimensions.height, dimensions.width, 0, 0);
        }
    },
    hl_attr_define: (id, rgbAttr) => {
        const highlights = globalState.highlights;
        if (highlights[id] === undefined) {
            highlights[id] = newHighlight(undefined, undefined);
        }
        highlights[id].foreground = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(rgbAttr.foreground);
        highlights[id].background = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(rgbAttr.background);
        highlights[id].bold = rgbAttr.bold;
        highlights[id].blend = rgbAttr.blend;
        highlights[id].italic = rgbAttr.italic;
        highlights[id].special = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.toHexCss)(rgbAttr.special);
        highlights[id].strikethrough = rgbAttr.strikethrough;
        highlights[id].undercurl = rgbAttr.undercurl;
        highlights[id].underline = rgbAttr.underline;
        highlights[id].reverse = rgbAttr.reverse;
    },
    mode_change: (_, modeIdx) => {
        globalState.mode.current = modeIdx;
        events.emit("modeChange", globalState.mode.modeInfo[modeIdx].name);
        if (globalState.mode.styleEnabled) {
            const cursor = globalState.cursor;
            pushDamage(getGridId(), DamageKind.Cell, 1, 1, cursor.x, cursor.y);
            scheduleFrame();
        }
    },
    mode_info_set: (cursorStyleEnabled, modeInfo) => {
        // Missing: handling of cell-percentage
        const mode = globalState.mode;
        mode.styleEnabled = cursorStyleEnabled;
        mode.modeInfo = modeInfo;
    },
    msg_clear: () => {
        damageMessagesSpace(globalState);
        globalState.messages.length = 0;
    },
    msg_history_show: (entries) => {
        damageMessagesSpace(globalState);
        globalState.messages = entries.map(([, b]) => b);
    },
    msg_ruler: (content) => {
        damageMessagesSpace(globalState);
        globalState.ruler = content;
    },
    msg_show: (_, content, replaceLast) => {
        damageMessagesSpace(globalState);
        if (replaceLast) {
            globalState.messages.length = 0;
        }
        globalState.messages.push(content);
        globalState.lastMessage = performance.now();
        globalState.cursor.movedSinceLastMessage = false;
    },
    msg_showcmd: (content) => {
        damageMessagesSpace(globalState);
        globalState.showcmd = content;
    },
    msg_showmode: (content) => {
        damageMessagesSpace(globalState);
        globalState.showmode = content;
    },
    option_set: (option, value) => {
        const state = globalState;
        switch (option) {
            case "guifont":
                {
                    let newFontString;
                    if (value === "") {
                        newFontString = defaultFontString;
                    }
                    else {
                        const guifont = (0,_utils_utils__WEBPACK_IMPORTED_MODULE_0__.parseGuifont)(value, {
                            "font-family": defaultFontFamily,
                            "font-size": defaultFontSize,
                        });
                        newFontString = makeFontString(guifont["font-size"], guifont["font-family"]);
                    }
                    if (newFontString === fontString) {
                        break;
                    }
                    setFontString(state, newFontString);
                    const [charWidth, charHeight] = getGlyphInfo(state);
                    events.emit("resize", {
                        grid: getGridId(),
                        width: Math.floor(state.canvas.width / charWidth),
                        height: Math.floor(state.canvas.height / charHeight),
                    });
                }
                break;
            case "linespace":
                {
                    if (state.linespace === value) {
                        break;
                    }
                    state.linespace = value;
                    invalidateMetrics();
                    const [charWidth, charHeight] = getGlyphInfo(state);
                    const gid = getGridId();
                    const curGridSize = state.gridSizes[gid];
                    if (curGridSize !== undefined) {
                        pushDamage(getGridId(), DamageKind.Cell, curGridSize.height, curGridSize.width, 0, 0);
                    }
                    events.emit("resize", {
                        grid: gid,
                        width: Math.floor(state.canvas.width / charWidth),
                        height: Math.floor(state.canvas.height / charHeight),
                    });
                }
                break;
        }
    },
};
// keep track of wheter a frame is already being scheduled or not. This avoids
// asking for multiple frames where we'd paint the same thing anyway.
let frameScheduled = false;
function scheduleFrame() {
    if (!frameScheduled) {
        frameScheduled = true;
        window.requestAnimationFrame(paint);
    }
}
function paintMessages(state) {
    const ctx = state.context;
    const gId = getGridId();
    const messagesPosition = state.messagesPositions[gId];
    const [, charHeight, baseline] = getGlyphInfo(state);
    const messages = state.messages;
    // we need to know the size of the message box in order to draw its border
    // and background. The algorithm to compute this is equivalent to drawing
    // all messages. So we put the drawing algorithm in a function with a
    // boolean argument that will control whether text should actually be
    // drawn. This lets us run the algorithm once to get the dimensions and
    // then again to actually draw text.
    function renderMessages(draw) {
        let renderedX = state.canvas.width;
        let renderedY = state.canvas.height - charHeight + baseline;
        for (let i = messages.length - 1; i >= 0; --i) {
            const message = messages[i];
            for (let j = message.length - 1; j >= 0; --j) {
                const chars = Array.from(message[j][1]);
                for (let k = chars.length - 1; k >= 0; --k) {
                    const char = chars[k];
                    const measuredWidth = measureWidth(state, char);
                    if (renderedX - measuredWidth < 0) {
                        if (renderedY - charHeight < 0) {
                            return;
                        }
                        renderedX = state.canvas.width;
                        renderedY = renderedY - charHeight;
                    }
                    renderedX = renderedX - measuredWidth;
                    if (draw) {
                        ctx.fillText(char, renderedX, renderedY);
                    }
                    if (renderedX < messagesPosition.x) {
                        messagesPosition.x = renderedX;
                    }
                    if (renderedY < messagesPosition.y) {
                        messagesPosition.y = renderedY - baseline;
                    }
                }
            }
            renderedX = state.canvas.width;
            renderedY = renderedY - charHeight;
        }
    }
    renderMessages(false);
    ctx.fillStyle = state.highlights[0].foreground;
    ctx.fillRect(messagesPosition.x - 2, messagesPosition.y - 2, state.canvas.width - messagesPosition.x + 2, state.canvas.height - messagesPosition.y + 2);
    ctx.fillStyle = state.highlights[0].background;
    ctx.fillRect(messagesPosition.x - 1, messagesPosition.y - 1, state.canvas.width - messagesPosition.x + 1, state.canvas.height - messagesPosition.y + 1);
    ctx.fillStyle = state.highlights[0].foreground;
    renderMessages(true);
}
function paintCommandlineWindow(state) {
    const ctx = state.context;
    const [charWidth, charHeight, baseline] = getGlyphInfo(state);
    const commandLine = state.commandLine;
    const rect = getCommandLineRect(state);
    // outer rectangle
    ctx.fillStyle = state.highlights[0].foreground;
    ctx.fillRect(rect.x, rect.y, rect.width, rect.height);
    // inner rectangle
    rect.x += 1;
    rect.y += 1;
    rect.width -= 2;
    rect.height -= 2;
    ctx.fillStyle = state.highlights[0].background;
    ctx.fillRect(rect.x, rect.y, rect.width, rect.height);
    // padding of inner rectangle
    rect.x += 1;
    rect.y += 1;
    rect.width -= 2;
    rect.height -= 2;
    // Position where text should be drawn
    let x = rect.x;
    const y = rect.y;
    // first character
    ctx.fillStyle = state.highlights[0].foreground;
    ctx.fillText(commandLine.firstc, x, y + baseline);
    x += charWidth;
    rect.width -= charWidth;
    const encoder = new TextEncoder();
    // reduce the commandline's content to a string for iteration
    const str = commandLine.content.reduce((r, segment) => r + segment[1], "");
    // Array.from(str) will return an array whose cells are grapheme
    // clusters. It is important to iterate over graphemes instead of the
    // string because iterating over the string would sometimes yield only
    // half of the UTF-16 character/surrogate pair.
    const characters = Array.from(str);
    // renderedI is the horizontal pixel position where the next character
    // should be drawn
    let renderedI = 0;
    // encodedI is the number of bytes that have been iterated over thus
    // far. It is used to find out where to draw the cursor. Indeed, neovim
    // sends the cursor's position as a byte position within the UTF-8
    // encoded commandline string.
    let encodedI = 0;
    // cursorX is the horizontal pixel position where the cursor should be
    // drawn.
    let cursorX = 0;
    // The index of the first character of `characters` that can be drawn.
    // It is higher than 0 when the command line string is too long to be
    // entirely displayed.
    let sliceStart = 0;
    // The index of the last character of `characters` that can be drawn.
    // It is different from characters.length when the command line string
    // is too long to be entirely displayed.
    let sliceEnd = 0;
    // The horizontal width in pixels taken by the displayed slice. It
    // is used to keep track of whether the commandline string is longer
    // than the commandline window.
    let sliceWidth = 0;
    // cursorDisplayed keeps track of whether the cursor can be displayed
    // in the slice.
    let cursorDisplayed = commandLine.pos === 0;
    // description of the algorithm:
    // For each character, find out its width. If it cannot fit in the
    // command line window along with the rest of the slice and the cursor
    // hasn't been found yet, remove characters from the beginning of the
    // slice until the character fits.
    // Stop either when all characters are in the slice or when the cursor
    // can be displayed and the slice takes all available width.
    for (let i = 0; i < characters.length; ++i) {
        sliceEnd = i;
        const char = characters[i];
        const cWidth = measureWidth(state, char);
        renderedI += cWidth;
        sliceWidth += cWidth;
        if (sliceWidth > rect.width) {
            if (cursorDisplayed) {
                break;
            }
            do {
                const removedChar = characters[sliceStart];
                const removedWidth = measureWidth(state, removedChar);
                renderedI -= removedWidth;
                sliceWidth -= removedWidth;
                sliceStart += 1;
            } while (sliceWidth > rect.width);
        }
        encodedI += encoder.encode(char).length;
        if (encodedI === commandLine.pos) {
            cursorX = renderedI;
            cursorDisplayed = true;
        }
    }
    if (characters.length > 0) {
        renderedI = 0;
        for (let i = sliceStart; i <= sliceEnd; ++i) {
            const char = characters[i];
            ctx.fillText(char, x + renderedI, y + baseline);
            renderedI += measureWidth(state, char);
        }
    }
    ctx.fillRect(x + cursorX, y, 1, charHeight);
}
function paint(_) {
    frameScheduled = false;
    const state = globalState;
    const canvas = state.canvas;
    const context = state.context;
    const gid = getGridId();
    const charactersGrid = state.gridCharacters[gid];
    const highlightsGrid = state.gridHighlights[gid];
    const damages = state.gridDamages[gid];
    const damageCount = state.gridDamagesCount[gid];
    const highlights = state.highlights;
    const [charWidth, charHeight, baseline] = getGlyphInfo(state);
    for (let i = 0; i < damageCount; ++i) {
        const damage = damages[i];
        switch (damage.kind) {
            case DamageKind.Resize:
                {
                    const pixelWidth = damage.w * charWidth / window.devicePixelRatio;
                    const pixelHeight = damage.h * charHeight / window.devicePixelRatio;
                    events.emit("frameResize", { width: pixelWidth, height: pixelHeight });
                    setCanvasDimensions(canvas, pixelWidth, pixelHeight);
                    // Note: changing width and height resets font, so we have to
                    // set it again. Who thought this was a good idea???
                    context.font = fontString;
                }
                break;
            case DamageKind.Scroll:
            case DamageKind.Cell:
                for (let y = damage.y; y < damage.y + damage.h && y < charactersGrid.length; ++y) {
                    const row = charactersGrid[y];
                    const rowHigh = highlightsGrid[y];
                    const pixelY = y * charHeight;
                    for (let x = damage.x; x < damage.x + damage.w && x < row.length; ++x) {
                        if (row[x] === "") {
                            continue;
                        }
                        const pixelX = x * charWidth;
                        const id = glyphId(row[x], rowHigh[x]);
                        if (glyphCache[id] === undefined) {
                            const cellHigh = highlights[rowHigh[x]];
                            const width = Math.ceil(measureWidth(state, row[x]) / charWidth) * charWidth;
                            let background = cellHigh.background || highlights[0].background;
                            let foreground = cellHigh.foreground || highlights[0].foreground;
                            if (cellHigh.reverse) {
                                const tmp = background;
                                background = foreground;
                                foreground = tmp;
                            }
                            context.fillStyle = background;
                            context.fillRect(pixelX, pixelY, width, charHeight);
                            context.fillStyle = foreground;
                            let fontStr = "";
                            let changeFont = false;
                            if (cellHigh.bold) {
                                fontStr += " bold ";
                                changeFont = true;
                            }
                            if (cellHigh.italic) {
                                fontStr += " italic ";
                                changeFont = true;
                            }
                            if (changeFont) {
                                context.font = fontStr + fontString;
                            }
                            context.fillText(row[x], pixelX, pixelY + baseline);
                            if (changeFont) {
                                context.font = fontString;
                            }
                            if (cellHigh.strikethrough) {
                                context.fillRect(pixelX, pixelY + baseline / 2, width, 1);
                            }
                            context.fillStyle = cellHigh.special;
                            const baselineHeight = (charHeight - baseline);
                            if (cellHigh.underline) {
                                const linepos = baselineHeight * 0.3;
                                context.fillRect(pixelX, pixelY + baseline + linepos, width, 1);
                            }
                            if (cellHigh.undercurl) {
                                const curlpos = baselineHeight * 0.6;
                                for (let abscissa = pixelX; abscissa < pixelX + width; ++abscissa) {
                                    context.fillRect(abscissa, pixelY + baseline + curlpos + Math.cos(abscissa), 1, 1);
                                }
                            }
                            // reason for the check: we can't retrieve pixels
                            // drawn outside the viewport
                            if (pixelX >= 0
                                && pixelY >= 0
                                && (pixelX + width < canvas.width)
                                && (pixelY + charHeight < canvas.height)) {
                                glyphCache[id] = context.getImageData(pixelX, pixelY, width, charHeight);
                            }
                        }
                        else {
                            context.putImageData(glyphCache[id], pixelX, pixelY);
                        }
                    }
                }
                break;
        }
    }
    if (state.messages.length > 0) {
        paintMessages(state);
    }
    // If the command line is shown, the cursor's in it
    if (state.commandLine.status === "shown") {
        paintCommandlineWindow(state);
    }
    else if (state.cursor.display) {
        const cursor = state.cursor;
        if (cursor.currentGrid === gid) {
            // Missing: handling of cell-percentage
            const mode = state.mode;
            const info = mode.styleEnabled
                ? mode.modeInfo[mode.current]
                : mode.modeInfo[0];
            const shouldBlink = (info.blinkwait > 0 && info.blinkon > 0 && info.blinkoff > 0);
            // Decide color. As described in the doc, if attr_id is 0 colors
            // should be reverted.
            let background = highlights[info.attr_id].background;
            let foreground = highlights[info.attr_id].foreground;
            if (info.attr_id === 0) {
                const tmp = background;
                background = foreground;
                foreground = tmp;
            }
            // Decide cursor shape. Default to block, change to
            // vertical/horizontal if needed.
            const cursorWidth = cursor.x * charWidth;
            let cursorHeight = cursor.y * charHeight;
            let width = charWidth;
            let height = charHeight;
            if (info.cursor_shape === "vertical") {
                width = 1;
            }
            else if (info.cursor_shape === "horizontal") {
                cursorHeight += charHeight - 2;
                height = 1;
            }
            const now = performance.now();
            // Decide if the cursor should be inverted. This only happens if
            // blinking is on, we've waited blinkwait time and we're in the
            // "blinkoff" time slot.
            const blinkOff = shouldBlink
                && (now - info.blinkwait > cursor.lastMove)
                && ((now % (info.blinkon + info.blinkoff)) > info.blinkon);
            if (blinkOff) {
                const high = highlights[highlightsGrid[cursor.y][cursor.x]];
                background = high.background;
                foreground = high.foreground;
            }
            // Finally draw cursor
            context.fillStyle = background;
            context.fillRect(cursorWidth, cursorHeight, width, height);
            if (info.cursor_shape === "block") {
                context.fillStyle = foreground;
                const char = charactersGrid[cursor.y][cursor.x];
                context.fillText(char, cursor.x * charWidth, cursor.y * charHeight + baseline);
            }
            if (shouldBlink) {
                // if the cursor should blink, we need to paint continuously
                const relativeNow = performance.now() % (info.blinkon + info.blinkoff);
                const nextPaint = relativeNow < info.blinkon
                    ? info.blinkon - relativeNow
                    : info.blinkoff - (relativeNow - info.blinkon);
                setTimeout(scheduleFrame, nextPaint);
            }
        }
    }
    state.gridDamagesCount[gid] = 0;
}
let cmdlineTimeout = 3000;
_utils_configuration__WEBPACK_IMPORTED_MODULE_1__.confReady.then(() => cmdlineTimeout = (0,_utils_configuration__WEBPACK_IMPORTED_MODULE_1__.getGlobalConf)().cmdlineTimeout);
function onRedraw(events) {
    for (let i = 0; i < events.length; ++i) {
        const event = events[i];
        const handler = handlers[event[0]];
        if (handler !== undefined) {
            for (let j = 1; j < event.length; ++j) {
                handler.apply(globalState, event[j]);
            }
        }
        else {
            // console.error(`${event[0]} is not implemented.`);
        }
    }
    if (performance.now() - globalState.lastMessage > cmdlineTimeout && globalState.cursor.movedSinceLastMessage) {
        handlers["msg_clear"]();
    }
}


/***/ }),

/***/ "./src/utils/configuration.ts":
/*!************************************!*\
  !*** ./src/utils/configuration.ts ***!
  \************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "confReady": () => (/* binding */ confReady),
/* harmony export */   "getGlobalConf": () => (/* binding */ getGlobalConf),
/* harmony export */   "getConf": () => (/* binding */ getConf),
/* harmony export */   "getConfForUrl": () => (/* binding */ getConfForUrl)
/* harmony export */ });
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");
let conf = undefined;
const confReady = new Promise(resolve => {
    browser.storage.local.get().then((obj) => {
        conf = obj;
        resolve(true);
    });
});
browser.storage.onChanged.addListener((changes) => {
    Object
        .entries(changes)
        .forEach(([key, value]) => confReady.then(() => {
        conf[key] = value.newValue;
    }));
});
function getGlobalConf() {
    // Can't be tested for
    /* istanbul ignore next */
    if (conf === undefined) {
        throw new Error("getGlobalConf called before config was ready");
    }
    return conf.globalSettings;
}
function getConf() {
    return getConfForUrl(document.location.href);
}
function getConfForUrl(url) {
    const localSettings = conf.localSettings;
    function or1(val) {
        if (val === undefined) {
            return 1;
        }
        return val;
    }
    // Can't be tested for
    /* istanbul ignore next */
    if (localSettings === undefined) {
        throw new Error("Error: your settings are undefined. Try reloading the page. If this error persists, try the troubleshooting guide: https://github.com/glacambre/firenvim/blob/master/TROUBLESHOOTING.md");
    }
    return Array.from(Object.entries(localSettings))
        .filter(([pat, _]) => (new RegExp(pat)).test(url))
        .sort((e1, e2) => (or1(e1[1].priority) - or1(e2[1].priority)))
        .reduce((acc, [_, cur]) => Object.assign(acc, cur), {});
}


/***/ }),

/***/ "./src/utils/keys.ts":
/*!***************************!*\
  !*** ./src/utils/keys.ts ***!
  \***************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "nonLiteralKeys": () => (/* binding */ nonLiteralKeys),
/* harmony export */   "keysToEvents": () => (/* binding */ keysToEvents),
/* harmony export */   "translateKey": () => (/* binding */ translateKey),
/* harmony export */   "addModifier": () => (/* binding */ addModifier)
/* harmony export */ });
const nonLiteralKeys = {
    " ": "<Space>",
    "<": "<lt>",
    "ArrowDown": "<Down>",
    "ArrowLeft": "<Left>",
    "ArrowRight": "<Right>",
    "ArrowUp": "<Up>",
    "Backspace": "<BS>",
    "Delete": "<Del>",
    "End": "<End>",
    "Enter": "<CR>",
    "Escape": "<Esc>",
    "F1": "<F1>",
    "F10": "<F10>",
    "F11": "<F11>",
    "F12": "<F12>",
    "F13": "<F13>",
    "F14": "<F14>",
    "F15": "<F15>",
    "F16": "<F16>",
    "F17": "<F17>",
    "F18": "<F18>",
    "F19": "<F19>",
    "F2": "<F2>",
    "F20": "<F20>",
    "F21": "<F21>",
    "F22": "<F22>",
    "F23": "<F23>",
    "F24": "<F24>",
    "F3": "<F3>",
    "F4": "<F4>",
    "F5": "<F5>",
    "F6": "<F6>",
    "F7": "<F7>",
    "F8": "<F8>",
    "F9": "<F9>",
    "Home": "<Home>",
    "PageDown": "<PageDown>",
    "PageUp": "<PageUp>",
    "Tab": "<Tab>",
    "\\": "<Bslash>",
    "|": "<Bar>",
};
const nonLiteralVimKeys = Object.fromEntries(Object
    .entries(nonLiteralKeys)
    .map(([x, y]) => [y, x]));
const nonLiteralKeyCodes = {
    "Enter": 13,
    "Space": 32,
    "Tab": 9,
    "Delete": 46,
    "End": 35,
    "Home": 36,
    "Insert": 45,
    "PageDown": 34,
    "PageUp": 33,
    "ArrowDown": 40,
    "ArrowLeft": 37,
    "ArrowRight": 39,
    "ArrowUp": 38,
    "Escape": 27,
};
// Given a "special" key representation (e.g. <Enter> or <M-l>), returns an
// array of three javascript keyevents, the first one representing the
// corresponding keydown, the second one a keypress and the third one a keyup
// event.
function modKeyToEvents(k) {
    let mods = "";
    let key = nonLiteralVimKeys[k];
    let ctrlKey = false;
    let altKey = false;
    let shiftKey = false;
    if (key === undefined) {
        const arr = k.slice(1, -1).split("-");
        mods = arr[0];
        key = arr[1];
        ctrlKey = /c/i.test(mods);
        altKey = /a/i.test(mods);
        const specialChar = "<" + key + ">";
        if (nonLiteralVimKeys[specialChar] !== undefined) {
            key = nonLiteralVimKeys[specialChar];
            shiftKey = false;
        }
        else {
            shiftKey = key !== key.toLocaleLowerCase();
        }
    }
    // Some pages rely on keyCodes to figure out what key was pressed. This is
    // awful because keycodes aren't guaranteed to be the same acrross
    // browsers/OS/keyboard layouts but try to do the right thing anyway.
    // https://github.com/glacambre/firenvim/issues/723
    let keyCode = 0;
    if (/^[a-zA-Z0-9]$/.test(key)) {
        keyCode = key.charCodeAt(0);
    }
    else if (nonLiteralKeyCodes[key] !== undefined) {
        keyCode = nonLiteralKeyCodes[key];
    }
    const init = { key, keyCode, ctrlKey, altKey, shiftKey, bubbles: true };
    return [
        new KeyboardEvent("keydown", init),
        new KeyboardEvent("keypress", init),
        new KeyboardEvent("keyup", init),
    ];
}
// Given a "simple" key (e.g. `a`, `1`…), returns an array of three javascript
// events representing the action of pressing the key.
function keyToEvents(key) {
    const shiftKey = key !== key.toLocaleLowerCase();
    return [
        new KeyboardEvent("keydown", { key, shiftKey, bubbles: true }),
        new KeyboardEvent("keypress", { key, shiftKey, bubbles: true }),
        new KeyboardEvent("keyup", { key, shiftKey, bubbles: true }),
    ];
}
// Given an array of string representation of keys (e.g. ["a", "<Enter>", …]),
// returns an array of javascript keyboard events that simulate these keys
// being pressed.
function keysToEvents(keys) {
    // Code to split mod keys and non-mod keys:
    // const keys = str.match(/([<>][^<>]+[<>])|([^<>]+)/g)
    // if (keys === null) {
    //     return [];
    // }
    return keys.map((key) => {
        if (key[0] === "<") {
            return modKeyToEvents(key);
        }
        return keyToEvents(key);
    }).flat();
}
// Turns a non-literal key (e.g. "Enter") into a vim-equivalent "<Enter>"
function translateKey(key) {
    if (nonLiteralKeys[key] !== undefined) {
        return nonLiteralKeys[key];
    }
    return key;
}
// Add modifier `mod` (`A`, `C`, `S`…) to `text` (a vim key `b`, `<Enter>`,
// `<CS-x>`…)
function addModifier(mod, text) {
    let match;
    let modifiers = "";
    let key = "";
    if ((match = text.match(/^<([A-Z]{1,5})-(.+)>$/))) {
        modifiers = match[1];
        key = match[2];
    }
    else if ((match = text.match(/^<(.+)>$/))) {
        key = match[1];
    }
    else {
        key = text;
    }
    return "<" + mod + modifiers + "-" + key + ">";
}


/***/ }),

/***/ "./src/utils/utils.ts":
/*!****************************!*\
  !*** ./src/utils/utils.ts ***!
  \****************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "isChrome": () => (/* binding */ isChrome),
/* harmony export */   "isThunderbird": () => (/* binding */ isThunderbird),
/* harmony export */   "executeInPage": () => (/* binding */ executeInPage),
/* harmony export */   "getIconImageData": () => (/* binding */ getIconImageData),
/* harmony export */   "toFileName": () => (/* binding */ toFileName),
/* harmony export */   "languageToExtensions": () => (/* binding */ languageToExtensions),
/* harmony export */   "parseSingleGuifont": () => (/* binding */ parseSingleGuifont),
/* harmony export */   "parseGuifont": () => (/* binding */ parseGuifont),
/* harmony export */   "computeSelector": () => (/* binding */ computeSelector),
/* harmony export */   "toHexCss": () => (/* binding */ toHexCss)
/* harmony export */ });
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");
let curHost;
// Can't get coverage for thunderbird.
/* istanbul ignore next */
if (browser.composeScripts !== undefined || document.location.href === "about:blank?compose") {
    curHost = "thunderbird";
    // Chrome doesn't have a "browser" object, instead it uses "chrome".
}
else if (window.location.protocol === "moz-extension:") {
    curHost = "firefox";
}
else if (window.location.protocol === "chrome-extension:") {
    curHost = "chrome";
}
// Only usable in background script!
function isChrome() {
    // Can't cover error condition
    /* istanbul ignore next */
    if (curHost === undefined) {
        throw Error("Used isChrome in content script!");
    }
    return curHost === "chrome";
}
function isThunderbird() {
    // Can't cover error condition
    /* istanbul ignore next */
    if (curHost === undefined) {
        throw Error("Used isThunderbird in content script!");
    }
    return curHost === "thunderbird";
}
// Runs CODE in the page's context by setting up a custom event listener,
// embedding a script element that runs the piece of code and emits its result
// as an event.
function executeInPage(code) {
    return new Promise((resolve, reject) => {
        const script = document.createElement("script");
        const eventId = (new URL(browser.runtime.getURL(""))).hostname + Math.random();
        script.innerHTML = `(async (evId) => {
            try {
                let result;
                result = await ${code};
                window.dispatchEvent(new CustomEvent(evId, {
                    detail: {
                        success: true,
                        result,
                    }
                }));
            } catch (e) {
                window.dispatchEvent(new CustomEvent(evId, {
                    detail: { success: false, reason: e },
                }));
            }
        })(${JSON.stringify(eventId)})`;
        window.addEventListener(eventId, ({ detail }) => {
            script.parentNode.removeChild(script);
            if (detail.success) {
                return resolve(detail.result);
            }
            return reject(detail.reason);
        }, { once: true });
        document.head.appendChild(script);
    });
}
// Various filters that are used to change the appearance of the BrowserAction
// icon.
const svgpath = "firenvim.svg";
const transformations = {
    disabled: (img) => {
        for (let i = 0; i < img.length; i += 4) {
            // Skip transparent pixels
            if (img[i + 3] === 0) {
                continue;
            }
            const mean = Math.floor((img[i] + img[i + 1] + img[i + 2]) / 3);
            img[i] = mean;
            img[i + 1] = mean;
            img[i + 2] = mean;
        }
    },
    error: (img) => {
        for (let i = 0; i < img.length; i += 4) {
            // Turn transparent pixels red
            if (img[i + 3] === 0) {
                img[i] = 255;
                img[i + 3] = 255;
            }
        }
    },
    normal: ((_img) => undefined),
    notification: (img) => {
        for (let i = 0; i < img.length; i += 4) {
            // Turn transparent pixels yellow
            if (img[i + 3] === 0) {
                img[i] = 255;
                img[i + 1] = 255;
                img[i + 3] = 255;
            }
        }
    },
};
// Takes an icon kind and dimensions as parameter, draws that to a canvas and
// returns a promise that will be resolved with the canvas' image data.
function getIconImageData(kind, width = 32, height = 32) {
    const canvas = document.createElement("canvas");
    const ctx = canvas.getContext("2d");
    const img = new Image(width, height);
    const result = new Promise((resolve) => img.addEventListener("load", () => {
        ctx.drawImage(img, 0, 0, width, height);
        const id = ctx.getImageData(0, 0, width, height);
        transformations[kind](id.data);
        resolve(id);
    }));
    img.src = svgpath;
    return result;
}
// Given a url and a selector, tries to compute a name that will be unique,
// short and readable for the user.
function toFileName(formatString, url, id, language) {
    let parsedURL;
    try {
        parsedURL = new URL(url);
    }
    catch (e) {
        // Only happens with thunderbird, where we can't get coverage
        /* istanbul ignore next */
        parsedURL = { hostname: 'thunderbird', pathname: 'mail' };
    }
    const sanitize = (s) => (s.match(/[a-zA-Z0-9]+/g) || []).join("-");
    const expand = (pattern) => {
        const noBrackets = pattern.slice(1, -1);
        const [symbol, length] = noBrackets.split("%");
        let value = "";
        switch (symbol) {
            case "hostname":
                value = parsedURL.hostname;
                break;
            case "pathname":
                value = sanitize(parsedURL.pathname);
                break;
            case "selector":
                value = sanitize(id.replace(/:nth-of-type/g, ""));
                break;
            case "timestamp":
                value = sanitize((new Date()).toISOString());
                break;
            case "extension":
                value = languageToExtensions(language);
                break;
            default: console.error(`Unrecognized filename pattern: ${pattern}`);
        }
        return value.slice(-length);
    };
    let result = formatString;
    const matches = formatString.match(/{[^}]*}/g);
    if (matches !== null) {
        for (const match of matches.filter(s => s !== undefined)) {
            result = result.replace(match, expand(match));
        }
    }
    return result;
}
// Given a language name, returns a filename extension. Can return undefined.
function languageToExtensions(language) {
    if (language === undefined || language === null) {
        language = "";
    }
    const lang = language.toLowerCase();
    /* istanbul ignore next */
    switch (lang) {
        case "apl": return "apl";
        case "brainfuck": return "bf";
        case "c": return "c";
        case "c#": return "cs";
        case "c++": return "cpp";
        case "ceylon": return "ceylon";
        case "clike": return "c";
        case "clojure": return "clj";
        case "cmake": return ".cmake";
        case "cobol": return "cbl";
        case "coffeescript": return "coffee";
        case "commonlisp": return "lisp";
        case "crystal": return "cr";
        case "css": return "css";
        case "cython": return "py";
        case "d": return "d";
        case "dart": return "dart";
        case "diff": return "diff";
        case "dockerfile": return "dockerfile";
        case "dtd": return "dtd";
        case "dylan": return "dylan";
        // Eiffel was there first but elixir seems more likely
        // case "eiffel":           return "e";
        case "elixir": return "e";
        case "elm": return "elm";
        case "erlang": return "erl";
        case "f#": return "fs";
        case "factor": return "factor";
        case "forth": return "fth";
        case "fortran": return "f90";
        case "gas": return "asm";
        case "go": return "go";
        // GFM: CodeMirror's github-flavored markdown
        case "gfm": return "md";
        case "groovy": return "groovy";
        case "haml": return "haml";
        case "handlebars": return "hbs";
        case "haskell": return "hs";
        case "haxe": return "hx";
        case "html": return "html";
        case "htmlembedded": return "html";
        case "htmlmixed": return "html";
        case "ipython": return "py";
        case "ipythonfm": return "md";
        case "java": return "java";
        case "javascript": return "js";
        case "jinja2": return "jinja";
        case "julia": return "jl";
        case "jsx": return "jsx";
        case "kotlin": return "kt";
        case "latex": return "latex";
        case "less": return "less";
        case "lua": return "lua";
        case "markdown": return "md";
        case "mllike": return "ml";
        case "ocaml": return "ml";
        case "octave": return "m";
        case "pascal": return "pas";
        case "perl": return "pl";
        case "php": return "php";
        case "powershell": return "ps1";
        case "python": return "py";
        case "r": return "r";
        case "rst": return "rst";
        case "ruby": return "ruby";
        case "rust": return "rs";
        case "sas": return "sas";
        case "sass": return "sass";
        case "scala": return "scala";
        case "scheme": return "scm";
        case "scss": return "scss";
        case "smalltalk": return "st";
        case "shell": return "sh";
        case "sql": return "sql";
        case "stex": return "latex";
        case "swift": return "swift";
        case "tcl": return "tcl";
        case "toml": return "toml";
        case "twig": return "twig";
        case "typescript": return "ts";
        case "vb": return "vb";
        case "vbscript": return "vbs";
        case "verilog": return "sv";
        case "vhdl": return "vhdl";
        case "xml": return "xml";
        case "yaml": return "yaml";
        case "z80": return "z8a";
    }
    return "txt";
}
// Make tslint happy
const fontFamily = "font-family";
// Can't be tested e2e :/
/* istanbul ignore next */
function parseSingleGuifont(guifont, defaults) {
    const options = guifont.split(":");
    const result = Object.assign({}, defaults);
    if (/^[a-zA-Z0-9]+$/.test(options[0])) {
        result[fontFamily] = options[0];
    }
    else {
        result[fontFamily] = JSON.stringify(options[0]);
    }
    if (defaults[fontFamily]) {
        result[fontFamily] += `, ${defaults[fontFamily]}`;
    }
    return options.slice(1).reduce((acc, option) => {
        switch (option[0]) {
            case "h":
                acc["font-size"] = `${option.slice(1)}pt`;
                break;
            case "b":
                acc["font-weight"] = "bold";
                break;
            case "i":
                acc["font-style"] = "italic";
                break;
            case "u":
                acc["text-decoration"] = "underline";
                break;
            case "s":
                acc["text-decoration"] = "line-through";
                break;
            case "w": // Can't set font width. Would have to adjust cell width.
            case "c": // Can't set character set
                break;
        }
        return acc;
    }, result);
}
;
// Parses a guifont declaration as described in `:h E244`
// defaults: default value for each of.
// Can't be tested e2e :/
/* istanbul ignore next */
function parseGuifont(guifont, defaults) {
    const fonts = guifont.split(",").reverse();
    return fonts.reduce((acc, cur) => parseSingleGuifont(cur, acc), defaults);
}
// Computes a unique selector for its argument.
function computeSelector(element) {
    function uniqueSelector(e) {
        // Only matching alphanumeric selectors because others chars might have special meaning in CSS
        if (e.id && e.id.match("^[a-zA-Z0-9_-]+$")) {
            const id = e.tagName + `[id="${e.id}"]`;
            if (document.querySelectorAll(id).length === 1) {
                return id;
            }
        }
        // If we reached the top of the document
        if (!e.parentElement) {
            return "HTML";
        }
        // Compute the position of the element
        const index = Array.from(e.parentElement.children)
            .filter(child => child.tagName === e.tagName)
            .indexOf(e) + 1;
        return `${uniqueSelector(e.parentElement)} > ${e.tagName}:nth-of-type(${index})`;
    }
    return uniqueSelector(element);
}
// Turns a number into its hash+6 number hexadecimal representation.
function toHexCss(n) {
    if (n === undefined)
        return undefined;
    const str = n.toString(16);
    // Pad with leading zeros
    return "#" + (new Array(6 - str.length)).fill("0").join("") + str;
}


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be in strict mode.
(() => {
"use strict";
/*!**********************!*\
  !*** ./src/frame.ts ***!
  \**********************/
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "isReady": () => (/* binding */ isReady)
/* harmony export */ });
/* harmony import */ var _KeyHandler__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./KeyHandler */ "./src/KeyHandler.ts");
/* harmony import */ var _utils_configuration__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./utils/configuration */ "./src/utils/configuration.ts");
/* harmony import */ var _page__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./page */ "./src/page.ts");
/* harmony import */ var _utils_utils__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./utils/utils */ "./src/utils/utils.ts");
/* harmony import */ var _input__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./input */ "./src/input.ts");
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");





const connectionPromise = browser.runtime.sendMessage({ funcName: ["getNeovimInstance"] });
const pageLoaded = new Promise((resolve, reject) => {
    window.addEventListener("load", resolve);
    setTimeout(reject, 10000);
});
class BrowserKeyHandler extends _KeyHandler__WEBPACK_IMPORTED_MODULE_0__.KeydownHandler {
    constructor(keyHandler, settings) {
        super(keyHandler, settings);
        this.keyHandler = keyHandler;
        const acceptInput = ((evt) => {
            this.emit("input", evt.target.value);
            evt.preventDefault();
            evt.stopImmediatePropagation();
        }).bind(this);
        this.keyHandler.addEventListener("input", (evt) => {
            if (evt.isTrusted && !evt.isComposing) {
                acceptInput(evt);
                evt.target.innerText = "";
                evt.target.value = "";
            }
        });
        // On Firefox, Pinyin input method for a single chinese character will
        // result in the following sequence of events:
        // - compositionstart
        // - input (character)
        // - compositionend
        // - input (result)
        // But on Chrome, we'll get this order:
        // - compositionstart
        // - input (character)
        // - input (result)
        // - compositionend
        // So Chrome's input event will still have its isComposing flag set to
        // true! This means that we need to add a chrome-specific event
        // listener on compositionend to do what happens on input events for
        // Firefox.
        // Don't instrument this branch as coverage is only generated on
        // Firefox.
        /* istanbul ignore next */
        if ((0,_utils_utils__WEBPACK_IMPORTED_MODULE_3__.isChrome)()) {
            this.keyHandler.addEventListener("compositionend", (e) => {
                acceptInput(e);
            });
        }
    }
    moveTo(x, y) {
        this.keyHandler.style.left = `${x}px`;
        this.keyHandler.style.top = `${y}px`;
    }
}
const isReady = browser
    .runtime
    .sendMessage({ funcName: ["publishFrameId"] })
    .then(async (frameId) => {
    await _utils_configuration__WEBPACK_IMPORTED_MODULE_1__.confReady;
    await pageLoaded;
    return (0,_input__WEBPACK_IMPORTED_MODULE_4__.setupInput)((0,_page__WEBPACK_IMPORTED_MODULE_2__.getPageProxy)(frameId), document.getElementById("canvas"), new BrowserKeyHandler(document.getElementById("keyhandler"), (0,_utils_configuration__WEBPACK_IMPORTED_MODULE_1__.getGlobalConf)()), connectionPromise);
});

})();

/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,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QSx3U0FBd1M7QUFDeFM7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0EsYUFBYTtBQUNiO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0EsYUFBYTtBQUNiO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGlCQUFpQixVQUFVO0FBQzNCO0FBQ0E7QUFDQTtBQUNBOzs7QUFHQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGlCQUFpQixHQUFHO0FBQ3BCLG1CQUFtQixTQUFTO0FBQzVCOzs7QUFHQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLFFBQVE7QUFDekI7QUFDQTtBQUNBLGlCQUFpQixVQUFVO0FBQzNCO0FBQ0EsaUJBQWlCLFVBQVU7QUFDM0I7QUFD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bUJBQU8sQ0FBQyxpRUFBYTtBQUNyQztBQUNBO0FBQ0E7QUFDQTs7QUFFQSxxQkFBcUI7O0FBRXJCO0FBQ0E7QUFDQTtBQUNBLElBQUk7QUFDSjtBQUNBLElBQUk7QUFDSjtBQUNBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBOztBQUVBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7O0FBRUE7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTs7Ozs7Ozs7Ozs7QUNsT0E7O0FBRUEsZUFBZSxtQkFBTyxDQUFDLGdEQUFTO0FBQ2hDLGtCQUFrQixtQkFBTyxDQUFDLGlFQUFjO0FBQ3hDO0FBQ0E7O0FBRUEsZ0JBQWdCLG1CQUFPLENBQUMsaUVBQWE7QUFDckMsa0JBQWtCLG1CQUFPLENBQUMsNkVBQW1CO0FBQzdDLGlCQUFpQixtQkFBTyxDQUFDLHFFQUFlO0FBQ3hDLFlBQVksZ0dBQThCO0FBQzFDLGdCQUFnQixrR0FBaUM7O0FBRWpEO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBLG9CQUFvQjs7QUFFcEI7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxNQUFNO0FBQ047QUFDQTtBQUNBO0FBQ0EsTUFBTTtBQUNOO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsTUFBTTtBQUNOO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBOztBQUVBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBOztBQUVBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQSxvQkFBb0IsWUFBWTtBQUNoQztBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsS0FBSztBQUNMOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsS0FBSztBQUNMOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOzs7Ozs7Ozs7OztBQzVRQTs7QUFFQSxlQUFlLGFBQWE7O0FBRTVCLG1CQUFtQixXQUFXO0FBQzlCO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOzs7Ozs7Ozs7Ozs7Ozs7O0FDWk8sTUFBTSxZQUFZO0lBQXpCO1FBQ1ksY0FBUyxHQUFHLElBQUksR0FBRyxFQUFVLENBQUM7SUFnQzFDLENBQUM7SUE5QkcsRUFBRSxDQUFDLEtBQVEsRUFBRSxPQUFVO1FBQ25CLElBQUksUUFBUSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBQ3pDLElBQUksUUFBUSxLQUFLLFNBQVMsRUFBRTtZQUN4QixRQUFRLEdBQUcsRUFBRSxDQUFDO1lBQ2QsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDO1NBQ3ZDO1FBQ0QsUUFBUSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUMzQixDQUFDO0lBRUQsSUFBSSxDQUFDLEtBQVEsRUFBRSxHQUFHLElBQVM7UUFDdkIsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDM0MsSUFBSSxRQUFRLEtBQUssU0FBUyxFQUFFO1lBQ3hCLE1BQU0sTUFBTSxHQUFhLEVBQUUsQ0FBQztZQUM1QixRQUFRLENBQUMsT0FBTyxDQUFDLENBQUMsT0FBTyxFQUFFLEVBQUU7Z0JBQ3pCLElBQUk7b0JBQ0EsT0FBTyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7aUJBQ3BCO2dCQUFDLE9BQU8sQ0FBQyxFQUFFO29CQUNSLDBCQUEwQjtvQkFDMUIsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztpQkFDbEI7WUFDTCxDQUFDLENBQUMsQ0FBQztZQUNIOzswRUFFOEQ7WUFDOUQsMEJBQTBCO1lBQzFCLElBQUksTUFBTSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUU7Z0JBQ25CLE1BQU0sSUFBSSxLQUFLLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDO2FBQzNDO1NBQ0o7SUFDTCxDQUFDO0NBQ0o7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQ2xDNkM7QUFFMkI7QUFjekUsMkVBQTJFO0FBQzNFLDhDQUE4QztBQUN2QyxNQUFNLGNBQWUsU0FBUSx1REFBMEM7SUFFMUUsWUFBb0IsSUFBMkIsRUFBRSxRQUF3QjtRQUNyRSxLQUFLLEVBQUUsQ0FBQztRQURRLFNBQUksR0FBSixJQUFJLENBQXVCO1FBRTNDLE1BQU0sVUFBVSxHQUFHLFFBQVEsQ0FBQyxVQUFVLENBQUM7UUFDdkMsSUFBSSxDQUFDLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxTQUFTLEVBQUUsQ0FBQyxHQUFHLEVBQUUsRUFBRTtZQUMxQywrREFBK0Q7WUFDL0QsNkRBQTZEO1lBQzdELDBEQUEwRDtZQUMxRCx3QkFBd0I7WUFDeEIsNkRBQTZEO1lBQzdELDJEQUEyRDtZQUMzRCwwREFBMEQ7WUFDMUQsNkRBQTZEO1lBQzdELFNBQVM7WUFDVCwrREFBK0Q7WUFDL0QsNkJBQTZCO1lBQzdCLDBCQUEwQjtZQUMxQixJQUFJLEdBQUcsQ0FBQyxNQUFNLElBQUksUUFBUSxDQUFDLEdBQUcsS0FBSyxVQUFVLElBQUksQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsRUFBRTtnQkFDM0UsT0FBTzthQUNWO1lBQ0QsbUZBQW1GO1lBQ25GLE1BQU0sV0FBVyxHQUFHLENBQUMsQ0FBQyxLQUFLLEVBQUUsR0FBRyxDQUFDLEVBQUUsQ0FBQyxTQUFTLEVBQUUsR0FBRyxDQUFDLEVBQUUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLEVBQUUsQ0FBQyxNQUFNLEVBQUUsR0FBRyxDQUFDLENBQUMsQ0FBQztZQUNqRix5RkFBeUY7WUFDekYsSUFBSSxHQUFHLENBQUMsU0FBUzttQkFDVixDQUFDLHVEQUFjLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxLQUFLLFNBQVM7dUJBQ2xDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEdBQUcsRUFBRSxDQUFDLENBQW1CLEVBQUUsRUFBRSxDQUMvQixHQUFHLENBQUMsR0FBRyxLQUFLLEdBQUcsSUFBSyxHQUFXLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxFQUFFO2dCQUNqRixNQUFNLElBQUksR0FBRyxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxPQUFPLEVBQUUsR0FBRyxDQUFDLENBQUMsQ0FBQztxQkFDaEQsTUFBTSxDQUFDLENBQUMsR0FBVyxFQUFFLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBbUIsRUFBRSxFQUFFO29CQUNuRCxJQUFLLEdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsRUFBRTt3QkFDckMsT0FBTyx3REFBVyxDQUFDLEdBQUcsRUFBRSxHQUFHLENBQUMsQ0FBQztxQkFDaEM7b0JBQ0QsT0FBTyxHQUFHLENBQUM7Z0JBQ2YsQ0FBQyxFQUFFLHlEQUFZLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7Z0JBRTFCLElBQUksSUFBSSxHQUFjLEVBQUUsQ0FBQztnQkFDekIsSUFBSSxVQUFVLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxLQUFLLFNBQVMsRUFBRTtvQkFDNUMsSUFBSSxHQUFHLFVBQVUsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUMsS0FBSyxFQUFFLENBQUM7aUJBQy9DO2dCQUNELElBQUksVUFBVSxDQUFDLEdBQUcsS0FBSyxTQUFTLEVBQUU7b0JBQzlCLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUM7aUJBQ3pDO2dCQUNELElBQUksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxFQUFFO29CQUN0QixJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsQ0FBQztvQkFDekIsR0FBRyxDQUFDLGNBQWMsRUFBRSxDQUFDO29CQUNyQixHQUFHLENBQUMsd0JBQXdCLEVBQUUsQ0FBQztpQkFDbEM7YUFDSjtRQUNMLENBQUMsQ0FBQztJQUNOLENBQUM7SUFFRCxLQUFLO1FBQ0QsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLEVBQUUsQ0FBQztJQUN0QixDQUFDO0lBRUQsTUFBTSxDQUFDLENBQVMsRUFBRSxFQUFVO1FBQ3hCLGtCQUFrQjtJQUN0QixDQUFDO0lBRUQsT0FBTyxDQUFDLENBQVc7UUFDZixJQUFJLENBQUMsV0FBVyxHQUFHLENBQUMsQ0FBQztJQUN6QixDQUFDO0NBQ0o7QUFBQSxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQ2hGMkM7QUFDYjtBQUNFO0FBRTNCLEtBQUssVUFBVSxNQUFNLENBQ3BCLElBQWMsRUFDZCxNQUF5QixFQUN6QixFQUFFLElBQUksRUFBRSxRQUFRLEVBQXNDO0lBRTFELE1BQU0sU0FBUyxHQUFRLEVBQUUsQ0FBQztJQUMxQixNQUFNLFFBQVEsR0FBRyxJQUFJLEdBQUcsRUFBeUMsQ0FBQztJQUVsRSxnREFBd0IsQ0FBQyxNQUFNLENBQUMsQ0FBQztJQUNqQyxnREFBd0IsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxFQUFDLElBQUksRUFBRSxLQUFLLEVBQUUsTUFBTSxFQUFNLEVBQUUsRUFBRTtRQUM3RCxTQUFpQixDQUFDLGtCQUFrQixDQUFDLElBQUksRUFBRSxLQUFLLEVBQUUsTUFBTSxDQUFDLENBQUM7SUFDL0QsQ0FBQyxDQUFDLENBQUM7SUFDSCxnREFBd0IsQ0FBQyxhQUFhLEVBQUUsQ0FBQyxFQUFDLEtBQUssRUFBRSxNQUFNLEVBQU0sRUFBRSxFQUFFO1FBQzdELElBQUksQ0FBQyxZQUFZLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO0lBQ3JDLENBQUMsQ0FBQyxDQUFDO0lBRUgsSUFBSSx1QkFBdUIsR0FBRyxPQUFPLENBQUMsT0FBTyxFQUFFLENBQUM7SUFDaEQsTUFBTSxNQUFNLEdBQUcsSUFBSSxTQUFTLENBQUMsa0JBQWtCLElBQUksSUFBSSxRQUFRLEVBQUUsQ0FBQyxDQUFDO0lBQ25FLE1BQU0sQ0FBQyxVQUFVLEdBQUcsYUFBYSxDQUFDO0lBQ2xDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUUsQ0FBQyxDQUFDLENBQU0sRUFBRSxFQUFFO1FBQ3pDLHVCQUF1QixHQUFHLHVCQUF1QixDQUFDLE9BQU8sQ0FBQyxHQUFHLEVBQUUsQ0FBQyxJQUFJLENBQUMsVUFBVSxFQUFFLENBQUMsQ0FBQztJQUN2RixDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ0osTUFBTSxDQUFDLElBQUksT0FBTyxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsTUFBTSxDQUFDLGdCQUFnQixDQUFDLE1BQU0sRUFBRSxHQUFHLEVBQUU7UUFDL0QsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQ3ZCLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNMLE1BQU0sS0FBSyxHQUFHLElBQUkseUNBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztJQUNoQyxNQUFNLE1BQU0sR0FBRyxJQUFJLDJDQUFNLENBQUMsTUFBTSxDQUFDLENBQUM7SUFFbEMsSUFBSSxLQUFLLEdBQUcsQ0FBQyxDQUFDO0lBQ2QsTUFBTSxPQUFPLEdBQUcsQ0FBQyxHQUFXLEVBQUUsSUFBVyxFQUFFLEVBQUU7UUFDekMsT0FBTyxJQUFJLE9BQU8sQ0FBQyxDQUFDLE9BQU8sRUFBRSxNQUFNLEVBQUUsRUFBRTtZQUNuQyxLQUFLLElBQUksQ0FBQyxDQUFDO1lBQ1gsUUFBUSxDQUFDLEdBQUcsQ0FBQyxLQUFLLEVBQUUsRUFBQyxPQUFPLEVBQUUsTUFBTSxFQUFDLENBQUMsQ0FBQztZQUN2QyxLQUFLLENBQUMsS0FBSyxDQUFDLEtBQUssRUFBRSxHQUFHLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFDbEMsQ0FBQyxDQUFDLENBQUM7SUFDUCxDQUFDLENBQUM7SUFDRixNQUFNLENBQUMsRUFBRSxDQUFDLFNBQVMsRUFBRSxDQUFDLEVBQVUsRUFBRSxJQUFTLEVBQUUsSUFBUyxFQUFFLEVBQUU7UUFDdEQsT0FBTyxDQUFDLElBQUksQ0FBQyx5Q0FBeUMsRUFBRSxFQUFFLEVBQUUsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO0lBQzVFLENBQUMsQ0FBQyxDQUFDO0lBQ0gsTUFBTSxDQUFDLEVBQUUsQ0FBQyxVQUFVLEVBQUUsQ0FBQyxFQUFPLEVBQUUsS0FBVSxFQUFFLE1BQVcsRUFBRSxFQUFFO1FBQ3ZELE1BQU0sQ0FBQyxHQUFHLFFBQVEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDM0IsSUFBSSxDQUFDLENBQUMsRUFBRTtZQUNKLDZFQUE2RTtZQUM3RSxPQUFPLENBQUMsS0FBSyxDQUFDLHNCQUFzQixFQUFFLHdCQUF3QixDQUFDLENBQUM7U0FDbkU7YUFBTTtZQUNILFFBQVEsQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDcEIsSUFBSSxLQUFLLEVBQUU7Z0JBQ1AsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQzthQUNuQjtpQkFBTTtnQkFDSCxDQUFDLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDO2FBQ3JCO1NBQ0o7SUFDTCxDQUFDLENBQUMsQ0FBQztJQUVILElBQUksYUFBYSxHQUFHLFdBQVcsQ0FBQyxHQUFHLEVBQUUsQ0FBQztJQUN0QyxNQUFNLENBQUMsRUFBRSxDQUFDLGNBQWMsRUFBRSxLQUFLLEVBQUUsSUFBWSxFQUFFLElBQVcsRUFBRSxFQUFFO1FBQzFELElBQUksSUFBSSxLQUFLLFFBQVEsSUFBSSxJQUFJLEVBQUU7WUFDM0IsK0NBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDOUIsT0FBTztTQUNWO1FBQ0QsdUJBQXVCLEdBQUcsdUJBQXVCLENBQUMsT0FBTyxDQUFDLEdBQUcsRUFBRTtZQUMzRCxzREFBc0Q7WUFDdEQsbUVBQW1FO1lBQ25FLG1CQUFtQjtZQUNuQiw4REFBOEQ7WUFDOUQsZ0RBQWdEO1lBQ2hELHNFQUFzRTtZQUN0RSxzQ0FBc0M7WUFDdEMsc0RBQXNEO1lBQ3RELG9FQUFvRTtZQUNwRSxNQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsUUFBUSxFQUFFLENBQUM7WUFDckMsUUFBUSxJQUFJLEVBQUU7Z0JBQ1YsS0FBSyxtQkFBbUI7b0JBQ3BCO3dCQUNBLE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxDQUFDLENBQWlELENBQUM7d0JBQ3JFLE9BQU8sSUFBSSxDQUFDLGlCQUFpQixDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDOzZCQUM5QyxJQUFJLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQzs2QkFDbkQsSUFBSSxDQUFDLEdBQUcsRUFBRTs0QkFDUCxJQUFJLFFBQVE7bUNBQ0wsQ0FBQyxRQUFRLENBQUMsUUFBUSxFQUFFO21DQUNwQixDQUFDLFdBQVcsQ0FBQyxHQUFHLEVBQUUsR0FBRyxhQUFhLEdBQUcsSUFBSSxDQUFDLEVBQUU7Z0NBQy9DLE1BQU0sQ0FBQyxLQUFLLEVBQUUsQ0FBQzs2QkFDbEI7d0JBQ0wsQ0FBQyxDQUFDLENBQUM7cUJBQ047Z0JBQ0wsS0FBSyxrQkFBa0I7b0JBQ25CLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLEVBQUU7d0JBQ3hELElBQUksSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFFOzRCQUNULE9BQU8sQ0FBQyxvQkFBb0IsRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7eUJBQ3RFO29CQUNMLENBQUMsQ0FBQyxDQUFDO2dCQUNQLEtBQUsscUJBQXFCO29CQUN0QixhQUFhLEdBQUcsV0FBVyxDQUFDLEdBQUcsRUFBRSxDQUFDO29CQUNsQyxPQUFPLElBQUksQ0FBQyxTQUFTLEVBQUUsQ0FBQztnQkFDNUIsS0FBSyxzQkFBc0I7b0JBQ3ZCLGFBQWEsR0FBRyxXQUFXLENBQUMsR0FBRyxFQUFFLENBQUM7b0JBQ2xDLE9BQU8sSUFBSSxDQUFDLFVBQVUsRUFBRSxDQUFDO2dCQUM3QixLQUFLLHFCQUFxQjtvQkFDdEIsYUFBYSxHQUFHLFdBQVcsQ0FBQyxHQUFHLEVBQUUsQ0FBQztvQkFDbEMsT0FBTyxJQUFJLENBQUMsVUFBVSxFQUFFLENBQUM7Z0JBQzdCLEtBQUsscUJBQXFCO29CQUN0QixPQUFPLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQ25DLEtBQUssbUJBQW1CO29CQUNwQixhQUFhLEdBQUcsV0FBVyxDQUFDLEdBQUcsRUFBRSxDQUFDO29CQUNsQyxPQUFPLElBQUksQ0FBQyxVQUFVLEVBQUUsQ0FBQztnQkFDN0IsS0FBSywyQkFBMkI7b0JBQzVCLE9BQU8sT0FBTyxDQUFDLE9BQU8sQ0FBQyxXQUFXLENBQUM7d0JBQy9CLElBQUksRUFBRSxFQUFFO3dCQUNSLFFBQVEsRUFBRSxDQUFDLGlCQUFpQixDQUFDO3FCQUNoQyxDQUFDLENBQUM7YUFDVjtRQUNMLENBQUMsQ0FBQyxDQUFDO0lBQ1AsQ0FBQyxDQUFDLENBQUM7SUFFSCxNQUFNLEVBQUUsQ0FBQyxFQUFFLE9BQU8sRUFBRSxDQUFDLEVBQUUsT0FBTyxFQUFFLEdBQUcsQ0FBQyxNQUFNLE9BQU8sQ0FBQyxtQkFBbUIsRUFBRSxFQUFFLENBQUMsQ0FBaUIsQ0FBQztJQUU1RixNQUFNLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUUvQixNQUFNLENBQUMsTUFBTSxDQUFDLFNBQVMsRUFBRSxPQUFPLENBQUMsU0FBUztTQUNyQyxNQUFNLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsZ0JBQWdCLEtBQUssU0FBUyxDQUFDO1NBQzdDLE1BQU0sQ0FBQyxDQUFDLEdBQUcsRUFBRSxHQUFHLEVBQUUsRUFBRTtRQUNqQixJQUFJLElBQUksR0FBRyxHQUFHLENBQUMsSUFBSSxDQUFDO1FBQ3BCLElBQUksSUFBSSxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUMsRUFBRTtZQUMxQixJQUFJLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUN4QjtRQUNELEdBQUcsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLEdBQUcsSUFBVyxFQUFFLEVBQUUsQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQztRQUN4RCxPQUFPLEdBQUcsQ0FBQztJQUNmLENBQUMsRUFBRSxFQUE0QyxDQUFDLENBQUMsQ0FBQztJQUN0RCxTQUFTLENBQUMsbUJBQW1CLEdBQUcsR0FBRyxFQUFFLENBQUMsT0FBTyxDQUFDO0lBQzlDLE9BQU8sU0FBUyxDQUFDO0FBQ3JCLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7O0FDdkl1QztBQUVqQyxNQUFNLEtBQUs7SUFFZCxZQUFvQixNQUFpQjtRQUFqQixXQUFNLEdBQU4sTUFBTSxDQUFXO0lBQUcsQ0FBQztJQUVsQyxLQUFLLENBQUMsS0FBYSxFQUFFLE1BQWMsRUFBRSxJQUFXO1FBQ25ELE1BQU0sR0FBRyxHQUFHLENBQUMsQ0FBQyxFQUFFLEtBQUssRUFBRSxNQUFNLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFDckMsTUFBTSxPQUFPLEdBQUcsZ0RBQWMsQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUNwQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUM5QixDQUFDO0NBRUo7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQ1p1QztBQUNNO0FBT3ZDLE1BQU0sTUFBTyxTQUFRLHVEQUF5QztJQU1qRSxZQUFvQixNQUFpQjtRQUNqQyxLQUFLLEVBQUUsQ0FBQztRQURRLFdBQU0sR0FBTixNQUFNLENBQVc7UUFMN0IsaUJBQVksR0FBRyxJQUFJLEdBQUcsQ0FBc0IsQ0FBQyxDQUFDLENBQUMsRUFBRSxTQUFTLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBRSxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBRSxjQUFjLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDNUcsaUVBQWlFO1FBQ3pELFNBQUksR0FBRyxJQUFJLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN6QixrQkFBYSxHQUFHLEVBQTRCLENBQUM7UUFJakQsSUFBSSxDQUFDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxTQUFTLEVBQUUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztJQUN2RSxDQUFDO0lBRU0sUUFBUSxDQUFDLEtBQXNDO1FBQ2xELElBQUksQ0FBQyxhQUFhLENBQUMsS0FBSyxHQUFHLHFEQUFtQixDQUFDLEVBQUUsTUFBTSxFQUFFLElBQUksRUFBRSxDQUFDLENBQUM7UUFDakUsTUFBTTthQUNELE9BQU8sQ0FBQyxLQUFLLENBQUM7YUFDZCxPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxDQUFDLEVBQUUsRUFBRSxDQUNoQixJQUFJO2FBQ0EsYUFBYTthQUNiLEtBQUs7YUFDTCxjQUFjLENBQUMsRUFBRSxFQUFFLENBQUMsSUFBUyxFQUFFLEVBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBQzlELENBQUM7SUFFTyxTQUFTLENBQUMsR0FBUTtRQUN0QixNQUFNLE9BQU8sR0FBRyxJQUFJLFVBQVUsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDekMsSUFBSSxJQUFJLEdBQUcsSUFBSSxVQUFVLENBQUMsT0FBTyxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1FBQ3JFLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3BCLElBQUksQ0FBQyxHQUFHLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDcEMsT0FBTyxJQUFJLEVBQUU7WUFDVCxJQUFJLE9BQU8sQ0FBQztZQUNaLElBQUk7Z0JBQ0EsT0FBTyxHQUFHLGdEQUFjLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxhQUFhLENBQUMsQ0FBQzthQUN0RDtZQUFDLE9BQU8sQ0FBQyxFQUFFO2dCQUNSLElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDO2dCQUNqQixPQUFPO2FBQ1Y7WUFDRCxNQUFNLE9BQU8sR0FBRyxnREFBYyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQ3hDLElBQUksR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUN0QyxNQUFNLENBQUMsSUFBSSxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBSyxDQUFDLEdBQUcsT0FBTyxDQUFDO1lBQzVDLE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxZQUFZLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3pDLDBCQUEwQjtZQUMxQixJQUFJLElBQUksRUFBRTtnQkFDTixJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssQ0FBQyxDQUFDO2FBQ3hDO2lCQUFNO2dCQUNILDhEQUE4RDtnQkFDOUQsdURBQXVEO2dCQUN2RCxPQUFPLENBQUMsS0FBSyxDQUFDLDBCQUEwQixJQUFJLEVBQUUsQ0FBQyxDQUFDO2FBQ25EO1NBQ0o7SUFDTCxDQUFDO0NBQ0o7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQ3pEaUM7QUFDNkY7QUFDcEQ7QUFDaEM7QUFJcEMsS0FBSyxVQUFVLFVBQVUsQ0FDNUIsSUFBYyxFQUNkLE1BQXlCLEVBQ3pCLFVBQXNCLEVBQ3RCLGlCQUE4RDtJQUU5RCxJQUFJO1FBQ0EsTUFBTSxDQUFDLENBQUMsR0FBRyxFQUFFLFFBQVEsRUFBRSxNQUFNLEVBQUUsUUFBUSxDQUFDLEVBQUUsY0FBYyxDQUFDLEdBQ3JELE1BQU0sT0FBTyxDQUFDLEdBQUcsQ0FBQyxDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsRUFBRSxpQkFBaUIsQ0FBQyxDQUFDLENBQUM7UUFDakUsTUFBTSxXQUFXLEdBQUcsK0NBQU0sQ0FBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLGNBQWMsQ0FBQyxDQUFDO1FBQ3pELE1BQU0sY0FBYyxHQUFHLElBQUksQ0FBQyxpQkFBaUIsRUFBRSxDQUFDO1FBRWhELE1BQU0sQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLEdBQUcseURBQWMsRUFBRSxDQUFDO1FBRXRDLE1BQU0sSUFBSSxHQUFHLE1BQU0sV0FBVyxDQUFDO1FBRS9CLFVBQVUsQ0FBQyxFQUFFLENBQUMsT0FBTyxFQUFFLENBQUMsQ0FBUyxFQUFFLEVBQUUsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDckQsZ0RBQWlCLENBQUMsWUFBWSxFQUFFLENBQUMsQ0FBVyxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFeEUsMkVBQTJFO1FBQzNFLGlEQUFpRDtRQUNqRCxNQUFNLE9BQU8sR0FBRyxPQUFPLENBQUMsT0FBTyxDQUFDLFdBQVcsRUFBRSxDQUFDO1FBQzlDLE1BQU0sQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssQ0FBQyxHQUFHLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ3pELElBQUksQ0FBQyxlQUFlLENBQUMsT0FBTyxDQUFDLElBQUksRUFDN0IsRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxFQUN2QixJQUFJLEVBQ0osRUFBRSxFQUNGLEVBQUUsQ0FDTCxDQUFDO1FBRUYsTUFBTSwyREFBUyxDQUFDO1FBQ2hCLE1BQU0sV0FBVyxHQUFHLG1FQUFhLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDdkMsSUFBSSxDQUFDLFNBQVMsQ0FDVixJQUFJLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksRUFDbkIsSUFBSSxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQ25CO1lBQ0ksWUFBWSxFQUFFLElBQUk7WUFDbEIsWUFBWSxFQUFFLFdBQVcsQ0FBQyxPQUFPLEtBQUssVUFBVTtZQUNoRCxHQUFHLEVBQUUsSUFBSTtTQUNoQixDQUFDLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUV0QixJQUFJLFdBQVcsR0FBRyxDQUFDLENBQUM7UUFDcEIsSUFBSSxDQUFDLEVBQUUsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDLEVBQUUsRUFBRSxLQUFLLEVBQUUsTUFBTSxDQUEyQixFQUFFLEVBQUU7WUFDaEUsSUFBSSxFQUFFLEdBQUcsV0FBVyxFQUFFO2dCQUNsQixXQUFXLEdBQUcsRUFBRSxDQUFDO2dCQUNqQixnRUFBZ0U7Z0JBQ2hFLDJDQUEyQztnQkFDM0MsVUFBVSxDQUFDLE1BQU0sQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUM7Z0JBQ3hCLHdEQUF3RDtnQkFDeEQsK0RBQStEO2dCQUMvRCxnRUFBZ0U7Z0JBQ2hFLGtFQUFrRTtnQkFDbEUsd0NBQXdDO2dCQUN4QyxNQUFNLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxHQUFHLG1FQUF3QixDQUMzQyxLQUFLLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixFQUMvQixNQUFNLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixDQUNuQyxDQUFDO2dCQUNGLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxvREFBUyxFQUFFLEVBQUUsS0FBSyxFQUFFLEtBQUssQ0FBQyxDQUFDO2dCQUNuRCxJQUFJLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQyxHQUFHLEtBQUssRUFBRSxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxLQUFLLENBQUMsR0FBRyxLQUFLLENBQUMsQ0FBQzthQUM1RjtRQUNMLENBQUMsQ0FBQyxDQUFDO1FBQ0gsSUFBSSxDQUFDLEVBQUUsQ0FBQyxlQUFlLEVBQUUsQ0FBQyxJQUFJLEVBQUUsRUFBRSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDOUQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsRUFBRSxDQUFDLENBQU0sRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsQ0FBQyxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFM0UsMkRBQTJEO1FBQzNELE1BQU0sUUFBUSxHQUFHLHdEQUFVLENBQUMsV0FBVyxDQUFDLFFBQVEsRUFBRSxHQUFHLEVBQUUsUUFBUSxFQUFFLFFBQVEsQ0FBQyxDQUFDO1FBQzNFLE1BQU0sT0FBTyxHQUFHLE1BQU0sY0FBYyxDQUFDO1FBQ3JDLE1BQU0sQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLEdBQUcsTUFBTSxDQUFDO1FBQzNCLE1BQU0sZ0JBQWdCLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLEVBQUUsQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxFQUFFLFFBQVEsQ0FBQyxDQUFDO2FBQ3BGLElBQUksQ0FBQyxHQUFHLEVBQUUsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLFFBQVEsUUFBUSxHQUFHO2NBQ2pCLGtDQUFrQyxJQUFJLEtBQUssR0FBRyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBRXBGLGdFQUFnRTtRQUNoRSwyQ0FBMkM7UUFDM0MsMEJBQTBCO1FBQzFCLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxjQUFjLEVBQUUsR0FBRyxFQUFFO1lBQ3pDLElBQUksQ0FBQyxTQUFTLEVBQUUsQ0FBQztZQUNqQixJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzFCLENBQUMsQ0FBQyxDQUFDO1FBRUgscUZBQXFGO1FBQ3JGLE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxtQkFBbUIsRUFBRSxDQUFDO1FBQ3hDLFNBQVMsY0FBYztZQUNuQixJQUFJLENBQUMsT0FBTyxDQUFDLCtCQUErQixFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3hELENBQUM7UUFDRCxjQUFjLEVBQUUsQ0FBQztRQUNqQixNQUFNLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLGNBQWMsQ0FBQyxDQUFDO1FBQ2pELE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUUsY0FBYyxDQUFDLENBQUM7UUFFakQsTUFBTSxXQUFXLEdBQUcsc0JBQXNCLElBQUksRUFBRSxDQUFDO1FBQ2pELGlCQUFpQjtRQUNqQiw2Q0FBNkM7UUFDN0MsZ0JBQWdCO1FBQ2hCLHVCQUF1QjtRQUN2QixNQUFNLE9BQU8sR0FBRyxrQkFBa0IsSUFBSSwyQkFBMkI7Y0FDbkQsZ0JBQWdCLFFBQVEsSUFBSSxDQUFDO1FBQzNDLHlEQUF5RDtRQUN6RCxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUMsV0FBVyxXQUFXOzsyQ0FFTCxRQUFRLEdBQUc7Y0FDeEIsa0JBQWtCLElBQUksSUFBSTtjQUN0Qix1QkFBdUI7Y0FDdkIsR0FBRztjQUNDLDBDQUEwQztjQUMxQyxtQ0FBbUM7Y0FDdkM7d0NBQ00sT0FBTztnQ0FDZixDQUFDLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLENBQUMsY0FBYyxFQUFFLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFbkYsTUFBTSxDQUFDLGdCQUFnQixDQUFDLFdBQVcsRUFBRSxDQUFDLEdBQWUsRUFBRSxFQUFFO1lBQ3JELFVBQVUsQ0FBQyxNQUFNLENBQUMsR0FBRyxDQUFDLE9BQU8sRUFBRSxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDaEQsQ0FBQyxDQUFDLENBQUM7UUFDSCxTQUFTLE9BQU8sQ0FBQyxHQUFlLEVBQUUsTUFBYztZQUM1QyxJQUFJLE1BQU0sQ0FBQztZQUNYLDhDQUE4QztZQUM5QywwQkFBMEI7WUFDMUIsSUFBSSxHQUFHLFlBQVksVUFBVSxFQUFFO2dCQUMzQixNQUFNLEdBQUcsT0FBTyxDQUFDO2FBQ3BCO2lCQUFNO2dCQUNILDREQUE0RDtnQkFDNUQsMEJBQTBCO2dCQUMxQixJQUFJLEdBQUcsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO29CQUNoQixvREFBb0Q7b0JBQ3BELE9BQU87aUJBQ1Y7Z0JBQ0QsTUFBTSxHQUFHLENBQUMsTUFBTSxFQUFFLFFBQVEsRUFBRSxPQUFPLENBQUMsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLENBQUM7YUFDcEQ7WUFDRCxHQUFHLENBQUMsY0FBYyxFQUFFLENBQUM7WUFDckIsR0FBRyxDQUFDLHdCQUF3QixFQUFFLENBQUM7WUFFL0IsTUFBTSxTQUFTLEdBQUcsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQztnQkFDckMsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQztnQkFDeEIsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQztnQkFDeEIsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1lBQzlCLE1BQU0sQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLEdBQUcsNkRBQWtCLENBQUMsR0FBRyxDQUFDLEtBQUssRUFBRSxHQUFHLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDeEQsSUFBSSxDQUFDLFdBQVcsQ0FBQyxNQUFNLEVBQ04sTUFBTSxFQUNOLFNBQVMsRUFDVCxvREFBUyxFQUFFLEVBQ1gsQ0FBQyxFQUNELENBQUMsQ0FBQyxDQUFDO1lBQ3BCLFVBQVUsQ0FBQyxLQUFLLEVBQUUsQ0FBQztRQUN2QixDQUFDO1FBQ0QsTUFBTSxDQUFDLGdCQUFnQixDQUFDLFdBQVcsRUFBRSxDQUFDLENBQUMsRUFBRTtZQUNyQyxPQUFPLENBQUMsQ0FBQyxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ3hCLENBQUMsQ0FBQyxDQUFDO1FBQ0gsTUFBTSxDQUFDLGdCQUFnQixDQUFDLFNBQVMsRUFBRSxDQUFDLENBQUMsRUFBRTtZQUNuQyxPQUFPLENBQUMsQ0FBQyxFQUFFLFNBQVMsQ0FBQyxDQUFDO1FBQzFCLENBQUMsQ0FBQyxDQUFDO1FBQ0gsMERBQTBEO1FBQzFELDBCQUEwQjtRQUMxQixNQUFNLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLEdBQUcsQ0FBQyxFQUFFO1lBQ25DLElBQUksSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLElBQUksSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLEVBQUU7Z0JBQzlDLE9BQU8sQ0FBQyxHQUFHLEVBQUUsR0FBRyxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUM7YUFDaEQ7aUJBQU07Z0JBQ0gsT0FBTyxDQUFDLEdBQUcsRUFBRSxHQUFHLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQzthQUNuRDtRQUNMLENBQUMsQ0FBQyxDQUFDO1FBQ0gsbURBQW1EO1FBQ25ELE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUUsR0FBRyxFQUFFO1lBQ2xDLFFBQVEsQ0FBQyxlQUFlLENBQUMsS0FBSyxDQUFDLE9BQU8sR0FBRyxHQUFHLENBQUM7WUFDN0MsVUFBVSxDQUFDLEtBQUssRUFBRSxDQUFDO1lBQ25CLElBQUksQ0FBQyxPQUFPLENBQUMsdUJBQXVCLENBQUMsQ0FBQztRQUMxQyxDQUFDLENBQUMsQ0FBQztRQUNILE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxNQUFNLEVBQUUsR0FBRyxFQUFFO1lBQ2pDLFFBQVEsQ0FBQyxlQUFlLENBQUMsS0FBSyxDQUFDLE9BQU8sR0FBRyxLQUFLLENBQUM7WUFDL0MsSUFBSSxDQUFDLE9BQU8sQ0FBQyxxQkFBcUIsQ0FBQyxDQUFDO1FBQ3hDLENBQUMsQ0FBQyxDQUFDO1FBQ0gsVUFBVSxDQUFDLEtBQUssRUFBRSxDQUFDO1FBQ25CLE9BQU8sSUFBSSxPQUFPLENBQUUsQ0FBQyxPQUFPLEVBQUUsTUFBTSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsR0FBRyxFQUFFO1lBQ3JELFVBQVUsQ0FBQyxLQUFLLEVBQUUsQ0FBQztZQUNuQixnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDM0MsK0RBQStEO1lBQy9ELCtEQUErRDtZQUMvRCxpQ0FBaUM7WUFDakMsMEJBQTBCO1lBQzFCLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxHQUFHLEVBQUUsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxDQUFDO1FBQzNDLENBQUMsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDO0tBQ1g7SUFBQyxPQUFPLENBQUMsRUFBRTtRQUNSLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDakIsSUFBSSxDQUFDLFVBQVUsRUFBRSxDQUFDO1FBQ2xCLE1BQU0sQ0FBQyxDQUFDO0tBQ1g7QUFDTCxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FDOUxnRDtBQUVEO0FBQ1E7QUFDVDtBQWMvQyw2Q0FBNkM7QUFDN0MsNkNBQTZDO0FBQzdDLDZDQUE2QztBQUU3QyxTQUFTLFdBQVcsQ0FBQyxNQUFvQixFQUFFLFFBQXlCLEVBQUUsV0FBb0I7SUFDdEYsSUFBSSxXQUFXLEVBQUU7UUFDYixrRUFBa0U7UUFDbEUsK0JBQStCO1FBQy9CLE1BQU0sSUFBSSxHQUFHLDZEQUFPLEVBQUUsQ0FBQztRQUN2QixJQUFJLElBQUksQ0FBQyxRQUFRLElBQUksSUFBSSxDQUFDLFFBQVEsS0FBSyxFQUFFLEVBQUU7WUFDdkMsTUFBTSxLQUFLLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7WUFDbkUsV0FBVyxHQUFHLEtBQUssQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFVBQVUsRUFBRSxDQUFDLENBQUM7U0FDdkQ7S0FDSjtJQUNELFFBQVEsQ0FBQyxvQkFBb0IsQ0FBQyxXQUFXLENBQUMsQ0FBQztBQUMvQyxDQUFDO0FBRUQsU0FBUyxpQkFBaUIsQ0FBRSxhQUEyQztJQUNuRSxPQUFPLEtBQUs7U0FDUCxJQUFJLENBQUMsYUFBYSxDQUFDLE1BQU0sRUFBRSxDQUFDO1NBQzVCLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxTQUFTLEVBQUUsQ0FBQyxDQUFDO0FBQ2hELENBQUM7QUFFRCxrRUFBa0U7QUFDM0QsU0FBUyxlQUFlLENBQUMsTUFBb0I7SUFDaEQsT0FBTztRQUNILHNCQUFzQixFQUFHLEdBQUcsRUFBRSxDQUFDLE1BQU0sQ0FBQyxhQUFhLENBQUMsSUFBSTtRQUN4RCxrQkFBa0IsRUFBRSxDQUFDLE9BQWUsRUFBRSxFQUFFO1lBQ3BDLE1BQU0sQ0FBQyxjQUFjLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDbkMsQ0FBQztRQUNELFdBQVcsRUFBRSxDQUFDLFFBQWlCLEVBQUUsRUFBRTtZQUMvQixNQUFNLENBQUMsUUFBUSxHQUFHLFFBQVEsQ0FBQztRQUMvQixDQUFDO1FBQ0QsMkJBQTJCLEVBQUUsQ0FBQyxPQUFlLEVBQUUsRUFBRTtZQUM3QyxNQUFNLENBQUMsd0JBQXdCLEdBQUcsT0FBTyxDQUFDO1FBQzlDLENBQUM7S0FDSixDQUFDO0FBQ04sQ0FBQztBQUVELFNBQVMsU0FBUyxDQUFDLENBQWM7SUFDN0IsTUFBTSxJQUFJLEdBQUcsQ0FBQyxDQUFDLHFCQUFxQixFQUFFLENBQUM7SUFDdkMsTUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsZUFBZSxDQUFDLFlBQVksRUFBRSxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7SUFDdkYsT0FBTyxDQUFDLENBQUMsSUFBSSxDQUFDLE1BQU0sR0FBRyxDQUFDLElBQUksSUFBSSxDQUFDLEdBQUcsR0FBRyxVQUFVLElBQUksQ0FBQyxDQUFDLENBQUM7QUFDNUQsQ0FBQztBQUVELHVGQUF1RjtBQUNoRixTQUFTLHlCQUF5QixDQUFDLE1BQW9CO0lBQzFELE9BQU87UUFDSCxZQUFZLEVBQUUsR0FBRyxFQUFFO1lBQ2YsSUFBSSxJQUFJLEdBQUcsUUFBUSxDQUFDLGFBQWEsQ0FBQztZQUNsQyxNQUFNLE1BQU0sR0FBRyxJQUFJLEtBQUssSUFBSSxJQUFJLElBQUksS0FBSyxTQUFTLENBQUM7WUFDbkQsTUFBTSxlQUFlLEdBQUcsUUFBUSxDQUFDLGVBQWUsQ0FBQyxlQUFlLEtBQUssTUFBTSxDQUFDO1lBQzVFLE1BQU0sZUFBZSxHQUFHLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxlQUFlLEtBQUssT0FBTzttQkFDbkQsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLGVBQWUsS0FBSyxTQUFTO3VCQUN4QyxRQUFRLENBQUMsZUFBZSxDQUFDLGVBQWUsS0FBSyxNQUFNLENBQUMsQ0FBQyxDQUFDO1lBQ3pFLElBQUksTUFBTTttQkFDSCxDQUFDLElBQUksS0FBSyxRQUFRLENBQUMsZUFBZSxJQUFJLGVBQWUsQ0FBQzttQkFDdEQsQ0FBQyxJQUFJLEtBQUssUUFBUSxDQUFDLElBQUksSUFBSSxlQUFlLENBQUMsRUFBRTtnQkFDaEQsSUFBSSxHQUFHLEtBQUssQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLG9CQUFvQixDQUFDLFVBQVUsQ0FBQyxDQUFDO3FCQUN2RCxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7Z0JBQ3JCLElBQUksQ0FBQyxJQUFJLEVBQUU7b0JBQ1AsSUFBSSxHQUFHLEtBQUssQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLG9CQUFvQixDQUFDLE9BQU8sQ0FBQyxDQUFDO3lCQUNwRCxJQUFJLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsSUFBSSxLQUFLLE1BQU0sSUFBSSxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztpQkFDckQ7Z0JBQ0QsSUFBSSxDQUFDLElBQUksRUFBRTtvQkFDUCxPQUFPO2lCQUNWO2FBQ0o7WUFDRCxNQUFNLENBQUMsT0FBTyxDQUFDLEVBQUUsTUFBTSxFQUFFLElBQUksRUFBUyxDQUFDLENBQUM7UUFDNUMsQ0FBQztRQUNELE9BQU8sRUFBRSxDQUFDLEdBQVcsRUFBRSxFQUFFO1lBQ3JCLE1BQU0sUUFBUSxHQUFHLGlCQUFpQixDQUFDLE1BQU0sQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUN6RCxJQUFJLFFBQVEsS0FBSyxTQUFTLEVBQUU7Z0JBQ3hCLFFBQVEsQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLENBQUM7YUFDekI7aUJBQU07Z0JBQ0gsOERBQThEO2dCQUM5RCwwQkFBMEI7Z0JBQzFCLE1BQU0sSUFBSSxLQUFLLENBQUMsNEJBQTRCLENBQUMsQ0FBQzthQUNqRDtRQUNMLENBQUM7S0FDSixDQUFDO0FBQ04sQ0FBQztBQUVNLFNBQVMsdUJBQXVCLENBQUMsTUFBb0I7SUFDeEQsT0FBTztRQUNILFVBQVUsRUFBRSxDQUFDLENBQVMsRUFBRSxFQUFVLEVBQUUsRUFBRSxDQUFDLDJEQUFhLENBQUMsRUFBRSxDQUFDO1FBQ3hELFVBQVUsRUFBRSxDQUFDLE9BQWUsRUFBRSxFQUFFO1lBQzVCLElBQUksZUFBZSxDQUFDO1lBQ3BCLElBQUksT0FBTyxLQUFLLFNBQVMsRUFBRTtnQkFDdkIsZUFBZSxHQUFHLGlCQUFpQixDQUFDLE1BQU0sQ0FBQyxhQUFhLENBQUMsQ0FBQzthQUM3RDtpQkFBTTtnQkFDSCxlQUFlLEdBQUcsTUFBTSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUM7YUFDdkQ7WUFDRCxXQUFXLENBQUMsTUFBTSxFQUFFLGVBQWUsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUMvQyxDQUFDO1FBQ0QsU0FBUyxFQUFFLENBQUMsT0FBZSxFQUFFLEVBQUU7WUFDM0IsTUFBTSxlQUFlLEdBQUcsTUFBTSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDMUQsZUFBZSxDQUFDLG1CQUFtQixFQUFFLENBQUM7WUFDckMsUUFBUSxDQUFDLGFBQXFCLENBQUMsSUFBSSxFQUFFLENBQUM7WUFDdkMsUUFBUSxDQUFDLGVBQWUsQ0FBQyxLQUFLLEVBQUUsQ0FBQztRQUNyQyxDQUFDO1FBQ0QsYUFBYSxFQUFFLENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxNQUFNO2FBQ3JDLGFBQWE7YUFDYixHQUFHLENBQUMsT0FBTyxDQUFDO2FBQ1osYUFBYSxFQUFFO1FBQ3BCLGlCQUFpQixFQUFFLENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxNQUFNO2FBQ3pDLGFBQWE7YUFDYixHQUFHLENBQUMsT0FBTyxDQUFDO2FBQ1oscUJBQXFCLEVBQUU7UUFDNUIsVUFBVSxFQUFFLENBQUMsT0FBZSxFQUFFLEVBQUU7WUFDNUIsTUFBTSxRQUFRLEdBQUcsTUFBTSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDbkQsUUFBUSxDQUFDLElBQUksRUFBRSxDQUFDO1lBQ2hCLFdBQVcsQ0FBQyxNQUFNLEVBQUUsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3hDLENBQUM7UUFDRCxVQUFVLEVBQUUsQ0FBQyxPQUFlLEVBQUUsRUFBRTtZQUM1QixNQUFNLFFBQVEsR0FBRyxNQUFNLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUNuRCxNQUFNLFNBQVMsR0FBRyxRQUFRLENBQUMsU0FBUyxFQUFFLENBQUM7WUFDdkMsUUFBUSxDQUFDLGNBQWMsRUFBRSxDQUFDO1lBQzFCLE1BQU0sSUFBSSxHQUFHLDZEQUFPLEVBQUUsQ0FBQztZQUN2QixJQUFJLFNBQVMsRUFBRTtnQkFDWCxXQUFXLENBQUMsTUFBTSxFQUFFLFFBQVEsRUFBRSxJQUFJLENBQUMsUUFBUSxLQUFLLE1BQU0sQ0FBQyxDQUFDO2FBQzNEO1lBQ0QsTUFBTSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDekMsQ0FBQztRQUNELFNBQVMsRUFBRSxDQUFDLE9BQWUsRUFBRSxJQUFjLEVBQUUsRUFBRTtZQUMzQyxNQUFNLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsQ0FBQyxTQUFTLENBQUMseURBQVksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQ3BFLENBQUM7UUFDRCxZQUFZLEVBQUUsQ0FBQyxPQUFlLEVBQUUsS0FBYSxFQUFFLE1BQWMsRUFBRSxFQUFFO1lBQzdELE1BQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQy9DLElBQUksQ0FBQyxRQUFRLENBQUMsS0FBSyxFQUFFLE1BQU0sRUFBRSxJQUFJLENBQUMsQ0FBQztZQUNuQyxJQUFJLENBQUMsK0NBQStDLEVBQUUsQ0FBQztRQUMzRCxDQUFDO1FBQ0QsaUJBQWlCLEVBQUUsQ0FBQyxPQUFlLEVBQUUsSUFBWSxFQUFFLEVBQUU7WUFDakQsT0FBTyxNQUFNLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN6RSxDQUFDO1FBQ0QsZ0JBQWdCLEVBQUUsQ0FBQyxPQUFlLEVBQUUsSUFBWSxFQUFFLE1BQWMsRUFBRSxFQUFFO1lBQ2hFLE9BQU8sTUFBTSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsb0JBQW9CLENBQUMsSUFBSSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ2hGLENBQUM7S0FDSixDQUFDO0FBQ04sQ0FBQztBQUVELDhFQUE4RTtBQUM5RSw4RUFBOEU7QUFDOUUsOEVBQThFO0FBQzlFLDhFQUE4RTtBQUM5RSxDQUFDO0FBVU0sTUFBTSxnQkFBaUIsU0FBUSx1REFBc0M7SUFDeEU7UUFDSSxLQUFLLEVBQUUsQ0FBQztRQUNSLE9BQU8sQ0FBQyxPQUFPLENBQUMsU0FBUyxDQUFDLFdBQVcsQ0FBQyxDQUFDLE9BQVksRUFBRSxPQUFZLEVBQUUsYUFBa0IsRUFBRSxFQUFFO1lBQ3JGLFFBQVEsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsRUFBRTtnQkFDekIsS0FBSyxrQkFBa0IsQ0FBQztnQkFDeEIsS0FBSyxlQUFlLENBQUM7Z0JBQ3JCLEtBQUssUUFBUTtvQkFDVCxJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLEVBQUUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO29CQUM3QyxNQUFNO2dCQUNWLEtBQUssaUJBQWlCO29CQUNsQixPQUFPLElBQUksT0FBTyxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUM7Z0JBQzNFO29CQUNJLE9BQU8sQ0FBQyxLQUFLLENBQUMseUJBQXlCLEVBQUUsT0FBTyxDQUFDLENBQUM7YUFDekQ7UUFDTCxDQUFDLENBQUMsQ0FBQztJQUNQLENBQUM7Q0FDSjtBQU1NLFNBQVMsWUFBWSxDQUFFLE9BQWU7SUFDekMsTUFBTSxJQUFJLEdBQUcsSUFBSSxnQkFBZ0IsRUFBRSxDQUFDO0lBRXBDLElBQUksUUFBd0IsQ0FBQztJQUM3QixLQUFLLFFBQVEsSUFBSSx1QkFBdUIsQ0FBQyxFQUFTLENBQUMsRUFBRTtRQUNqRCwwRUFBMEU7UUFDMUUsdUNBQXVDO1FBQ3ZDLE1BQU0sSUFBSSxHQUFHLFFBQVEsQ0FBQztRQUNyQixJQUFZLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsR0FBVSxFQUFFLEVBQUU7WUFDckMsT0FBTyxPQUFPLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQztnQkFDL0IsSUFBSSxFQUFFO29CQUNGLElBQUksRUFBRSxDQUFDLE9BQU8sQ0FBQyxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUM7b0JBQzNCLFFBQVEsRUFBRSxDQUFDLElBQUksQ0FBQztpQkFDbkI7Z0JBQ0QsUUFBUSxFQUFFLENBQUMsYUFBYSxDQUFDO2FBQzVCLENBQUMsQ0FBQztRQUNQLENBQUMsQ0FBQyxDQUFDO0tBQ047SUFDRCxPQUFPLElBQWdCLENBQUM7QUFDNUIsQ0FBQztBQUFBLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FDdk5xRDtBQUNvQjtBQUM3QjtBQU92QyxNQUFNLE1BQU0sR0FBRyxJQUFJLHVEQUFZLEVBQWlDLENBQUM7QUFFeEUsSUFBSSxVQUFVLEdBQVMsRUFBRSxDQUFDO0FBQzFCLFNBQVMsY0FBYztJQUNuQixVQUFVLEdBQUcsRUFBRSxDQUFDO0FBQ3BCLENBQUM7QUFFRCxJQUFJLGtCQUFrQixHQUFHLEtBQUssQ0FBQztBQUUvQixTQUFTLGlCQUFpQjtJQUN0QixrQkFBa0IsR0FBRyxJQUFJLENBQUM7SUFDMUIsY0FBYyxFQUFFLENBQUM7QUFDckIsQ0FBQztBQUVELElBQUksVUFBbUIsQ0FBQztBQUN4QixTQUFTLGFBQWEsQ0FBRSxLQUFZLEVBQUUsQ0FBVTtJQUM1QyxVQUFVLEdBQUcsQ0FBQyxDQUFDO0lBQ2YsS0FBSyxDQUFDLE9BQU8sQ0FBQyxJQUFJLEdBQUcsVUFBVSxDQUFDO0lBQ2hDLGlCQUFpQixFQUFFLENBQUM7QUFDeEIsQ0FBQztBQUNELFNBQVMsT0FBTyxDQUFDLElBQVksRUFBRSxJQUFZO0lBQ3ZDLE9BQU8sSUFBSSxHQUFHLEdBQUcsR0FBRyxJQUFJLENBQUM7QUFDN0IsQ0FBQztBQUNELFNBQVMsbUJBQW1CLENBQUUsR0FBc0IsRUFBRSxLQUFhLEVBQUUsTUFBYztJQUMvRSxHQUFHLENBQUMsS0FBSyxHQUFHLEtBQUssR0FBRyxNQUFNLENBQUMsZ0JBQWdCLENBQUM7SUFDNUMsR0FBRyxDQUFDLE1BQU0sR0FBRyxNQUFNLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixDQUFDO0lBQzlDLEdBQUcsQ0FBQyxLQUFLLENBQUMsS0FBSyxHQUFHLEdBQUcsS0FBSyxJQUFJLENBQUM7SUFDL0IsR0FBRyxDQUFDLEtBQUssQ0FBQyxNQUFNLEdBQUcsR0FBRyxNQUFNLElBQUksQ0FBQztBQUNyQyxDQUFDO0FBQ0QsU0FBUyxjQUFjLENBQUMsUUFBZ0IsRUFBRSxVQUFrQjtJQUN4RCxPQUFPLEdBQUcsUUFBUSxJQUFJLFVBQVUsRUFBRSxDQUFDO0FBQ3ZDLENBQUM7QUFDRCxJQUFJLGVBQWUsR0FBRyxFQUFFLENBQUM7QUFDekIsTUFBTSxpQkFBaUIsR0FBRyxXQUFXLENBQUM7QUFDdEMsSUFBSSxpQkFBaUIsR0FBRyxFQUFFLENBQUM7QUFDcEIsU0FBUyxTQUFTLENBQUUsR0FBc0I7SUFDN0MsTUFBTSxLQUFLLEdBQUcsV0FBVyxDQUFDO0lBQzFCLEtBQUssQ0FBQyxNQUFNLEdBQUcsR0FBRyxDQUFDO0lBQ25CLG1CQUFtQixDQUFDLEtBQUssQ0FBQyxNQUFNLEVBQ1osTUFBTSxDQUFDLFVBQVUsRUFDakIsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFDO0lBQ3hDLGVBQWUsR0FBRyxNQUFNLENBQUMsZ0JBQWdCLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLFFBQVEsQ0FBQztJQUNqRSxpQkFBaUIsR0FBRyxjQUFjLENBQUMsZUFBZSxFQUFFLGlCQUFpQixDQUFDLENBQUM7SUFDdkUsS0FBSyxDQUFDLE9BQU8sR0FBRyxLQUFLLENBQUMsTUFBTSxDQUFDLFVBQVUsQ0FBQyxJQUFJLEVBQUUsRUFBRSxPQUFPLEVBQUUsS0FBSyxFQUFFLENBQUMsQ0FBQztJQUNsRSxhQUFhLENBQUMsS0FBSyxFQUFFLGlCQUFpQixDQUFDLENBQUM7QUFDNUMsQ0FBQztBQUVELHlDQUF5QztBQUN6QyxNQUFNLGlCQUFpQixHQUFHLFNBQVMsQ0FBQztBQUNwQyxNQUFNLGlCQUFpQixHQUFHLFNBQVMsQ0FBQztBQXlCcEMsSUFBSyxVQUlKO0FBSkQsV0FBSyxVQUFVO0lBQ1gsMkNBQUk7SUFDSiwrQ0FBTTtJQUNOLCtDQUFNO0FBQ1YsQ0FBQyxFQUpJLFVBQVUsS0FBVixVQUFVLFFBSWQ7QUFzR0QsTUFBTSxXQUFXLEdBQVU7SUFDdkIsTUFBTSxFQUFFLFNBQVM7SUFDakIsT0FBTyxFQUFFLFNBQVM7SUFDbEIsV0FBVyxFQUFFO1FBQ1QsTUFBTSxFQUFFLFFBQVE7UUFDaEIsT0FBTyxFQUFFLEVBQUU7UUFDWCxHQUFHLEVBQUUsQ0FBQztRQUNOLE1BQU0sRUFBRSxFQUFFO1FBQ1YsTUFBTSxFQUFFLEVBQUU7UUFDVixNQUFNLEVBQUUsQ0FBQztRQUNULEtBQUssRUFBRSxDQUFDO0tBQ1g7SUFDRCxNQUFNLEVBQUU7UUFDSixXQUFXLEVBQUUsQ0FBQztRQUNkLE9BQU8sRUFBRSxJQUFJO1FBQ2IsQ0FBQyxFQUFFLENBQUM7UUFDSixDQUFDLEVBQUUsQ0FBQztRQUNKLFFBQVEsRUFBRSxXQUFXLENBQUMsR0FBRyxFQUFFO1FBQzNCLHFCQUFxQixFQUFFLEtBQUs7S0FDL0I7SUFDRCxjQUFjLEVBQUUsRUFBRTtJQUNsQixXQUFXLEVBQUUsRUFBRTtJQUNmLGdCQUFnQixFQUFFLEVBQUU7SUFDcEIsY0FBYyxFQUFFLEVBQUU7SUFDbEIsU0FBUyxFQUFFLEVBQUU7SUFDYixVQUFVLEVBQUUsQ0FBQyxZQUFZLENBQUMsaUJBQWlCLEVBQUUsaUJBQWlCLENBQUMsQ0FBQztJQUNoRSxXQUFXLEVBQUUsV0FBVyxDQUFDLEdBQUcsRUFBRTtJQUM5QixTQUFTLEVBQUUsQ0FBQztJQUNaLFFBQVEsRUFBRSxFQUFFO0lBQ1osaUJBQWlCLEVBQUUsRUFBRTtJQUNyQixJQUFJLEVBQUU7UUFDRixPQUFPLEVBQUUsQ0FBQztRQUNWLFlBQVksRUFBRyxLQUFLO1FBQ3BCLFFBQVEsRUFBRSxDQUFDO2dCQUNQLE9BQU8sRUFBRSxDQUFDO2dCQUNWLFVBQVUsRUFBRSxDQUFDO2dCQUNiLFFBQVEsRUFBRSxDQUFDO2dCQUNYLE9BQU8sRUFBRSxDQUFDO2dCQUNWLFNBQVMsRUFBRSxDQUFDO2dCQUNaLGVBQWUsRUFBRSxDQUFDO2dCQUNsQixZQUFZLEVBQUUsT0FBTztnQkFDckIsSUFBSSxFQUFFLFFBQVE7YUFDakIsQ0FBQztLQUNMO0lBQ0QsS0FBSyxFQUFFLFNBQVM7SUFDaEIsT0FBTyxFQUFFLFNBQVM7SUFDbEIsUUFBUSxFQUFFLFNBQVM7Q0FDdEIsQ0FBQztBQUVGLFNBQVMsVUFBVSxDQUFDLElBQVksRUFBRSxJQUFnQixFQUFFLENBQVMsRUFBRSxDQUFTLEVBQUUsQ0FBUyxFQUFFLENBQVM7SUFDMUYsTUFBTSxPQUFPLEdBQUcsV0FBVyxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUM5QyxNQUFNLEtBQUssR0FBRyxXQUFXLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDakQsSUFBSSxPQUFPLENBQUMsTUFBTSxLQUFLLEtBQUssRUFBRTtRQUMxQixPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUUsSUFBSSxFQUFFLENBQUMsRUFBRSxDQUFDLEVBQUUsQ0FBQyxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUM7S0FDdEM7U0FBTTtRQUNILE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDO1FBQzNCLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ3JCLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ3JCLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ3JCLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0tBQ3hCO0lBQ0QsV0FBVyxDQUFDLGdCQUFnQixDQUFDLElBQUksQ0FBQyxHQUFHLEtBQUssR0FBRyxDQUFDLENBQUM7QUFDbkQsQ0FBQztBQUVELElBQUksWUFBb0IsQ0FBQztBQUN6QixJQUFJLGFBQXFCLENBQUM7QUFDMUIsSUFBSSxtQkFBMkIsQ0FBQztBQUNoQyxTQUFTLGlCQUFpQixDQUFFLEdBQTZCO0lBQ3JELDZFQUE2RTtJQUM3RSxNQUFNLEtBQUssR0FBRyxJQUFJLEtBQUssQ0FBQyxFQUFFLENBQUM7U0FDdEIsSUFBSSxDQUFDLENBQUMsQ0FBQztTQUNQLEdBQUcsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLEVBQUUsRUFBRSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxDQUFDO1FBQzNDLHFFQUFxRTtTQUNwRSxNQUFNLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO0lBQ25CLElBQUksS0FBSyxHQUFHLENBQUMsQ0FBQztJQUNkLElBQUksTUFBTSxHQUFHLENBQUMsQ0FBQztJQUNmLElBQUksUUFBUSxHQUFHLENBQUMsQ0FBQztJQUNqQixJQUFJLE9BQW9CLENBQUM7SUFDekIsS0FBSyxNQUFNLElBQUksSUFBSSxLQUFLLEVBQUU7UUFDdEIsT0FBTyxHQUFHLEdBQUcsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDaEMsSUFBSSxPQUFPLENBQUMsS0FBSyxHQUFHLEtBQUssRUFBRTtZQUN2QixLQUFLLEdBQUcsT0FBTyxDQUFDLEtBQUssQ0FBQztTQUN6QjtRQUNELElBQUksR0FBRyxHQUFHLElBQUksQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLHVCQUF1QixDQUFDLENBQUM7UUFDcEQsSUFBSSxHQUFHLEdBQUcsUUFBUSxFQUFFO1lBQ2hCLFFBQVEsR0FBRyxHQUFHLENBQUM7U0FDbEI7UUFDRCxHQUFHLElBQUksSUFBSSxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsd0JBQXdCLENBQUMsQ0FBQztRQUNsRCxJQUFJLEdBQUcsR0FBRyxNQUFNLEVBQUU7WUFDZCxNQUFNLEdBQUcsR0FBRyxDQUFDO1NBQ2hCO0tBQ0o7SUFDRCxZQUFZLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUNoQyxhQUFhLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsR0FBRyxXQUFXLENBQUMsU0FBUyxDQUFDO0lBQzFELG1CQUFtQixHQUFHLFFBQVEsQ0FBQztJQUMvQixrQkFBa0IsR0FBRyxLQUFLLENBQUM7QUFDL0IsQ0FBQztBQUNNLFNBQVMsWUFBWSxDQUFFLEtBQVk7SUFDdEMsSUFBSSxrQkFBa0I7V0FDZixZQUFZLEtBQUssU0FBUztXQUMxQixhQUFhLEtBQUssU0FBUztXQUMzQixtQkFBbUIsS0FBSyxTQUFTLEVBQUU7UUFDdEMsaUJBQWlCLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO0tBQ3BDO0lBQ0QsT0FBTyxDQUFDLFlBQVksRUFBRSxhQUFhLEVBQUUsbUJBQW1CLENBQUMsQ0FBQztBQUM5RCxDQUFDO0FBQ0QsU0FBUyxZQUFZLENBQUMsS0FBWSxFQUFFLElBQVk7SUFDNUMsTUFBTSxTQUFTLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ3pDLE9BQU8sSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQyxLQUFLLEdBQUcsU0FBUyxDQUFDLEdBQUcsU0FBUyxDQUFDO0FBQ3BGLENBQUM7QUFFTSxTQUFTLGNBQWM7SUFDMUIsTUFBTSxLQUFLLEdBQUcsV0FBVyxDQUFDO0lBQzFCLE1BQU0sQ0FBQyxTQUFTLEVBQUUsVUFBVSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3BELE9BQU8sQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsS0FBSyxHQUFHLFNBQVMsQ0FBQyxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxNQUFNLEdBQUcsVUFBVSxDQUFDLENBQUMsQ0FBQztBQUN0RyxDQUFDO0FBRU0sU0FBUyx3QkFBd0IsQ0FBRSxLQUFjLEVBQUUsTUFBZTtJQUNyRSxNQUFNLENBQUMsU0FBUyxFQUFFLFVBQVUsQ0FBQyxHQUFHLFlBQVksQ0FBQyxXQUFXLENBQUMsQ0FBQztJQUMxRCxPQUFPLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLEdBQUcsU0FBUyxDQUFDLEVBQUUsSUFBSSxDQUFDLEtBQUssQ0FBQyxNQUFNLEdBQUcsVUFBVSxDQUFDLENBQUMsQ0FBQztBQUM1RSxDQUFDO0FBRU0sU0FBUyxrQkFBa0IsQ0FBRSxDQUFTLEVBQUUsQ0FBUztJQUNwRCxNQUFNLENBQUMsU0FBUyxFQUFFLFVBQVUsQ0FBQyxHQUFHLFlBQVksQ0FBQyxXQUFXLENBQUMsQ0FBQztJQUMxRCxPQUFPLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixHQUFHLFNBQVMsQ0FBQyxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxnQkFBZ0IsR0FBRyxVQUFVLENBQUMsQ0FBQyxDQUFDO0FBQ3ZILENBQUM7QUFFRCxTQUFTLFlBQVksQ0FBRSxFQUFVLEVBQUUsRUFBVTtJQUN6QyxPQUFPO1FBQ0gsVUFBVSxFQUFFLEVBQUU7UUFDZCxJQUFJLEVBQUUsU0FBUztRQUNmLEtBQUssRUFBRSxTQUFTO1FBQ2hCLFVBQVUsRUFBRSxFQUFFO1FBQ2QsTUFBTSxFQUFFLFNBQVM7UUFDakIsT0FBTyxFQUFFLFNBQVM7UUFDbEIsT0FBTyxFQUFFLFNBQVM7UUFDbEIsYUFBYSxFQUFFLFNBQVM7UUFDeEIsU0FBUyxFQUFFLFNBQVM7UUFDcEIsU0FBUyxFQUFFLFNBQVM7S0FDdkIsQ0FBQztBQUNOLENBQUM7QUFFTSxTQUFTLFNBQVM7SUFDckIsT0FBTyxDQUFDLENBQUM7QUFDYixDQUFDO0FBRUQsU0FBUyxrQkFBa0IsQ0FBRSxLQUFZO0lBQ3JDLE1BQU0sQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzVDLE9BQU87UUFDSCxDQUFDLEVBQUUsS0FBSyxHQUFHLENBQUM7UUFDWixDQUFDLEVBQUUsQ0FBQyxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsTUFBTSxHQUFHLE1BQU0sR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDM0MsS0FBSyxFQUFFLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLLEdBQUcsQ0FBQyxLQUFLLEdBQUcsQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDO1FBQzdDLE1BQU0sRUFBRSxNQUFNLEdBQUcsQ0FBQztLQUNyQixDQUFDO0FBQ04sQ0FBQztBQUVELFNBQVMsc0JBQXNCLENBQUUsS0FBWTtJQUN6QyxNQUFNLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxHQUFHLFlBQVksQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUM1QyxNQUFNLElBQUksR0FBRyxrQkFBa0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUN2QyxNQUFNLEdBQUcsR0FBRyxTQUFTLEVBQUUsQ0FBQztJQUN4QixNQUFNLFVBQVUsR0FBRyxXQUFXLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQzlDLFVBQVUsQ0FBQyxHQUFHLEVBQ0gsVUFBVSxDQUFDLElBQUksRUFDZixJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUMsR0FBRyxDQUFDLEVBQUUsVUFBVSxDQUFDLE1BQU0sQ0FBQyxFQUNoRSxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLEVBQUUsVUFBVSxDQUFDLEtBQUssQ0FBQyxFQUM3RCxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUMsR0FBRyxLQUFLLENBQUMsRUFBRSxDQUFDLENBQUMsRUFDdkMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLEdBQUcsTUFBTSxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUN6RCxDQUFDO0FBRUQsU0FBUyxtQkFBbUIsQ0FBRSxLQUFZO0lBQ3RDLE1BQU0sR0FBRyxHQUFHLFNBQVMsRUFBRSxDQUFDO0lBQ3hCLE1BQU0sTUFBTSxHQUFHLFdBQVcsQ0FBQyxpQkFBaUIsQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUNsRCxNQUFNLFVBQVUsR0FBRyxXQUFXLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQzlDLE1BQU0sQ0FBQyxTQUFTLEVBQUUsVUFBVSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3BELFVBQVUsQ0FBQyxHQUFHLEVBQ0gsVUFBVSxDQUFDLElBQUksRUFDZixJQUFJLENBQUMsR0FBRyxDQUNKLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDLEdBQUcsVUFBVSxDQUFDLEdBQUcsQ0FBQyxFQUM1RCxVQUFVLENBQUMsTUFBTSxDQUFDLEVBQ3RCLElBQUksQ0FBQyxHQUFHLENBQ0osSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsS0FBSyxHQUFHLE1BQU0sQ0FBQyxDQUFDLENBQUMsR0FBRyxTQUFTLENBQUMsR0FBRyxDQUFDLEVBQzFELFVBQVUsQ0FBQyxLQUFLLENBQUMsRUFDckIsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLEdBQUcsU0FBUyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQyxFQUNqRCxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUMsR0FBRyxVQUFVLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUMvRCxNQUFNLENBQUMsQ0FBQyxHQUFHLEtBQUssQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDO0lBQzlCLE1BQU0sQ0FBQyxDQUFDLEdBQUcsS0FBSyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUM7QUFDbkMsQ0FBQztBQUVELE1BQU0sUUFBUSxHQUErQztJQUN6RCxVQUFVLEVBQUUsR0FBRyxFQUFFO1FBQ2IsVUFBVSxDQUFDLFNBQVMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxFQUFFLENBQUMsRUFBRSxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUMsRUFBRSxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzNGLFdBQVcsQ0FBQyxNQUFNLENBQUMsT0FBTyxHQUFHLEtBQUssQ0FBQztJQUN2QyxDQUFDO0lBQ0QsU0FBUyxFQUFFLEdBQUcsRUFBRSxHQUFHLFdBQVcsQ0FBQyxNQUFNLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDdkQsWUFBWSxFQUFFLEdBQUcsRUFBRTtRQUNmLFdBQVcsQ0FBQyxXQUFXLENBQUMsTUFBTSxHQUFHLFFBQVEsQ0FBQztRQUMxQyxzQkFBc0IsQ0FBQyxXQUFXLENBQUMsQ0FBQztJQUN4QyxDQUFDO0lBQ0QsV0FBVyxFQUFFLENBQUMsR0FBVyxFQUFFLEtBQWEsRUFBRSxFQUFFO1FBQ3hDLFdBQVcsQ0FBQyxXQUFXLENBQUMsR0FBRyxHQUFHLEdBQUcsQ0FBQztRQUNsQyxXQUFXLENBQUMsV0FBVyxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUM7SUFDMUMsQ0FBQztJQUNELFlBQVksRUFDUixDQUFDLE9BQXdCLEVBQ3hCLEdBQVcsRUFDWCxNQUFjLEVBQ2QsTUFBYyxFQUNkLE1BQWMsRUFDZCxLQUFhLEVBQUUsRUFBRTtRQUNiLFdBQVcsQ0FBQyxXQUFXLENBQUMsTUFBTSxHQUFHLE9BQU8sQ0FBQztRQUN6QyxXQUFXLENBQUMsV0FBVyxDQUFDLE9BQU8sR0FBRyxPQUFPLENBQUM7UUFDMUMsV0FBVyxDQUFDLFdBQVcsQ0FBQyxHQUFHLEdBQUcsR0FBRyxDQUFDO1FBQ2xDLFdBQVcsQ0FBQyxXQUFXLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQztRQUN4QyxXQUFXLENBQUMsV0FBVyxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUM7UUFDeEMsV0FBVyxDQUFDLFdBQVcsQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3hDLFdBQVcsQ0FBQyxXQUFXLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztJQUMxQyxDQUFDO0lBQ04sa0JBQWtCLEVBQUUsQ0FBQyxFQUFVLEVBQUUsRUFBVSxFQUFFLEVBQVUsRUFBRSxFQUFFO1FBQ3ZELElBQUksRUFBRSxLQUFLLFNBQVMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDLEVBQUU7WUFDL0IsV0FBVyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLEdBQUcsc0RBQVEsQ0FBQyxFQUFFLENBQUMsQ0FBQztTQUN2RDtRQUNELElBQUksRUFBRSxLQUFLLFNBQVMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDLEVBQUU7WUFDL0IsV0FBVyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLEdBQUcsc0RBQVEsQ0FBQyxFQUFFLENBQUMsQ0FBQztTQUN2RDtRQUNELElBQUksRUFBRSxLQUFLLFNBQVMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDLEVBQUU7WUFDL0IsV0FBVyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxPQUFPLEdBQUcsc0RBQVEsQ0FBQyxFQUFFLENBQUMsQ0FBQztTQUNwRDtRQUNELE1BQU0sV0FBVyxHQUFHLFdBQVcsQ0FBQyxTQUFTLENBQUMsU0FBUyxFQUFFLENBQUMsQ0FBQztRQUN2RCxJQUFJLFdBQVcsS0FBSyxTQUFTLEVBQUU7WUFDM0IsVUFBVSxDQUFDLFNBQVMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsV0FBVyxDQUFDLE1BQU0sRUFBRSxXQUFXLENBQUMsS0FBSyxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQztTQUN6RjtRQUNELGNBQWMsRUFBRSxDQUFDO0lBQ3JCLENBQUM7SUFDRCxLQUFLLEVBQUUsR0FBRyxFQUFFO1FBQ1IsYUFBYSxFQUFFLENBQUM7SUFDcEIsQ0FBQztJQUNELFVBQVUsRUFBRSxDQUFDLEVBQVUsRUFBRSxFQUFFO1FBQ3ZCLDREQUE0RDtRQUM1RCxxRUFBcUU7UUFDckUsc0VBQXNFO1FBQ3RFLHVFQUF1RTtRQUN2RSx5QkFBeUI7UUFDekIsOEJBQThCO1FBQzlCLG1EQUFtRDtRQUNuRCxxRUFBcUU7UUFDckUsc0JBQXNCO1FBQ3RCLE1BQU0sUUFBUSxHQUFHLFdBQVcsQ0FBQyxjQUFjLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDaEQsTUFBTSxRQUFRLEdBQUcsV0FBVyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNoRCxNQUFNLElBQUksR0FBRyxXQUFXLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQ3ZDLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLENBQUMsTUFBTSxFQUFFLEVBQUUsQ0FBQyxFQUFFO1lBQ2xDLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLENBQUMsS0FBSyxFQUFFLEVBQUUsQ0FBQyxFQUFFO2dCQUNqQyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDO2dCQUNyQixRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO2FBQ3RCO1NBQ0o7UUFDRCxVQUFVLENBQUMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsS0FBSyxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQztJQUNuRSxDQUFDO0lBQ0QsZ0JBQWdCLEVBQUUsQ0FBQyxFQUFVLEVBQUUsR0FBVyxFQUFFLE1BQWMsRUFBRSxFQUFFO1FBQzFELE1BQU0sTUFBTSxHQUFHLFdBQVcsQ0FBQyxNQUFNLENBQUM7UUFDbEMsVUFBVSxDQUFDLFNBQVMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxFQUFFLENBQUMsRUFBRSxNQUFNLENBQUMsQ0FBQyxFQUFFLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuRSxNQUFNLENBQUMsV0FBVyxHQUFHLEVBQUUsQ0FBQztRQUN4QixNQUFNLENBQUMsQ0FBQyxHQUFHLE1BQU0sQ0FBQztRQUNsQixNQUFNLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQztRQUNmLE1BQU0sQ0FBQyxRQUFRLEdBQUcsV0FBVyxDQUFDLEdBQUcsRUFBRSxDQUFDO1FBQ3BDLE1BQU0sQ0FBQyxxQkFBcUIsR0FBRyxJQUFJLENBQUM7SUFDeEMsQ0FBQztJQUNELFNBQVMsRUFBRSxDQUFDLEVBQVUsRUFBRSxHQUFXLEVBQUUsR0FBVyxFQUFFLE9BQWUsRUFBRSxFQUFFO1FBQ2pFLE1BQU0sUUFBUSxHQUFHLFdBQVcsQ0FBQyxjQUFjLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDaEQsTUFBTSxVQUFVLEdBQUcsV0FBVyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNsRCxJQUFJLE9BQU8sR0FBRyxHQUFHLENBQUM7UUFDbEIsSUFBSSxJQUFJLEdBQUcsQ0FBQyxDQUFDO1FBQ2IsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLE9BQU8sQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7WUFDckMsTUFBTSxNQUFNLEdBQUcsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQzFCLE1BQU0sS0FBSyxHQUFHLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUN4QixJQUFJLE1BQU0sQ0FBQyxDQUFDLENBQUMsS0FBSyxTQUFTLEVBQUU7Z0JBQ3pCLElBQUksR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUM7YUFDcEI7WUFDRCxNQUFNLE1BQU0sR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDLEtBQUssU0FBUyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUV2RCxVQUFVLENBQUMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxFQUFFLE1BQU0sRUFBRSxPQUFPLEVBQUUsR0FBRyxDQUFDLENBQUM7WUFFekQsTUFBTSxLQUFLLEdBQUcsT0FBTyxHQUFHLE1BQU0sQ0FBQztZQUMvQixLQUFLLElBQUksQ0FBQyxHQUFHLE9BQU8sRUFBRSxDQUFDLEdBQUcsS0FBSyxFQUFFLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ3JDLFFBQVEsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsR0FBRyxLQUFLLENBQUM7Z0JBQ3pCLFVBQVUsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsR0FBRyxJQUFJLENBQUM7YUFDN0I7WUFDRCxPQUFPLEdBQUcsS0FBSyxDQUFDO1NBQ25CO0lBQ0wsQ0FBQztJQUNELFdBQVcsRUFBRSxDQUFDLEVBQVUsRUFBRSxLQUFhLEVBQUUsTUFBYyxFQUFFLEVBQUU7UUFDdkQsTUFBTSxLQUFLLEdBQUcsV0FBVyxDQUFDO1FBQzFCLE1BQU0sVUFBVSxHQUFHLEtBQUssQ0FBQyxjQUFjLENBQUMsRUFBRSxDQUFDLEtBQUssU0FBUyxDQUFDO1FBQzFELElBQUksVUFBVSxFQUFFO1lBQ1osS0FBSyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDOUIsS0FBSyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDbEMsS0FBSyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsR0FBRyxFQUFFLEtBQUssRUFBRSxDQUFDLEVBQUUsTUFBTSxFQUFFLENBQUMsRUFBRSxDQUFDO1lBQzlDLEtBQUssQ0FBQyxXQUFXLENBQUMsRUFBRSxDQUFDLEdBQUcsRUFBRSxDQUFDO1lBQzNCLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxFQUFFLENBQUMsR0FBRyxDQUFDLENBQUM7WUFDL0IsS0FBSyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDOUIsS0FBSyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDbEMsS0FBSyxDQUFDLGlCQUFpQixDQUFDLEVBQUUsQ0FBQyxHQUFHO2dCQUMxQixDQUFDLEVBQUUsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLO2dCQUNyQixDQUFDLEVBQUUsS0FBSyxDQUFDLE1BQU0sQ0FBQyxNQUFNO2FBQ3pCLENBQUM7U0FDTDtRQUVELE1BQU0sV0FBVyxHQUFHLFdBQVcsQ0FBQyxTQUFTLENBQUMsRUFBRSxDQUFDLENBQUM7UUFFOUMsVUFBVSxDQUFDLEVBQUUsRUFBRSxVQUFVLENBQUMsTUFBTSxFQUFFLE1BQU0sRUFBRSxLQUFLLEVBQUUsV0FBVyxDQUFDLEtBQUssRUFBRSxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUM7UUFFeEYsTUFBTSxVQUFVLEdBQUcsV0FBVyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNsRCxNQUFNLFFBQVEsR0FBRyxXQUFXLENBQUMsY0FBYyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQ2hELElBQUksS0FBSyxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxNQUFNLEVBQUU7WUFDNUIsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7Z0JBQ3RDLE1BQU0sR0FBRyxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDeEIsTUFBTSxLQUFLLEdBQUcsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDO2dCQUM1QixPQUFPLEdBQUcsQ0FBQyxNQUFNLEdBQUcsS0FBSyxFQUFFO29CQUN2QixHQUFHLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO29CQUNkLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7aUJBQ2pCO2FBQ0o7U0FDSjtRQUNELElBQUksTUFBTSxHQUFHLFFBQVEsQ0FBQyxNQUFNLEVBQUU7WUFDMUIsT0FBTyxRQUFRLENBQUMsTUFBTSxHQUFHLE1BQU0sRUFBRTtnQkFDN0IsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDLElBQUksS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7Z0JBQzVDLFVBQVUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxJQUFJLEtBQUssQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQy9DO1NBQ0o7UUFDRCxVQUFVLENBQUMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxFQUFFLEtBQUssRUFBRSxDQUFDLEVBQUUsV0FBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQ2pFLFdBQVcsQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO1FBQzFCLFdBQVcsQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO0lBQ2hDLENBQUM7SUFDRCxXQUFXLEVBQUUsQ0FBQyxFQUFVLEVBQ1YsR0FBVyxFQUNYLEdBQVcsRUFDWCxJQUFZLEVBQ1osS0FBYSxFQUNiLElBQVksRUFDWixLQUFhLEVBQUUsRUFBRTtRQUMzQixNQUFNLFVBQVUsR0FBRyxXQUFXLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQzdDLE1BQU0sUUFBUSxHQUFHLFdBQVcsQ0FBQyxjQUFjLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDaEQsTUFBTSxRQUFRLEdBQUcsV0FBVyxDQUFDLGNBQWMsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNoRCxJQUFJLElBQUksR0FBRyxDQUFDLEVBQUU7WUFDVixNQUFNLE1BQU0sR0FBRyxDQUFDLEdBQUcsR0FBRyxJQUFJLENBQUMsSUFBSSxVQUFVLENBQUMsTUFBTTtnQkFDNUMsQ0FBQyxDQUFDLFVBQVUsQ0FBQyxNQUFNLEdBQUcsSUFBSTtnQkFDMUIsQ0FBQyxDQUFDLEdBQUcsQ0FBQztZQUNWLEtBQUssSUFBSSxDQUFDLEdBQUcsR0FBRyxFQUFFLENBQUMsR0FBRyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7Z0JBQy9CLE1BQU0sUUFBUSxHQUFHLFFBQVEsQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7Z0JBQ3BDLE1BQU0sUUFBUSxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDN0IsTUFBTSxRQUFRLEdBQUcsUUFBUSxDQUFDLENBQUMsR0FBRyxJQUFJLENBQUMsQ0FBQztnQkFDcEMsTUFBTSxRQUFRLEdBQUcsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO2dCQUM3QixLQUFLLElBQUksQ0FBQyxHQUFHLElBQUksRUFBRSxDQUFDLEdBQUcsS0FBSyxFQUFFLEVBQUUsQ0FBQyxFQUFFO29CQUMvQixRQUFRLENBQUMsQ0FBQyxDQUFDLEdBQUcsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO29CQUMxQixRQUFRLENBQUMsQ0FBQyxDQUFDLEdBQUcsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO2lCQUM3QjthQUNKO1lBQ0QsVUFBVSxDQUFDLEVBQUUsRUFBRSxVQUFVLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxNQUFNLEVBQUUsVUFBVSxDQUFDLEtBQUssRUFBRSxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUM7U0FDOUU7YUFBTSxJQUFJLElBQUksR0FBRyxDQUFDLEVBQUU7WUFDakIsS0FBSyxJQUFJLENBQUMsR0FBRyxHQUFHLEdBQUcsQ0FBQyxFQUFFLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO2dCQUNwRCxNQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsQ0FBQyxHQUFHLElBQUksQ0FBQyxDQUFDO2dCQUNwQyxNQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQzdCLE1BQU0sUUFBUSxHQUFHLFFBQVEsQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7Z0JBQ3BDLE1BQU0sUUFBUSxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDN0IsS0FBSyxJQUFJLENBQUMsR0FBRyxJQUFJLEVBQUUsQ0FBQyxHQUFHLEtBQUssRUFBRSxFQUFFLENBQUMsRUFBRTtvQkFDL0IsUUFBUSxDQUFDLENBQUMsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztvQkFDMUIsUUFBUSxDQUFDLENBQUMsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztpQkFDN0I7YUFDSjtZQUNELFVBQVUsQ0FBQyxFQUFFLEVBQUUsVUFBVSxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsTUFBTSxFQUFFLFVBQVUsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDO1NBQzlFO0lBQ0wsQ0FBQztJQUNELGNBQWMsRUFBRSxDQUFDLEVBQVUsRUFBRSxPQUFZLEVBQUUsRUFBRTtRQUN6QyxNQUFNLFVBQVUsR0FBRyxXQUFXLENBQUMsVUFBVSxDQUFDO1FBQzFDLElBQUksVUFBVSxDQUFDLEVBQUUsQ0FBQyxLQUFLLFNBQVMsRUFBRTtZQUM5QixVQUFVLENBQUMsRUFBRSxDQUFDLEdBQUcsWUFBWSxDQUFDLFNBQVMsRUFBRSxTQUFTLENBQUMsQ0FBQztTQUN2RDtRQUNELFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxVQUFVLEdBQUcsc0RBQVEsQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDekQsVUFBVSxDQUFDLEVBQUUsQ0FBQyxDQUFDLFVBQVUsR0FBRyxzREFBUSxDQUFDLE9BQU8sQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUN6RCxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUMsSUFBSSxHQUFHLE9BQU8sQ0FBQyxJQUFJLENBQUM7UUFDbkMsVUFBVSxDQUFDLEVBQUUsQ0FBQyxDQUFDLEtBQUssR0FBRyxPQUFPLENBQUMsS0FBSyxDQUFDO1FBQ3JDLFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxNQUFNLEdBQUcsT0FBTyxDQUFDLE1BQU0sQ0FBQztRQUN2QyxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUMsT0FBTyxHQUFHLHNEQUFRLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ25ELFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxhQUFhLEdBQUcsT0FBTyxDQUFDLGFBQWEsQ0FBQztRQUNyRCxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUMsU0FBUyxHQUFHLE9BQU8sQ0FBQyxTQUFTLENBQUM7UUFDN0MsVUFBVSxDQUFDLEVBQUUsQ0FBQyxDQUFDLFNBQVMsR0FBRyxPQUFPLENBQUMsU0FBUyxDQUFDO1FBQzdDLFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxPQUFPLEdBQUcsT0FBTyxDQUFDLE9BQU8sQ0FBQztJQUM3QyxDQUFDO0lBQ0QsV0FBVyxFQUFFLENBQUMsQ0FBUyxFQUFFLE9BQWUsRUFBRSxFQUFFO1FBQ3hDLFdBQVcsQ0FBQyxJQUFJLENBQUMsT0FBTyxHQUFHLE9BQU8sQ0FBQztRQUNuQyxNQUFNLENBQUMsSUFBSSxDQUFDLFlBQVksRUFBRSxXQUFXLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNuRSxJQUFJLFdBQVcsQ0FBQyxJQUFJLENBQUMsWUFBWSxFQUFFO1lBQy9CLE1BQU0sTUFBTSxHQUFHLFdBQVcsQ0FBQyxNQUFNLENBQUM7WUFDbEMsVUFBVSxDQUFDLFNBQVMsRUFBRSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxFQUFFLENBQUMsRUFBRSxNQUFNLENBQUMsQ0FBQyxFQUFFLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUNuRSxhQUFhLEVBQUUsQ0FBQztTQUNuQjtJQUNMLENBQUM7SUFDRCxhQUFhLEVBQUUsQ0FBQyxrQkFBMkIsRUFBRSxRQUFZLEVBQUUsRUFBRTtRQUN6RCx1Q0FBdUM7UUFDdkMsTUFBTSxJQUFJLEdBQUcsV0FBVyxDQUFDLElBQUksQ0FBQztRQUM5QixJQUFJLENBQUMsWUFBWSxHQUFHLGtCQUFrQixDQUFDO1FBQ3ZDLElBQUksQ0FBQyxRQUFRLEdBQUcsUUFBUSxDQUFDO0lBQzdCLENBQUM7SUFDRCxTQUFTLEVBQUUsR0FBRyxFQUFFO1FBQ1osbUJBQW1CLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDakMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDO0lBQ3BDLENBQUM7SUFDRCxnQkFBZ0IsRUFBRSxDQUFDLE9BQWMsRUFBRSxFQUFFO1FBQ2pDLG1CQUFtQixDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ2pDLFdBQVcsQ0FBQyxRQUFRLEdBQUcsT0FBTyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDckQsQ0FBQztJQUNELFNBQVMsRUFBRSxDQUFDLE9BQWdCLEVBQUUsRUFBRTtRQUM1QixtQkFBbUIsQ0FBQyxXQUFXLENBQUMsQ0FBQztRQUNqQyxXQUFXLENBQUMsS0FBSyxHQUFHLE9BQU8sQ0FBQztJQUNoQyxDQUFDO0lBQ0QsUUFBUSxFQUFFLENBQUMsQ0FBUyxFQUFFLE9BQWdCLEVBQUUsV0FBb0IsRUFBRSxFQUFFO1FBQzVELG1CQUFtQixDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ2pDLElBQUksV0FBVyxFQUFFO1lBQ2IsV0FBVyxDQUFDLFFBQVEsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDO1NBQ25DO1FBQ0QsV0FBVyxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDbkMsV0FBVyxDQUFDLFdBQVcsR0FBRyxXQUFXLENBQUMsR0FBRyxFQUFFLENBQUM7UUFDNUMsV0FBVyxDQUFDLE1BQU0sQ0FBQyxxQkFBcUIsR0FBRyxLQUFLLENBQUM7SUFDckQsQ0FBQztJQUNELFdBQVcsRUFBRSxDQUFDLE9BQWdCLEVBQUUsRUFBRTtRQUM5QixtQkFBbUIsQ0FBQyxXQUFXLENBQUMsQ0FBQztRQUNqQyxXQUFXLENBQUMsT0FBTyxHQUFHLE9BQU8sQ0FBQztJQUNsQyxDQUFDO0lBQ0QsWUFBWSxFQUFFLENBQUMsT0FBZ0IsRUFBRSxFQUFFO1FBQy9CLG1CQUFtQixDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ2pDLFdBQVcsQ0FBQyxRQUFRLEdBQUcsT0FBTyxDQUFDO0lBQ25DLENBQUM7SUFDRCxVQUFVLEVBQUUsQ0FBQyxNQUFjLEVBQUUsS0FBVSxFQUFFLEVBQUU7UUFDdkMsTUFBTSxLQUFLLEdBQUcsV0FBVyxDQUFDO1FBQzFCLFFBQVEsTUFBTSxFQUFFO1lBQ1osS0FBSyxTQUFTO2dCQUFFO29CQUNaLElBQUksYUFBYSxDQUFDO29CQUNsQixJQUFJLEtBQUssS0FBSyxFQUFFLEVBQUU7d0JBQ2QsYUFBYSxHQUFHLGlCQUFpQixDQUFDO3FCQUNyQzt5QkFBTTt3QkFDSCxNQUFNLE9BQU8sR0FBRywwREFBWSxDQUFDLEtBQUssRUFBRTs0QkFDaEMsYUFBYSxFQUFFLGlCQUFpQjs0QkFDaEMsV0FBVyxFQUFFLGVBQWU7eUJBQy9CLENBQUMsQ0FBQzt3QkFDSCxhQUFhLEdBQUksY0FBYyxDQUFDLE9BQU8sQ0FBQyxXQUFXLENBQUMsRUFBRSxPQUFPLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQztxQkFDakY7b0JBQ0QsSUFBSSxhQUFhLEtBQUssVUFBVSxFQUFFO3dCQUM5QixNQUFNO3FCQUNUO29CQUNELGFBQWEsQ0FBQyxLQUFLLEVBQUUsYUFBYSxDQUFDLENBQUM7b0JBQ3BDLE1BQU0sQ0FBQyxTQUFTLEVBQUUsVUFBVSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO29CQUNwRCxNQUFNLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRTt3QkFDbEIsSUFBSSxFQUFFLFNBQVMsRUFBRTt3QkFDakIsS0FBSyxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLLEdBQUcsU0FBUyxDQUFDO3dCQUNqRCxNQUFNLEVBQUUsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxVQUFVLENBQUM7cUJBQ3ZELENBQUMsQ0FBQztpQkFDTjtnQkFDRCxNQUFNO1lBQ04sS0FBSyxXQUFXO2dCQUFFO29CQUNkLElBQUksS0FBSyxDQUFDLFNBQVMsS0FBSyxLQUFLLEVBQUU7d0JBQzNCLE1BQU07cUJBQ1Q7b0JBQ0QsS0FBSyxDQUFDLFNBQVMsR0FBRyxLQUFLLENBQUM7b0JBQ3hCLGlCQUFpQixFQUFFLENBQUM7b0JBQ3BCLE1BQU0sQ0FBQyxTQUFTLEVBQUUsVUFBVSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO29CQUNwRCxNQUFNLEdBQUcsR0FBRyxTQUFTLEVBQUUsQ0FBQztvQkFDeEIsTUFBTSxXQUFXLEdBQUcsS0FBSyxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsQ0FBQztvQkFDekMsSUFBSSxXQUFXLEtBQUssU0FBUyxFQUFFO3dCQUMzQixVQUFVLENBQUMsU0FBUyxFQUFFLEVBQUUsVUFBVSxDQUFDLElBQUksRUFBRSxXQUFXLENBQUMsTUFBTSxFQUFFLFdBQVcsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDO3FCQUN6RjtvQkFDRCxNQUFNLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRTt3QkFDbEIsSUFBSSxFQUFFLEdBQUc7d0JBQ1QsS0FBSyxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLLEdBQUcsU0FBUyxDQUFDO3dCQUNqRCxNQUFNLEVBQUUsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxVQUFVLENBQUM7cUJBQ3ZELENBQUMsQ0FBQztpQkFDTjtnQkFDRCxNQUFNO1NBQ1Q7SUFDTCxDQUFDO0NBQ0osQ0FBQztBQUVGLDhFQUE4RTtBQUM5RSxxRUFBcUU7QUFDckUsSUFBSSxjQUFjLEdBQUcsS0FBSyxDQUFDO0FBQzNCLFNBQVMsYUFBYTtJQUNsQixJQUFJLENBQUMsY0FBYyxFQUFFO1FBQ2pCLGNBQWMsR0FBRyxJQUFJLENBQUM7UUFDdEIsTUFBTSxDQUFDLHFCQUFxQixDQUFDLEtBQUssQ0FBQyxDQUFDO0tBQ3ZDO0FBQ0wsQ0FBQztBQUVELFNBQVMsYUFBYSxDQUFDLEtBQVk7SUFDL0IsTUFBTSxHQUFHLEdBQUcsS0FBSyxDQUFDLE9BQU8sQ0FBQztJQUMxQixNQUFNLEdBQUcsR0FBRyxTQUFTLEVBQUUsQ0FBQztJQUN4QixNQUFNLGdCQUFnQixHQUFHLEtBQUssQ0FBQyxpQkFBaUIsQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUN0RCxNQUFNLENBQUMsRUFBRSxVQUFVLEVBQUUsUUFBUSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3JELE1BQU0sUUFBUSxHQUFHLEtBQUssQ0FBQyxRQUFRLENBQUM7SUFDaEMsMEVBQTBFO0lBQzFFLHlFQUF5RTtJQUN6RSxxRUFBcUU7SUFDckUscUVBQXFFO0lBQ3JFLHVFQUF1RTtJQUN2RSxvQ0FBb0M7SUFDcEMsU0FBUyxjQUFjLENBQUUsSUFBYTtRQUNsQyxJQUFJLFNBQVMsR0FBRyxLQUFLLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQztRQUNuQyxJQUFJLFNBQVMsR0FBRyxLQUFLLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxVQUFVLEdBQUcsUUFBUSxDQUFDO1FBQzVELEtBQUssSUFBSSxDQUFDLEdBQUcsUUFBUSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsRUFBRSxFQUFFLENBQUMsRUFBRTtZQUMzQyxNQUFNLE9BQU8sR0FBRyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDNUIsS0FBSyxJQUFJLENBQUMsR0FBRyxPQUFPLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO2dCQUMxQyxNQUFNLEtBQUssR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2dCQUN4QyxLQUFLLElBQUksQ0FBQyxHQUFHLEtBQUssQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLEVBQUUsRUFBRSxDQUFDLEVBQUU7b0JBQ3hDLE1BQU0sSUFBSSxHQUFHLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztvQkFDdEIsTUFBTSxhQUFhLEdBQUcsWUFBWSxDQUFDLEtBQUssRUFBRSxJQUFJLENBQUMsQ0FBQztvQkFDaEQsSUFBSSxTQUFTLEdBQUcsYUFBYSxHQUFHLENBQUMsRUFBRTt3QkFDL0IsSUFBSSxTQUFTLEdBQUcsVUFBVSxHQUFHLENBQUMsRUFBRTs0QkFDNUIsT0FBTzt5QkFDVjt3QkFDRCxTQUFTLEdBQUcsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUM7d0JBQy9CLFNBQVMsR0FBRyxTQUFTLEdBQUcsVUFBVSxDQUFDO3FCQUN0QztvQkFDRCxTQUFTLEdBQUcsU0FBUyxHQUFHLGFBQWEsQ0FBQztvQkFDdEMsSUFBSSxJQUFJLEVBQUU7d0JBQ04sR0FBRyxDQUFDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsU0FBUyxFQUFFLFNBQVMsQ0FBQyxDQUFDO3FCQUM1QztvQkFDRCxJQUFJLFNBQVMsR0FBRyxnQkFBZ0IsQ0FBQyxDQUFDLEVBQUU7d0JBQ2hDLGdCQUFnQixDQUFDLENBQUMsR0FBRyxTQUFTLENBQUM7cUJBQ2xDO29CQUNELElBQUksU0FBUyxHQUFHLGdCQUFnQixDQUFDLENBQUMsRUFBRTt3QkFDaEMsZ0JBQWdCLENBQUMsQ0FBQyxHQUFHLFNBQVMsR0FBRyxRQUFRLENBQUM7cUJBQzdDO2lCQUNKO2FBQ0o7WUFDRCxTQUFTLEdBQUcsS0FBSyxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUM7WUFDL0IsU0FBUyxHQUFHLFNBQVMsR0FBRyxVQUFVLENBQUM7U0FDdEM7SUFDTCxDQUFDO0lBQ0QsY0FBYyxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3RCLEdBQUcsQ0FBQyxTQUFTLEdBQUcsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLENBQUM7SUFDL0MsR0FBRyxDQUFDLFFBQVEsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxFQUNsQixnQkFBZ0IsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxFQUN0QixLQUFLLENBQUMsTUFBTSxDQUFDLEtBQUssR0FBRyxnQkFBZ0IsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxFQUMzQyxLQUFLLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxnQkFBZ0IsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFFL0QsR0FBRyxDQUFDLFNBQVMsR0FBRyxLQUFLLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLFVBQVUsQ0FBQztJQUMvQyxHQUFHLENBQUMsUUFBUSxDQUFDLGdCQUFnQixDQUFDLENBQUMsR0FBRyxDQUFDLEVBQ2xCLGdCQUFnQixDQUFDLENBQUMsR0FBRyxDQUFDLEVBQ3RCLEtBQUssQ0FBQyxNQUFNLENBQUMsS0FBSyxHQUFHLGdCQUFnQixDQUFDLENBQUMsR0FBRyxDQUFDLEVBQzNDLEtBQUssQ0FBQyxNQUFNLENBQUMsTUFBTSxHQUFHLGdCQUFnQixDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQztJQUMvRCxHQUFHLENBQUMsU0FBUyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDO0lBQy9DLGNBQWMsQ0FBQyxJQUFJLENBQUMsQ0FBQztBQUN6QixDQUFDO0FBRUQsU0FBUyxzQkFBc0IsQ0FBQyxLQUFZO0lBQ3hDLE1BQU0sR0FBRyxHQUFHLEtBQUssQ0FBQyxPQUFPLENBQUM7SUFDMUIsTUFBTSxDQUFDLFNBQVMsRUFBRSxVQUFVLEVBQUUsUUFBUSxDQUFDLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzlELE1BQU0sV0FBVyxHQUFHLEtBQUssQ0FBQyxXQUFXLENBQUM7SUFDdEMsTUFBTSxJQUFJLEdBQUcsa0JBQWtCLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDdkMsa0JBQWtCO0lBQ2xCLEdBQUcsQ0FBQyxTQUFTLEdBQUcsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLENBQUM7SUFDL0MsR0FBRyxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQyxFQUNGLElBQUksQ0FBQyxDQUFDLEVBQ04sSUFBSSxDQUFDLEtBQUssRUFDVixJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7SUFFOUIsa0JBQWtCO0lBQ2xCLElBQUksQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ1osSUFBSSxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDWixJQUFJLENBQUMsS0FBSyxJQUFJLENBQUMsQ0FBQztJQUNoQixJQUFJLENBQUMsTUFBTSxJQUFJLENBQUMsQ0FBQztJQUNqQixHQUFHLENBQUMsU0FBUyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDO0lBQy9DLEdBQUcsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLENBQUMsRUFDRixJQUFJLENBQUMsQ0FBQyxFQUNOLElBQUksQ0FBQyxLQUFLLEVBQ1YsSUFBSSxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBRTlCLDZCQUE2QjtJQUM3QixJQUFJLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNaLElBQUksQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ1osSUFBSSxDQUFDLEtBQUssSUFBSSxDQUFDLENBQUM7SUFDaEIsSUFBSSxDQUFDLE1BQU0sSUFBSSxDQUFDLENBQUM7SUFFakIsc0NBQXNDO0lBQ3RDLElBQUksQ0FBQyxHQUFHLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDZixNQUFNLENBQUMsR0FBRyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBRWpCLGtCQUFrQjtJQUNsQixHQUFHLENBQUMsU0FBUyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDO0lBQy9DLEdBQUcsQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxDQUFDO0lBQ2xELENBQUMsSUFBSSxTQUFTLENBQUM7SUFDZixJQUFJLENBQUMsS0FBSyxJQUFJLFNBQVMsQ0FBQztJQUV4QixNQUFNLE9BQU8sR0FBRyxJQUFJLFdBQVcsRUFBRSxDQUFDO0lBQ2xDLDZEQUE2RDtJQUM3RCxNQUFNLEdBQUcsR0FBRyxXQUFXLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQVMsRUFBRSxPQUFzQixFQUFFLEVBQUUsQ0FBQyxDQUFDLEdBQUcsT0FBTyxDQUFDLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxDQUFDO0lBQ2xHLGdFQUFnRTtJQUNoRSxxRUFBcUU7SUFDckUsc0VBQXNFO0lBQ3RFLCtDQUErQztJQUMvQyxNQUFNLFVBQVUsR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQ25DLHNFQUFzRTtJQUN0RSxrQkFBa0I7SUFDbEIsSUFBSSxTQUFTLEdBQUcsQ0FBQyxDQUFDO0lBQ2xCLG9FQUFvRTtJQUNwRSx1RUFBdUU7SUFDdkUsa0VBQWtFO0lBQ2xFLDhCQUE4QjtJQUM5QixJQUFJLFFBQVEsR0FBRyxDQUFDLENBQUM7SUFDakIsc0VBQXNFO0lBQ3RFLFNBQVM7SUFDVCxJQUFJLE9BQU8sR0FBRyxDQUFDLENBQUM7SUFDaEIsc0VBQXNFO0lBQ3RFLHFFQUFxRTtJQUNyRSxzQkFBc0I7SUFDdEIsSUFBSSxVQUFVLEdBQUcsQ0FBQyxDQUFDO0lBQ25CLHFFQUFxRTtJQUNyRSxzRUFBc0U7SUFDdEUsd0NBQXdDO0lBQ3hDLElBQUksUUFBUSxHQUFHLENBQUMsQ0FBQztJQUNqQixrRUFBa0U7SUFDbEUsb0VBQW9FO0lBQ3BFLCtCQUErQjtJQUMvQixJQUFJLFVBQVUsR0FBRyxDQUFDLENBQUM7SUFDbkIscUVBQXFFO0lBQ3JFLGdCQUFnQjtJQUNoQixJQUFJLGVBQWUsR0FBRyxXQUFXLENBQUMsR0FBRyxLQUFLLENBQUMsQ0FBQztJQUM1QyxnQ0FBZ0M7SUFDaEMsa0VBQWtFO0lBQ2xFLHNFQUFzRTtJQUN0RSxxRUFBcUU7SUFDckUsa0NBQWtDO0lBQ2xDLHNFQUFzRTtJQUN0RSw0REFBNEQ7SUFDNUQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFVBQVUsQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7UUFDeEMsUUFBUSxHQUFHLENBQUMsQ0FBQztRQUNiLE1BQU0sSUFBSSxHQUFHLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUUzQixNQUFNLE1BQU0sR0FBRyxZQUFZLENBQUMsS0FBSyxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3pDLFNBQVMsSUFBSSxNQUFNLENBQUM7UUFFcEIsVUFBVSxJQUFJLE1BQU0sQ0FBQztRQUNyQixJQUFJLFVBQVUsR0FBRyxJQUFJLENBQUMsS0FBSyxFQUFFO1lBQ3pCLElBQUksZUFBZSxFQUFFO2dCQUNqQixNQUFNO2FBQ1Q7WUFDRCxHQUFHO2dCQUNDLE1BQU0sV0FBVyxHQUFHLFVBQVUsQ0FBQyxVQUFVLENBQUMsQ0FBQztnQkFDM0MsTUFBTSxZQUFZLEdBQUcsWUFBWSxDQUFDLEtBQUssRUFBRSxXQUFXLENBQUMsQ0FBQztnQkFDdEQsU0FBUyxJQUFJLFlBQVksQ0FBQztnQkFDMUIsVUFBVSxJQUFJLFlBQVksQ0FBQztnQkFDM0IsVUFBVSxJQUFJLENBQUMsQ0FBQzthQUNuQixRQUFRLFVBQVUsR0FBRyxJQUFJLENBQUMsS0FBSyxFQUFFO1NBQ3JDO1FBRUQsUUFBUSxJQUFJLE9BQU8sQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUMsTUFBTSxDQUFDO1FBQ3hDLElBQUksUUFBUSxLQUFLLFdBQVcsQ0FBQyxHQUFHLEVBQUU7WUFDOUIsT0FBTyxHQUFHLFNBQVMsQ0FBQztZQUNwQixlQUFlLEdBQUcsSUFBSSxDQUFDO1NBQzFCO0tBQ0o7SUFDRCxJQUFJLFVBQVUsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO1FBQ3ZCLFNBQVMsR0FBRyxDQUFDLENBQUM7UUFDZCxLQUFLLElBQUksQ0FBQyxHQUFHLFVBQVUsRUFBRSxDQUFDLElBQUksUUFBUSxFQUFFLEVBQUUsQ0FBQyxFQUFFO1lBQ3pDLE1BQU0sSUFBSSxHQUFHLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUMzQixHQUFHLENBQUMsUUFBUSxDQUFDLElBQUksRUFBRSxDQUFDLEdBQUcsU0FBUyxFQUFFLENBQUMsR0FBRyxRQUFRLENBQUMsQ0FBQztZQUNoRCxTQUFTLElBQUksWUFBWSxDQUFDLEtBQUssRUFBRSxJQUFJLENBQUMsQ0FBQztTQUMxQztLQUNKO0lBQ0QsR0FBRyxDQUFDLFFBQVEsQ0FBQyxDQUFDLEdBQUcsT0FBTyxFQUFFLENBQUMsRUFBRSxDQUFDLEVBQUUsVUFBVSxDQUFDLENBQUM7QUFDaEQsQ0FBQztBQUVELFNBQVMsS0FBSyxDQUFFLENBQXNCO0lBQ2xDLGNBQWMsR0FBRyxLQUFLLENBQUM7SUFFdkIsTUFBTSxLQUFLLEdBQUcsV0FBVyxDQUFDO0lBQzFCLE1BQU0sTUFBTSxHQUFHLEtBQUssQ0FBQyxNQUFNLENBQUM7SUFDNUIsTUFBTSxPQUFPLEdBQUcsS0FBSyxDQUFDLE9BQU8sQ0FBQztJQUM5QixNQUFNLEdBQUcsR0FBRyxTQUFTLEVBQUUsQ0FBQztJQUN4QixNQUFNLGNBQWMsR0FBRyxLQUFLLENBQUMsY0FBYyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQ2pELE1BQU0sY0FBYyxHQUFHLEtBQUssQ0FBQyxjQUFjLENBQUMsR0FBRyxDQUFDLENBQUM7SUFDakQsTUFBTSxPQUFPLEdBQUcsS0FBSyxDQUFDLFdBQVcsQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUN2QyxNQUFNLFdBQVcsR0FBRyxLQUFLLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLENBQUM7SUFDaEQsTUFBTSxVQUFVLEdBQUcsS0FBSyxDQUFDLFVBQVUsQ0FBQztJQUNwQyxNQUFNLENBQUMsU0FBUyxFQUFFLFVBQVUsRUFBRSxRQUFRLENBQUMsR0FBRyxZQUFZLENBQUMsS0FBSyxDQUFDLENBQUM7SUFFOUQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFdBQVcsRUFBRSxFQUFFLENBQUMsRUFBRTtRQUNsQyxNQUFNLE1BQU0sR0FBRyxPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDMUIsUUFBUSxNQUFNLENBQUMsSUFBSSxFQUFFO1lBQ2pCLEtBQUssVUFBVSxDQUFDLE1BQU07Z0JBQUU7b0JBQ3BCLE1BQU0sVUFBVSxHQUFHLE1BQU0sQ0FBQyxDQUFDLEdBQUcsU0FBUyxHQUFHLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQztvQkFDbEUsTUFBTSxXQUFXLEdBQUcsTUFBTSxDQUFDLENBQUMsR0FBRyxVQUFVLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixDQUFDO29CQUNwRSxNQUFNLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxFQUFFLEtBQUssRUFBRSxVQUFVLEVBQUUsTUFBTSxFQUFFLFdBQVcsRUFBRSxDQUFDLENBQUM7b0JBQ3ZFLG1CQUFtQixDQUFDLE1BQU0sRUFBRSxVQUFVLEVBQUUsV0FBVyxDQUFDLENBQUM7b0JBQ3JELDZEQUE2RDtvQkFDN0Qsb0RBQW9EO29CQUNwRCxPQUFPLENBQUMsSUFBSSxHQUFHLFVBQVUsQ0FBQztpQkFDN0I7Z0JBQ0QsTUFBTTtZQUNOLEtBQUssVUFBVSxDQUFDLE1BQU0sQ0FBQztZQUN2QixLQUFLLFVBQVUsQ0FBQyxJQUFJO2dCQUNoQixLQUFLLElBQUksQ0FBQyxHQUFHLE1BQU0sQ0FBQyxDQUFDLEVBQUUsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxDQUFDLEdBQUcsTUFBTSxDQUFDLENBQUMsSUFBSSxDQUFDLEdBQUcsY0FBYyxDQUFDLE1BQU0sRUFBRSxFQUFFLENBQUMsRUFBRTtvQkFDOUUsTUFBTSxHQUFHLEdBQUcsY0FBYyxDQUFDLENBQUMsQ0FBQyxDQUFDO29CQUM5QixNQUFNLE9BQU8sR0FBRyxjQUFjLENBQUMsQ0FBQyxDQUFDLENBQUM7b0JBQ2xDLE1BQU0sTUFBTSxHQUFHLENBQUMsR0FBRyxVQUFVLENBQUM7b0JBRTlCLEtBQUssSUFBSSxDQUFDLEdBQUcsTUFBTSxDQUFDLENBQUMsRUFBRSxDQUFDLEdBQUcsTUFBTSxDQUFDLENBQUMsR0FBRyxNQUFNLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxHQUFHLENBQUMsTUFBTSxFQUFFLEVBQUUsQ0FBQyxFQUFFO3dCQUNuRSxJQUFJLEdBQUcsQ0FBQyxDQUFDLENBQUMsS0FBSyxFQUFFLEVBQUU7NEJBQ2YsU0FBUzt5QkFDWjt3QkFDRCxNQUFNLE1BQU0sR0FBRyxDQUFDLEdBQUcsU0FBUyxDQUFDO3dCQUM3QixNQUFNLEVBQUUsR0FBRyxPQUFPLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO3dCQUV2QyxJQUFJLFVBQVUsQ0FBQyxFQUFFLENBQUMsS0FBSyxTQUFTLEVBQUU7NEJBQzlCLE1BQU0sUUFBUSxHQUFHLFVBQVUsQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQzs0QkFDeEMsTUFBTSxLQUFLLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxZQUFZLENBQUMsS0FBSyxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxHQUFHLFNBQVMsQ0FBQyxHQUFHLFNBQVMsQ0FBQzs0QkFDN0UsSUFBSSxVQUFVLEdBQUcsUUFBUSxDQUFDLFVBQVUsSUFBSSxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDOzRCQUNqRSxJQUFJLFVBQVUsR0FBRyxRQUFRLENBQUMsVUFBVSxJQUFJLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLENBQUM7NEJBQ2pFLElBQUksUUFBUSxDQUFDLE9BQU8sRUFBRTtnQ0FDbEIsTUFBTSxHQUFHLEdBQUcsVUFBVSxDQUFDO2dDQUN2QixVQUFVLEdBQUcsVUFBVSxDQUFDO2dDQUN4QixVQUFVLEdBQUcsR0FBRyxDQUFDOzZCQUNwQjs0QkFDRCxPQUFPLENBQUMsU0FBUyxHQUFHLFVBQVUsQ0FBQzs0QkFDL0IsT0FBTyxDQUFDLFFBQVEsQ0FBQyxNQUFNLEVBQ04sTUFBTSxFQUNOLEtBQUssRUFDTCxVQUFVLENBQUMsQ0FBQzs0QkFDN0IsT0FBTyxDQUFDLFNBQVMsR0FBRyxVQUFVLENBQUM7NEJBQy9CLElBQUksT0FBTyxHQUFHLEVBQUUsQ0FBQzs0QkFDakIsSUFBSSxVQUFVLEdBQUcsS0FBSyxDQUFDOzRCQUN2QixJQUFJLFFBQVEsQ0FBQyxJQUFJLEVBQUU7Z0NBQ2YsT0FBTyxJQUFJLFFBQVEsQ0FBQztnQ0FDcEIsVUFBVSxHQUFHLElBQUksQ0FBQzs2QkFDckI7NEJBQ0QsSUFBSSxRQUFRLENBQUMsTUFBTSxFQUFFO2dDQUNqQixPQUFPLElBQUksVUFBVSxDQUFDO2dDQUN0QixVQUFVLEdBQUcsSUFBSSxDQUFDOzZCQUNyQjs0QkFDRCxJQUFJLFVBQVUsRUFBRTtnQ0FDWixPQUFPLENBQUMsSUFBSSxHQUFHLE9BQU8sR0FBRyxVQUFVLENBQUM7NkJBQ3ZDOzRCQUNELE9BQU8sQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxFQUFFLE1BQU0sRUFBRSxNQUFNLEdBQUcsUUFBUSxDQUFDLENBQUM7NEJBQ3BELElBQUksVUFBVSxFQUFFO2dDQUNaLE9BQU8sQ0FBQyxJQUFJLEdBQUcsVUFBVSxDQUFDOzZCQUM3Qjs0QkFDRCxJQUFJLFFBQVEsQ0FBQyxhQUFhLEVBQUU7Z0NBQ3hCLE9BQU8sQ0FBQyxRQUFRLENBQUMsTUFBTSxFQUFFLE1BQU0sR0FBRyxRQUFRLEdBQUcsQ0FBQyxFQUFFLEtBQUssRUFBRSxDQUFDLENBQUMsQ0FBQzs2QkFDN0Q7NEJBQ0QsT0FBTyxDQUFDLFNBQVMsR0FBRyxRQUFRLENBQUMsT0FBTyxDQUFDOzRCQUNyQyxNQUFNLGNBQWMsR0FBRyxDQUFDLFVBQVUsR0FBRyxRQUFRLENBQUMsQ0FBQzs0QkFDL0MsSUFBSSxRQUFRLENBQUMsU0FBUyxFQUFFO2dDQUNwQixNQUFNLE9BQU8sR0FBRyxjQUFjLEdBQUcsR0FBRyxDQUFDO2dDQUNyQyxPQUFPLENBQUMsUUFBUSxDQUFDLE1BQU0sRUFBRSxNQUFNLEdBQUcsUUFBUSxHQUFHLE9BQU8sRUFBRSxLQUFLLEVBQUUsQ0FBQyxDQUFDLENBQUM7NkJBQ25FOzRCQUNELElBQUksUUFBUSxDQUFDLFNBQVMsRUFBRTtnQ0FDcEIsTUFBTSxPQUFPLEdBQUcsY0FBYyxHQUFHLEdBQUcsQ0FBQztnQ0FDckMsS0FBSyxJQUFJLFFBQVEsR0FBRyxNQUFNLEVBQUUsUUFBUSxHQUFHLE1BQU0sR0FBRyxLQUFLLEVBQUUsRUFBRSxRQUFRLEVBQUU7b0NBQy9ELE9BQU8sQ0FBQyxRQUFRLENBQUMsUUFBUSxFQUNSLE1BQU0sR0FBRyxRQUFRLEdBQUcsT0FBTyxHQUFHLElBQUksQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEVBQ2hELENBQUMsRUFDRCxDQUFDLENBQUMsQ0FBQztpQ0FDdkI7NkJBQ0o7NEJBQ0QsaURBQWlEOzRCQUNqRCw2QkFBNkI7NEJBQzdCLElBQUksTUFBTSxJQUFJLENBQUM7bUNBQ1IsTUFBTSxJQUFJLENBQUM7bUNBQ1gsQ0FBQyxNQUFNLEdBQUcsS0FBSyxHQUFHLE1BQU0sQ0FBQyxLQUFLLENBQUM7bUNBQy9CLENBQUMsTUFBTSxHQUFHLFVBQVUsR0FBRyxNQUFNLENBQUMsTUFBTSxDQUFDLEVBQUU7Z0NBQzFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsR0FBRyxPQUFPLENBQUMsWUFBWSxDQUNqQyxNQUFNLEVBQ04sTUFBTSxFQUNOLEtBQUssRUFDTCxVQUFVLENBQUMsQ0FBQzs2QkFDbkI7eUJBQ0o7NkJBQU07NEJBQ0gsT0FBTyxDQUFDLFlBQVksQ0FBQyxVQUFVLENBQUMsRUFBRSxDQUFDLEVBQUUsTUFBTSxFQUFFLE1BQU0sQ0FBQyxDQUFDO3lCQUN4RDtxQkFDSjtpQkFDSjtnQkFDRCxNQUFNO1NBQ2I7S0FDSjtJQUVELElBQUksS0FBSyxDQUFDLFFBQVEsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO1FBQzNCLGFBQWEsQ0FBQyxLQUFLLENBQUMsQ0FBQztLQUN4QjtJQUVELG1EQUFtRDtJQUNuRCxJQUFJLEtBQUssQ0FBQyxXQUFXLENBQUMsTUFBTSxLQUFLLE9BQU8sRUFBRTtRQUN0QyxzQkFBc0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztLQUNqQztTQUFNLElBQUksS0FBSyxDQUFDLE1BQU0sQ0FBQyxPQUFPLEVBQUU7UUFDN0IsTUFBTSxNQUFNLEdBQUcsS0FBSyxDQUFDLE1BQU0sQ0FBQztRQUM1QixJQUFJLE1BQU0sQ0FBQyxXQUFXLEtBQUssR0FBRyxFQUFFO1lBQzVCLHVDQUF1QztZQUN2QyxNQUFNLElBQUksR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDO1lBQ3hCLE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxZQUFZO2dCQUMxQixDQUFDLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDO2dCQUM3QixDQUFDLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUN2QixNQUFNLFdBQVcsR0FBRyxDQUFDLElBQUksQ0FBQyxTQUFTLEdBQUcsQ0FBQyxJQUFJLElBQUksQ0FBQyxPQUFPLEdBQUcsQ0FBQyxJQUFJLElBQUksQ0FBQyxRQUFRLEdBQUcsQ0FBQyxDQUFDLENBQUM7WUFFbEYsZ0VBQWdFO1lBQ2hFLHNCQUFzQjtZQUN0QixJQUFJLFVBQVUsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLFVBQVUsQ0FBQztZQUNyRCxJQUFJLFVBQVUsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLFVBQVUsQ0FBQztZQUNyRCxJQUFJLElBQUksQ0FBQyxPQUFPLEtBQUssQ0FBQyxFQUFFO2dCQUNwQixNQUFNLEdBQUcsR0FBRyxVQUFVLENBQUM7Z0JBQ3ZCLFVBQVUsR0FBRyxVQUFVLENBQUM7Z0JBQ3hCLFVBQVUsR0FBRyxHQUFHLENBQUM7YUFDcEI7WUFFRCxtREFBbUQ7WUFDbkQsaUNBQWlDO1lBQ2pDLE1BQU0sV0FBVyxHQUFHLE1BQU0sQ0FBQyxDQUFDLEdBQUcsU0FBUyxDQUFDO1lBQ3pDLElBQUksWUFBWSxHQUFHLE1BQU0sQ0FBQyxDQUFDLEdBQUcsVUFBVSxDQUFDO1lBQ3pDLElBQUksS0FBSyxHQUFHLFNBQVMsQ0FBQztZQUN0QixJQUFJLE1BQU0sR0FBRyxVQUFVLENBQUM7WUFDeEIsSUFBSSxJQUFJLENBQUMsWUFBWSxLQUFLLFVBQVUsRUFBRTtnQkFDbEMsS0FBSyxHQUFHLENBQUMsQ0FBQzthQUNiO2lCQUFNLElBQUksSUFBSSxDQUFDLFlBQVksS0FBSyxZQUFZLEVBQUU7Z0JBQzNDLFlBQVksSUFBSSxVQUFVLEdBQUcsQ0FBQyxDQUFDO2dCQUMvQixNQUFNLEdBQUcsQ0FBQyxDQUFDO2FBQ2Q7WUFFRCxNQUFNLEdBQUcsR0FBRyxXQUFXLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDOUIsZ0VBQWdFO1lBQ2hFLCtEQUErRDtZQUMvRCx3QkFBd0I7WUFDeEIsTUFBTSxRQUFRLEdBQUcsV0FBVzttQkFDckIsQ0FBQyxHQUFHLEdBQUcsSUFBSSxDQUFDLFNBQVMsR0FBRyxNQUFNLENBQUMsUUFBUSxDQUFDO21CQUN4QyxDQUFDLENBQUMsR0FBRyxHQUFHLENBQUMsSUFBSSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDL0QsSUFBSSxRQUFRLEVBQUU7Z0JBQ1YsTUFBTSxJQUFJLEdBQUcsVUFBVSxDQUFDLGNBQWMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQzVELFVBQVUsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDO2dCQUM3QixVQUFVLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQzthQUNoQztZQUVELHNCQUFzQjtZQUN0QixPQUFPLENBQUMsU0FBUyxHQUFHLFVBQVUsQ0FBQztZQUMvQixPQUFPLENBQUMsUUFBUSxDQUFDLFdBQVcsRUFDWCxZQUFZLEVBQ1osS0FBSyxFQUNMLE1BQU0sQ0FBQyxDQUFDO1lBRXpCLElBQUksSUFBSSxDQUFDLFlBQVksS0FBSyxPQUFPLEVBQUU7Z0JBQy9CLE9BQU8sQ0FBQyxTQUFTLEdBQUcsVUFBVSxDQUFDO2dCQUMvQixNQUFNLElBQUksR0FBRyxjQUFjLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDaEQsT0FBTyxDQUFDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLENBQUMsR0FBRyxTQUFTLEVBQUUsTUFBTSxDQUFDLENBQUMsR0FBRyxVQUFVLEdBQUcsUUFBUSxDQUFDLENBQUM7YUFDbEY7WUFFRCxJQUFJLFdBQVcsRUFBRTtnQkFDYiw0REFBNEQ7Z0JBQzVELE1BQU0sV0FBVyxHQUFHLFdBQVcsQ0FBQyxHQUFHLEVBQUUsR0FBRyxDQUFDLElBQUksQ0FBQyxPQUFPLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2dCQUN2RSxNQUFNLFNBQVMsR0FBRyxXQUFXLEdBQUcsSUFBSSxDQUFDLE9BQU87b0JBQ3hDLENBQUMsQ0FBQyxJQUFJLENBQUMsT0FBTyxHQUFHLFdBQVc7b0JBQzVCLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxHQUFHLENBQUMsV0FBVyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztnQkFDbkQsVUFBVSxDQUFDLGFBQWEsRUFBRSxTQUFTLENBQUMsQ0FBQzthQUN4QztTQUNKO0tBQ0o7SUFFRCxLQUFLLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0FBQ3BDLENBQUM7QUFFRCxJQUFJLGNBQWMsR0FBRyxJQUFJLENBQUM7QUFDMUIsZ0VBQWMsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxjQUFjLEdBQUcsbUVBQWEsRUFBRSxDQUFDLGNBQWMsQ0FBQyxDQUFDO0FBRS9ELFNBQVMsUUFBUSxDQUFDLE1BQWE7SUFDbEMsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7UUFDcEMsTUFBTSxLQUFLLEdBQUcsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3hCLE1BQU0sT0FBTyxHQUFJLFFBQWdCLENBQUUsS0FBSyxDQUFDLENBQUMsQ0FBUyxDQUFDLENBQUM7UUFDckQsSUFBSSxPQUFPLEtBQUssU0FBUyxFQUFFO1lBQ3ZCLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxLQUFLLENBQUMsTUFBTSxFQUFFLEVBQUUsQ0FBQyxFQUFFO2dCQUNuQyxPQUFPLENBQUMsS0FBSyxDQUFDLFdBQVcsRUFBRSxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQzthQUN4QztTQUNKO2FBQU07WUFDSCxvREFBb0Q7U0FDdkQ7S0FDSjtJQUNELElBQUksV0FBVyxDQUFDLEdBQUcsRUFBRSxHQUFHLFdBQVcsQ0FBQyxXQUFXLEdBQUcsY0FBYyxJQUFJLFdBQVcsQ0FBQyxNQUFNLENBQUMscUJBQXFCLEVBQUU7UUFDMUcsUUFBUSxDQUFDLFdBQVcsQ0FBQyxFQUFFLENBQUM7S0FDM0I7QUFDTCxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQzkvQkQsSUFBSSxJQUFJLEdBQVksU0FBb0IsQ0FBQztBQUVsQyxNQUFNLFNBQVMsR0FBRyxJQUFJLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRTtJQUMzQyxPQUFPLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxHQUFHLEVBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxHQUFRLEVBQUUsRUFBRTtRQUMxQyxJQUFJLEdBQUcsR0FBRyxDQUFDO1FBQ1gsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2xCLENBQUMsQ0FBQyxDQUFDO0FBQ1AsQ0FBQyxDQUFDLENBQUM7QUFFSCxPQUFPLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxXQUFXLENBQUMsQ0FBQyxPQUFZLEVBQUUsRUFBRTtJQUNuRCxNQUFNO1NBQ0QsT0FBTyxDQUFDLE9BQU8sQ0FBQztTQUNoQixPQUFPLENBQUMsQ0FBQyxDQUFDLEdBQUcsRUFBRSxLQUFLLENBQXVCLEVBQUUsRUFBRSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFO1FBQ2pFLElBQUksQ0FBQyxHQUFHLENBQUMsR0FBRyxLQUFLLENBQUMsUUFBUSxDQUFDO0lBQy9CLENBQUMsQ0FBQyxDQUFDLENBQUM7QUFDWixDQUFDLENBQUMsQ0FBQztBQUVJLFNBQVMsYUFBYTtJQUN6QixzQkFBc0I7SUFDdEIsMEJBQTBCO0lBQzFCLElBQUksSUFBSSxLQUFLLFNBQVMsRUFBRTtRQUNwQixNQUFNLElBQUksS0FBSyxDQUFDLDhDQUE4QyxDQUFDLENBQUM7S0FDbkU7SUFDRCxPQUFPLElBQUksQ0FBQyxjQUFjLENBQUM7QUFDL0IsQ0FBQztBQUVNLFNBQVMsT0FBTztJQUNuQixPQUFPLGFBQWEsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDO0FBQ2pELENBQUM7QUFFTSxTQUFTLGFBQWEsQ0FBQyxHQUFXO0lBQ3JDLE1BQU0sYUFBYSxHQUFHLElBQUksQ0FBQyxhQUFhLENBQUM7SUFDekMsU0FBUyxHQUFHLENBQUMsR0FBVztRQUNwQixJQUFJLEdBQUcsS0FBSyxTQUFTLEVBQUU7WUFDbkIsT0FBTyxDQUFDLENBQUM7U0FDWjtRQUNELE9BQU8sR0FBRyxDQUFDO0lBQ2YsQ0FBQztJQUNELHNCQUFzQjtJQUN0QiwwQkFBMEI7SUFDMUIsSUFBSSxhQUFhLEtBQUssU0FBUyxFQUFFO1FBQzdCLE1BQU0sSUFBSSxLQUFLLENBQUMseUxBQXlMLENBQUMsQ0FBQztLQUM5TTtJQUNELE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLGFBQWEsQ0FBQyxDQUFDO1NBQzNDLE1BQU0sQ0FBQyxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxDQUFDLElBQUksTUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO1NBQ2pELElBQUksQ0FBQyxDQUFDLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxDQUFDLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUMsR0FBRyxHQUFHLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7U0FDN0QsTUFBTSxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQyxFQUFFLEdBQUcsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLEdBQUcsRUFBRSxHQUFHLENBQUMsRUFBRSxFQUFpQixDQUFDLENBQUM7QUFDL0UsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQzlGTSxNQUFNLGNBQWMsR0FBNEI7SUFDbkQsR0FBRyxFQUFFLFNBQVM7SUFDZCxHQUFHLEVBQUUsTUFBTTtJQUNYLFdBQVcsRUFBRSxRQUFRO0lBQ3JCLFdBQVcsRUFBRSxRQUFRO0lBQ3JCLFlBQVksRUFBRSxTQUFTO0lBQ3ZCLFNBQVMsRUFBRSxNQUFNO0lBQ2pCLFdBQVcsRUFBRSxNQUFNO0lBQ25CLFFBQVEsRUFBRSxPQUFPO0lBQ2pCLEtBQUssRUFBRSxPQUFPO0lBQ2QsT0FBTyxFQUFFLE1BQU07SUFDZixRQUFRLEVBQUUsT0FBTztJQUNqQixJQUFJLEVBQUUsTUFBTTtJQUNaLEtBQUssRUFBRSxPQUFPO0lBQ2QsS0FBSyxFQUFFLE9BQU87SUFDZCxLQUFLLEVBQUUsT0FBTztJQUNkLEtBQUssRUFBRSxPQUFPO0lBQ2QsS0FBSyxFQUFFLE9BQU87SUFDZCxLQUFLLEVBQUUsT0FBTztJQUNkLEtBQUssRUFBRSxPQUFPO0lBQ2QsS0FBSyxFQUFFLE9BQU87SUFDZCxLQUFLLEVBQUUsT0FBTztJQUNkLEtBQUssRUFBRSxPQUFPO0lBQ2QsSUFBSSxFQUFFLE1BQU07SUFDWixLQUFLLEVBQUUsT0FBTztJQUNkLEtBQUssRUFBRSxPQUFPO0lBQ2QsS0FBSyxFQUFFLE9BQU87SUFDZCxLQUFLLEVBQUUsT0FBTztJQUNkLEtBQUssRUFBRSxPQUFPO0lBQ2QsSUFBSSxFQUFFLE1BQU07SUFDWixJQUFJLEVBQUUsTUFBTTtJQUNaLElBQUksRUFBRSxNQUFNO0lBQ1osSUFBSSxFQUFFLE1BQU07SUFDWixJQUFJLEVBQUUsTUFBTTtJQUNaLElBQUksRUFBRSxNQUFNO0lBQ1osSUFBSSxFQUFFLE1BQU07SUFDWixNQUFNLEVBQUUsUUFBUTtJQUNoQixVQUFVLEVBQUUsWUFBWTtJQUN4QixRQUFRLEVBQUUsVUFBVTtJQUNwQixLQUFLLEVBQUUsT0FBTztJQUNkLElBQUksRUFBRSxVQUFVO0lBQ2hCLEdBQUcsRUFBRSxPQUFPO0NBQ2YsQ0FBQztBQUVGLE1BQU0saUJBQWlCLEdBQUcsTUFBTSxDQUFDLFdBQVcsQ0FBQyxNQUFNO0tBQ0wsT0FBTyxDQUFDLGNBQWMsQ0FBQztLQUN2QixHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0FBRXZFLE1BQU0sa0JBQWtCLEdBQTRCO0lBQ2hELE9BQU8sRUFBTyxFQUFFO0lBQ2hCLE9BQU8sRUFBTyxFQUFFO0lBQ2hCLEtBQUssRUFBUyxDQUFDO0lBQ2YsUUFBUSxFQUFNLEVBQUU7SUFDaEIsS0FBSyxFQUFTLEVBQUU7SUFDaEIsTUFBTSxFQUFRLEVBQUU7SUFDaEIsUUFBUSxFQUFNLEVBQUU7SUFDaEIsVUFBVSxFQUFJLEVBQUU7SUFDaEIsUUFBUSxFQUFNLEVBQUU7SUFDaEIsV0FBVyxFQUFHLEVBQUU7SUFDaEIsV0FBVyxFQUFHLEVBQUU7SUFDaEIsWUFBWSxFQUFFLEVBQUU7SUFDaEIsU0FBUyxFQUFLLEVBQUU7SUFDaEIsUUFBUSxFQUFNLEVBQUU7Q0FDbkIsQ0FBQztBQUVGLDJFQUEyRTtBQUMzRSxzRUFBc0U7QUFDdEUsNkVBQTZFO0FBQzdFLFNBQVM7QUFDVCxTQUFTLGNBQWMsQ0FBQyxDQUFTO0lBQzdCLElBQUksSUFBSSxHQUFHLEVBQUUsQ0FBQztJQUNkLElBQUksR0FBRyxHQUFHLGlCQUFpQixDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQy9CLElBQUksT0FBTyxHQUFHLEtBQUssQ0FBQztJQUNwQixJQUFJLE1BQU0sR0FBRyxLQUFLLENBQUM7SUFDbkIsSUFBSSxRQUFRLEdBQUcsS0FBSyxDQUFDO0lBQ3JCLElBQUksR0FBRyxLQUFLLFNBQVMsRUFBRTtRQUNuQixNQUFNLEdBQUcsR0FBRyxDQUFDLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUN0QyxJQUFJLEdBQUcsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ2QsR0FBRyxHQUFHLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNiLE9BQU8sR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzFCLE1BQU0sR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3pCLE1BQU0sV0FBVyxHQUFHLEdBQUcsR0FBRyxHQUFHLEdBQUcsR0FBRyxDQUFDO1FBQ3BDLElBQUksaUJBQWlCLENBQUMsV0FBVyxDQUFDLEtBQUssU0FBUyxFQUFFO1lBQzlDLEdBQUcsR0FBRyxpQkFBaUIsQ0FBQyxXQUFXLENBQUMsQ0FBQztZQUNyQyxRQUFRLEdBQUcsS0FBSyxDQUFDO1NBQ3BCO2FBQU07WUFDSCxRQUFRLEdBQUcsR0FBRyxLQUFLLEdBQUcsQ0FBQyxpQkFBaUIsRUFBRSxDQUFDO1NBQzlDO0tBQ0o7SUFDRCwwRUFBMEU7SUFDMUUsa0VBQWtFO0lBQ2xFLHFFQUFxRTtJQUNyRSxtREFBbUQ7SUFDbkQsSUFBSSxPQUFPLEdBQUcsQ0FBQyxDQUFDO0lBQ2hCLElBQUksZUFBZSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRTtRQUMzQixPQUFPLEdBQUcsR0FBRyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQztLQUMvQjtTQUFNLElBQUksa0JBQWtCLENBQUMsR0FBRyxDQUFDLEtBQUssU0FBUyxFQUFFO1FBQzlDLE9BQU8sR0FBRyxrQkFBa0IsQ0FBQyxHQUFHLENBQUMsQ0FBQztLQUNyQztJQUNELE1BQU0sSUFBSSxHQUFHLEVBQUUsR0FBRyxFQUFFLE9BQU8sRUFBRSxPQUFPLEVBQUUsTUFBTSxFQUFFLFFBQVEsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFFLENBQUM7SUFDeEUsT0FBTztRQUNILElBQUksYUFBYSxDQUFDLFNBQVMsRUFBRSxJQUFJLENBQUM7UUFDbEMsSUFBSSxhQUFhLENBQUMsVUFBVSxFQUFFLElBQUksQ0FBQztRQUNuQyxJQUFJLGFBQWEsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDO0tBQ25DLENBQUM7QUFDTixDQUFDO0FBRUQsOEVBQThFO0FBQzlFLHNEQUFzRDtBQUN0RCxTQUFTLFdBQVcsQ0FBQyxHQUFXO0lBQzVCLE1BQU0sUUFBUSxHQUFHLEdBQUcsS0FBSyxHQUFHLENBQUMsaUJBQWlCLEVBQUUsQ0FBQztJQUNqRCxPQUFPO1FBQ0gsSUFBSSxhQUFhLENBQUMsU0FBUyxFQUFHLEVBQUUsR0FBRyxFQUFFLFFBQVEsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFFLENBQUM7UUFDL0QsSUFBSSxhQUFhLENBQUMsVUFBVSxFQUFFLEVBQUUsR0FBRyxFQUFFLFFBQVEsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFFLENBQUM7UUFDL0QsSUFBSSxhQUFhLENBQUMsT0FBTyxFQUFLLEVBQUUsR0FBRyxFQUFFLFFBQVEsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFFLENBQUM7S0FDbEUsQ0FBQztBQUNOLENBQUM7QUFFRCw4RUFBOEU7QUFDOUUsMEVBQTBFO0FBQzFFLGlCQUFpQjtBQUNWLFNBQVMsWUFBWSxDQUFDLElBQWM7SUFDdkMsMkNBQTJDO0lBQzNDLHVEQUF1RDtJQUN2RCx1QkFBdUI7SUFDdkIsaUJBQWlCO0lBQ2pCLElBQUk7SUFDSixPQUFPLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLEVBQUUsRUFBRTtRQUNwQixJQUFJLEdBQUcsQ0FBQyxDQUFDLENBQUMsS0FBSyxHQUFHLEVBQUU7WUFDaEIsT0FBTyxjQUFjLENBQUMsR0FBRyxDQUFDLENBQUM7U0FDOUI7UUFDRCxPQUFPLFdBQVcsQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUM1QixDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQUUsQ0FBQztBQUNkLENBQUM7QUFFRCx5RUFBeUU7QUFDbEUsU0FBUyxZQUFZLENBQUMsR0FBVztJQUNwQyxJQUFJLGNBQWMsQ0FBQyxHQUFHLENBQUMsS0FBSyxTQUFTLEVBQUU7UUFDbkMsT0FBTyxjQUFjLENBQUMsR0FBRyxDQUFDLENBQUM7S0FDOUI7SUFDRCxPQUFPLEdBQUcsQ0FBQztBQUNmLENBQUM7QUFFRCwyRUFBMkU7QUFDM0UsYUFBYTtBQUNOLFNBQVMsV0FBVyxDQUFDLEdBQVcsRUFBRSxJQUFZO0lBQ2pELElBQUksS0FBSyxDQUFDO0lBQ1YsSUFBSSxTQUFTLEdBQUcsRUFBRSxDQUFDO0lBQ25CLElBQUksR0FBRyxHQUFHLEVBQUUsQ0FBQztJQUNiLElBQUksQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDLEVBQUU7UUFDL0MsU0FBUyxHQUFHLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNyQixHQUFHLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO0tBQ2xCO1NBQU0sSUFBSSxDQUFDLEtBQUssR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDLEVBQUU7UUFDekMsR0FBRyxHQUFHLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztLQUNsQjtTQUFNO1FBQ0gsR0FBRyxHQUFHLElBQUksQ0FBQztLQUNkO0lBQ0QsT0FBTyxHQUFHLEdBQUcsR0FBRyxHQUFHLFNBQVMsR0FBRyxHQUFHLEdBQUcsR0FBRyxHQUFHLEdBQUcsQ0FBQztBQUNuRCxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQzlKRCxJQUFJLE9BQWdCLENBQUM7QUFFckIsc0NBQXNDO0FBQ3RDLDBCQUEwQjtBQUMxQixJQUFLLE9BQWUsQ0FBQyxjQUFjLEtBQUssU0FBUyxJQUFJLFFBQVEsQ0FBQyxRQUFRLENBQUMsSUFBSSxLQUFLLHFCQUFxQixFQUFFO0lBQ25HLE9BQU8sR0FBRyxhQUFhLENBQUM7SUFDNUIsb0VBQW9FO0NBQ25FO0tBQU0sSUFBSSxNQUFNLENBQUMsUUFBUSxDQUFDLFFBQVEsS0FBSyxnQkFBZ0IsRUFBRTtJQUN0RCxPQUFPLEdBQUcsU0FBUyxDQUFDO0NBQ3ZCO0tBQU0sSUFBSSxNQUFNLENBQUMsUUFBUSxDQUFDLFFBQVEsS0FBSyxtQkFBbUIsRUFBRTtJQUN6RCxPQUFPLEdBQUcsUUFBUSxDQUFDO0NBQ3RCO0FBRUQsb0NBQW9DO0FBQzdCLFNBQVMsUUFBUTtJQUNwQiw4QkFBOEI7SUFDOUIsMEJBQTBCO0lBQzFCLElBQUksT0FBTyxLQUFLLFNBQVMsRUFBRTtRQUN2QixNQUFNLEtBQUssQ0FBQyxrQ0FBa0MsQ0FBQyxDQUFDO0tBQ25EO0lBQ0QsT0FBTyxPQUFPLEtBQUssUUFBUSxDQUFDO0FBQ2hDLENBQUM7QUFDTSxTQUFTLGFBQWE7SUFDekIsOEJBQThCO0lBQzlCLDBCQUEwQjtJQUMxQixJQUFJLE9BQU8sS0FBSyxTQUFTLEVBQUU7UUFDdkIsTUFBTSxLQUFLLENBQUMsdUNBQXVDLENBQUMsQ0FBQztLQUN4RDtJQUNELE9BQU8sT0FBTyxLQUFLLGFBQWEsQ0FBQztBQUNyQyxDQUFDO0FBRUQseUVBQXlFO0FBQ3pFLDhFQUE4RTtBQUM5RSxlQUFlO0FBQ1IsU0FBUyxhQUFhLENBQUMsSUFBWTtJQUN0QyxPQUFPLElBQUksT0FBTyxDQUFDLENBQUMsT0FBTyxFQUFFLE1BQU0sRUFBRSxFQUFFO1FBQ25DLE1BQU0sTUFBTSxHQUFHLFFBQVEsQ0FBQyxhQUFhLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDaEQsTUFBTSxPQUFPLEdBQUcsQ0FBQyxJQUFJLEdBQUcsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUMsUUFBUSxHQUFHLElBQUksQ0FBQyxNQUFNLEVBQUUsQ0FBQztRQUMvRSxNQUFNLENBQUMsU0FBUyxHQUFHOzs7aUNBR00sSUFBSTs7Ozs7Ozs7Ozs7O2FBWXhCLElBQUksQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQztRQUNoQyxNQUFNLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLENBQUMsRUFBRSxNQUFNLEVBQU8sRUFBRSxFQUFFO1lBQ2pELE1BQU0sQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQ3RDLElBQUksTUFBTSxDQUFDLE9BQU8sRUFBRTtnQkFDaEIsT0FBTyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxDQUFDO2FBQ2pDO1lBQ0QsT0FBTyxNQUFNLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQ2pDLENBQUMsRUFBRSxFQUFFLElBQUksRUFBRSxJQUFJLEVBQUUsQ0FBQyxDQUFDO1FBQ25CLFFBQVEsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQ3RDLENBQUMsQ0FBQyxDQUFDO0FBQ1AsQ0FBQztBQUVELDhFQUE4RTtBQUM5RSxRQUFRO0FBQ1IsTUFBTSxPQUFPLEdBQUcsY0FBYyxDQUFDO0FBQy9CLE1BQU0sZUFBZSxHQUFHO0lBQ3BCLFFBQVEsRUFBRSxDQUFDLEdBQXNCLEVBQUUsRUFBRTtRQUNqQyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDLE1BQU0sRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3BDLDBCQUEwQjtZQUMxQixJQUFJLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUNsQixTQUFTO2FBQ1o7WUFDRCxNQUFNLElBQUksR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO1lBQ2hFLEdBQUcsQ0FBQyxDQUFDLENBQUMsR0FBRyxJQUFJLENBQUM7WUFDZCxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLElBQUksQ0FBQztZQUNsQixHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLElBQUksQ0FBQztTQUNyQjtJQUNMLENBQUM7SUFDRCxLQUFLLEVBQUUsQ0FBQyxHQUFzQixFQUFFLEVBQUU7UUFDOUIsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUNwQyw4QkFBOEI7WUFDOUIsSUFBSSxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxLQUFLLENBQUMsRUFBRTtnQkFDbEIsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQztnQkFDYixHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQzthQUNwQjtTQUNKO0lBQ0wsQ0FBQztJQUNELE1BQU0sRUFBRSxDQUFDLENBQUMsSUFBdUIsRUFBRSxFQUFFLENBQUUsU0FBbUIsQ0FBQztJQUMzRCxZQUFZLEVBQUUsQ0FBQyxHQUFzQixFQUFFLEVBQUU7UUFDckMsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUNwQyxpQ0FBaUM7WUFDakMsSUFBSSxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxLQUFLLENBQUMsRUFBRTtnQkFDbEIsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQztnQkFDYixHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQztnQkFDakIsR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsR0FBRyxHQUFHLENBQUM7YUFDcEI7U0FDSjtJQUNMLENBQUM7Q0FDSixDQUFDO0FBSUYsNkVBQTZFO0FBQzdFLHVFQUF1RTtBQUNoRSxTQUFTLGdCQUFnQixDQUFDLElBQWMsRUFBRSxLQUFLLEdBQUcsRUFBRSxFQUFFLE1BQU0sR0FBRyxFQUFFO0lBQ3BFLE1BQU0sTUFBTSxHQUFHLFFBQVEsQ0FBQyxhQUFhLENBQUMsUUFBUSxDQUFzQixDQUFDO0lBQ3JFLE1BQU0sR0FBRyxHQUFHLE1BQU0sQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDcEMsTUFBTSxHQUFHLEdBQUcsSUFBSSxLQUFLLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO0lBQ3JDLE1BQU0sTUFBTSxHQUFHLElBQUksT0FBTyxDQUFDLENBQUMsT0FBTyxFQUFFLEVBQUUsQ0FBQyxHQUFHLENBQUMsZ0JBQWdCLENBQUMsTUFBTSxFQUFFLEdBQUcsRUFBRTtRQUN0RSxHQUFHLENBQUMsU0FBUyxDQUFDLEdBQUcsRUFBRSxDQUFDLEVBQUUsQ0FBQyxFQUFFLEtBQUssRUFBRSxNQUFNLENBQUMsQ0FBQztRQUN4QyxNQUFNLEVBQUUsR0FBRyxHQUFHLENBQUMsWUFBWSxDQUFDLENBQUMsRUFBRSxDQUFDLEVBQUUsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ2pELGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDL0IsT0FBTyxDQUFDLEVBQUUsQ0FBQyxDQUFDO0lBQ2hCLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDSixHQUFHLENBQUMsR0FBRyxHQUFHLE9BQU8sQ0FBQztJQUNsQixPQUFPLE1BQU0sQ0FBQztBQUNsQixDQUFDO0FBRUQsMkVBQTJFO0FBQzNFLG1DQUFtQztBQUM1QixTQUFTLFVBQVUsQ0FBQyxZQUFvQixFQUFFLEdBQVcsRUFBRSxFQUFVLEVBQUUsUUFBZ0I7SUFDdEYsSUFBSSxTQUFpRCxDQUFDO0lBQ3RELElBQUk7UUFDQSxTQUFTLEdBQUcsSUFBSSxHQUFHLENBQUMsR0FBRyxDQUFDLENBQUM7S0FDNUI7SUFBQyxPQUFPLENBQUMsRUFBRTtRQUNSLDZEQUE2RDtRQUM3RCwwQkFBMEI7UUFDMUIsU0FBUyxHQUFHLEVBQUUsUUFBUSxFQUFFLGFBQWEsRUFBRSxRQUFRLEVBQUUsTUFBTSxFQUFFLENBQUM7S0FDN0Q7SUFFRCxNQUFNLFFBQVEsR0FBRyxDQUFDLENBQVMsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUUzRSxNQUFNLE1BQU0sR0FBRyxDQUFDLE9BQWUsRUFBRSxFQUFFO1FBQy9CLE1BQU0sVUFBVSxHQUFHLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDeEMsTUFBTSxDQUFDLE1BQU0sRUFBRSxNQUFNLENBQUMsR0FBRyxVQUFVLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQy9DLElBQUksS0FBSyxHQUFHLEVBQUUsQ0FBQztRQUNmLFFBQVEsTUFBTSxFQUFFO1lBQ1osS0FBSyxVQUFVO2dCQUFFLEtBQUssR0FBRyxTQUFTLENBQUMsUUFBUSxDQUFDO2dCQUFDLE1BQU07WUFDbkQsS0FBSyxVQUFVO2dCQUFFLEtBQUssR0FBRyxRQUFRLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxDQUFDO2dCQUFDLE1BQU07WUFDN0QsS0FBSyxVQUFVO2dCQUFFLEtBQUssR0FBRyxRQUFRLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxlQUFlLEVBQUUsRUFBRSxDQUFDLENBQUMsQ0FBQztnQkFBQyxNQUFNO1lBQzFFLEtBQUssV0FBVztnQkFBRSxLQUFLLEdBQUcsUUFBUSxDQUFDLENBQUMsSUFBSSxJQUFJLEVBQUUsQ0FBQyxDQUFDLFdBQVcsRUFBRSxDQUFDLENBQUM7Z0JBQUMsTUFBTTtZQUN0RSxLQUFLLFdBQVc7Z0JBQUUsS0FBSyxHQUFHLG9CQUFvQixDQUFDLFFBQVEsQ0FBQyxDQUFDO2dCQUFDLE1BQU07WUFDaEUsT0FBTyxDQUFDLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxrQ0FBa0MsT0FBTyxFQUFFLENBQUMsQ0FBQztTQUN2RTtRQUNELE9BQU8sS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQ2hDLENBQUMsQ0FBQztJQUVGLElBQUksTUFBTSxHQUFHLFlBQVksQ0FBQztJQUMxQixNQUFNLE9BQU8sR0FBRyxZQUFZLENBQUMsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDO0lBQy9DLElBQUksT0FBTyxLQUFLLElBQUksRUFBRTtRQUNsQixLQUFLLE1BQU0sS0FBSyxJQUFJLE9BQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLEtBQUssU0FBUyxDQUFDLEVBQUU7WUFDdEQsTUFBTSxHQUFHLE1BQU0sQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO1NBQ2pEO0tBQ0o7SUFDRCxPQUFPLE1BQU0sQ0FBQztBQUNsQixDQUFDO0FBRUQsNkVBQTZFO0FBQ3RFLFNBQVMsb0JBQW9CLENBQUMsUUFBZ0I7SUFDakQsSUFBSSxRQUFRLEtBQUssU0FBUyxJQUFJLFFBQVEsS0FBSyxJQUFJLEVBQUU7UUFDN0MsUUFBUSxHQUFHLEVBQUUsQ0FBQztLQUNqQjtJQUNELE1BQU0sSUFBSSxHQUFHLFFBQVEsQ0FBQyxXQUFXLEVBQUUsQ0FBQztJQUNwQywwQkFBMEI7SUFDMUIsUUFBUSxJQUFJLEVBQUU7UUFDVixLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssV0FBVyxDQUFDLENBQVEsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxHQUFHLENBQUMsQ0FBZ0IsT0FBTyxHQUFHLENBQUM7UUFDcEMsS0FBSyxJQUFJLENBQUMsQ0FBZSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxRQUFRLENBQUM7UUFDekMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLEdBQUcsQ0FBQztRQUNwQyxLQUFLLFNBQVMsQ0FBQyxDQUFVLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxRQUFRLENBQUM7UUFDekMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLGNBQWMsQ0FBQyxDQUFLLE9BQU8sUUFBUSxDQUFDO1FBQ3pDLEtBQUssWUFBWSxDQUFDLENBQU0sT0FBTyxNQUFNLENBQUM7UUFDdEMsS0FBSyxTQUFTLENBQUMsQ0FBVSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxHQUFHLENBQUMsQ0FBZ0IsT0FBTyxHQUFHLENBQUM7UUFDcEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssWUFBWSxDQUFDLENBQU8sT0FBTyxZQUFZLENBQUM7UUFDN0MsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLHNEQUFzRDtRQUN0RCx1Q0FBdUM7UUFDdkMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLEdBQUcsQ0FBQztRQUNwQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxJQUFJLENBQUMsQ0FBZSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sUUFBUSxDQUFDO1FBQ3pDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxTQUFTLENBQUMsQ0FBVSxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssSUFBSSxDQUFDLENBQWUsT0FBTyxJQUFJLENBQUM7UUFDckMsNkNBQTZDO1FBQzdDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLFFBQVEsQ0FBQztRQUN6QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssWUFBWSxDQUFDLENBQU8sT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxTQUFTLENBQUMsQ0FBVSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxjQUFjLENBQUMsQ0FBSyxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLFdBQVcsQ0FBQyxDQUFRLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssU0FBUyxDQUFDLENBQVUsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxXQUFXLENBQUMsQ0FBUSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssWUFBWSxDQUFDLENBQU8sT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLE9BQU8sQ0FBQztRQUN4QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLFVBQVUsQ0FBQyxDQUFTLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssUUFBUSxDQUFDLENBQVksT0FBTyxJQUFJLENBQUM7UUFDdEMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sR0FBRyxDQUFDO1FBQ3BDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssWUFBWSxDQUFDLENBQU8sT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEdBQUcsQ0FBQyxDQUFnQixPQUFPLEdBQUcsQ0FBQztRQUNwQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLE9BQU8sQ0FBQztRQUN4QyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxXQUFXLENBQUMsQ0FBUSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE9BQU8sQ0FBQztRQUN4QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssWUFBWSxDQUFDLENBQU8sT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxJQUFJLENBQUMsQ0FBZSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFVBQVUsQ0FBQyxDQUFTLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssU0FBUyxDQUFDLENBQVUsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztLQUN6QztJQUNELE9BQU8sS0FBSyxDQUFDO0FBQ2pCLENBQUM7QUFFRCxvQkFBb0I7QUFDcEIsTUFBTSxVQUFVLEdBQUcsYUFBYSxDQUFDO0FBRWpDLHlCQUF5QjtBQUN6QiwwQkFBMEI7QUFDbkIsU0FBUyxrQkFBa0IsQ0FBQyxPQUFlLEVBQUUsUUFBYTtJQUM3RCxNQUFNLE9BQU8sR0FBRyxPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQ25DLE1BQU0sTUFBTSxHQUFHLE1BQU0sQ0FBQyxNQUFNLENBQUMsRUFBRSxFQUFFLFFBQVEsQ0FBQyxDQUFDO0lBQzNDLElBQUksZ0JBQWdCLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFO1FBQ25DLE1BQU0sQ0FBQyxVQUFVLENBQUMsR0FBRyxPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUM7S0FDbkM7U0FBTTtRQUNILE1BQU0sQ0FBQyxVQUFVLENBQUMsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0tBQ25EO0lBQ0QsSUFBSSxRQUFRLENBQUMsVUFBVSxDQUFDLEVBQUU7UUFDdEIsTUFBTSxDQUFDLFVBQVUsQ0FBQyxJQUFJLEtBQUssUUFBUSxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUM7S0FDckQ7SUFDRCxPQUFPLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUMsR0FBRyxFQUFFLE1BQU0sRUFBRSxFQUFFO1FBQ3ZDLFFBQVEsTUFBTSxDQUFDLENBQUMsQ0FBQyxFQUFFO1lBQ2YsS0FBSyxHQUFHO2dCQUNKLEdBQUcsQ0FBQyxXQUFXLENBQUMsR0FBRyxHQUFHLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztnQkFDMUMsTUFBTTtZQUNWLEtBQUssR0FBRztnQkFDSixHQUFHLENBQUMsYUFBYSxDQUFDLEdBQUcsTUFBTSxDQUFDO2dCQUM1QixNQUFNO1lBQ1YsS0FBSyxHQUFHO2dCQUNKLEdBQUcsQ0FBQyxZQUFZLENBQUMsR0FBRyxRQUFRLENBQUM7Z0JBQzdCLE1BQU07WUFDVixLQUFLLEdBQUc7Z0JBQ0osR0FBRyxDQUFDLGlCQUFpQixDQUFDLEdBQUcsV0FBVyxDQUFDO2dCQUNyQyxNQUFNO1lBQ1YsS0FBSyxHQUFHO2dCQUNKLEdBQUcsQ0FBQyxpQkFBaUIsQ0FBQyxHQUFHLGNBQWMsQ0FBQztnQkFDeEMsTUFBTTtZQUNWLEtBQUssR0FBRyxDQUFDLENBQUMseURBQXlEO1lBQ25FLEtBQUssR0FBRyxFQUFFLDBCQUEwQjtnQkFDaEMsTUFBTTtTQUNiO1FBQ0QsT0FBTyxHQUFHLENBQUM7SUFDZixDQUFDLEVBQUUsTUFBYSxDQUFDLENBQUM7QUFDMUIsQ0FBQztBQUFBLENBQUM7QUFFRix5REFBeUQ7QUFDekQsdUNBQXVDO0FBQ3ZDLHlCQUF5QjtBQUN6QiwwQkFBMEI7QUFDbkIsU0FBUyxZQUFZLENBQUMsT0FBZSxFQUFFLFFBQWE7SUFDdkQsTUFBTSxLQUFLLEdBQUcsT0FBTyxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxPQUFPLEVBQUUsQ0FBQztJQUMzQyxPQUFPLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQyxHQUFHLEVBQUUsR0FBRyxFQUFFLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxHQUFHLEVBQUUsR0FBRyxDQUFDLEVBQUUsUUFBUSxDQUFDLENBQUM7QUFDOUUsQ0FBQztBQUVELCtDQUErQztBQUN4QyxTQUFTLGVBQWUsQ0FBQyxPQUFvQjtJQUNoRCxTQUFTLGNBQWMsQ0FBQyxDQUFjO1FBQ2xDLDhGQUE4RjtRQUM5RixJQUFJLENBQUMsQ0FBQyxFQUFFLElBQUksQ0FBQyxDQUFDLEVBQUUsQ0FBQyxLQUFLLENBQUMsa0JBQWtCLENBQUMsRUFBRTtZQUN4QyxNQUFNLEVBQUUsR0FBRyxDQUFDLENBQUMsT0FBTyxHQUFHLFFBQVEsQ0FBQyxDQUFDLEVBQUUsSUFBSSxDQUFDO1lBQ3hDLElBQUksUUFBUSxDQUFDLGdCQUFnQixDQUFDLEVBQUUsQ0FBQyxDQUFDLE1BQU0sS0FBSyxDQUFDLEVBQUU7Z0JBQzVDLE9BQU8sRUFBRSxDQUFDO2FBQ2I7U0FDSjtRQUNELHdDQUF3QztRQUN4QyxJQUFJLENBQUMsQ0FBQyxDQUFDLGFBQWEsRUFBRTtZQUFFLE9BQU8sTUFBTSxDQUFDO1NBQUU7UUFDeEMsc0NBQXNDO1FBQ3RDLE1BQU0sS0FBSyxHQUNQLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLGFBQWEsQ0FBQyxRQUFRLENBQUM7YUFDL0IsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFLENBQUMsS0FBSyxDQUFDLE9BQU8sS0FBSyxDQUFDLENBQUMsT0FBTyxDQUFDO2FBQzVDLE9BQU8sQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDeEIsT0FBTyxHQUFHLGNBQWMsQ0FBQyxDQUFDLENBQUMsYUFBYSxDQUFDLE1BQU0sQ0FBQyxDQUFDLE9BQU8sZ0JBQWdCLEtBQUssR0FBRyxDQUFDO0lBQ3JGLENBQUM7SUFDRCxPQUFPLGNBQWMsQ0FBQyxPQUFPLENBQUMsQ0FBQztBQUNuQyxDQUFDO0FBRUQsb0VBQW9FO0FBQzdELFNBQVMsUUFBUSxDQUFDLENBQVM7SUFDOUIsSUFBSSxDQUFDLEtBQUssU0FBUztRQUNmLE9BQU8sU0FBUyxDQUFDO0lBQ3JCLE1BQU0sR0FBRyxHQUFHLENBQUMsQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDM0IseUJBQXlCO0lBQ3pCLE9BQU8sR0FBRyxHQUFHLENBQUMsSUFBSSxLQUFLLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDO0FBQ3RFLENBQUM7Ozs7Ozs7VUNsVkQ7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTs7Ozs7V0N0QkE7V0FDQTtXQUNBO1dBQ0E7V0FDQSx5Q0FBeUMsd0NBQXdDO1dBQ2pGO1dBQ0E7V0FDQTs7Ozs7V0NQQTs7Ozs7V0NBQTtXQUNBO1dBQ0E7V0FDQSx1REFBdUQsaUJBQWlCO1dBQ3hFO1dBQ0EsZ0RBQWdELGFBQWE7V0FDN0Q7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQ044QztBQUNtQztBQUMzQztBQUNHO0FBQ0o7QUFFckMsTUFBTSxpQkFBaUIsR0FBRyxPQUFPLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxFQUFFLFFBQVEsRUFBRSxDQUFDLG1CQUFtQixDQUFDLEVBQUUsQ0FBQyxDQUFDO0FBQzNGLE1BQU0sVUFBVSxHQUFHLElBQUksT0FBTyxDQUFDLENBQUMsT0FBTyxFQUFFLE1BQU0sRUFBRSxFQUFFO0lBQy9DLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxNQUFNLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDekMsVUFBVSxDQUFDLE1BQU0sRUFBRSxLQUFLLENBQUM7QUFDN0IsQ0FBQyxDQUFDLENBQUM7QUFFSCxNQUFNLGlCQUFrQixTQUFRLHVEQUFjO0lBRTFDLFlBQW9CLFVBQXVCLEVBQUUsUUFBd0I7UUFDakUsS0FBSyxDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUMsQ0FBQztRQURaLGVBQVUsR0FBVixVQUFVLENBQWE7UUFHdkMsTUFBTSxXQUFXLEdBQUcsQ0FBQyxDQUFDLEdBQVEsRUFBRSxFQUFFO1lBQzlCLElBQUksQ0FBQyxJQUFJLENBQUMsT0FBTyxFQUFFLEdBQUcsQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDckMsR0FBRyxDQUFDLGNBQWMsRUFBRSxDQUFDO1lBQ3JCLEdBQUcsQ0FBQyx3QkFBd0IsRUFBRSxDQUFDO1FBQ25DLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUVkLElBQUksQ0FBQyxVQUFVLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLENBQUMsR0FBUSxFQUFFLEVBQUU7WUFDbkQsSUFBSSxHQUFHLENBQUMsU0FBUyxJQUFJLENBQUMsR0FBRyxDQUFDLFdBQVcsRUFBRTtnQkFDbkMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxDQUFDO2dCQUNqQixHQUFHLENBQUMsTUFBTSxDQUFDLFNBQVMsR0FBRyxFQUFFLENBQUM7Z0JBQzFCLEdBQUcsQ0FBQyxNQUFNLENBQUMsS0FBSyxHQUFHLEVBQUUsQ0FBQzthQUN6QjtRQUNMLENBQUMsQ0FBQyxDQUFDO1FBRUgsc0VBQXNFO1FBQ3RFLDhDQUE4QztRQUM5QyxxQkFBcUI7UUFDckIsc0JBQXNCO1FBQ3RCLG1CQUFtQjtRQUNuQixtQkFBbUI7UUFDbkIsdUNBQXVDO1FBQ3ZDLHFCQUFxQjtRQUNyQixzQkFBc0I7UUFDdEIsbUJBQW1CO1FBQ25CLG1CQUFtQjtRQUNuQixzRUFBc0U7UUFDdEUsK0RBQStEO1FBQy9ELG9FQUFvRTtRQUNwRSxXQUFXO1FBQ1gsZ0VBQWdFO1FBQ2hFLFdBQVc7UUFDWCwwQkFBMEI7UUFDMUIsSUFBSSxzREFBUSxFQUFFLEVBQUU7WUFDWixJQUFJLENBQUMsVUFBVSxDQUFDLGdCQUFnQixDQUFDLGdCQUFnQixFQUFFLENBQUMsQ0FBbUIsRUFBRSxFQUFFO2dCQUN2RSxXQUFXLENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDbkIsQ0FBQyxDQUFDLENBQUM7U0FDTjtJQUNMLENBQUM7SUFFRCxNQUFNLENBQUMsQ0FBUyxFQUFFLENBQVM7UUFDdkIsSUFBSSxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsSUFBSSxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUM7UUFDdEMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsR0FBRyxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUM7SUFDekMsQ0FBQztDQUNKO0FBRU0sTUFBTSxPQUFPLEdBQUcsT0FBTztLQUN6QixPQUFPO0tBQ1AsV0FBVyxDQUFDLEVBQUUsUUFBUSxFQUFFLENBQUMsZ0JBQWdCLENBQUMsRUFBRSxDQUFDO0tBQzdDLElBQUksQ0FBQyxLQUFLLEVBQUUsT0FBZSxFQUFFLEVBQUU7SUFDNUIsTUFBTSwyREFBUyxDQUFDO0lBQ2hCLE1BQU0sVUFBVSxDQUFDO0lBQ2pCLE9BQU8sa0RBQVUsQ0FDYixtREFBWSxDQUFDLE9BQU8sQ0FBQyxFQUNyQixRQUFRLENBQUMsY0FBYyxDQUFDLFFBQVEsQ0FBc0IsRUFDdEQsSUFBSSxpQkFBaUIsQ0FBQyxRQUFRLENBQUMsY0FBYyxDQUFDLFlBQVksQ0FBQyxFQUFFLG1FQUFhLEVBQUUsQ0FBQyxFQUM3RSxpQkFBaUIsQ0FBQyxDQUFDO0FBQzNCLENBQUMsQ0FBQyxDQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvZXZlbnQtbGl0ZS9ldmVudC1saXRlLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL2llZWU3NTQvaW5kZXguanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvd2ViZXh0ZW5zaW9uLXBvbHlmaWxsL2Rpc3QvYnJvd3Nlci1wb2x5ZmlsbC5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9pbnQ2NC1idWZmZXIvaW50NjQtYnVmZmVyLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL2lzYXJyYXkvaW5kZXguanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi9icm93c2VyLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvYnVmZmVyLWdsb2JhbC5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2J1ZmZlci1saXRlLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvYnVmZmVyaXNoLWFycmF5LmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvYnVmZmVyaXNoLWJ1ZmZlci5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2J1ZmZlcmlzaC1wcm90by5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2J1ZmZlcmlzaC11aW50OGFycmF5LmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvYnVmZmVyaXNoLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvY29kZWMtYmFzZS5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2NvZGVjLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZGVjb2RlLWJ1ZmZlci5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2RlY29kZS5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2RlY29kZXIuanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi9lbmNvZGUtYnVmZmVyLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZW5jb2RlLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZW5jb2Rlci5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL2V4dC1idWZmZXIuanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi9leHQtcGFja2VyLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZXh0LXVucGFja2VyLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZXh0LmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvZmxleC1idWZmZXIuanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi9yZWFkLWNvcmUuanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi9yZWFkLWZvcm1hdC5qcyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL25vZGVfbW9kdWxlcy9tc2dwYWNrLWxpdGUvbGliL3JlYWQtdG9rZW4uanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi93cml0ZS1jb3JlLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvd3JpdGUtdG9rZW4uanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9ub2RlX21vZHVsZXMvbXNncGFjay1saXRlL2xpYi93cml0ZS10eXBlLmpzIiwid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL21zZ3BhY2stbGl0ZS9saWIvd3JpdGUtdWludDguanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9zcmMvRXZlbnRFbWl0dGVyLnRzIiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL0tleUhhbmRsZXIudHMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9zcmMvTmVvdmltLnRzIiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL1N0ZGluLnRzIiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL1N0ZG91dC50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL3NyYy9pbnB1dC50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL3NyYy9wYWdlLnRzIiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL3JlbmRlcmVyLnRzIiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL3V0aWxzL2NvbmZpZ3VyYXRpb24udHMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9zcmMvdXRpbHMva2V5cy50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL3NyYy91dGlscy91dGlscy50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL3J1bnRpbWUvZGVmaW5lIHByb3BlcnR5IGdldHRlcnMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vd2VicGFjay9ydW50aW1lL2hhc093blByb3BlcnR5IHNob3J0aGFuZCIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL2ZyYW1lLnRzIl0sInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogZXZlbnQtbGl0ZS5qcyAtIExpZ2h0LXdlaWdodCBFdmVudEVtaXR0ZXIgKGxlc3MgdGhhbiAxS0Igd2hlbiBnemlwcGVkKVxuICpcbiAqIEBjb3B5cmlnaHQgWXVzdWtlIEthd2FzYWtpXG4gKiBAbGljZW5zZSBNSVRcbiAqIEBjb25zdHJ1Y3RvclxuICogQHNlZSBodHRwczovL2dpdGh1Yi5jb20va2F3YW5ldC9ldmVudC1saXRlXG4gKiBAc2VlIGh0dHA6Ly9rYXdhbmV0LmdpdGh1Yi5pby9ldmVudC1saXRlL0V2ZW50TGl0ZS5odG1sXG4gKiBAZXhhbXBsZVxuICogdmFyIEV2ZW50TGl0ZSA9IHJlcXVpcmUoXCJldmVudC1saXRlXCIpO1xuICpcbiAqIGZ1bmN0aW9uIE15Q2xhc3MoKSB7Li4ufSAgICAgICAgICAgICAvLyB5b3VyIGNsYXNzXG4gKlxuICogRXZlbnRMaXRlLm1peGluKE15Q2xhc3MucHJvdG90eXBlKTsgIC8vIGltcG9ydCBldmVudCBtZXRob2RzXG4gKlxuICogdmFyIG9iaiA9IG5ldyBNeUNsYXNzKCk7XG4gKiBvYmoub24oXCJmb29cIiwgZnVuY3Rpb24oKSB7Li4ufSk7ICAgICAvLyBhZGQgZXZlbnQgbGlzdGVuZXJcbiAqIG9iai5vbmNlKFwiYmFyXCIsIGZ1bmN0aW9uKCkgey4uLn0pOyAgIC8vIGFkZCBvbmUtdGltZSBldmVudCBsaXN0ZW5lclxuICogb2JqLmVtaXQoXCJmb29cIik7ICAgICAgICAgICAgICAgICAgICAgLy8gZGlzcGF0Y2ggZXZlbnRcbiAqIG9iai5lbWl0KFwiYmFyXCIpOyAgICAgICAgICAgICAgICAgICAgIC8vIGRpc3BhdGNoIGFub3RoZXIgZXZlbnRcbiAqIG9iai5vZmYoXCJmb29cIik7ICAgICAgICAgICAgICAgICAgICAgIC8vIHJlbW92ZSBldmVudCBsaXN0ZW5lclxuICovXG5cbmZ1bmN0aW9uIEV2ZW50TGl0ZSgpIHtcbiAgaWYgKCEodGhpcyBpbnN0YW5jZW9mIEV2ZW50TGl0ZSkpIHJldHVybiBuZXcgRXZlbnRMaXRlKCk7XG59XG5cbihmdW5jdGlvbihFdmVudExpdGUpIHtcbiAgLy8gZXhwb3J0IHRoZSBjbGFzcyBmb3Igbm9kZS5qc1xuICBpZiAoXCJ1bmRlZmluZWRcIiAhPT0gdHlwZW9mIG1vZHVsZSkgbW9kdWxlLmV4cG9ydHMgPSBFdmVudExpdGU7XG5cbiAgLy8gcHJvcGVydHkgbmFtZSB0byBob2xkIGxpc3RlbmVyc1xuICB2YXIgTElTVEVORVJTID0gXCJsaXN0ZW5lcnNcIjtcblxuICAvLyBtZXRob2RzIHRvIGV4cG9ydFxuICB2YXIgbWV0aG9kcyA9IHtcbiAgICBvbjogb24sXG4gICAgb25jZTogb25jZSxcbiAgICBvZmY6IG9mZixcbiAgICBlbWl0OiBlbWl0XG4gIH07XG5cbiAgLy8gbWl4aW4gdG8gc2VsZlxuICBtaXhpbihFdmVudExpdGUucHJvdG90eXBlKTtcblxuICAvLyBleHBvcnQgbWl4aW4gZnVuY3Rpb25cbiAgRXZlbnRMaXRlLm1peGluID0gbWl4aW47XG5cbiAgLyoqXG4gICAqIEltcG9ydCBvbigpLCBvbmNlKCksIG9mZigpIGFuZCBlbWl0KCkgbWV0aG9kcyBpbnRvIHRhcmdldCBvYmplY3QuXG4gICAqXG4gICAqIEBmdW5jdGlvbiBFdmVudExpdGUubWl4aW5cbiAgICogQHBhcmFtIHRhcmdldCB7UHJvdG90eXBlfVxuICAgKi9cblxuICBmdW5jdGlvbiBtaXhpbih0YXJnZXQpIHtcbiAgICBmb3IgKHZhciBrZXkgaW4gbWV0aG9kcykge1xuICAgICAgdGFyZ2V0W2tleV0gPSBtZXRob2RzW2tleV07XG4gICAgfVxuICAgIHJldHVybiB0YXJnZXQ7XG4gIH1cblxuICAvKipcbiAgICogQWRkIGFuIGV2ZW50IGxpc3RlbmVyLlxuICAgKlxuICAgKiBAZnVuY3Rpb24gRXZlbnRMaXRlLnByb3RvdHlwZS5vblxuICAgKiBAcGFyYW0gdHlwZSB7c3RyaW5nfVxuICAgKiBAcGFyYW0gZnVuYyB7RnVuY3Rpb259XG4gICAqIEByZXR1cm5zIHtFdmVudExpdGV9IFNlbGYgZm9yIG1ldGhvZCBjaGFpbmluZ1xuICAgKi9cblxuICBmdW5jdGlvbiBvbih0eXBlLCBmdW5jKSB7XG4gICAgZ2V0TGlzdGVuZXJzKHRoaXMsIHR5cGUpLnB1c2goZnVuYyk7XG4gICAgcmV0dXJuIHRoaXM7XG4gIH1cblxuICAvKipcbiAgICogQWRkIG9uZS10aW1lIGV2ZW50IGxpc3RlbmVyLlxuICAgKlxuICAgKiBAZnVuY3Rpb24gRXZlbnRMaXRlLnByb3RvdHlwZS5vbmNlXG4gICAqIEBwYXJhbSB0eXBlIHtzdHJpbmd9XG4gICAqIEBwYXJhbSBmdW5jIHtGdW5jdGlvbn1cbiAgICogQHJldHVybnMge0V2ZW50TGl0ZX0gU2VsZiBmb3IgbWV0aG9kIGNoYWluaW5nXG4gICAqL1xuXG4gIGZ1bmN0aW9uIG9uY2UodHlwZSwgZnVuYykge1xuICAgIHZhciB0aGF0ID0gdGhpcztcbiAgICB3cmFwLm9yaWdpbmFsTGlzdGVuZXIgPSBmdW5jO1xuICAgIGdldExpc3RlbmVycyh0aGF0LCB0eXBlKS5wdXNoKHdyYXApO1xuICAgIHJldHVybiB0aGF0O1xuXG4gICAgZnVuY3Rpb24gd3JhcCgpIHtcbiAgICAgIG9mZi5jYWxsKHRoYXQsIHR5cGUsIHdyYXApO1xuICAgICAgZnVuYy5hcHBseSh0aGlzLCBhcmd1bWVudHMpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBSZW1vdmUgYW4gZXZlbnQgbGlzdGVuZXIuXG4gICAqXG4gICAqIEBmdW5jdGlvbiBFdmVudExpdGUucHJvdG90eXBlLm9mZlxuICAgKiBAcGFyYW0gW3R5cGVdIHtzdHJpbmd9XG4gICAqIEBwYXJhbSBbZnVuY10ge0Z1bmN0aW9ufVxuICAgKiBAcmV0dXJucyB7RXZlbnRMaXRlfSBTZWxmIGZvciBtZXRob2QgY2hhaW5pbmdcbiAgICovXG5cbiAgZnVuY3Rpb24gb2ZmKHR5cGUsIGZ1bmMpIHtcbiAgICB2YXIgdGhhdCA9IHRoaXM7XG4gICAgdmFyIGxpc3RuZXJzO1xuICAgIGlmICghYXJndW1lbnRzLmxlbmd0aCkge1xuICAgICAgZGVsZXRlIHRoYXRbTElTVEVORVJTXTtcbiAgICB9IGVsc2UgaWYgKCFmdW5jKSB7XG4gICAgICBsaXN0bmVycyA9IHRoYXRbTElTVEVORVJTXTtcbiAgICAgIGlmIChsaXN0bmVycykge1xuICAgICAgICBkZWxldGUgbGlzdG5lcnNbdHlwZV07XG4gICAgICAgIGlmICghT2JqZWN0LmtleXMobGlzdG5lcnMpLmxlbmd0aCkgcmV0dXJuIG9mZi5jYWxsKHRoYXQpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBsaXN0bmVycyA9IGdldExpc3RlbmVycyh0aGF0LCB0eXBlLCB0cnVlKTtcbiAgICAgIGlmIChsaXN0bmVycykge1xuICAgICAgICBsaXN0bmVycyA9IGxpc3RuZXJzLmZpbHRlcihuZSk7XG4gICAgICAgIGlmICghbGlzdG5lcnMubGVuZ3RoKSByZXR1cm4gb2ZmLmNhbGwodGhhdCwgdHlwZSk7XG4gICAgICAgIHRoYXRbTElTVEVORVJTXVt0eXBlXSA9IGxpc3RuZXJzO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gdGhhdDtcblxuICAgIGZ1bmN0aW9uIG5lKHRlc3QpIHtcbiAgICAgIHJldHVybiB0ZXN0ICE9PSBmdW5jICYmIHRlc3Qub3JpZ2luYWxMaXN0ZW5lciAhPT0gZnVuYztcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogRGlzcGF0Y2ggKHRyaWdnZXIpIGFuIGV2ZW50LlxuICAgKlxuICAgKiBAZnVuY3Rpb24gRXZlbnRMaXRlLnByb3RvdHlwZS5lbWl0XG4gICAqIEBwYXJhbSB0eXBlIHtzdHJpbmd9XG4gICAqIEBwYXJhbSBbdmFsdWVdIHsqfVxuICAgKiBAcmV0dXJucyB7Ym9vbGVhbn0gVHJ1ZSB3aGVuIGEgbGlzdGVuZXIgcmVjZWl2ZWQgdGhlIGV2ZW50XG4gICAqL1xuXG4gIGZ1bmN0aW9uIGVtaXQodHlwZSwgdmFsdWUpIHtcbiAgICB2YXIgdGhhdCA9IHRoaXM7XG4gICAgdmFyIGxpc3RlbmVycyA9IGdldExpc3RlbmVycyh0aGF0LCB0eXBlLCB0cnVlKTtcbiAgICBpZiAoIWxpc3RlbmVycykgcmV0dXJuIGZhbHNlO1xuICAgIHZhciBhcmdsZW4gPSBhcmd1bWVudHMubGVuZ3RoO1xuICAgIGlmIChhcmdsZW4gPT09IDEpIHtcbiAgICAgIGxpc3RlbmVycy5mb3JFYWNoKHplcm9hcmcpO1xuICAgIH0gZWxzZSBpZiAoYXJnbGVuID09PSAyKSB7XG4gICAgICBsaXN0ZW5lcnMuZm9yRWFjaChvbmVhcmcpO1xuICAgIH0gZWxzZSB7XG4gICAgICB2YXIgYXJncyA9IEFycmF5LnByb3RvdHlwZS5zbGljZS5jYWxsKGFyZ3VtZW50cywgMSk7XG4gICAgICBsaXN0ZW5lcnMuZm9yRWFjaChtb3JlYXJncyk7XG4gICAgfVxuICAgIHJldHVybiAhIWxpc3RlbmVycy5sZW5ndGg7XG5cbiAgICBmdW5jdGlvbiB6ZXJvYXJnKGZ1bmMpIHtcbiAgICAgIGZ1bmMuY2FsbCh0aGF0KTtcbiAgICB9XG5cbiAgICBmdW5jdGlvbiBvbmVhcmcoZnVuYykge1xuICAgICAgZnVuYy5jYWxsKHRoYXQsIHZhbHVlKTtcbiAgICB9XG5cbiAgICBmdW5jdGlvbiBtb3JlYXJncyhmdW5jKSB7XG4gICAgICBmdW5jLmFwcGx5KHRoYXQsIGFyZ3MpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBAaWdub3JlXG4gICAqL1xuXG4gIGZ1bmN0aW9uIGdldExpc3RlbmVycyh0aGF0LCB0eXBlLCByZWFkb25seSkge1xuICAgIGlmIChyZWFkb25seSAmJiAhdGhhdFtMSVNURU5FUlNdKSByZXR1cm47XG4gICAgdmFyIGxpc3RlbmVycyA9IHRoYXRbTElTVEVORVJTXSB8fCAodGhhdFtMSVNURU5FUlNdID0ge30pO1xuICAgIHJldHVybiBsaXN0ZW5lcnNbdHlwZV0gfHwgKGxpc3RlbmVyc1t0eXBlXSA9IFtdKTtcbiAgfVxuXG59KShFdmVudExpdGUpO1xuIiwiZXhwb3J0cy5yZWFkID0gZnVuY3Rpb24gKGJ1ZmZlciwgb2Zmc2V0LCBpc0xFLCBtTGVuLCBuQnl0ZXMpIHtcbiAgdmFyIGUsIG1cbiAgdmFyIGVMZW4gPSAobkJ5dGVzICogOCkgLSBtTGVuIC0gMVxuICB2YXIgZU1heCA9ICgxIDw8IGVMZW4pIC0gMVxuICB2YXIgZUJpYXMgPSBlTWF4ID4+IDFcbiAgdmFyIG5CaXRzID0gLTdcbiAgdmFyIGkgPSBpc0xFID8gKG5CeXRlcyAtIDEpIDogMFxuICB2YXIgZCA9IGlzTEUgPyAtMSA6IDFcbiAgdmFyIHMgPSBidWZmZXJbb2Zmc2V0ICsgaV1cblxuICBpICs9IGRcblxuICBlID0gcyAmICgoMSA8PCAoLW5CaXRzKSkgLSAxKVxuICBzID4+PSAoLW5CaXRzKVxuICBuQml0cyArPSBlTGVuXG4gIGZvciAoOyBuQml0cyA+IDA7IGUgPSAoZSAqIDI1NikgKyBidWZmZXJbb2Zmc2V0ICsgaV0sIGkgKz0gZCwgbkJpdHMgLT0gOCkge31cblxuICBtID0gZSAmICgoMSA8PCAoLW5CaXRzKSkgLSAxKVxuICBlID4+PSAoLW5CaXRzKVxuICBuQml0cyArPSBtTGVuXG4gIGZvciAoOyBuQml0cyA+IDA7IG0gPSAobSAqIDI1NikgKyBidWZmZXJbb2Zmc2V0ICsgaV0sIGkgKz0gZCwgbkJpdHMgLT0gOCkge31cblxuICBpZiAoZSA9PT0gMCkge1xuICAgIGUgPSAxIC0gZUJpYXNcbiAgfSBlbHNlIGlmIChlID09PSBlTWF4KSB7XG4gICAgcmV0dXJuIG0gPyBOYU4gOiAoKHMgPyAtMSA6IDEpICogSW5maW5pdHkpXG4gIH0gZWxzZSB7XG4gICAgbSA9IG0gKyBNYXRoLnBvdygyLCBtTGVuKVxuICAgIGUgPSBlIC0gZUJpYXNcbiAgfVxuICByZXR1cm4gKHMgPyAtMSA6IDEpICogbSAqIE1hdGgucG93KDIsIGUgLSBtTGVuKVxufVxuXG5leHBvcnRzLndyaXRlID0gZnVuY3Rpb24gKGJ1ZmZlciwgdmFsdWUsIG9mZnNldCwgaXNMRSwgbUxlbiwgbkJ5dGVzKSB7XG4gIHZhciBlLCBtLCBjXG4gIHZhciBlTGVuID0gKG5CeXRlcyAqIDgpIC0gbUxlbiAtIDFcbiAgdmFyIGVNYXggPSAoMSA8PCBlTGVuKSAtIDFcbiAgdmFyIGVCaWFzID0gZU1heCA+PiAxXG4gIHZhciBydCA9IChtTGVuID09PSAyMyA/IE1hdGgucG93KDIsIC0yNCkgLSBNYXRoLnBvdygyLCAtNzcpIDogMClcbiAgdmFyIGkgPSBpc0xFID8gMCA6IChuQnl0ZXMgLSAxKVxuICB2YXIgZCA9IGlzTEUgPyAxIDogLTFcbiAgdmFyIHMgPSB2YWx1ZSA8IDAgfHwgKHZhbHVlID09PSAwICYmIDEgLyB2YWx1ZSA8IDApID8gMSA6IDBcblxuICB2YWx1ZSA9IE1hdGguYWJzKHZhbHVlKVxuXG4gIGlmIChpc05hTih2YWx1ZSkgfHwgdmFsdWUgPT09IEluZmluaXR5KSB7XG4gICAgbSA9IGlzTmFOKHZhbHVlKSA/IDEgOiAwXG4gICAgZSA9IGVNYXhcbiAgfSBlbHNlIHtcbiAgICBlID0gTWF0aC5mbG9vcihNYXRoLmxvZyh2YWx1ZSkgLyBNYXRoLkxOMilcbiAgICBpZiAodmFsdWUgKiAoYyA9IE1hdGgucG93KDIsIC1lKSkgPCAxKSB7XG4gICAgICBlLS1cbiAgICAgIGMgKj0gMlxuICAgIH1cbiAgICBpZiAoZSArIGVCaWFzID49IDEpIHtcbiAgICAgIHZhbHVlICs9IHJ0IC8gY1xuICAgIH0gZWxzZSB7XG4gICAgICB2YWx1ZSArPSBydCAqIE1hdGgucG93KDIsIDEgLSBlQmlhcylcbiAgICB9XG4gICAgaWYgKHZhbHVlICogYyA+PSAyKSB7XG4gICAgICBlKytcbiAgICAgIGMgLz0gMlxuICAgIH1cblxuICAgIGlmIChlICsgZUJpYXMgPj0gZU1heCkge1xuICAgICAgbSA9IDBcbiAgICAgIGUgPSBlTWF4XG4gICAgfSBlbHNlIGlmIChlICsgZUJpYXMgPj0gMSkge1xuICAgICAgbSA9ICgodmFsdWUgKiBjKSAtIDEpICogTWF0aC5wb3coMiwgbUxlbilcbiAgICAgIGUgPSBlICsgZUJpYXNcbiAgICB9IGVsc2Uge1xuICAgICAgbSA9IHZhbHVlICogTWF0aC5wb3coMiwgZUJpYXMgLSAxKSAqIE1hdGgucG93KDIsIG1MZW4pXG4gICAgICBlID0gMFxuICAgIH1cbiAgfVxuXG4gIGZvciAoOyBtTGVuID49IDg7IGJ1ZmZlcltvZmZzZXQgKyBpXSA9IG0gJiAweGZmLCBpICs9IGQsIG0gLz0gMjU2LCBtTGVuIC09IDgpIHt9XG5cbiAgZSA9IChlIDw8IG1MZW4pIHwgbVxuICBlTGVuICs9IG1MZW5cbiAgZm9yICg7IGVMZW4gPiAwOyBidWZmZXJbb2Zmc2V0ICsgaV0gPSBlICYgMHhmZiwgaSArPSBkLCBlIC89IDI1NiwgZUxlbiAtPSA4KSB7fVxuXG4gIGJ1ZmZlcltvZmZzZXQgKyBpIC0gZF0gfD0gcyAqIDEyOFxufVxuIiwiLyoqKiBJTVBPUlRTIEZST00gaW1wb3J0cy1sb2FkZXIgKioqL1xuXG5icm93c2VyID0gdW5kZWZpbmVkO1xuXG4oZnVuY3Rpb24gKGdsb2JhbCwgZmFjdG9yeSkge1xuICBpZiAodHlwZW9mIGRlZmluZSA9PT0gXCJmdW5jdGlvblwiICYmIGRlZmluZS5hbWQpIHtcbiAgICBkZWZpbmUoXCJ3ZWJleHRlbnNpb24tcG9seWZpbGxcIiwgW1wibW9kdWxlXCJdLCBmYWN0b3J5KTtcbiAgfSBlbHNlIGlmICh0eXBlb2YgZXhwb3J0cyAhPT0gXCJ1bmRlZmluZWRcIikge1xuICAgIGZhY3RvcnkobW9kdWxlKTtcbiAgfSBlbHNlIHtcbiAgICB2YXIgbW9kID0ge1xuICAgICAgZXhwb3J0czoge31cbiAgICB9O1xuICAgIGZhY3RvcnkobW9kKTtcbiAgICBnbG9iYWwuYnJvd3NlciA9IG1vZC5leHBvcnRzO1xuICB9XG59KSh0eXBlb2YgZ2xvYmFsVGhpcyAhPT0gXCJ1bmRlZmluZWRcIiA/IGdsb2JhbFRoaXMgOiB0eXBlb2Ygc2VsZiAhPT0gXCJ1bmRlZmluZWRcIiA/IHNlbGYgOiB0aGlzLCBmdW5jdGlvbiAobW9kdWxlKSB7XG4gIC8qIHdlYmV4dGVuc2lvbi1wb2x5ZmlsbCAtIHYwLjguMCAtIFR1ZSBBcHIgMjAgMjAyMSAxMToyNzozOCAqL1xuXG4gIC8qIC0qLSBNb2RlOiBpbmRlbnQtdGFicy1tb2RlOiBuaWw7IGpzLWluZGVudC1sZXZlbDogMiAtKi0gKi9cblxuICAvKiB2aW06IHNldCBzdHM9MiBzdz0yIGV0IHR3PTgwOiAqL1xuXG4gIC8qIFRoaXMgU291cmNlIENvZGUgRm9ybSBpcyBzdWJqZWN0IHRvIHRoZSB0ZXJtcyBvZiB0aGUgTW96aWxsYSBQdWJsaWNcbiAgICogTGljZW5zZSwgdi4gMi4wLiBJZiBhIGNvcHkgb2YgdGhlIE1QTCB3YXMgbm90IGRpc3RyaWJ1dGVkIHdpdGggdGhpc1xuICAgKiBmaWxlLCBZb3UgY2FuIG9idGFpbiBvbmUgYXQgaHR0cDovL21vemlsbGEub3JnL01QTC8yLjAvLiAqL1xuICBcInVzZSBzdHJpY3RcIjtcblxuICBpZiAodHlwZW9mIGJyb3dzZXIgPT09IFwidW5kZWZpbmVkXCIgfHwgT2JqZWN0LmdldFByb3RvdHlwZU9mKGJyb3dzZXIpICE9PSBPYmplY3QucHJvdG90eXBlKSB7XG4gICAgY29uc3QgQ0hST01FX1NFTkRfTUVTU0FHRV9DQUxMQkFDS19OT19SRVNQT05TRV9NRVNTQUdFID0gXCJUaGUgbWVzc2FnZSBwb3J0IGNsb3NlZCBiZWZvcmUgYSByZXNwb25zZSB3YXMgcmVjZWl2ZWQuXCI7XG4gICAgY29uc3QgU0VORF9SRVNQT05TRV9ERVBSRUNBVElPTl9XQVJOSU5HID0gXCJSZXR1cm5pbmcgYSBQcm9taXNlIGlzIHRoZSBwcmVmZXJyZWQgd2F5IHRvIHNlbmQgYSByZXBseSBmcm9tIGFuIG9uTWVzc2FnZS9vbk1lc3NhZ2VFeHRlcm5hbCBsaXN0ZW5lciwgYXMgdGhlIHNlbmRSZXNwb25zZSB3aWxsIGJlIHJlbW92ZWQgZnJvbSB0aGUgc3BlY3MgKFNlZSBodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9kb2NzL01vemlsbGEvQWRkLW9ucy9XZWJFeHRlbnNpb25zL0FQSS9ydW50aW1lL29uTWVzc2FnZSlcIjsgLy8gV3JhcHBpbmcgdGhlIGJ1bGsgb2YgdGhpcyBwb2x5ZmlsbCBpbiBhIG9uZS10aW1lLXVzZSBmdW5jdGlvbiBpcyBhIG1pbm9yXG4gICAgLy8gb3B0aW1pemF0aW9uIGZvciBGaXJlZm94LiBTaW5jZSBTcGlkZXJtb25rZXkgZG9lcyBub3QgZnVsbHkgcGFyc2UgdGhlXG4gICAgLy8gY29udGVudHMgb2YgYSBmdW5jdGlvbiB1bnRpbCB0aGUgZmlyc3QgdGltZSBpdCdzIGNhbGxlZCwgYW5kIHNpbmNlIGl0IHdpbGxcbiAgICAvLyBuZXZlciBhY3R1YWxseSBuZWVkIHRvIGJlIGNhbGxlZCwgdGhpcyBhbGxvd3MgdGhlIHBvbHlmaWxsIHRvIGJlIGluY2x1ZGVkXG4gICAgLy8gaW4gRmlyZWZveCBuZWFybHkgZm9yIGZyZWUuXG5cbiAgICBjb25zdCB3cmFwQVBJcyA9IGV4dGVuc2lvbkFQSXMgPT4ge1xuICAgICAgLy8gTk9URTogYXBpTWV0YWRhdGEgaXMgYXNzb2NpYXRlZCB0byB0aGUgY29udGVudCBvZiB0aGUgYXBpLW1ldGFkYXRhLmpzb24gZmlsZVxuICAgICAgLy8gYXQgYnVpbGQgdGltZSBieSByZXBsYWNpbmcgdGhlIGZvbGxvd2luZyBcImluY2x1ZGVcIiB3aXRoIHRoZSBjb250ZW50IG9mIHRoZVxuICAgICAgLy8gSlNPTiBmaWxlLlxuICAgICAgY29uc3QgYXBpTWV0YWRhdGEgPSB7XG4gICAgICAgIFwiYWxhcm1zXCI6IHtcbiAgICAgICAgICBcImNsZWFyXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY2xlYXJBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJib29rbWFya3NcIjoge1xuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Q2hpbGRyZW5cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRSZWNlbnRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRTdWJUcmVlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0VHJlZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcIm1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMlxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVUcmVlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VhcmNoXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiYnJvd3NlckFjdGlvblwiOiB7XG4gICAgICAgICAgXCJkaXNhYmxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZW5hYmxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QmFkZ2VCYWNrZ3JvdW5kQ29sb3JcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRCYWRnZVRleHRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwib3BlblBvcHVwXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0QmFkZ2VCYWNrZ3JvdW5kQ29sb3JcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRCYWRnZVRleHRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRJY29uXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0UG9wdXBcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRUaXRsZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcImJyb3dzaW5nRGF0YVwiOiB7XG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMlxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVDYWNoZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUNvb2tpZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVEb3dubG9hZHNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVGb3JtRGF0YVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUhpc3RvcnlcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVMb2NhbFN0b3JhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVQYXNzd29yZHNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVQbHVnaW5EYXRhXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0dGluZ3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJjb21tYW5kc1wiOiB7XG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJjb250ZXh0TWVudXNcIjoge1xuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlQWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiY29va2llc1wiOiB7XG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxDb29raWVTdG9yZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJkZXZ0b29sc1wiOiB7XG4gICAgICAgICAgXCJpbnNwZWN0ZWRXaW5kb3dcIjoge1xuICAgICAgICAgICAgXCJldmFsXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyLFxuICAgICAgICAgICAgICBcInNpbmdsZUNhbGxiYWNrQXJnXCI6IGZhbHNlXG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInBhbmVsc1wiOiB7XG4gICAgICAgICAgICBcImNyZWF0ZVwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAzLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMyxcbiAgICAgICAgICAgICAgXCJzaW5nbGVDYWxsYmFja0FyZ1wiOiB0cnVlXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJlbGVtZW50c1wiOiB7XG4gICAgICAgICAgICAgIFwiY3JlYXRlU2lkZWJhclBhbmVcIjoge1xuICAgICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiZG93bmxvYWRzXCI6IHtcbiAgICAgICAgICBcImNhbmNlbFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRvd25sb2FkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZXJhc2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRGaWxlSWNvblwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcIm9wZW5cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJwYXVzZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUZpbGVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZXN1bWVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZWFyY2hcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzaG93XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiZXh0ZW5zaW9uXCI6IHtcbiAgICAgICAgICBcImlzQWxsb3dlZEZpbGVTY2hlbWVBY2Nlc3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJpc0FsbG93ZWRJbmNvZ25pdG9BY2Nlc3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJoaXN0b3J5XCI6IHtcbiAgICAgICAgICBcImFkZFVybFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRlbGV0ZUFsbFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRlbGV0ZVJhbmdlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZGVsZXRlVXJsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0VmlzaXRzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VhcmNoXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiaTE4blwiOiB7XG4gICAgICAgICAgXCJkZXRlY3RMYW5ndWFnZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldEFjY2VwdExhbmd1YWdlc1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcImlkZW50aXR5XCI6IHtcbiAgICAgICAgICBcImxhdW5jaFdlYkF1dGhGbG93XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiaWRsZVwiOiB7XG4gICAgICAgICAgXCJxdWVyeVN0YXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwibWFuYWdlbWVudFwiOiB7XG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRTZWxmXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0RW5hYmxlZFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMixcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInVuaW5zdGFsbFNlbGZcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJub3RpZmljYXRpb25zXCI6IHtcbiAgICAgICAgICBcImNsZWFyXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0UGVybWlzc2lvbkxldmVsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwicGFnZUFjdGlvblwiOiB7XG4gICAgICAgICAgXCJnZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaGlkZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNldEljb25cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2hvd1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInBlcm1pc3Npb25zXCI6IHtcbiAgICAgICAgICBcImNvbnRhaW5zXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVxdWVzdFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInJ1bnRpbWVcIjoge1xuICAgICAgICAgIFwiZ2V0QmFja2dyb3VuZFBhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRQbGF0Zm9ybUluZm9cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJvcGVuT3B0aW9uc1BhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZXF1ZXN0VXBkYXRlQ2hlY2tcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZW5kTWVzc2FnZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAzXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNlbmROYXRpdmVNZXNzYWdlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0VW5pbnN0YWxsVVJMXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwic2Vzc2lvbnNcIjoge1xuICAgICAgICAgIFwiZ2V0RGV2aWNlc1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFJlY2VudGx5Q2xvc2VkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVzdG9yZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInN0b3JhZ2VcIjoge1xuICAgICAgICAgIFwibG9jYWxcIjoge1xuICAgICAgICAgICAgXCJjbGVhclwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBcInNldFwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJtYW5hZ2VkXCI6IHtcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInN5bmNcIjoge1xuICAgICAgICAgICAgXCJjbGVhclwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBcInNldFwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJ0YWJzXCI6IHtcbiAgICAgICAgICBcImNhcHR1cmVWaXNpYmxlVGFiXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZGV0ZWN0TGFuZ3VhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJkaXNjYXJkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZHVwbGljYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZXhlY3V0ZVNjcmlwdFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldEN1cnJlbnRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRab29tXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Wm9vbVNldHRpbmdzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ29CYWNrXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ29Gb3J3YXJkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaGlnaGxpZ2h0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaW5zZXJ0Q1NTXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwibW92ZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMixcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInF1ZXJ5XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVsb2FkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlQ1NTXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VuZE1lc3NhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogM1xuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRab29tXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0Wm9vbVNldHRpbmdzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwidG9wU2l0ZXNcIjoge1xuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwid2ViTmF2aWdhdGlvblwiOiB7XG4gICAgICAgICAgXCJnZXRBbGxGcmFtZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRGcmFtZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcIndlYlJlcXVlc3RcIjoge1xuICAgICAgICAgIFwiaGFuZGxlckJlaGF2aW9yQ2hhbmdlZFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcIndpbmRvd3NcIjoge1xuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Q3VycmVudFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldExhc3RGb2N1c2VkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH07XG5cbiAgICAgIGlmIChPYmplY3Qua2V5cyhhcGlNZXRhZGF0YSkubGVuZ3RoID09PSAwKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcImFwaS1tZXRhZGF0YS5qc29uIGhhcyBub3QgYmVlbiBpbmNsdWRlZCBpbiBicm93c2VyLXBvbHlmaWxsXCIpO1xuICAgICAgfVxuICAgICAgLyoqXG4gICAgICAgKiBBIFdlYWtNYXAgc3ViY2xhc3Mgd2hpY2ggY3JlYXRlcyBhbmQgc3RvcmVzIGEgdmFsdWUgZm9yIGFueSBrZXkgd2hpY2ggZG9lc1xuICAgICAgICogbm90IGV4aXN0IHdoZW4gYWNjZXNzZWQsIGJ1dCBiZWhhdmVzIGV4YWN0bHkgYXMgYW4gb3JkaW5hcnkgV2Vha01hcFxuICAgICAgICogb3RoZXJ3aXNlLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7ZnVuY3Rpb259IGNyZWF0ZUl0ZW1cbiAgICAgICAqICAgICAgICBBIGZ1bmN0aW9uIHdoaWNoIHdpbGwgYmUgY2FsbGVkIGluIG9yZGVyIHRvIGNyZWF0ZSB0aGUgdmFsdWUgZm9yIGFueVxuICAgICAgICogICAgICAgIGtleSB3aGljaCBkb2VzIG5vdCBleGlzdCwgdGhlIGZpcnN0IHRpbWUgaXQgaXMgYWNjZXNzZWQuIFRoZVxuICAgICAgICogICAgICAgIGZ1bmN0aW9uIHJlY2VpdmVzLCBhcyBpdHMgb25seSBhcmd1bWVudCwgdGhlIGtleSBiZWluZyBjcmVhdGVkLlxuICAgICAgICovXG5cblxuICAgICAgY2xhc3MgRGVmYXVsdFdlYWtNYXAgZXh0ZW5kcyBXZWFrTWFwIHtcbiAgICAgICAgY29uc3RydWN0b3IoY3JlYXRlSXRlbSwgaXRlbXMgPSB1bmRlZmluZWQpIHtcbiAgICAgICAgICBzdXBlcihpdGVtcyk7XG4gICAgICAgICAgdGhpcy5jcmVhdGVJdGVtID0gY3JlYXRlSXRlbTtcbiAgICAgICAgfVxuXG4gICAgICAgIGdldChrZXkpIHtcbiAgICAgICAgICBpZiAoIXRoaXMuaGFzKGtleSkpIHtcbiAgICAgICAgICAgIHRoaXMuc2V0KGtleSwgdGhpcy5jcmVhdGVJdGVtKGtleSkpO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHJldHVybiBzdXBlci5nZXQoa2V5KTtcbiAgICAgICAgfVxuXG4gICAgICB9XG4gICAgICAvKipcbiAgICAgICAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgZ2l2ZW4gb2JqZWN0IGlzIGFuIG9iamVjdCB3aXRoIGEgYHRoZW5gIG1ldGhvZCwgYW5kIGNhblxuICAgICAgICogdGhlcmVmb3JlIGJlIGFzc3VtZWQgdG8gYmVoYXZlIGFzIGEgUHJvbWlzZS5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0geyp9IHZhbHVlIFRoZSB2YWx1ZSB0byB0ZXN0LlxuICAgICAgICogQHJldHVybnMge2Jvb2xlYW59IFRydWUgaWYgdGhlIHZhbHVlIGlzIHRoZW5hYmxlLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3QgaXNUaGVuYWJsZSA9IHZhbHVlID0+IHtcbiAgICAgICAgcmV0dXJuIHZhbHVlICYmIHR5cGVvZiB2YWx1ZSA9PT0gXCJvYmplY3RcIiAmJiB0eXBlb2YgdmFsdWUudGhlbiA9PT0gXCJmdW5jdGlvblwiO1xuICAgICAgfTtcbiAgICAgIC8qKlxuICAgICAgICogQ3JlYXRlcyBhbmQgcmV0dXJucyBhIGZ1bmN0aW9uIHdoaWNoLCB3aGVuIGNhbGxlZCwgd2lsbCByZXNvbHZlIG9yIHJlamVjdFxuICAgICAgICogdGhlIGdpdmVuIHByb21pc2UgYmFzZWQgb24gaG93IGl0IGlzIGNhbGxlZDpcbiAgICAgICAqXG4gICAgICAgKiAtIElmLCB3aGVuIGNhbGxlZCwgYGNocm9tZS5ydW50aW1lLmxhc3RFcnJvcmAgY29udGFpbnMgYSBub24tbnVsbCBvYmplY3QsXG4gICAgICAgKiAgIHRoZSBwcm9taXNlIGlzIHJlamVjdGVkIHdpdGggdGhhdCB2YWx1ZS5cbiAgICAgICAqIC0gSWYgdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aXRoIGV4YWN0bHkgb25lIGFyZ3VtZW50LCB0aGUgcHJvbWlzZSBpc1xuICAgICAgICogICByZXNvbHZlZCB0byB0aGF0IHZhbHVlLlxuICAgICAgICogLSBPdGhlcndpc2UsIHRoZSBwcm9taXNlIGlzIHJlc29sdmVkIHRvIGFuIGFycmF5IGNvbnRhaW5pbmcgYWxsIG9mIHRoZVxuICAgICAgICogICBmdW5jdGlvbidzIGFyZ3VtZW50cy5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gcHJvbWlzZVxuICAgICAgICogICAgICAgIEFuIG9iamVjdCBjb250YWluaW5nIHRoZSByZXNvbHV0aW9uIGFuZCByZWplY3Rpb24gZnVuY3Rpb25zIG9mIGFcbiAgICAgICAqICAgICAgICBwcm9taXNlLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gcHJvbWlzZS5yZXNvbHZlXG4gICAgICAgKiAgICAgICAgVGhlIHByb21pc2UncyByZXNvbHV0aW9uIGZ1bmN0aW9uLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gcHJvbWlzZS5yZWplY3RcbiAgICAgICAqICAgICAgICBUaGUgcHJvbWlzZSdzIHJlamVjdGlvbiBmdW5jdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSBtZXRhZGF0YVxuICAgICAgICogICAgICAgIE1ldGFkYXRhIGFib3V0IHRoZSB3cmFwcGVkIG1ldGhvZCB3aGljaCBoYXMgY3JlYXRlZCB0aGUgY2FsbGJhY2suXG4gICAgICAgKiBAcGFyYW0ge2Jvb2xlYW59IG1ldGFkYXRhLnNpbmdsZUNhbGxiYWNrQXJnXG4gICAgICAgKiAgICAgICAgV2hldGhlciBvciBub3QgdGhlIHByb21pc2UgaXMgcmVzb2x2ZWQgd2l0aCBvbmx5IHRoZSBmaXJzdFxuICAgICAgICogICAgICAgIGFyZ3VtZW50IG9mIHRoZSBjYWxsYmFjaywgYWx0ZXJuYXRpdmVseSBhbiBhcnJheSBvZiBhbGwgdGhlXG4gICAgICAgKiAgICAgICAgY2FsbGJhY2sgYXJndW1lbnRzIGlzIHJlc29sdmVkLiBCeSBkZWZhdWx0LCBpZiB0aGUgY2FsbGJhY2tcbiAgICAgICAqICAgICAgICBmdW5jdGlvbiBpcyBpbnZva2VkIHdpdGggb25seSBhIHNpbmdsZSBhcmd1bWVudCwgdGhhdCB3aWxsIGJlXG4gICAgICAgKiAgICAgICAgcmVzb2x2ZWQgdG8gdGhlIHByb21pc2UsIHdoaWxlIGFsbCBhcmd1bWVudHMgd2lsbCBiZSByZXNvbHZlZCBhc1xuICAgICAgICogICAgICAgIGFuIGFycmF5IGlmIG11bHRpcGxlIGFyZSBnaXZlbi5cbiAgICAgICAqXG4gICAgICAgKiBAcmV0dXJucyB7ZnVuY3Rpb259XG4gICAgICAgKiAgICAgICAgVGhlIGdlbmVyYXRlZCBjYWxsYmFjayBmdW5jdGlvbi5cbiAgICAgICAqL1xuXG5cbiAgICAgIGNvbnN0IG1ha2VDYWxsYmFjayA9IChwcm9taXNlLCBtZXRhZGF0YSkgPT4ge1xuICAgICAgICByZXR1cm4gKC4uLmNhbGxiYWNrQXJncykgPT4ge1xuICAgICAgICAgIGlmIChleHRlbnNpb25BUElzLnJ1bnRpbWUubGFzdEVycm9yKSB7XG4gICAgICAgICAgICBwcm9taXNlLnJlamVjdChuZXcgRXJyb3IoZXh0ZW5zaW9uQVBJcy5ydW50aW1lLmxhc3RFcnJvci5tZXNzYWdlKSk7XG4gICAgICAgICAgfSBlbHNlIGlmIChtZXRhZGF0YS5zaW5nbGVDYWxsYmFja0FyZyB8fCBjYWxsYmFja0FyZ3MubGVuZ3RoIDw9IDEgJiYgbWV0YWRhdGEuc2luZ2xlQ2FsbGJhY2tBcmcgIT09IGZhbHNlKSB7XG4gICAgICAgICAgICBwcm9taXNlLnJlc29sdmUoY2FsbGJhY2tBcmdzWzBdKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgcHJvbWlzZS5yZXNvbHZlKGNhbGxiYWNrQXJncyk7XG4gICAgICAgICAgfVxuICAgICAgICB9O1xuICAgICAgfTtcblxuICAgICAgY29uc3QgcGx1cmFsaXplQXJndW1lbnRzID0gbnVtQXJncyA9PiBudW1BcmdzID09IDEgPyBcImFyZ3VtZW50XCIgOiBcImFyZ3VtZW50c1wiO1xuICAgICAgLyoqXG4gICAgICAgKiBDcmVhdGVzIGEgd3JhcHBlciBmdW5jdGlvbiBmb3IgYSBtZXRob2Qgd2l0aCB0aGUgZ2l2ZW4gbmFtZSBhbmQgbWV0YWRhdGEuXG4gICAgICAgKlxuICAgICAgICogQHBhcmFtIHtzdHJpbmd9IG5hbWVcbiAgICAgICAqICAgICAgICBUaGUgbmFtZSBvZiB0aGUgbWV0aG9kIHdoaWNoIGlzIGJlaW5nIHdyYXBwZWQuXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gbWV0YWRhdGFcbiAgICAgICAqICAgICAgICBNZXRhZGF0YSBhYm91dCB0aGUgbWV0aG9kIGJlaW5nIHdyYXBwZWQuXG4gICAgICAgKiBAcGFyYW0ge2ludGVnZXJ9IG1ldGFkYXRhLm1pbkFyZ3NcbiAgICAgICAqICAgICAgICBUaGUgbWluaW11bSBudW1iZXIgb2YgYXJndW1lbnRzIHdoaWNoIG11c3QgYmUgcGFzc2VkIHRvIHRoZVxuICAgICAgICogICAgICAgIGZ1bmN0aW9uLiBJZiBjYWxsZWQgd2l0aCBmZXdlciB0aGFuIHRoaXMgbnVtYmVyIG9mIGFyZ3VtZW50cywgdGhlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciB3aWxsIHJhaXNlIGFuIGV4Y2VwdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7aW50ZWdlcn0gbWV0YWRhdGEubWF4QXJnc1xuICAgICAgICogICAgICAgIFRoZSBtYXhpbXVtIG51bWJlciBvZiBhcmd1bWVudHMgd2hpY2ggbWF5IGJlIHBhc3NlZCB0byB0aGVcbiAgICAgICAqICAgICAgICBmdW5jdGlvbi4gSWYgY2FsbGVkIHdpdGggbW9yZSB0aGFuIHRoaXMgbnVtYmVyIG9mIGFyZ3VtZW50cywgdGhlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciB3aWxsIHJhaXNlIGFuIGV4Y2VwdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7Ym9vbGVhbn0gbWV0YWRhdGEuc2luZ2xlQ2FsbGJhY2tBcmdcbiAgICAgICAqICAgICAgICBXaGV0aGVyIG9yIG5vdCB0aGUgcHJvbWlzZSBpcyByZXNvbHZlZCB3aXRoIG9ubHkgdGhlIGZpcnN0XG4gICAgICAgKiAgICAgICAgYXJndW1lbnQgb2YgdGhlIGNhbGxiYWNrLCBhbHRlcm5hdGl2ZWx5IGFuIGFycmF5IG9mIGFsbCB0aGVcbiAgICAgICAqICAgICAgICBjYWxsYmFjayBhcmd1bWVudHMgaXMgcmVzb2x2ZWQuIEJ5IGRlZmF1bHQsIGlmIHRoZSBjYWxsYmFja1xuICAgICAgICogICAgICAgIGZ1bmN0aW9uIGlzIGludm9rZWQgd2l0aCBvbmx5IGEgc2luZ2xlIGFyZ3VtZW50LCB0aGF0IHdpbGwgYmVcbiAgICAgICAqICAgICAgICByZXNvbHZlZCB0byB0aGUgcHJvbWlzZSwgd2hpbGUgYWxsIGFyZ3VtZW50cyB3aWxsIGJlIHJlc29sdmVkIGFzXG4gICAgICAgKiAgICAgICAgYW4gYXJyYXkgaWYgbXVsdGlwbGUgYXJlIGdpdmVuLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtmdW5jdGlvbihvYmplY3QsIC4uLiopfVxuICAgICAgICogICAgICAgVGhlIGdlbmVyYXRlZCB3cmFwcGVyIGZ1bmN0aW9uLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3Qgd3JhcEFzeW5jRnVuY3Rpb24gPSAobmFtZSwgbWV0YWRhdGEpID0+IHtcbiAgICAgICAgcmV0dXJuIGZ1bmN0aW9uIGFzeW5jRnVuY3Rpb25XcmFwcGVyKHRhcmdldCwgLi4uYXJncykge1xuICAgICAgICAgIGlmIChhcmdzLmxlbmd0aCA8IG1ldGFkYXRhLm1pbkFyZ3MpIHtcbiAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgRXhwZWN0ZWQgYXQgbGVhc3QgJHttZXRhZGF0YS5taW5BcmdzfSAke3BsdXJhbGl6ZUFyZ3VtZW50cyhtZXRhZGF0YS5taW5BcmdzKX0gZm9yICR7bmFtZX0oKSwgZ290ICR7YXJncy5sZW5ndGh9YCk7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgaWYgKGFyZ3MubGVuZ3RoID4gbWV0YWRhdGEubWF4QXJncykge1xuICAgICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBhdCBtb3N0ICR7bWV0YWRhdGEubWF4QXJnc30gJHtwbHVyYWxpemVBcmd1bWVudHMobWV0YWRhdGEubWF4QXJncyl9IGZvciAke25hbWV9KCksIGdvdCAke2FyZ3MubGVuZ3RofWApO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHJldHVybiBuZXcgUHJvbWlzZSgocmVzb2x2ZSwgcmVqZWN0KSA9PiB7XG4gICAgICAgICAgICBpZiAobWV0YWRhdGEuZmFsbGJhY2tUb05vQ2FsbGJhY2spIHtcbiAgICAgICAgICAgICAgLy8gVGhpcyBBUEkgbWV0aG9kIGhhcyBjdXJyZW50bHkgbm8gY2FsbGJhY2sgb24gQ2hyb21lLCBidXQgaXQgcmV0dXJuIGEgcHJvbWlzZSBvbiBGaXJlZm94LFxuICAgICAgICAgICAgICAvLyBhbmQgc28gdGhlIHBvbHlmaWxsIHdpbGwgdHJ5IHRvIGNhbGwgaXQgd2l0aCBhIGNhbGxiYWNrIGZpcnN0LCBhbmQgaXQgd2lsbCBmYWxsYmFja1xuICAgICAgICAgICAgICAvLyB0byBub3QgcGFzc2luZyB0aGUgY2FsbGJhY2sgaWYgdGhlIGZpcnN0IGNhbGwgZmFpbHMuXG4gICAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgdGFyZ2V0W25hbWVdKC4uLmFyZ3MsIG1ha2VDYWxsYmFjayh7XG4gICAgICAgICAgICAgICAgICByZXNvbHZlLFxuICAgICAgICAgICAgICAgICAgcmVqZWN0XG4gICAgICAgICAgICAgICAgfSwgbWV0YWRhdGEpKTtcbiAgICAgICAgICAgICAgfSBjYXRjaCAoY2JFcnJvcikge1xuICAgICAgICAgICAgICAgIGNvbnNvbGUud2FybihgJHtuYW1lfSBBUEkgbWV0aG9kIGRvZXNuJ3Qgc2VlbSB0byBzdXBwb3J0IHRoZSBjYWxsYmFjayBwYXJhbWV0ZXIsIGAgKyBcImZhbGxpbmcgYmFjayB0byBjYWxsIGl0IHdpdGhvdXQgYSBjYWxsYmFjazogXCIsIGNiRXJyb3IpO1xuICAgICAgICAgICAgICAgIHRhcmdldFtuYW1lXSguLi5hcmdzKTsgLy8gVXBkYXRlIHRoZSBBUEkgbWV0aG9kIG1ldGFkYXRhLCBzbyB0aGF0IHRoZSBuZXh0IEFQSSBjYWxscyB3aWxsIG5vdCB0cnkgdG9cbiAgICAgICAgICAgICAgICAvLyB1c2UgdGhlIHVuc3VwcG9ydGVkIGNhbGxiYWNrIGFueW1vcmUuXG5cbiAgICAgICAgICAgICAgICBtZXRhZGF0YS5mYWxsYmFja1RvTm9DYWxsYmFjayA9IGZhbHNlO1xuICAgICAgICAgICAgICAgIG1ldGFkYXRhLm5vQ2FsbGJhY2sgPSB0cnVlO1xuICAgICAgICAgICAgICAgIHJlc29sdmUoKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSBlbHNlIGlmIChtZXRhZGF0YS5ub0NhbGxiYWNrKSB7XG4gICAgICAgICAgICAgIHRhcmdldFtuYW1lXSguLi5hcmdzKTtcbiAgICAgICAgICAgICAgcmVzb2x2ZSgpO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgdGFyZ2V0W25hbWVdKC4uLmFyZ3MsIG1ha2VDYWxsYmFjayh7XG4gICAgICAgICAgICAgICAgcmVzb2x2ZSxcbiAgICAgICAgICAgICAgICByZWplY3RcbiAgICAgICAgICAgICAgfSwgbWV0YWRhdGEpKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9KTtcbiAgICAgICAgfTtcbiAgICAgIH07XG4gICAgICAvKipcbiAgICAgICAqIFdyYXBzIGFuIGV4aXN0aW5nIG1ldGhvZCBvZiB0aGUgdGFyZ2V0IG9iamVjdCwgc28gdGhhdCBjYWxscyB0byBpdCBhcmVcbiAgICAgICAqIGludGVyY2VwdGVkIGJ5IHRoZSBnaXZlbiB3cmFwcGVyIGZ1bmN0aW9uLiBUaGUgd3JhcHBlciBmdW5jdGlvbiByZWNlaXZlcyxcbiAgICAgICAqIGFzIGl0cyBmaXJzdCBhcmd1bWVudCwgdGhlIG9yaWdpbmFsIGB0YXJnZXRgIG9iamVjdCwgZm9sbG93ZWQgYnkgZWFjaCBvZlxuICAgICAgICogdGhlIGFyZ3VtZW50cyBwYXNzZWQgdG8gdGhlIG9yaWdpbmFsIG1ldGhvZC5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gdGFyZ2V0XG4gICAgICAgKiAgICAgICAgVGhlIG9yaWdpbmFsIHRhcmdldCBvYmplY3QgdGhhdCB0aGUgd3JhcHBlZCBtZXRob2QgYmVsb25ncyB0by5cbiAgICAgICAqIEBwYXJhbSB7ZnVuY3Rpb259IG1ldGhvZFxuICAgICAgICogICAgICAgIFRoZSBtZXRob2QgYmVpbmcgd3JhcHBlZC4gVGhpcyBpcyB1c2VkIGFzIHRoZSB0YXJnZXQgb2YgdGhlIFByb3h5XG4gICAgICAgKiAgICAgICAgb2JqZWN0IHdoaWNoIGlzIGNyZWF0ZWQgdG8gd3JhcCB0aGUgbWV0aG9kLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gd3JhcHBlclxuICAgICAgICogICAgICAgIFRoZSB3cmFwcGVyIGZ1bmN0aW9uIHdoaWNoIGlzIGNhbGxlZCBpbiBwbGFjZSBvZiBhIGRpcmVjdCBpbnZvY2F0aW9uXG4gICAgICAgKiAgICAgICAgb2YgdGhlIHdyYXBwZWQgbWV0aG9kLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtQcm94eTxmdW5jdGlvbj59XG4gICAgICAgKiAgICAgICAgQSBQcm94eSBvYmplY3QgZm9yIHRoZSBnaXZlbiBtZXRob2QsIHdoaWNoIGludm9rZXMgdGhlIGdpdmVuIHdyYXBwZXJcbiAgICAgICAqICAgICAgICBtZXRob2QgaW4gaXRzIHBsYWNlLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3Qgd3JhcE1ldGhvZCA9ICh0YXJnZXQsIG1ldGhvZCwgd3JhcHBlcikgPT4ge1xuICAgICAgICByZXR1cm4gbmV3IFByb3h5KG1ldGhvZCwge1xuICAgICAgICAgIGFwcGx5KHRhcmdldE1ldGhvZCwgdGhpc09iaiwgYXJncykge1xuICAgICAgICAgICAgcmV0dXJuIHdyYXBwZXIuY2FsbCh0aGlzT2JqLCB0YXJnZXQsIC4uLmFyZ3MpO1xuICAgICAgICAgIH1cblxuICAgICAgICB9KTtcbiAgICAgIH07XG5cbiAgICAgIGxldCBoYXNPd25Qcm9wZXJ0eSA9IEZ1bmN0aW9uLmNhbGwuYmluZChPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5KTtcbiAgICAgIC8qKlxuICAgICAgICogV3JhcHMgYW4gb2JqZWN0IGluIGEgUHJveHkgd2hpY2ggaW50ZXJjZXB0cyBhbmQgd3JhcHMgY2VydGFpbiBtZXRob2RzXG4gICAgICAgKiBiYXNlZCBvbiB0aGUgZ2l2ZW4gYHdyYXBwZXJzYCBhbmQgYG1ldGFkYXRhYCBvYmplY3RzLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSB0YXJnZXRcbiAgICAgICAqICAgICAgICBUaGUgdGFyZ2V0IG9iamVjdCB0byB3cmFwLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSBbd3JhcHBlcnMgPSB7fV1cbiAgICAgICAqICAgICAgICBBbiBvYmplY3QgdHJlZSBjb250YWluaW5nIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBzcGVjaWFsIGNhc2VzLiBBbnlcbiAgICAgICAqICAgICAgICBmdW5jdGlvbiBwcmVzZW50IGluIHRoaXMgb2JqZWN0IHRyZWUgaXMgY2FsbGVkIGluIHBsYWNlIG9mIHRoZVxuICAgICAgICogICAgICAgIG1ldGhvZCBpbiB0aGUgc2FtZSBsb2NhdGlvbiBpbiB0aGUgYHRhcmdldGAgb2JqZWN0IHRyZWUuIFRoZXNlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciBtZXRob2RzIGFyZSBpbnZva2VkIGFzIGRlc2NyaWJlZCBpbiB7QHNlZSB3cmFwTWV0aG9kfS5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gW21ldGFkYXRhID0ge31dXG4gICAgICAgKiAgICAgICAgQW4gb2JqZWN0IHRyZWUgY29udGFpbmluZyBtZXRhZGF0YSB1c2VkIHRvIGF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVcbiAgICAgICAqICAgICAgICBQcm9taXNlLWJhc2VkIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBhc3luY2hyb25vdXMuIEFueSBmdW5jdGlvbiBpblxuICAgICAgICogICAgICAgIHRoZSBgdGFyZ2V0YCBvYmplY3QgdHJlZSB3aGljaCBoYXMgYSBjb3JyZXNwb25kaW5nIG1ldGFkYXRhIG9iamVjdFxuICAgICAgICogICAgICAgIGluIHRoZSBzYW1lIGxvY2F0aW9uIGluIHRoZSBgbWV0YWRhdGFgIHRyZWUgaXMgcmVwbGFjZWQgd2l0aCBhblxuICAgICAgICogICAgICAgIGF1dG9tYXRpY2FsbHktZ2VuZXJhdGVkIHdyYXBwZXIgZnVuY3Rpb24sIGFzIGRlc2NyaWJlZCBpblxuICAgICAgICogICAgICAgIHtAc2VlIHdyYXBBc3luY0Z1bmN0aW9ufVxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtQcm94eTxvYmplY3Q+fVxuICAgICAgICovXG5cbiAgICAgIGNvbnN0IHdyYXBPYmplY3QgPSAodGFyZ2V0LCB3cmFwcGVycyA9IHt9LCBtZXRhZGF0YSA9IHt9KSA9PiB7XG4gICAgICAgIGxldCBjYWNoZSA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gICAgICAgIGxldCBoYW5kbGVycyA9IHtcbiAgICAgICAgICBoYXMocHJveHlUYXJnZXQsIHByb3ApIHtcbiAgICAgICAgICAgIHJldHVybiBwcm9wIGluIHRhcmdldCB8fCBwcm9wIGluIGNhY2hlO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBnZXQocHJveHlUYXJnZXQsIHByb3AsIHJlY2VpdmVyKSB7XG4gICAgICAgICAgICBpZiAocHJvcCBpbiBjYWNoZSkge1xuICAgICAgICAgICAgICByZXR1cm4gY2FjaGVbcHJvcF07XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGlmICghKHByb3AgaW4gdGFyZ2V0KSkge1xuICAgICAgICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBsZXQgdmFsdWUgPSB0YXJnZXRbcHJvcF07XG5cbiAgICAgICAgICAgIGlmICh0eXBlb2YgdmFsdWUgPT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgICAgICAvLyBUaGlzIGlzIGEgbWV0aG9kIG9uIHRoZSB1bmRlcmx5aW5nIG9iamVjdC4gQ2hlY2sgaWYgd2UgbmVlZCB0byBkb1xuICAgICAgICAgICAgICAvLyBhbnkgd3JhcHBpbmcuXG4gICAgICAgICAgICAgIGlmICh0eXBlb2Ygd3JhcHBlcnNbcHJvcF0gPT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgICAgICAgIC8vIFdlIGhhdmUgYSBzcGVjaWFsLWNhc2Ugd3JhcHBlciBmb3IgdGhpcyBtZXRob2QuXG4gICAgICAgICAgICAgICAgdmFsdWUgPSB3cmFwTWV0aG9kKHRhcmdldCwgdGFyZ2V0W3Byb3BdLCB3cmFwcGVyc1twcm9wXSk7XG4gICAgICAgICAgICAgIH0gZWxzZSBpZiAoaGFzT3duUHJvcGVydHkobWV0YWRhdGEsIHByb3ApKSB7XG4gICAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhbiBhc3luYyBtZXRob2QgdGhhdCB3ZSBoYXZlIG1ldGFkYXRhIGZvci4gQ3JlYXRlIGFcbiAgICAgICAgICAgICAgICAvLyBQcm9taXNlIHdyYXBwZXIgZm9yIGl0LlxuICAgICAgICAgICAgICAgIGxldCB3cmFwcGVyID0gd3JhcEFzeW5jRnVuY3Rpb24ocHJvcCwgbWV0YWRhdGFbcHJvcF0pO1xuICAgICAgICAgICAgICAgIHZhbHVlID0gd3JhcE1ldGhvZCh0YXJnZXQsIHRhcmdldFtwcm9wXSwgd3JhcHBlcik7XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhIG1ldGhvZCB0aGF0IHdlIGRvbid0IGtub3cgb3IgY2FyZSBhYm91dC4gUmV0dXJuIHRoZVxuICAgICAgICAgICAgICAgIC8vIG9yaWdpbmFsIG1ldGhvZCwgYm91bmQgdG8gdGhlIHVuZGVybHlpbmcgb2JqZWN0LlxuICAgICAgICAgICAgICAgIHZhbHVlID0gdmFsdWUuYmluZCh0YXJnZXQpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9IGVsc2UgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gXCJvYmplY3RcIiAmJiB2YWx1ZSAhPT0gbnVsbCAmJiAoaGFzT3duUHJvcGVydHkod3JhcHBlcnMsIHByb3ApIHx8IGhhc093blByb3BlcnR5KG1ldGFkYXRhLCBwcm9wKSkpIHtcbiAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhbiBvYmplY3QgdGhhdCB3ZSBuZWVkIHRvIGRvIHNvbWUgd3JhcHBpbmcgZm9yIHRoZSBjaGlsZHJlblxuICAgICAgICAgICAgICAvLyBvZi4gQ3JlYXRlIGEgc3ViLW9iamVjdCB3cmFwcGVyIGZvciBpdCB3aXRoIHRoZSBhcHByb3ByaWF0ZSBjaGlsZFxuICAgICAgICAgICAgICAvLyBtZXRhZGF0YS5cbiAgICAgICAgICAgICAgdmFsdWUgPSB3cmFwT2JqZWN0KHZhbHVlLCB3cmFwcGVyc1twcm9wXSwgbWV0YWRhdGFbcHJvcF0pO1xuICAgICAgICAgICAgfSBlbHNlIGlmIChoYXNPd25Qcm9wZXJ0eShtZXRhZGF0YSwgXCIqXCIpKSB7XG4gICAgICAgICAgICAgIC8vIFdyYXAgYWxsIHByb3BlcnRpZXMgaW4gKiBuYW1lc3BhY2UuXG4gICAgICAgICAgICAgIHZhbHVlID0gd3JhcE9iamVjdCh2YWx1ZSwgd3JhcHBlcnNbcHJvcF0sIG1ldGFkYXRhW1wiKlwiXSk7XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAvLyBXZSBkb24ndCBuZWVkIHRvIGRvIGFueSB3cmFwcGluZyBmb3IgdGhpcyBwcm9wZXJ0eSxcbiAgICAgICAgICAgICAgLy8gc28ganVzdCBmb3J3YXJkIGFsbCBhY2Nlc3MgdG8gdGhlIHVuZGVybHlpbmcgb2JqZWN0LlxuICAgICAgICAgICAgICBPYmplY3QuZGVmaW5lUHJvcGVydHkoY2FjaGUsIHByb3AsIHtcbiAgICAgICAgICAgICAgICBjb25maWd1cmFibGU6IHRydWUsXG4gICAgICAgICAgICAgICAgZW51bWVyYWJsZTogdHJ1ZSxcblxuICAgICAgICAgICAgICAgIGdldCgpIHtcbiAgICAgICAgICAgICAgICAgIHJldHVybiB0YXJnZXRbcHJvcF07XG4gICAgICAgICAgICAgICAgfSxcblxuICAgICAgICAgICAgICAgIHNldCh2YWx1ZSkge1xuICAgICAgICAgICAgICAgICAgdGFyZ2V0W3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgICByZXR1cm4gdmFsdWU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGNhY2hlW3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICByZXR1cm4gdmFsdWU7XG4gICAgICAgICAgfSxcblxuICAgICAgICAgIHNldChwcm94eVRhcmdldCwgcHJvcCwgdmFsdWUsIHJlY2VpdmVyKSB7XG4gICAgICAgICAgICBpZiAocHJvcCBpbiBjYWNoZSkge1xuICAgICAgICAgICAgICBjYWNoZVtwcm9wXSA9IHZhbHVlO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgdGFyZ2V0W3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHJldHVybiB0cnVlO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBkZWZpbmVQcm9wZXJ0eShwcm94eVRhcmdldCwgcHJvcCwgZGVzYykge1xuICAgICAgICAgICAgcmV0dXJuIFJlZmxlY3QuZGVmaW5lUHJvcGVydHkoY2FjaGUsIHByb3AsIGRlc2MpO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBkZWxldGVQcm9wZXJ0eShwcm94eVRhcmdldCwgcHJvcCkge1xuICAgICAgICAgICAgcmV0dXJuIFJlZmxlY3QuZGVsZXRlUHJvcGVydHkoY2FjaGUsIHByb3ApO1xuICAgICAgICAgIH1cblxuICAgICAgICB9OyAvLyBQZXIgY29udHJhY3Qgb2YgdGhlIFByb3h5IEFQSSwgdGhlIFwiZ2V0XCIgcHJveHkgaGFuZGxlciBtdXN0IHJldHVybiB0aGVcbiAgICAgICAgLy8gb3JpZ2luYWwgdmFsdWUgb2YgdGhlIHRhcmdldCBpZiB0aGF0IHZhbHVlIGlzIGRlY2xhcmVkIHJlYWQtb25seSBhbmRcbiAgICAgICAgLy8gbm9uLWNvbmZpZ3VyYWJsZS4gRm9yIHRoaXMgcmVhc29uLCB3ZSBjcmVhdGUgYW4gb2JqZWN0IHdpdGggdGhlXG4gICAgICAgIC8vIHByb3RvdHlwZSBzZXQgdG8gYHRhcmdldGAgaW5zdGVhZCBvZiB1c2luZyBgdGFyZ2V0YCBkaXJlY3RseS5cbiAgICAgICAgLy8gT3RoZXJ3aXNlIHdlIGNhbm5vdCByZXR1cm4gYSBjdXN0b20gb2JqZWN0IGZvciBBUElzIHRoYXRcbiAgICAgICAgLy8gYXJlIGRlY2xhcmVkIHJlYWQtb25seSBhbmQgbm9uLWNvbmZpZ3VyYWJsZSwgc3VjaCBhcyBgY2hyb21lLmRldnRvb2xzYC5cbiAgICAgICAgLy9cbiAgICAgICAgLy8gVGhlIHByb3h5IGhhbmRsZXJzIHRoZW1zZWx2ZXMgd2lsbCBzdGlsbCB1c2UgdGhlIG9yaWdpbmFsIGB0YXJnZXRgXG4gICAgICAgIC8vIGluc3RlYWQgb2YgdGhlIGBwcm94eVRhcmdldGAsIHNvIHRoYXQgdGhlIG1ldGhvZHMgYW5kIHByb3BlcnRpZXMgYXJlXG4gICAgICAgIC8vIGRlcmVmZXJlbmNlZCB2aWEgdGhlIG9yaWdpbmFsIHRhcmdldHMuXG5cbiAgICAgICAgbGV0IHByb3h5VGFyZ2V0ID0gT2JqZWN0LmNyZWF0ZSh0YXJnZXQpO1xuICAgICAgICByZXR1cm4gbmV3IFByb3h5KHByb3h5VGFyZ2V0LCBoYW5kbGVycyk7XG4gICAgICB9O1xuICAgICAgLyoqXG4gICAgICAgKiBDcmVhdGVzIGEgc2V0IG9mIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBhbiBldmVudCBvYmplY3QsIHdoaWNoIGhhbmRsZXNcbiAgICAgICAqIHdyYXBwaW5nIG9mIGxpc3RlbmVyIGZ1bmN0aW9ucyB0aGF0IHRob3NlIG1lc3NhZ2VzIGFyZSBwYXNzZWQuXG4gICAgICAgKlxuICAgICAgICogQSBzaW5nbGUgd3JhcHBlciBpcyBjcmVhdGVkIGZvciBlYWNoIGxpc3RlbmVyIGZ1bmN0aW9uLCBhbmQgc3RvcmVkIGluIGFcbiAgICAgICAqIG1hcC4gU3Vic2VxdWVudCBjYWxscyB0byBgYWRkTGlzdGVuZXJgLCBgaGFzTGlzdGVuZXJgLCBvciBgcmVtb3ZlTGlzdGVuZXJgXG4gICAgICAgKiByZXRyaWV2ZSB0aGUgb3JpZ2luYWwgd3JhcHBlciwgc28gdGhhdCAgYXR0ZW1wdHMgdG8gcmVtb3ZlIGFcbiAgICAgICAqIHByZXZpb3VzbHktYWRkZWQgbGlzdGVuZXIgd29yayBhcyBleHBlY3RlZC5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge0RlZmF1bHRXZWFrTWFwPGZ1bmN0aW9uLCBmdW5jdGlvbj59IHdyYXBwZXJNYXBcbiAgICAgICAqICAgICAgICBBIERlZmF1bHRXZWFrTWFwIG9iamVjdCB3aGljaCB3aWxsIGNyZWF0ZSB0aGUgYXBwcm9wcmlhdGUgd3JhcHBlclxuICAgICAgICogICAgICAgIGZvciBhIGdpdmVuIGxpc3RlbmVyIGZ1bmN0aW9uIHdoZW4gb25lIGRvZXMgbm90IGV4aXN0LCBhbmQgcmV0cmlldmVcbiAgICAgICAqICAgICAgICBhbiBleGlzdGluZyBvbmUgd2hlbiBpdCBkb2VzLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtvYmplY3R9XG4gICAgICAgKi9cblxuXG4gICAgICBjb25zdCB3cmFwRXZlbnQgPSB3cmFwcGVyTWFwID0+ICh7XG4gICAgICAgIGFkZExpc3RlbmVyKHRhcmdldCwgbGlzdGVuZXIsIC4uLmFyZ3MpIHtcbiAgICAgICAgICB0YXJnZXQuYWRkTGlzdGVuZXIod3JhcHBlck1hcC5nZXQobGlzdGVuZXIpLCAuLi5hcmdzKTtcbiAgICAgICAgfSxcblxuICAgICAgICBoYXNMaXN0ZW5lcih0YXJnZXQsIGxpc3RlbmVyKSB7XG4gICAgICAgICAgcmV0dXJuIHRhcmdldC5oYXNMaXN0ZW5lcih3cmFwcGVyTWFwLmdldChsaXN0ZW5lcikpO1xuICAgICAgICB9LFxuXG4gICAgICAgIHJlbW92ZUxpc3RlbmVyKHRhcmdldCwgbGlzdGVuZXIpIHtcbiAgICAgICAgICB0YXJnZXQucmVtb3ZlTGlzdGVuZXIod3JhcHBlck1hcC5nZXQobGlzdGVuZXIpKTtcbiAgICAgICAgfVxuXG4gICAgICB9KTtcblxuICAgICAgY29uc3Qgb25SZXF1ZXN0RmluaXNoZWRXcmFwcGVycyA9IG5ldyBEZWZhdWx0V2Vha01hcChsaXN0ZW5lciA9PiB7XG4gICAgICAgIGlmICh0eXBlb2YgbGlzdGVuZXIgIT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgIHJldHVybiBsaXN0ZW5lcjtcbiAgICAgICAgfVxuICAgICAgICAvKipcbiAgICAgICAgICogV3JhcHMgYW4gb25SZXF1ZXN0RmluaXNoZWQgbGlzdGVuZXIgZnVuY3Rpb24gc28gdGhhdCBpdCB3aWxsIHJldHVybiBhXG4gICAgICAgICAqIGBnZXRDb250ZW50KClgIHByb3BlcnR5IHdoaWNoIHJldHVybnMgYSBgUHJvbWlzZWAgcmF0aGVyIHRoYW4gdXNpbmcgYVxuICAgICAgICAgKiBjYWxsYmFjayBBUEkuXG4gICAgICAgICAqXG4gICAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSByZXFcbiAgICAgICAgICogICAgICAgIFRoZSBIQVIgZW50cnkgb2JqZWN0IHJlcHJlc2VudGluZyB0aGUgbmV0d29yayByZXF1ZXN0LlxuICAgICAgICAgKi9cblxuXG4gICAgICAgIHJldHVybiBmdW5jdGlvbiBvblJlcXVlc3RGaW5pc2hlZChyZXEpIHtcbiAgICAgICAgICBjb25zdCB3cmFwcGVkUmVxID0gd3JhcE9iamVjdChyZXEsIHt9XG4gICAgICAgICAgLyogd3JhcHBlcnMgKi9cbiAgICAgICAgICAsIHtcbiAgICAgICAgICAgIGdldENvbnRlbnQ6IHtcbiAgICAgICAgICAgICAgbWluQXJnczogMCxcbiAgICAgICAgICAgICAgbWF4QXJnczogMFxuICAgICAgICAgICAgfVxuICAgICAgICAgIH0pO1xuICAgICAgICAgIGxpc3RlbmVyKHdyYXBwZWRSZXEpO1xuICAgICAgICB9O1xuICAgICAgfSk7IC8vIEtlZXAgdHJhY2sgaWYgdGhlIGRlcHJlY2F0aW9uIHdhcm5pbmcgaGFzIGJlZW4gbG9nZ2VkIGF0IGxlYXN0IG9uY2UuXG5cbiAgICAgIGxldCBsb2dnZWRTZW5kUmVzcG9uc2VEZXByZWNhdGlvbldhcm5pbmcgPSBmYWxzZTtcbiAgICAgIGNvbnN0IG9uTWVzc2FnZVdyYXBwZXJzID0gbmV3IERlZmF1bHRXZWFrTWFwKGxpc3RlbmVyID0+IHtcbiAgICAgICAgaWYgKHR5cGVvZiBsaXN0ZW5lciAhPT0gXCJmdW5jdGlvblwiKSB7XG4gICAgICAgICAgcmV0dXJuIGxpc3RlbmVyO1xuICAgICAgICB9XG4gICAgICAgIC8qKlxuICAgICAgICAgKiBXcmFwcyBhIG1lc3NhZ2UgbGlzdGVuZXIgZnVuY3Rpb24gc28gdGhhdCBpdCBtYXkgc2VuZCByZXNwb25zZXMgYmFzZWQgb25cbiAgICAgICAgICogaXRzIHJldHVybiB2YWx1ZSwgcmF0aGVyIHRoYW4gYnkgcmV0dXJuaW5nIGEgc2VudGluZWwgdmFsdWUgYW5kIGNhbGxpbmcgYVxuICAgICAgICAgKiBjYWxsYmFjay4gSWYgdGhlIGxpc3RlbmVyIGZ1bmN0aW9uIHJldHVybnMgYSBQcm9taXNlLCB0aGUgcmVzcG9uc2UgaXNcbiAgICAgICAgICogc2VudCB3aGVuIHRoZSBwcm9taXNlIGVpdGhlciByZXNvbHZlcyBvciByZWplY3RzLlxuICAgICAgICAgKlxuICAgICAgICAgKiBAcGFyYW0geyp9IG1lc3NhZ2VcbiAgICAgICAgICogICAgICAgIFRoZSBtZXNzYWdlIHNlbnQgYnkgdGhlIG90aGVyIGVuZCBvZiB0aGUgY2hhbm5lbC5cbiAgICAgICAgICogQHBhcmFtIHtvYmplY3R9IHNlbmRlclxuICAgICAgICAgKiAgICAgICAgRGV0YWlscyBhYm91dCB0aGUgc2VuZGVyIG9mIHRoZSBtZXNzYWdlLlxuICAgICAgICAgKiBAcGFyYW0ge2Z1bmN0aW9uKCopfSBzZW5kUmVzcG9uc2VcbiAgICAgICAgICogICAgICAgIEEgY2FsbGJhY2sgd2hpY2gsIHdoZW4gY2FsbGVkIHdpdGggYW4gYXJiaXRyYXJ5IGFyZ3VtZW50LCBzZW5kc1xuICAgICAgICAgKiAgICAgICAgdGhhdCB2YWx1ZSBhcyBhIHJlc3BvbnNlLlxuICAgICAgICAgKiBAcmV0dXJucyB7Ym9vbGVhbn1cbiAgICAgICAgICogICAgICAgIFRydWUgaWYgdGhlIHdyYXBwZWQgbGlzdGVuZXIgcmV0dXJuZWQgYSBQcm9taXNlLCB3aGljaCB3aWxsIGxhdGVyXG4gICAgICAgICAqICAgICAgICB5aWVsZCBhIHJlc3BvbnNlLiBGYWxzZSBvdGhlcndpc2UuXG4gICAgICAgICAqL1xuXG5cbiAgICAgICAgcmV0dXJuIGZ1bmN0aW9uIG9uTWVzc2FnZShtZXNzYWdlLCBzZW5kZXIsIHNlbmRSZXNwb25zZSkge1xuICAgICAgICAgIGxldCBkaWRDYWxsU2VuZFJlc3BvbnNlID0gZmFsc2U7XG4gICAgICAgICAgbGV0IHdyYXBwZWRTZW5kUmVzcG9uc2U7XG4gICAgICAgICAgbGV0IHNlbmRSZXNwb25zZVByb21pc2UgPSBuZXcgUHJvbWlzZShyZXNvbHZlID0+IHtcbiAgICAgICAgICAgIHdyYXBwZWRTZW5kUmVzcG9uc2UgPSBmdW5jdGlvbiAocmVzcG9uc2UpIHtcbiAgICAgICAgICAgICAgaWYgKCFsb2dnZWRTZW5kUmVzcG9uc2VEZXByZWNhdGlvbldhcm5pbmcpIHtcbiAgICAgICAgICAgICAgICBjb25zb2xlLndhcm4oU0VORF9SRVNQT05TRV9ERVBSRUNBVElPTl9XQVJOSU5HLCBuZXcgRXJyb3IoKS5zdGFjayk7XG4gICAgICAgICAgICAgICAgbG9nZ2VkU2VuZFJlc3BvbnNlRGVwcmVjYXRpb25XYXJuaW5nID0gdHJ1ZTtcbiAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIGRpZENhbGxTZW5kUmVzcG9uc2UgPSB0cnVlO1xuICAgICAgICAgICAgICByZXNvbHZlKHJlc3BvbnNlKTtcbiAgICAgICAgICAgIH07XG4gICAgICAgICAgfSk7XG4gICAgICAgICAgbGV0IHJlc3VsdDtcblxuICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICByZXN1bHQgPSBsaXN0ZW5lcihtZXNzYWdlLCBzZW5kZXIsIHdyYXBwZWRTZW5kUmVzcG9uc2UpO1xuICAgICAgICAgIH0gY2F0Y2ggKGVycikge1xuICAgICAgICAgICAgcmVzdWx0ID0gUHJvbWlzZS5yZWplY3QoZXJyKTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBjb25zdCBpc1Jlc3VsdFRoZW5hYmxlID0gcmVzdWx0ICE9PSB0cnVlICYmIGlzVGhlbmFibGUocmVzdWx0KTsgLy8gSWYgdGhlIGxpc3RlbmVyIGRpZG4ndCByZXR1cm5lZCB0cnVlIG9yIGEgUHJvbWlzZSwgb3IgY2FsbGVkXG4gICAgICAgICAgLy8gd3JhcHBlZFNlbmRSZXNwb25zZSBzeW5jaHJvbm91c2x5LCB3ZSBjYW4gZXhpdCBlYXJsaWVyXG4gICAgICAgICAgLy8gYmVjYXVzZSB0aGVyZSB3aWxsIGJlIG5vIHJlc3BvbnNlIHNlbnQgZnJvbSB0aGlzIGxpc3RlbmVyLlxuXG4gICAgICAgICAgaWYgKHJlc3VsdCAhPT0gdHJ1ZSAmJiAhaXNSZXN1bHRUaGVuYWJsZSAmJiAhZGlkQ2FsbFNlbmRSZXNwb25zZSkge1xuICAgICAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgICAgIH0gLy8gQSBzbWFsbCBoZWxwZXIgdG8gc2VuZCB0aGUgbWVzc2FnZSBpZiB0aGUgcHJvbWlzZSByZXNvbHZlc1xuICAgICAgICAgIC8vIGFuZCBhbiBlcnJvciBpZiB0aGUgcHJvbWlzZSByZWplY3RzIChhIHdyYXBwZWQgc2VuZE1lc3NhZ2UgaGFzXG4gICAgICAgICAgLy8gdG8gdHJhbnNsYXRlIHRoZSBtZXNzYWdlIGludG8gYSByZXNvbHZlZCBwcm9taXNlIG9yIGEgcmVqZWN0ZWRcbiAgICAgICAgICAvLyBwcm9taXNlKS5cblxuXG4gICAgICAgICAgY29uc3Qgc2VuZFByb21pc2VkUmVzdWx0ID0gcHJvbWlzZSA9PiB7XG4gICAgICAgICAgICBwcm9taXNlLnRoZW4obXNnID0+IHtcbiAgICAgICAgICAgICAgLy8gc2VuZCB0aGUgbWVzc2FnZSB2YWx1ZS5cbiAgICAgICAgICAgICAgc2VuZFJlc3BvbnNlKG1zZyk7XG4gICAgICAgICAgICB9LCBlcnJvciA9PiB7XG4gICAgICAgICAgICAgIC8vIFNlbmQgYSBKU09OIHJlcHJlc2VudGF0aW9uIG9mIHRoZSBlcnJvciBpZiB0aGUgcmVqZWN0ZWQgdmFsdWVcbiAgICAgICAgICAgICAgLy8gaXMgYW4gaW5zdGFuY2Ugb2YgZXJyb3IsIG9yIHRoZSBvYmplY3QgaXRzZWxmIG90aGVyd2lzZS5cbiAgICAgICAgICAgICAgbGV0IG1lc3NhZ2U7XG5cbiAgICAgICAgICAgICAgaWYgKGVycm9yICYmIChlcnJvciBpbnN0YW5jZW9mIEVycm9yIHx8IHR5cGVvZiBlcnJvci5tZXNzYWdlID09PSBcInN0cmluZ1wiKSkge1xuICAgICAgICAgICAgICAgIG1lc3NhZ2UgPSBlcnJvci5tZXNzYWdlO1xuICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIG1lc3NhZ2UgPSBcIkFuIHVuZXhwZWN0ZWQgZXJyb3Igb2NjdXJyZWRcIjtcbiAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIHNlbmRSZXNwb25zZSh7XG4gICAgICAgICAgICAgICAgX19tb3pXZWJFeHRlbnNpb25Qb2x5ZmlsbFJlamVjdF9fOiB0cnVlLFxuICAgICAgICAgICAgICAgIG1lc3NhZ2VcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9KS5jYXRjaChlcnIgPT4ge1xuICAgICAgICAgICAgICAvLyBQcmludCBhbiBlcnJvciBvbiB0aGUgY29uc29sZSBpZiB1bmFibGUgdG8gc2VuZCB0aGUgcmVzcG9uc2UuXG4gICAgICAgICAgICAgIGNvbnNvbGUuZXJyb3IoXCJGYWlsZWQgdG8gc2VuZCBvbk1lc3NhZ2UgcmVqZWN0ZWQgcmVwbHlcIiwgZXJyKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH07IC8vIElmIHRoZSBsaXN0ZW5lciByZXR1cm5lZCBhIFByb21pc2UsIHNlbmQgdGhlIHJlc29sdmVkIHZhbHVlIGFzIGFcbiAgICAgICAgICAvLyByZXN1bHQsIG90aGVyd2lzZSB3YWl0IHRoZSBwcm9taXNlIHJlbGF0ZWQgdG8gdGhlIHdyYXBwZWRTZW5kUmVzcG9uc2VcbiAgICAgICAgICAvLyBjYWxsYmFjayB0byByZXNvbHZlIGFuZCBzZW5kIGl0IGFzIGEgcmVzcG9uc2UuXG5cblxuICAgICAgICAgIGlmIChpc1Jlc3VsdFRoZW5hYmxlKSB7XG4gICAgICAgICAgICBzZW5kUHJvbWlzZWRSZXN1bHQocmVzdWx0KTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgc2VuZFByb21pc2VkUmVzdWx0KHNlbmRSZXNwb25zZVByb21pc2UpO1xuICAgICAgICAgIH0gLy8gTGV0IENocm9tZSBrbm93IHRoYXQgdGhlIGxpc3RlbmVyIGlzIHJlcGx5aW5nLlxuXG5cbiAgICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgICAgfTtcbiAgICAgIH0pO1xuXG4gICAgICBjb25zdCB3cmFwcGVkU2VuZE1lc3NhZ2VDYWxsYmFjayA9ICh7XG4gICAgICAgIHJlamVjdCxcbiAgICAgICAgcmVzb2x2ZVxuICAgICAgfSwgcmVwbHkpID0+IHtcbiAgICAgICAgaWYgKGV4dGVuc2lvbkFQSXMucnVudGltZS5sYXN0RXJyb3IpIHtcbiAgICAgICAgICAvLyBEZXRlY3Qgd2hlbiBub25lIG9mIHRoZSBsaXN0ZW5lcnMgcmVwbGllZCB0byB0aGUgc2VuZE1lc3NhZ2UgY2FsbCBhbmQgcmVzb2x2ZVxuICAgICAgICAgIC8vIHRoZSBwcm9taXNlIHRvIHVuZGVmaW5lZCBhcyBpbiBGaXJlZm94LlxuICAgICAgICAgIC8vIFNlZSBodHRwczovL2dpdGh1Yi5jb20vbW96aWxsYS93ZWJleHRlbnNpb24tcG9seWZpbGwvaXNzdWVzLzEzMFxuICAgICAgICAgIGlmIChleHRlbnNpb25BUElzLnJ1bnRpbWUubGFzdEVycm9yLm1lc3NhZ2UgPT09IENIUk9NRV9TRU5EX01FU1NBR0VfQ0FMTEJBQ0tfTk9fUkVTUE9OU0VfTUVTU0FHRSkge1xuICAgICAgICAgICAgcmVzb2x2ZSgpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICByZWplY3QobmV3IEVycm9yKGV4dGVuc2lvbkFQSXMucnVudGltZS5sYXN0RXJyb3IubWVzc2FnZSkpO1xuICAgICAgICAgIH1cbiAgICAgICAgfSBlbHNlIGlmIChyZXBseSAmJiByZXBseS5fX21veldlYkV4dGVuc2lvblBvbHlmaWxsUmVqZWN0X18pIHtcbiAgICAgICAgICAvLyBDb252ZXJ0IGJhY2sgdGhlIEpTT04gcmVwcmVzZW50YXRpb24gb2YgdGhlIGVycm9yIGludG9cbiAgICAgICAgICAvLyBhbiBFcnJvciBpbnN0YW5jZS5cbiAgICAgICAgICByZWplY3QobmV3IEVycm9yKHJlcGx5Lm1lc3NhZ2UpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXNvbHZlKHJlcGx5KTtcbiAgICAgICAgfVxuICAgICAgfTtcblxuICAgICAgY29uc3Qgd3JhcHBlZFNlbmRNZXNzYWdlID0gKG5hbWUsIG1ldGFkYXRhLCBhcGlOYW1lc3BhY2VPYmosIC4uLmFyZ3MpID0+IHtcbiAgICAgICAgaWYgKGFyZ3MubGVuZ3RoIDwgbWV0YWRhdGEubWluQXJncykge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgRXhwZWN0ZWQgYXQgbGVhc3QgJHttZXRhZGF0YS5taW5BcmdzfSAke3BsdXJhbGl6ZUFyZ3VtZW50cyhtZXRhZGF0YS5taW5BcmdzKX0gZm9yICR7bmFtZX0oKSwgZ290ICR7YXJncy5sZW5ndGh9YCk7XG4gICAgICAgIH1cblxuICAgICAgICBpZiAoYXJncy5sZW5ndGggPiBtZXRhZGF0YS5tYXhBcmdzKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBhdCBtb3N0ICR7bWV0YWRhdGEubWF4QXJnc30gJHtwbHVyYWxpemVBcmd1bWVudHMobWV0YWRhdGEubWF4QXJncyl9IGZvciAke25hbWV9KCksIGdvdCAke2FyZ3MubGVuZ3RofWApO1xuICAgICAgICB9XG5cbiAgICAgICAgcmV0dXJuIG5ldyBQcm9taXNlKChyZXNvbHZlLCByZWplY3QpID0+IHtcbiAgICAgICAgICBjb25zdCB3cmFwcGVkQ2IgPSB3cmFwcGVkU2VuZE1lc3NhZ2VDYWxsYmFjay5iaW5kKG51bGwsIHtcbiAgICAgICAgICAgIHJlc29sdmUsXG4gICAgICAgICAgICByZWplY3RcbiAgICAgICAgICB9KTtcbiAgICAgICAgICBhcmdzLnB1c2god3JhcHBlZENiKTtcbiAgICAgICAgICBhcGlOYW1lc3BhY2VPYmouc2VuZE1lc3NhZ2UoLi4uYXJncyk7XG4gICAgICAgIH0pO1xuICAgICAgfTtcblxuICAgICAgY29uc3Qgc3RhdGljV3JhcHBlcnMgPSB7XG4gICAgICAgIGRldnRvb2xzOiB7XG4gICAgICAgICAgbmV0d29yazoge1xuICAgICAgICAgICAgb25SZXF1ZXN0RmluaXNoZWQ6IHdyYXBFdmVudChvblJlcXVlc3RGaW5pc2hlZFdyYXBwZXJzKVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgcnVudGltZToge1xuICAgICAgICAgIG9uTWVzc2FnZTogd3JhcEV2ZW50KG9uTWVzc2FnZVdyYXBwZXJzKSxcbiAgICAgICAgICBvbk1lc3NhZ2VFeHRlcm5hbDogd3JhcEV2ZW50KG9uTWVzc2FnZVdyYXBwZXJzKSxcbiAgICAgICAgICBzZW5kTWVzc2FnZTogd3JhcHBlZFNlbmRNZXNzYWdlLmJpbmQobnVsbCwgXCJzZW5kTWVzc2FnZVwiLCB7XG4gICAgICAgICAgICBtaW5BcmdzOiAxLFxuICAgICAgICAgICAgbWF4QXJnczogM1xuICAgICAgICAgIH0pXG4gICAgICAgIH0sXG4gICAgICAgIHRhYnM6IHtcbiAgICAgICAgICBzZW5kTWVzc2FnZTogd3JhcHBlZFNlbmRNZXNzYWdlLmJpbmQobnVsbCwgXCJzZW5kTWVzc2FnZVwiLCB7XG4gICAgICAgICAgICBtaW5BcmdzOiAyLFxuICAgICAgICAgICAgbWF4QXJnczogM1xuICAgICAgICAgIH0pXG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgICBjb25zdCBzZXR0aW5nTWV0YWRhdGEgPSB7XG4gICAgICAgIGNsZWFyOiB7XG4gICAgICAgICAgbWluQXJnczogMSxcbiAgICAgICAgICBtYXhBcmdzOiAxXG4gICAgICAgIH0sXG4gICAgICAgIGdldDoge1xuICAgICAgICAgIG1pbkFyZ3M6IDEsXG4gICAgICAgICAgbWF4QXJnczogMVxuICAgICAgICB9LFxuICAgICAgICBzZXQ6IHtcbiAgICAgICAgICBtaW5BcmdzOiAxLFxuICAgICAgICAgIG1heEFyZ3M6IDFcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICAgIGFwaU1ldGFkYXRhLnByaXZhY3kgPSB7XG4gICAgICAgIG5ldHdvcms6IHtcbiAgICAgICAgICBcIipcIjogc2V0dGluZ01ldGFkYXRhXG4gICAgICAgIH0sXG4gICAgICAgIHNlcnZpY2VzOiB7XG4gICAgICAgICAgXCIqXCI6IHNldHRpbmdNZXRhZGF0YVxuICAgICAgICB9LFxuICAgICAgICB3ZWJzaXRlczoge1xuICAgICAgICAgIFwiKlwiOiBzZXR0aW5nTWV0YWRhdGFcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICAgIHJldHVybiB3cmFwT2JqZWN0KGV4dGVuc2lvbkFQSXMsIHN0YXRpY1dyYXBwZXJzLCBhcGlNZXRhZGF0YSk7XG4gICAgfTtcblxuICAgIGlmICh0eXBlb2YgY2hyb21lICE9IFwib2JqZWN0XCIgfHwgIWNocm9tZSB8fCAhY2hyb21lLnJ1bnRpbWUgfHwgIWNocm9tZS5ydW50aW1lLmlkKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoXCJUaGlzIHNjcmlwdCBzaG91bGQgb25seSBiZSBsb2FkZWQgaW4gYSBicm93c2VyIGV4dGVuc2lvbi5cIik7XG4gICAgfSAvLyBUaGUgYnVpbGQgcHJvY2VzcyBhZGRzIGEgVU1EIHdyYXBwZXIgYXJvdW5kIHRoaXMgZmlsZSwgd2hpY2ggbWFrZXMgdGhlXG4gICAgLy8gYG1vZHVsZWAgdmFyaWFibGUgYXZhaWxhYmxlLlxuXG5cbiAgICBtb2R1bGUuZXhwb3J0cyA9IHdyYXBBUElzKGNocm9tZSk7XG4gIH0gZWxzZSB7XG4gICAgbW9kdWxlLmV4cG9ydHMgPSBicm93c2VyO1xuICB9XG59KTtcbi8vIyBzb3VyY2VNYXBwaW5nVVJMPWJyb3dzZXItcG9seWZpbGwuanMubWFwXG4iLCIvLyBpbnQ2NC1idWZmZXIuanNcblxuLypqc2hpbnQgLVcwMTggKi8gLy8gQ29uZnVzaW5nIHVzZSBvZiAnIScuXG4vKmpzaGludCAtVzAzMCAqLyAvLyBFeHBlY3RlZCBhbiBhc3NpZ25tZW50IG9yIGZ1bmN0aW9uIGNhbGwgYW5kIGluc3RlYWQgc2F3IGFuIGV4cHJlc3Npb24uXG4vKmpzaGludCAtVzA5MyAqLyAvLyBEaWQgeW91IG1lYW4gdG8gcmV0dXJuIGEgY29uZGl0aW9uYWwgaW5zdGVhZCBvZiBhbiBhc3NpZ25tZW50P1xuXG52YXIgVWludDY0QkUsIEludDY0QkUsIFVpbnQ2NExFLCBJbnQ2NExFO1xuXG4hZnVuY3Rpb24oZXhwb3J0cykge1xuICAvLyBjb25zdGFudHNcblxuICB2YXIgVU5ERUZJTkVEID0gXCJ1bmRlZmluZWRcIjtcbiAgdmFyIEJVRkZFUiA9IChVTkRFRklORUQgIT09IHR5cGVvZiBCdWZmZXIpICYmIEJ1ZmZlcjtcbiAgdmFyIFVJTlQ4QVJSQVkgPSAoVU5ERUZJTkVEICE9PSB0eXBlb2YgVWludDhBcnJheSkgJiYgVWludDhBcnJheTtcbiAgdmFyIEFSUkFZQlVGRkVSID0gKFVOREVGSU5FRCAhPT0gdHlwZW9mIEFycmF5QnVmZmVyKSAmJiBBcnJheUJ1ZmZlcjtcbiAgdmFyIFpFUk8gPSBbMCwgMCwgMCwgMCwgMCwgMCwgMCwgMF07XG4gIHZhciBpc0FycmF5ID0gQXJyYXkuaXNBcnJheSB8fCBfaXNBcnJheTtcbiAgdmFyIEJJVDMyID0gNDI5NDk2NzI5NjtcbiAgdmFyIEJJVDI0ID0gMTY3NzcyMTY7XG5cbiAgLy8gc3RvcmFnZSBjbGFzc1xuXG4gIHZhciBzdG9yYWdlOyAvLyBBcnJheTtcblxuICAvLyBnZW5lcmF0ZSBjbGFzc2VzXG5cbiAgVWludDY0QkUgPSBmYWN0b3J5KFwiVWludDY0QkVcIiwgdHJ1ZSwgdHJ1ZSk7XG4gIEludDY0QkUgPSBmYWN0b3J5KFwiSW50NjRCRVwiLCB0cnVlLCBmYWxzZSk7XG4gIFVpbnQ2NExFID0gZmFjdG9yeShcIlVpbnQ2NExFXCIsIGZhbHNlLCB0cnVlKTtcbiAgSW50NjRMRSA9IGZhY3RvcnkoXCJJbnQ2NExFXCIsIGZhbHNlLCBmYWxzZSk7XG5cbiAgLy8gY2xhc3MgZmFjdG9yeVxuXG4gIGZ1bmN0aW9uIGZhY3RvcnkobmFtZSwgYmlnZW5kaWFuLCB1bnNpZ25lZCkge1xuICAgIHZhciBwb3NIID0gYmlnZW5kaWFuID8gMCA6IDQ7XG4gICAgdmFyIHBvc0wgPSBiaWdlbmRpYW4gPyA0IDogMDtcbiAgICB2YXIgcG9zMCA9IGJpZ2VuZGlhbiA/IDAgOiAzO1xuICAgIHZhciBwb3MxID0gYmlnZW5kaWFuID8gMSA6IDI7XG4gICAgdmFyIHBvczIgPSBiaWdlbmRpYW4gPyAyIDogMTtcbiAgICB2YXIgcG9zMyA9IGJpZ2VuZGlhbiA/IDMgOiAwO1xuICAgIHZhciBmcm9tUG9zaXRpdmUgPSBiaWdlbmRpYW4gPyBmcm9tUG9zaXRpdmVCRSA6IGZyb21Qb3NpdGl2ZUxFO1xuICAgIHZhciBmcm9tTmVnYXRpdmUgPSBiaWdlbmRpYW4gPyBmcm9tTmVnYXRpdmVCRSA6IGZyb21OZWdhdGl2ZUxFO1xuICAgIHZhciBwcm90byA9IEludDY0LnByb3RvdHlwZTtcbiAgICB2YXIgaXNOYW1lID0gXCJpc1wiICsgbmFtZTtcbiAgICB2YXIgX2lzSW50NjQgPSBcIl9cIiArIGlzTmFtZTtcblxuICAgIC8vIHByb3BlcnRpZXNcbiAgICBwcm90by5idWZmZXIgPSB2b2lkIDA7XG4gICAgcHJvdG8ub2Zmc2V0ID0gMDtcbiAgICBwcm90b1tfaXNJbnQ2NF0gPSB0cnVlO1xuXG4gICAgLy8gbWV0aG9kc1xuICAgIHByb3RvLnRvTnVtYmVyID0gdG9OdW1iZXI7XG4gICAgcHJvdG8udG9TdHJpbmcgPSB0b1N0cmluZztcbiAgICBwcm90by50b0pTT04gPSB0b051bWJlcjtcbiAgICBwcm90by50b0FycmF5ID0gdG9BcnJheTtcblxuICAgIC8vIGFkZCAudG9CdWZmZXIoKSBtZXRob2Qgb25seSB3aGVuIEJ1ZmZlciBhdmFpbGFibGVcbiAgICBpZiAoQlVGRkVSKSBwcm90by50b0J1ZmZlciA9IHRvQnVmZmVyO1xuXG4gICAgLy8gYWRkIC50b0FycmF5QnVmZmVyKCkgbWV0aG9kIG9ubHkgd2hlbiBVaW50OEFycmF5IGF2YWlsYWJsZVxuICAgIGlmIChVSU5UOEFSUkFZKSBwcm90by50b0FycmF5QnVmZmVyID0gdG9BcnJheUJ1ZmZlcjtcblxuICAgIC8vIGlzVWludDY0QkUsIGlzSW50NjRCRVxuICAgIEludDY0W2lzTmFtZV0gPSBpc0ludDY0O1xuXG4gICAgLy8gQ29tbW9uSlNcbiAgICBleHBvcnRzW25hbWVdID0gSW50NjQ7XG5cbiAgICByZXR1cm4gSW50NjQ7XG5cbiAgICAvLyBjb25zdHJ1Y3RvclxuICAgIGZ1bmN0aW9uIEludDY0KGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSwgcmFkZGl4KSB7XG4gICAgICBpZiAoISh0aGlzIGluc3RhbmNlb2YgSW50NjQpKSByZXR1cm4gbmV3IEludDY0KGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSwgcmFkZGl4KTtcbiAgICAgIHJldHVybiBpbml0KHRoaXMsIGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSwgcmFkZGl4KTtcbiAgICB9XG5cbiAgICAvLyBpc1VpbnQ2NEJFLCBpc0ludDY0QkVcbiAgICBmdW5jdGlvbiBpc0ludDY0KGIpIHtcbiAgICAgIHJldHVybiAhIShiICYmIGJbX2lzSW50NjRdKTtcbiAgICB9XG5cbiAgICAvLyBpbml0aWFsaXplclxuICAgIGZ1bmN0aW9uIGluaXQodGhhdCwgYnVmZmVyLCBvZmZzZXQsIHZhbHVlLCByYWRkaXgpIHtcbiAgICAgIGlmIChVSU5UOEFSUkFZICYmIEFSUkFZQlVGRkVSKSB7XG4gICAgICAgIGlmIChidWZmZXIgaW5zdGFuY2VvZiBBUlJBWUJVRkZFUikgYnVmZmVyID0gbmV3IFVJTlQ4QVJSQVkoYnVmZmVyKTtcbiAgICAgICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgQVJSQVlCVUZGRVIpIHZhbHVlID0gbmV3IFVJTlQ4QVJSQVkodmFsdWUpO1xuICAgICAgfVxuXG4gICAgICAvLyBJbnQ2NEJFKCkgc3R5bGVcbiAgICAgIGlmICghYnVmZmVyICYmICFvZmZzZXQgJiYgIXZhbHVlICYmICFzdG9yYWdlKSB7XG4gICAgICAgIC8vIHNob3J0Y3V0IHRvIGluaXRpYWxpemUgd2l0aCB6ZXJvXG4gICAgICAgIHRoYXQuYnVmZmVyID0gbmV3QXJyYXkoWkVSTywgMCk7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cblxuICAgICAgLy8gSW50NjRCRSh2YWx1ZSwgcmFkZGl4KSBzdHlsZVxuICAgICAgaWYgKCFpc1ZhbGlkQnVmZmVyKGJ1ZmZlciwgb2Zmc2V0KSkge1xuICAgICAgICB2YXIgX3N0b3JhZ2UgPSBzdG9yYWdlIHx8IEFycmF5O1xuICAgICAgICByYWRkaXggPSBvZmZzZXQ7XG4gICAgICAgIHZhbHVlID0gYnVmZmVyO1xuICAgICAgICBvZmZzZXQgPSAwO1xuICAgICAgICBidWZmZXIgPSBuZXcgX3N0b3JhZ2UoOCk7XG4gICAgICB9XG5cbiAgICAgIHRoYXQuYnVmZmVyID0gYnVmZmVyO1xuICAgICAgdGhhdC5vZmZzZXQgPSBvZmZzZXQgfD0gMDtcblxuICAgICAgLy8gSW50NjRCRShidWZmZXIsIG9mZnNldCkgc3R5bGVcbiAgICAgIGlmIChVTkRFRklORUQgPT09IHR5cGVvZiB2YWx1ZSkgcmV0dXJuO1xuXG4gICAgICAvLyBJbnQ2NEJFKGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSwgcmFkZGl4KSBzdHlsZVxuICAgICAgaWYgKFwic3RyaW5nXCIgPT09IHR5cGVvZiB2YWx1ZSkge1xuICAgICAgICBmcm9tU3RyaW5nKGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSwgcmFkZGl4IHx8IDEwKTtcbiAgICAgIH0gZWxzZSBpZiAoaXNWYWxpZEJ1ZmZlcih2YWx1ZSwgcmFkZGl4KSkge1xuICAgICAgICBmcm9tQXJyYXkoYnVmZmVyLCBvZmZzZXQsIHZhbHVlLCByYWRkaXgpO1xuICAgICAgfSBlbHNlIGlmIChcIm51bWJlclwiID09PSB0eXBlb2YgcmFkZGl4KSB7XG4gICAgICAgIHdyaXRlSW50MzIoYnVmZmVyLCBvZmZzZXQgKyBwb3NILCB2YWx1ZSk7IC8vIGhpZ2hcbiAgICAgICAgd3JpdGVJbnQzMihidWZmZXIsIG9mZnNldCArIHBvc0wsIHJhZGRpeCk7IC8vIGxvd1xuICAgICAgfSBlbHNlIGlmICh2YWx1ZSA+IDApIHtcbiAgICAgICAgZnJvbVBvc2l0aXZlKGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSk7IC8vIHBvc2l0aXZlXG4gICAgICB9IGVsc2UgaWYgKHZhbHVlIDwgMCkge1xuICAgICAgICBmcm9tTmVnYXRpdmUoYnVmZmVyLCBvZmZzZXQsIHZhbHVlKTsgLy8gbmVnYXRpdmVcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGZyb21BcnJheShidWZmZXIsIG9mZnNldCwgWkVSTywgMCk7IC8vIHplcm8sIE5hTiBhbmQgb3RoZXJzXG4gICAgICB9XG4gICAgfVxuXG4gICAgZnVuY3Rpb24gZnJvbVN0cmluZyhidWZmZXIsIG9mZnNldCwgc3RyLCByYWRkaXgpIHtcbiAgICAgIHZhciBwb3MgPSAwO1xuICAgICAgdmFyIGxlbiA9IHN0ci5sZW5ndGg7XG4gICAgICB2YXIgaGlnaCA9IDA7XG4gICAgICB2YXIgbG93ID0gMDtcbiAgICAgIGlmIChzdHJbMF0gPT09IFwiLVwiKSBwb3MrKztcbiAgICAgIHZhciBzaWduID0gcG9zO1xuICAgICAgd2hpbGUgKHBvcyA8IGxlbikge1xuICAgICAgICB2YXIgY2hyID0gcGFyc2VJbnQoc3RyW3BvcysrXSwgcmFkZGl4KTtcbiAgICAgICAgaWYgKCEoY2hyID49IDApKSBicmVhazsgLy8gTmFOXG4gICAgICAgIGxvdyA9IGxvdyAqIHJhZGRpeCArIGNocjtcbiAgICAgICAgaGlnaCA9IGhpZ2ggKiByYWRkaXggKyBNYXRoLmZsb29yKGxvdyAvIEJJVDMyKTtcbiAgICAgICAgbG93ICU9IEJJVDMyO1xuICAgICAgfVxuICAgICAgaWYgKHNpZ24pIHtcbiAgICAgICAgaGlnaCA9IH5oaWdoO1xuICAgICAgICBpZiAobG93KSB7XG4gICAgICAgICAgbG93ID0gQklUMzIgLSBsb3c7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgaGlnaCsrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICB3cml0ZUludDMyKGJ1ZmZlciwgb2Zmc2V0ICsgcG9zSCwgaGlnaCk7XG4gICAgICB3cml0ZUludDMyKGJ1ZmZlciwgb2Zmc2V0ICsgcG9zTCwgbG93KTtcbiAgICB9XG5cbiAgICBmdW5jdGlvbiB0b051bWJlcigpIHtcbiAgICAgIHZhciBidWZmZXIgPSB0aGlzLmJ1ZmZlcjtcbiAgICAgIHZhciBvZmZzZXQgPSB0aGlzLm9mZnNldDtcbiAgICAgIHZhciBoaWdoID0gcmVhZEludDMyKGJ1ZmZlciwgb2Zmc2V0ICsgcG9zSCk7XG4gICAgICB2YXIgbG93ID0gcmVhZEludDMyKGJ1ZmZlciwgb2Zmc2V0ICsgcG9zTCk7XG4gICAgICBpZiAoIXVuc2lnbmVkKSBoaWdoIHw9IDA7IC8vIGEgdHJpY2sgdG8gZ2V0IHNpZ25lZFxuICAgICAgcmV0dXJuIGhpZ2ggPyAoaGlnaCAqIEJJVDMyICsgbG93KSA6IGxvdztcbiAgICB9XG5cbiAgICBmdW5jdGlvbiB0b1N0cmluZyhyYWRpeCkge1xuICAgICAgdmFyIGJ1ZmZlciA9IHRoaXMuYnVmZmVyO1xuICAgICAgdmFyIG9mZnNldCA9IHRoaXMub2Zmc2V0O1xuICAgICAgdmFyIGhpZ2ggPSByZWFkSW50MzIoYnVmZmVyLCBvZmZzZXQgKyBwb3NIKTtcbiAgICAgIHZhciBsb3cgPSByZWFkSW50MzIoYnVmZmVyLCBvZmZzZXQgKyBwb3NMKTtcbiAgICAgIHZhciBzdHIgPSBcIlwiO1xuICAgICAgdmFyIHNpZ24gPSAhdW5zaWduZWQgJiYgKGhpZ2ggJiAweDgwMDAwMDAwKTtcbiAgICAgIGlmIChzaWduKSB7XG4gICAgICAgIGhpZ2ggPSB+aGlnaDtcbiAgICAgICAgbG93ID0gQklUMzIgLSBsb3c7XG4gICAgICB9XG4gICAgICByYWRpeCA9IHJhZGl4IHx8IDEwO1xuICAgICAgd2hpbGUgKDEpIHtcbiAgICAgICAgdmFyIG1vZCA9IChoaWdoICUgcmFkaXgpICogQklUMzIgKyBsb3c7XG4gICAgICAgIGhpZ2ggPSBNYXRoLmZsb29yKGhpZ2ggLyByYWRpeCk7XG4gICAgICAgIGxvdyA9IE1hdGguZmxvb3IobW9kIC8gcmFkaXgpO1xuICAgICAgICBzdHIgPSAobW9kICUgcmFkaXgpLnRvU3RyaW5nKHJhZGl4KSArIHN0cjtcbiAgICAgICAgaWYgKCFoaWdoICYmICFsb3cpIGJyZWFrO1xuICAgICAgfVxuICAgICAgaWYgKHNpZ24pIHtcbiAgICAgICAgc3RyID0gXCItXCIgKyBzdHI7XG4gICAgICB9XG4gICAgICByZXR1cm4gc3RyO1xuICAgIH1cblxuICAgIGZ1bmN0aW9uIHdyaXRlSW50MzIoYnVmZmVyLCBvZmZzZXQsIHZhbHVlKSB7XG4gICAgICBidWZmZXJbb2Zmc2V0ICsgcG9zM10gPSB2YWx1ZSAmIDI1NTtcbiAgICAgIHZhbHVlID0gdmFsdWUgPj4gODtcbiAgICAgIGJ1ZmZlcltvZmZzZXQgKyBwb3MyXSA9IHZhbHVlICYgMjU1O1xuICAgICAgdmFsdWUgPSB2YWx1ZSA+PiA4O1xuICAgICAgYnVmZmVyW29mZnNldCArIHBvczFdID0gdmFsdWUgJiAyNTU7XG4gICAgICB2YWx1ZSA9IHZhbHVlID4+IDg7XG4gICAgICBidWZmZXJbb2Zmc2V0ICsgcG9zMF0gPSB2YWx1ZSAmIDI1NTtcbiAgICB9XG5cbiAgICBmdW5jdGlvbiByZWFkSW50MzIoYnVmZmVyLCBvZmZzZXQpIHtcbiAgICAgIHJldHVybiAoYnVmZmVyW29mZnNldCArIHBvczBdICogQklUMjQpICtcbiAgICAgICAgKGJ1ZmZlcltvZmZzZXQgKyBwb3MxXSA8PCAxNikgK1xuICAgICAgICAoYnVmZmVyW29mZnNldCArIHBvczJdIDw8IDgpICtcbiAgICAgICAgYnVmZmVyW29mZnNldCArIHBvczNdO1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIHRvQXJyYXkocmF3KSB7XG4gICAgdmFyIGJ1ZmZlciA9IHRoaXMuYnVmZmVyO1xuICAgIHZhciBvZmZzZXQgPSB0aGlzLm9mZnNldDtcbiAgICBzdG9yYWdlID0gbnVsbDsgLy8gQXJyYXlcbiAgICBpZiAocmF3ICE9PSBmYWxzZSAmJiBvZmZzZXQgPT09IDAgJiYgYnVmZmVyLmxlbmd0aCA9PT0gOCAmJiBpc0FycmF5KGJ1ZmZlcikpIHJldHVybiBidWZmZXI7XG4gICAgcmV0dXJuIG5ld0FycmF5KGJ1ZmZlciwgb2Zmc2V0KTtcbiAgfVxuXG4gIGZ1bmN0aW9uIHRvQnVmZmVyKHJhdykge1xuICAgIHZhciBidWZmZXIgPSB0aGlzLmJ1ZmZlcjtcbiAgICB2YXIgb2Zmc2V0ID0gdGhpcy5vZmZzZXQ7XG4gICAgc3RvcmFnZSA9IEJVRkZFUjtcbiAgICBpZiAocmF3ICE9PSBmYWxzZSAmJiBvZmZzZXQgPT09IDAgJiYgYnVmZmVyLmxlbmd0aCA9PT0gOCAmJiBCdWZmZXIuaXNCdWZmZXIoYnVmZmVyKSkgcmV0dXJuIGJ1ZmZlcjtcbiAgICB2YXIgZGVzdCA9IG5ldyBCVUZGRVIoOCk7XG4gICAgZnJvbUFycmF5KGRlc3QsIDAsIGJ1ZmZlciwgb2Zmc2V0KTtcbiAgICByZXR1cm4gZGVzdDtcbiAgfVxuXG4gIGZ1bmN0aW9uIHRvQXJyYXlCdWZmZXIocmF3KSB7XG4gICAgdmFyIGJ1ZmZlciA9IHRoaXMuYnVmZmVyO1xuICAgIHZhciBvZmZzZXQgPSB0aGlzLm9mZnNldDtcbiAgICB2YXIgYXJyYnVmID0gYnVmZmVyLmJ1ZmZlcjtcbiAgICBzdG9yYWdlID0gVUlOVDhBUlJBWTtcbiAgICBpZiAocmF3ICE9PSBmYWxzZSAmJiBvZmZzZXQgPT09IDAgJiYgKGFycmJ1ZiBpbnN0YW5jZW9mIEFSUkFZQlVGRkVSKSAmJiBhcnJidWYuYnl0ZUxlbmd0aCA9PT0gOCkgcmV0dXJuIGFycmJ1ZjtcbiAgICB2YXIgZGVzdCA9IG5ldyBVSU5UOEFSUkFZKDgpO1xuICAgIGZyb21BcnJheShkZXN0LCAwLCBidWZmZXIsIG9mZnNldCk7XG4gICAgcmV0dXJuIGRlc3QuYnVmZmVyO1xuICB9XG5cbiAgZnVuY3Rpb24gaXNWYWxpZEJ1ZmZlcihidWZmZXIsIG9mZnNldCkge1xuICAgIHZhciBsZW4gPSBidWZmZXIgJiYgYnVmZmVyLmxlbmd0aDtcbiAgICBvZmZzZXQgfD0gMDtcbiAgICByZXR1cm4gbGVuICYmIChvZmZzZXQgKyA4IDw9IGxlbikgJiYgKFwic3RyaW5nXCIgIT09IHR5cGVvZiBidWZmZXJbb2Zmc2V0XSk7XG4gIH1cblxuICBmdW5jdGlvbiBmcm9tQXJyYXkoZGVzdGJ1ZiwgZGVzdG9mZiwgc3JjYnVmLCBzcmNvZmYpIHtcbiAgICBkZXN0b2ZmIHw9IDA7XG4gICAgc3Jjb2ZmIHw9IDA7XG4gICAgZm9yICh2YXIgaSA9IDA7IGkgPCA4OyBpKyspIHtcbiAgICAgIGRlc3RidWZbZGVzdG9mZisrXSA9IHNyY2J1ZltzcmNvZmYrK10gJiAyNTU7XG4gICAgfVxuICB9XG5cbiAgZnVuY3Rpb24gbmV3QXJyYXkoYnVmZmVyLCBvZmZzZXQpIHtcbiAgICByZXR1cm4gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYnVmZmVyLCBvZmZzZXQsIG9mZnNldCArIDgpO1xuICB9XG5cbiAgZnVuY3Rpb24gZnJvbVBvc2l0aXZlQkUoYnVmZmVyLCBvZmZzZXQsIHZhbHVlKSB7XG4gICAgdmFyIHBvcyA9IG9mZnNldCArIDg7XG4gICAgd2hpbGUgKHBvcyA+IG9mZnNldCkge1xuICAgICAgYnVmZmVyWy0tcG9zXSA9IHZhbHVlICYgMjU1O1xuICAgICAgdmFsdWUgLz0gMjU2O1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIGZyb21OZWdhdGl2ZUJFKGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSkge1xuICAgIHZhciBwb3MgPSBvZmZzZXQgKyA4O1xuICAgIHZhbHVlKys7XG4gICAgd2hpbGUgKHBvcyA+IG9mZnNldCkge1xuICAgICAgYnVmZmVyWy0tcG9zXSA9ICgoLXZhbHVlKSAmIDI1NSkgXiAyNTU7XG4gICAgICB2YWx1ZSAvPSAyNTY7XG4gICAgfVxuICB9XG5cbiAgZnVuY3Rpb24gZnJvbVBvc2l0aXZlTEUoYnVmZmVyLCBvZmZzZXQsIHZhbHVlKSB7XG4gICAgdmFyIGVuZCA9IG9mZnNldCArIDg7XG4gICAgd2hpbGUgKG9mZnNldCA8IGVuZCkge1xuICAgICAgYnVmZmVyW29mZnNldCsrXSA9IHZhbHVlICYgMjU1O1xuICAgICAgdmFsdWUgLz0gMjU2O1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIGZyb21OZWdhdGl2ZUxFKGJ1ZmZlciwgb2Zmc2V0LCB2YWx1ZSkge1xuICAgIHZhciBlbmQgPSBvZmZzZXQgKyA4O1xuICAgIHZhbHVlKys7XG4gICAgd2hpbGUgKG9mZnNldCA8IGVuZCkge1xuICAgICAgYnVmZmVyW29mZnNldCsrXSA9ICgoLXZhbHVlKSAmIDI1NSkgXiAyNTU7XG4gICAgICB2YWx1ZSAvPSAyNTY7XG4gICAgfVxuICB9XG5cbiAgLy8gaHR0cHM6Ly9naXRodWIuY29tL3JldHJvZm94L2lzLWFycmF5XG4gIGZ1bmN0aW9uIF9pc0FycmF5KHZhbCkge1xuICAgIHJldHVybiAhIXZhbCAmJiBcIltvYmplY3QgQXJyYXldXCIgPT0gT2JqZWN0LnByb3RvdHlwZS50b1N0cmluZy5jYWxsKHZhbCk7XG4gIH1cblxufSh0eXBlb2YgZXhwb3J0cyA9PT0gJ29iamVjdCcgJiYgdHlwZW9mIGV4cG9ydHMubm9kZU5hbWUgIT09ICdzdHJpbmcnID8gZXhwb3J0cyA6ICh0aGlzIHx8IHt9KSk7XG4iLCJ2YXIgdG9TdHJpbmcgPSB7fS50b1N0cmluZztcblxubW9kdWxlLmV4cG9ydHMgPSBBcnJheS5pc0FycmF5IHx8IGZ1bmN0aW9uIChhcnIpIHtcbiAgcmV0dXJuIHRvU3RyaW5nLmNhbGwoYXJyKSA9PSAnW29iamVjdCBBcnJheV0nO1xufTtcbiIsIi8vIGJyb3dzZXIuanNcblxuZXhwb3J0cy5lbmNvZGUgPSByZXF1aXJlKFwiLi9lbmNvZGVcIikuZW5jb2RlO1xuZXhwb3J0cy5kZWNvZGUgPSByZXF1aXJlKFwiLi9kZWNvZGVcIikuZGVjb2RlO1xuXG5leHBvcnRzLkVuY29kZXIgPSByZXF1aXJlKFwiLi9lbmNvZGVyXCIpLkVuY29kZXI7XG5leHBvcnRzLkRlY29kZXIgPSByZXF1aXJlKFwiLi9kZWNvZGVyXCIpLkRlY29kZXI7XG5cbmV4cG9ydHMuY3JlYXRlQ29kZWMgPSByZXF1aXJlKFwiLi9leHRcIikuY3JlYXRlQ29kZWM7XG5leHBvcnRzLmNvZGVjID0gcmVxdWlyZShcIi4vY29kZWNcIikuY29kZWM7XG4iLCIvKiBnbG9iYWxzIEJ1ZmZlciAqL1xuXG5tb2R1bGUuZXhwb3J0cyA9XG4gIGMoKFwidW5kZWZpbmVkXCIgIT09IHR5cGVvZiBCdWZmZXIpICYmIEJ1ZmZlcikgfHxcbiAgYyh0aGlzLkJ1ZmZlcikgfHxcbiAgYygoXCJ1bmRlZmluZWRcIiAhPT0gdHlwZW9mIHdpbmRvdykgJiYgd2luZG93LkJ1ZmZlcikgfHxcbiAgdGhpcy5CdWZmZXI7XG5cbmZ1bmN0aW9uIGMoQikge1xuICByZXR1cm4gQiAmJiBCLmlzQnVmZmVyICYmIEI7XG59IiwiLy8gYnVmZmVyLWxpdGUuanNcblxudmFyIE1BWEJVRkxFTiA9IDgxOTI7XG5cbmV4cG9ydHMuY29weSA9IGNvcHk7XG5leHBvcnRzLnRvU3RyaW5nID0gdG9TdHJpbmc7XG5leHBvcnRzLndyaXRlID0gd3JpdGU7XG5cbi8qKlxuICogQnVmZmVyLnByb3RvdHlwZS53cml0ZSgpXG4gKlxuICogQHBhcmFtIHN0cmluZyB7U3RyaW5nfVxuICogQHBhcmFtIFtvZmZzZXRdIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7TnVtYmVyfVxuICovXG5cbmZ1bmN0aW9uIHdyaXRlKHN0cmluZywgb2Zmc2V0KSB7XG4gIHZhciBidWZmZXIgPSB0aGlzO1xuICB2YXIgaW5kZXggPSBvZmZzZXQgfHwgKG9mZnNldCB8PSAwKTtcbiAgdmFyIGxlbmd0aCA9IHN0cmluZy5sZW5ndGg7XG4gIHZhciBjaHIgPSAwO1xuICB2YXIgaSA9IDA7XG4gIHdoaWxlIChpIDwgbGVuZ3RoKSB7XG4gICAgY2hyID0gc3RyaW5nLmNoYXJDb2RlQXQoaSsrKTtcblxuICAgIGlmIChjaHIgPCAxMjgpIHtcbiAgICAgIGJ1ZmZlcltpbmRleCsrXSA9IGNocjtcbiAgICB9IGVsc2UgaWYgKGNociA8IDB4ODAwKSB7XG4gICAgICAvLyAyIGJ5dGVzXG4gICAgICBidWZmZXJbaW5kZXgrK10gPSAweEMwIHwgKGNociA+Pj4gNik7XG4gICAgICBidWZmZXJbaW5kZXgrK10gPSAweDgwIHwgKGNociAmIDB4M0YpO1xuICAgIH0gZWxzZSBpZiAoY2hyIDwgMHhEODAwIHx8IGNociA+IDB4REZGRikge1xuICAgICAgLy8gMyBieXRlc1xuICAgICAgYnVmZmVyW2luZGV4KytdID0gMHhFMCB8IChjaHIgID4+PiAxMik7XG4gICAgICBidWZmZXJbaW5kZXgrK10gPSAweDgwIHwgKChjaHIgPj4+IDYpICAmIDB4M0YpO1xuICAgICAgYnVmZmVyW2luZGV4KytdID0gMHg4MCB8IChjaHIgICAgICAgICAgJiAweDNGKTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gNCBieXRlcyAtIHN1cnJvZ2F0ZSBwYWlyXG4gICAgICBjaHIgPSAoKChjaHIgLSAweEQ4MDApIDw8IDEwKSB8IChzdHJpbmcuY2hhckNvZGVBdChpKyspIC0gMHhEQzAwKSkgKyAweDEwMDAwO1xuICAgICAgYnVmZmVyW2luZGV4KytdID0gMHhGMCB8IChjaHIgPj4+IDE4KTtcbiAgICAgIGJ1ZmZlcltpbmRleCsrXSA9IDB4ODAgfCAoKGNociA+Pj4gMTIpICYgMHgzRik7XG4gICAgICBidWZmZXJbaW5kZXgrK10gPSAweDgwIHwgKChjaHIgPj4+IDYpICAmIDB4M0YpO1xuICAgICAgYnVmZmVyW2luZGV4KytdID0gMHg4MCB8IChjaHIgICAgICAgICAgJiAweDNGKTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIGluZGV4IC0gb2Zmc2V0O1xufVxuXG4vKipcbiAqIEJ1ZmZlci5wcm90b3R5cGUudG9TdHJpbmcoKVxuICpcbiAqIEBwYXJhbSBbZW5jb2RpbmddIHtTdHJpbmd9IGlnbm9yZWRcbiAqIEBwYXJhbSBbc3RhcnRdIHtOdW1iZXJ9XG4gKiBAcGFyYW0gW2VuZF0ge051bWJlcn1cbiAqIEByZXR1cm5zIHtTdHJpbmd9XG4gKi9cblxuZnVuY3Rpb24gdG9TdHJpbmcoZW5jb2RpbmcsIHN0YXJ0LCBlbmQpIHtcbiAgdmFyIGJ1ZmZlciA9IHRoaXM7XG4gIHZhciBpbmRleCA9IHN0YXJ0fDA7XG4gIGlmICghZW5kKSBlbmQgPSBidWZmZXIubGVuZ3RoO1xuICB2YXIgc3RyaW5nID0gJyc7XG4gIHZhciBjaHIgPSAwO1xuXG4gIHdoaWxlIChpbmRleCA8IGVuZCkge1xuICAgIGNociA9IGJ1ZmZlcltpbmRleCsrXTtcbiAgICBpZiAoY2hyIDwgMTI4KSB7XG4gICAgICBzdHJpbmcgKz0gU3RyaW5nLmZyb21DaGFyQ29kZShjaHIpO1xuICAgICAgY29udGludWU7XG4gICAgfVxuXG4gICAgaWYgKChjaHIgJiAweEUwKSA9PT0gMHhDMCkge1xuICAgICAgLy8gMiBieXRlc1xuICAgICAgY2hyID0gKGNociAmIDB4MUYpIDw8IDYgfFxuICAgICAgICAgICAgKGJ1ZmZlcltpbmRleCsrXSAmIDB4M0YpO1xuXG4gICAgfSBlbHNlIGlmICgoY2hyICYgMHhGMCkgPT09IDB4RTApIHtcbiAgICAgIC8vIDMgYnl0ZXNcbiAgICAgIGNociA9IChjaHIgJiAweDBGKSAgICAgICAgICAgICA8PCAxMiB8XG4gICAgICAgICAgICAoYnVmZmVyW2luZGV4KytdICYgMHgzRikgPDwgNiAgfFxuICAgICAgICAgICAgKGJ1ZmZlcltpbmRleCsrXSAmIDB4M0YpO1xuXG4gICAgfSBlbHNlIGlmICgoY2hyICYgMHhGOCkgPT09IDB4RjApIHtcbiAgICAgIC8vIDQgYnl0ZXNcbiAgICAgIGNociA9IChjaHIgJiAweDA3KSAgICAgICAgICAgICA8PCAxOCB8XG4gICAgICAgICAgICAoYnVmZmVyW2luZGV4KytdICYgMHgzRikgPDwgMTIgfFxuICAgICAgICAgICAgKGJ1ZmZlcltpbmRleCsrXSAmIDB4M0YpIDw8IDYgIHxcbiAgICAgICAgICAgIChidWZmZXJbaW5kZXgrK10gJiAweDNGKTtcbiAgICB9XG5cbiAgICBpZiAoY2hyID49IDB4MDEwMDAwKSB7XG4gICAgICAvLyBBIHN1cnJvZ2F0ZSBwYWlyXG4gICAgICBjaHIgLT0gMHgwMTAwMDA7XG5cbiAgICAgIHN0cmluZyArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKChjaHIgPj4+IDEwKSArIDB4RDgwMCwgKGNociAmIDB4M0ZGKSArIDB4REMwMCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHN0cmluZyArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKGNocik7XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIHN0cmluZztcbn1cblxuLyoqXG4gKiBCdWZmZXIucHJvdG90eXBlLmNvcHkoKVxuICpcbiAqIEBwYXJhbSB0YXJnZXQge0J1ZmZlcn1cbiAqIEBwYXJhbSBbdGFyZ2V0U3RhcnRdIHtOdW1iZXJ9XG4gKiBAcGFyYW0gW3N0YXJ0XSB7TnVtYmVyfVxuICogQHBhcmFtIFtlbmRdIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7bnVtYmVyfVxuICovXG5cbmZ1bmN0aW9uIGNvcHkodGFyZ2V0LCB0YXJnZXRTdGFydCwgc3RhcnQsIGVuZCkge1xuICB2YXIgaTtcbiAgaWYgKCFzdGFydCkgc3RhcnQgPSAwO1xuICBpZiAoIWVuZCAmJiBlbmQgIT09IDApIGVuZCA9IHRoaXMubGVuZ3RoO1xuICBpZiAoIXRhcmdldFN0YXJ0KSB0YXJnZXRTdGFydCA9IDA7XG4gIHZhciBsZW4gPSBlbmQgLSBzdGFydDtcblxuICBpZiAodGFyZ2V0ID09PSB0aGlzICYmIHN0YXJ0IDwgdGFyZ2V0U3RhcnQgJiYgdGFyZ2V0U3RhcnQgPCBlbmQpIHtcbiAgICAvLyBkZXNjZW5kaW5nXG4gICAgZm9yIChpID0gbGVuIC0gMTsgaSA+PSAwOyBpLS0pIHtcbiAgICAgIHRhcmdldFtpICsgdGFyZ2V0U3RhcnRdID0gdGhpc1tpICsgc3RhcnRdO1xuICAgIH1cbiAgfSBlbHNlIHtcbiAgICAvLyBhc2NlbmRpbmdcbiAgICBmb3IgKGkgPSAwOyBpIDwgbGVuOyBpKyspIHtcbiAgICAgIHRhcmdldFtpICsgdGFyZ2V0U3RhcnRdID0gdGhpc1tpICsgc3RhcnRdO1xuICAgIH1cbiAgfVxuXG4gIHJldHVybiBsZW47XG59XG4iLCIvLyBidWZmZXJpc2gtYXJyYXkuanNcblxudmFyIEJ1ZmZlcmlzaCA9IHJlcXVpcmUoXCIuL2J1ZmZlcmlzaFwiKTtcblxudmFyIGV4cG9ydHMgPSBtb2R1bGUuZXhwb3J0cyA9IGFsbG9jKDApO1xuXG5leHBvcnRzLmFsbG9jID0gYWxsb2M7XG5leHBvcnRzLmNvbmNhdCA9IEJ1ZmZlcmlzaC5jb25jYXQ7XG5leHBvcnRzLmZyb20gPSBmcm9tO1xuXG4vKipcbiAqIEBwYXJhbSBzaXplIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7QnVmZmVyfFVpbnQ4QXJyYXl8QXJyYXl9XG4gKi9cblxuZnVuY3Rpb24gYWxsb2Moc2l6ZSkge1xuICByZXR1cm4gbmV3IEFycmF5KHNpemUpO1xufVxuXG4vKipcbiAqIEBwYXJhbSB2YWx1ZSB7QXJyYXl8QXJyYXlCdWZmZXJ8QnVmZmVyfFN0cmluZ31cbiAqIEByZXR1cm5zIHtBcnJheX1cbiAqL1xuXG5mdW5jdGlvbiBmcm9tKHZhbHVlKSB7XG4gIGlmICghQnVmZmVyaXNoLmlzQnVmZmVyKHZhbHVlKSAmJiBCdWZmZXJpc2guaXNWaWV3KHZhbHVlKSkge1xuICAgIC8vIFR5cGVkQXJyYXkgdG8gVWludDhBcnJheVxuICAgIHZhbHVlID0gQnVmZmVyaXNoLlVpbnQ4QXJyYXkuZnJvbSh2YWx1ZSk7XG4gIH0gZWxzZSBpZiAoQnVmZmVyaXNoLmlzQXJyYXlCdWZmZXIodmFsdWUpKSB7XG4gICAgLy8gQXJyYXlCdWZmZXIgdG8gVWludDhBcnJheVxuICAgIHZhbHVlID0gbmV3IFVpbnQ4QXJyYXkodmFsdWUpO1xuICB9IGVsc2UgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gXCJzdHJpbmdcIikge1xuICAgIC8vIFN0cmluZyB0byBBcnJheVxuICAgIHJldHVybiBCdWZmZXJpc2guZnJvbS5jYWxsKGV4cG9ydHMsIHZhbHVlKTtcbiAgfSBlbHNlIGlmICh0eXBlb2YgdmFsdWUgPT09IFwibnVtYmVyXCIpIHtcbiAgICB0aHJvdyBuZXcgVHlwZUVycm9yKCdcInZhbHVlXCIgYXJndW1lbnQgbXVzdCBub3QgYmUgYSBudW1iZXInKTtcbiAgfVxuXG4gIC8vIEFycmF5LWxpa2UgdG8gQXJyYXlcbiAgcmV0dXJuIEFycmF5LnByb3RvdHlwZS5zbGljZS5jYWxsKHZhbHVlKTtcbn1cbiIsIi8vIGJ1ZmZlcmlzaC1idWZmZXIuanNcblxudmFyIEJ1ZmZlcmlzaCA9IHJlcXVpcmUoXCIuL2J1ZmZlcmlzaFwiKTtcbnZhciBCdWZmZXIgPSBCdWZmZXJpc2guZ2xvYmFsO1xuXG52YXIgZXhwb3J0cyA9IG1vZHVsZS5leHBvcnRzID0gQnVmZmVyaXNoLmhhc0J1ZmZlciA/IGFsbG9jKDApIDogW107XG5cbmV4cG9ydHMuYWxsb2MgPSBCdWZmZXJpc2guaGFzQnVmZmVyICYmIEJ1ZmZlci5hbGxvYyB8fCBhbGxvYztcbmV4cG9ydHMuY29uY2F0ID0gQnVmZmVyaXNoLmNvbmNhdDtcbmV4cG9ydHMuZnJvbSA9IGZyb207XG5cbi8qKlxuICogQHBhcmFtIHNpemUge051bWJlcn1cbiAqIEByZXR1cm5zIHtCdWZmZXJ8VWludDhBcnJheXxBcnJheX1cbiAqL1xuXG5mdW5jdGlvbiBhbGxvYyhzaXplKSB7XG4gIHJldHVybiBuZXcgQnVmZmVyKHNpemUpO1xufVxuXG4vKipcbiAqIEBwYXJhbSB2YWx1ZSB7QXJyYXl8QXJyYXlCdWZmZXJ8QnVmZmVyfFN0cmluZ31cbiAqIEByZXR1cm5zIHtCdWZmZXJ9XG4gKi9cblxuZnVuY3Rpb24gZnJvbSh2YWx1ZSkge1xuICBpZiAoIUJ1ZmZlcmlzaC5pc0J1ZmZlcih2YWx1ZSkgJiYgQnVmZmVyaXNoLmlzVmlldyh2YWx1ZSkpIHtcbiAgICAvLyBUeXBlZEFycmF5IHRvIFVpbnQ4QXJyYXlcbiAgICB2YWx1ZSA9IEJ1ZmZlcmlzaC5VaW50OEFycmF5LmZyb20odmFsdWUpO1xuICB9IGVsc2UgaWYgKEJ1ZmZlcmlzaC5pc0FycmF5QnVmZmVyKHZhbHVlKSkge1xuICAgIC8vIEFycmF5QnVmZmVyIHRvIFVpbnQ4QXJyYXlcbiAgICB2YWx1ZSA9IG5ldyBVaW50OEFycmF5KHZhbHVlKTtcbiAgfSBlbHNlIGlmICh0eXBlb2YgdmFsdWUgPT09IFwic3RyaW5nXCIpIHtcbiAgICAvLyBTdHJpbmcgdG8gQnVmZmVyXG4gICAgcmV0dXJuIEJ1ZmZlcmlzaC5mcm9tLmNhbGwoZXhwb3J0cywgdmFsdWUpO1xuICB9IGVsc2UgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gXCJudW1iZXJcIikge1xuICAgIHRocm93IG5ldyBUeXBlRXJyb3IoJ1widmFsdWVcIiBhcmd1bWVudCBtdXN0IG5vdCBiZSBhIG51bWJlcicpO1xuICB9XG5cbiAgLy8gQXJyYXktbGlrZSB0byBCdWZmZXJcbiAgaWYgKEJ1ZmZlci5mcm9tICYmIEJ1ZmZlci5mcm9tLmxlbmd0aCAhPT0gMSkge1xuICAgIHJldHVybiBCdWZmZXIuZnJvbSh2YWx1ZSk7IC8vIG5vZGUgdjYrXG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIG5ldyBCdWZmZXIodmFsdWUpOyAvLyBub2RlIHY0XG4gIH1cbn1cbiIsIi8vIGJ1ZmZlcmlzaC1wcm90by5qc1xuXG4vKiBqc2hpbnQgZXFudWxsOnRydWUgKi9cblxudmFyIEJ1ZmZlckxpdGUgPSByZXF1aXJlKFwiLi9idWZmZXItbGl0ZVwiKTtcblxuZXhwb3J0cy5jb3B5ID0gY29weTtcbmV4cG9ydHMuc2xpY2UgPSBzbGljZTtcbmV4cG9ydHMudG9TdHJpbmcgPSB0b1N0cmluZztcbmV4cG9ydHMud3JpdGUgPSBnZW4oXCJ3cml0ZVwiKTtcblxudmFyIEJ1ZmZlcmlzaCA9IHJlcXVpcmUoXCIuL2J1ZmZlcmlzaFwiKTtcbnZhciBCdWZmZXIgPSBCdWZmZXJpc2guZ2xvYmFsO1xuXG52YXIgaXNCdWZmZXJTaGltID0gQnVmZmVyaXNoLmhhc0J1ZmZlciAmJiAoXCJUWVBFRF9BUlJBWV9TVVBQT1JUXCIgaW4gQnVmZmVyKTtcbnZhciBicm9rZW5UeXBlZEFycmF5ID0gaXNCdWZmZXJTaGltICYmICFCdWZmZXIuVFlQRURfQVJSQVlfU1VQUE9SVDtcblxuLyoqXG4gKiBAcGFyYW0gdGFyZ2V0IHtCdWZmZXJ8VWludDhBcnJheXxBcnJheX1cbiAqIEBwYXJhbSBbdGFyZ2V0U3RhcnRdIHtOdW1iZXJ9XG4gKiBAcGFyYW0gW3N0YXJ0XSB7TnVtYmVyfVxuICogQHBhcmFtIFtlbmRdIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7QnVmZmVyfFVpbnQ4QXJyYXl8QXJyYXl9XG4gKi9cblxuZnVuY3Rpb24gY29weSh0YXJnZXQsIHRhcmdldFN0YXJ0LCBzdGFydCwgZW5kKSB7XG4gIHZhciB0aGlzSXNCdWZmZXIgPSBCdWZmZXJpc2guaXNCdWZmZXIodGhpcyk7XG4gIHZhciB0YXJnZXRJc0J1ZmZlciA9IEJ1ZmZlcmlzaC5pc0J1ZmZlcih0YXJnZXQpO1xuICBpZiAodGhpc0lzQnVmZmVyICYmIHRhcmdldElzQnVmZmVyKSB7XG4gICAgLy8gQnVmZmVyIHRvIEJ1ZmZlclxuICAgIHJldHVybiB0aGlzLmNvcHkodGFyZ2V0LCB0YXJnZXRTdGFydCwgc3RhcnQsIGVuZCk7XG4gIH0gZWxzZSBpZiAoIWJyb2tlblR5cGVkQXJyYXkgJiYgIXRoaXNJc0J1ZmZlciAmJiAhdGFyZ2V0SXNCdWZmZXIgJiZcbiAgICBCdWZmZXJpc2guaXNWaWV3KHRoaXMpICYmIEJ1ZmZlcmlzaC5pc1ZpZXcodGFyZ2V0KSkge1xuICAgIC8vIFVpbnQ4QXJyYXkgdG8gVWludDhBcnJheSAoZXhjZXB0IGZvciBtaW5vciBzb21lIGJyb3dzZXJzKVxuICAgIHZhciBidWZmZXIgPSAoc3RhcnQgfHwgZW5kICE9IG51bGwpID8gc2xpY2UuY2FsbCh0aGlzLCBzdGFydCwgZW5kKSA6IHRoaXM7XG4gICAgdGFyZ2V0LnNldChidWZmZXIsIHRhcmdldFN0YXJ0KTtcbiAgICByZXR1cm4gYnVmZmVyLmxlbmd0aDtcbiAgfSBlbHNlIHtcbiAgICAvLyBvdGhlciBjYXNlc1xuICAgIHJldHVybiBCdWZmZXJMaXRlLmNvcHkuY2FsbCh0aGlzLCB0YXJnZXQsIHRhcmdldFN0YXJ0LCBzdGFydCwgZW5kKTtcbiAgfVxufVxuXG4vKipcbiAqIEBwYXJhbSBbc3RhcnRdIHtOdW1iZXJ9XG4gKiBAcGFyYW0gW2VuZF0ge051bWJlcn1cbiAqIEByZXR1cm5zIHtCdWZmZXJ8VWludDhBcnJheXxBcnJheX1cbiAqL1xuXG5mdW5jdGlvbiBzbGljZShzdGFydCwgZW5kKSB7XG4gIC8vIGZvciBCdWZmZXIsIFVpbnQ4QXJyYXkgKGV4Y2VwdCBmb3IgbWlub3Igc29tZSBicm93c2VycykgYW5kIEFycmF5XG4gIHZhciBmID0gdGhpcy5zbGljZSB8fCAoIWJyb2tlblR5cGVkQXJyYXkgJiYgdGhpcy5zdWJhcnJheSk7XG4gIGlmIChmKSByZXR1cm4gZi5jYWxsKHRoaXMsIHN0YXJ0LCBlbmQpO1xuXG4gIC8vIFVpbnQ4QXJyYXkgKGZvciBtaW5vciBzb21lIGJyb3dzZXJzKVxuICB2YXIgdGFyZ2V0ID0gQnVmZmVyaXNoLmFsbG9jLmNhbGwodGhpcywgZW5kIC0gc3RhcnQpO1xuICBjb3B5LmNhbGwodGhpcywgdGFyZ2V0LCAwLCBzdGFydCwgZW5kKTtcbiAgcmV0dXJuIHRhcmdldDtcbn1cblxuLyoqXG4gKiBCdWZmZXIucHJvdG90eXBlLnRvU3RyaW5nKClcbiAqXG4gKiBAcGFyYW0gW2VuY29kaW5nXSB7U3RyaW5nfSBpZ25vcmVkXG4gKiBAcGFyYW0gW3N0YXJ0XSB7TnVtYmVyfVxuICogQHBhcmFtIFtlbmRdIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7U3RyaW5nfVxuICovXG5cbmZ1bmN0aW9uIHRvU3RyaW5nKGVuY29kaW5nLCBzdGFydCwgZW5kKSB7XG4gIHZhciBmID0gKCFpc0J1ZmZlclNoaW0gJiYgQnVmZmVyaXNoLmlzQnVmZmVyKHRoaXMpKSA/IHRoaXMudG9TdHJpbmcgOiBCdWZmZXJMaXRlLnRvU3RyaW5nO1xuICByZXR1cm4gZi5hcHBseSh0aGlzLCBhcmd1bWVudHMpO1xufVxuXG4vKipcbiAqIEBwcml2YXRlXG4gKi9cblxuZnVuY3Rpb24gZ2VuKG1ldGhvZCkge1xuICByZXR1cm4gd3JhcDtcblxuICBmdW5jdGlvbiB3cmFwKCkge1xuICAgIHZhciBmID0gdGhpc1ttZXRob2RdIHx8IEJ1ZmZlckxpdGVbbWV0aG9kXTtcbiAgICByZXR1cm4gZi5hcHBseSh0aGlzLCBhcmd1bWVudHMpO1xuICB9XG59XG4iLCIvLyBidWZmZXJpc2gtdWludDhhcnJheS5qc1xuXG52YXIgQnVmZmVyaXNoID0gcmVxdWlyZShcIi4vYnVmZmVyaXNoXCIpO1xuXG52YXIgZXhwb3J0cyA9IG1vZHVsZS5leHBvcnRzID0gQnVmZmVyaXNoLmhhc0FycmF5QnVmZmVyID8gYWxsb2MoMCkgOiBbXTtcblxuZXhwb3J0cy5hbGxvYyA9IGFsbG9jO1xuZXhwb3J0cy5jb25jYXQgPSBCdWZmZXJpc2guY29uY2F0O1xuZXhwb3J0cy5mcm9tID0gZnJvbTtcblxuLyoqXG4gKiBAcGFyYW0gc2l6ZSB7TnVtYmVyfVxuICogQHJldHVybnMge0J1ZmZlcnxVaW50OEFycmF5fEFycmF5fVxuICovXG5cbmZ1bmN0aW9uIGFsbG9jKHNpemUpIHtcbiAgcmV0dXJuIG5ldyBVaW50OEFycmF5KHNpemUpO1xufVxuXG4vKipcbiAqIEBwYXJhbSB2YWx1ZSB7QXJyYXl8QXJyYXlCdWZmZXJ8QnVmZmVyfFN0cmluZ31cbiAqIEByZXR1cm5zIHtVaW50OEFycmF5fVxuICovXG5cbmZ1bmN0aW9uIGZyb20odmFsdWUpIHtcbiAgaWYgKEJ1ZmZlcmlzaC5pc1ZpZXcodmFsdWUpKSB7XG4gICAgLy8gVHlwZWRBcnJheSB0byBBcnJheUJ1ZmZlclxuICAgIHZhciBieXRlT2Zmc2V0ID0gdmFsdWUuYnl0ZU9mZnNldDtcbiAgICB2YXIgYnl0ZUxlbmd0aCA9IHZhbHVlLmJ5dGVMZW5ndGg7XG4gICAgdmFsdWUgPSB2YWx1ZS5idWZmZXI7XG4gICAgaWYgKHZhbHVlLmJ5dGVMZW5ndGggIT09IGJ5dGVMZW5ndGgpIHtcbiAgICAgIGlmICh2YWx1ZS5zbGljZSkge1xuICAgICAgICB2YWx1ZSA9IHZhbHVlLnNsaWNlKGJ5dGVPZmZzZXQsIGJ5dGVPZmZzZXQgKyBieXRlTGVuZ3RoKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIEFuZHJvaWQgNC4xIGRvZXMgbm90IGhhdmUgQXJyYXlCdWZmZXIucHJvdG90eXBlLnNsaWNlXG4gICAgICAgIHZhbHVlID0gbmV3IFVpbnQ4QXJyYXkodmFsdWUpO1xuICAgICAgICBpZiAodmFsdWUuYnl0ZUxlbmd0aCAhPT0gYnl0ZUxlbmd0aCkge1xuICAgICAgICAgIC8vIFR5cGVkQXJyYXkgdG8gQXJyYXlCdWZmZXIgdG8gVWludDhBcnJheSB0byBBcnJheVxuICAgICAgICAgIHZhbHVlID0gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwodmFsdWUsIGJ5dGVPZmZzZXQsIGJ5dGVPZmZzZXQgKyBieXRlTGVuZ3RoKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfSBlbHNlIGlmICh0eXBlb2YgdmFsdWUgPT09IFwic3RyaW5nXCIpIHtcbiAgICAvLyBTdHJpbmcgdG8gVWludDhBcnJheVxuICAgIHJldHVybiBCdWZmZXJpc2guZnJvbS5jYWxsKGV4cG9ydHMsIHZhbHVlKTtcbiAgfSBlbHNlIGlmICh0eXBlb2YgdmFsdWUgPT09IFwibnVtYmVyXCIpIHtcbiAgICB0aHJvdyBuZXcgVHlwZUVycm9yKCdcInZhbHVlXCIgYXJndW1lbnQgbXVzdCBub3QgYmUgYSBudW1iZXInKTtcbiAgfVxuXG4gIHJldHVybiBuZXcgVWludDhBcnJheSh2YWx1ZSk7XG59XG4iLCIvLyBidWZmZXJpc2guanNcblxudmFyIEJ1ZmZlciA9IGV4cG9ydHMuZ2xvYmFsID0gcmVxdWlyZShcIi4vYnVmZmVyLWdsb2JhbFwiKTtcbnZhciBoYXNCdWZmZXIgPSBleHBvcnRzLmhhc0J1ZmZlciA9IEJ1ZmZlciAmJiAhIUJ1ZmZlci5pc0J1ZmZlcjtcbnZhciBoYXNBcnJheUJ1ZmZlciA9IGV4cG9ydHMuaGFzQXJyYXlCdWZmZXIgPSAoXCJ1bmRlZmluZWRcIiAhPT0gdHlwZW9mIEFycmF5QnVmZmVyKTtcblxudmFyIGlzQXJyYXkgPSBleHBvcnRzLmlzQXJyYXkgPSByZXF1aXJlKFwiaXNhcnJheVwiKTtcbmV4cG9ydHMuaXNBcnJheUJ1ZmZlciA9IGhhc0FycmF5QnVmZmVyID8gaXNBcnJheUJ1ZmZlciA6IF9mYWxzZTtcbnZhciBpc0J1ZmZlciA9IGV4cG9ydHMuaXNCdWZmZXIgPSBoYXNCdWZmZXIgPyBCdWZmZXIuaXNCdWZmZXIgOiBfZmFsc2U7XG52YXIgaXNWaWV3ID0gZXhwb3J0cy5pc1ZpZXcgPSBoYXNBcnJheUJ1ZmZlciA/IChBcnJheUJ1ZmZlci5pc1ZpZXcgfHwgX2lzKFwiQXJyYXlCdWZmZXJcIiwgXCJidWZmZXJcIikpIDogX2ZhbHNlO1xuXG5leHBvcnRzLmFsbG9jID0gYWxsb2M7XG5leHBvcnRzLmNvbmNhdCA9IGNvbmNhdDtcbmV4cG9ydHMuZnJvbSA9IGZyb207XG5cbnZhciBCdWZmZXJBcnJheSA9IGV4cG9ydHMuQXJyYXkgPSByZXF1aXJlKFwiLi9idWZmZXJpc2gtYXJyYXlcIik7XG52YXIgQnVmZmVyQnVmZmVyID0gZXhwb3J0cy5CdWZmZXIgPSByZXF1aXJlKFwiLi9idWZmZXJpc2gtYnVmZmVyXCIpO1xudmFyIEJ1ZmZlclVpbnQ4QXJyYXkgPSBleHBvcnRzLlVpbnQ4QXJyYXkgPSByZXF1aXJlKFwiLi9idWZmZXJpc2gtdWludDhhcnJheVwiKTtcbnZhciBCdWZmZXJQcm90byA9IGV4cG9ydHMucHJvdG90eXBlID0gcmVxdWlyZShcIi4vYnVmZmVyaXNoLXByb3RvXCIpO1xuXG4vKipcbiAqIEBwYXJhbSB2YWx1ZSB7QXJyYXl8QXJyYXlCdWZmZXJ8QnVmZmVyfFN0cmluZ31cbiAqIEByZXR1cm5zIHtCdWZmZXJ8VWludDhBcnJheXxBcnJheX1cbiAqL1xuXG5mdW5jdGlvbiBmcm9tKHZhbHVlKSB7XG4gIGlmICh0eXBlb2YgdmFsdWUgPT09IFwic3RyaW5nXCIpIHtcbiAgICByZXR1cm4gZnJvbVN0cmluZy5jYWxsKHRoaXMsIHZhbHVlKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gYXV0byh0aGlzKS5mcm9tKHZhbHVlKTtcbiAgfVxufVxuXG4vKipcbiAqIEBwYXJhbSBzaXplIHtOdW1iZXJ9XG4gKiBAcmV0dXJucyB7QnVmZmVyfFVpbnQ4QXJyYXl8QXJyYXl9XG4gKi9cblxuZnVuY3Rpb24gYWxsb2Moc2l6ZSkge1xuICByZXR1cm4gYXV0byh0aGlzKS5hbGxvYyhzaXplKTtcbn1cblxuLyoqXG4gKiBAcGFyYW0gbGlzdCB7QXJyYXl9IGFycmF5IG9mIChCdWZmZXJ8VWludDhBcnJheXxBcnJheSlzXG4gKiBAcGFyYW0gW2xlbmd0aF1cbiAqIEByZXR1cm5zIHtCdWZmZXJ8VWludDhBcnJheXxBcnJheX1cbiAqL1xuXG5mdW5jdGlvbiBjb25jYXQobGlzdCwgbGVuZ3RoKSB7XG4gIGlmICghbGVuZ3RoKSB7XG4gICAgbGVuZ3RoID0gMDtcbiAgICBBcnJheS5wcm90b3R5cGUuZm9yRWFjaC5jYWxsKGxpc3QsIGRyeXJ1bik7XG4gIH1cbiAgdmFyIHJlZiA9ICh0aGlzICE9PSBleHBvcnRzKSAmJiB0aGlzIHx8IGxpc3RbMF07XG4gIHZhciByZXN1bHQgPSBhbGxvYy5jYWxsKHJlZiwgbGVuZ3RoKTtcbiAgdmFyIG9mZnNldCA9IDA7XG4gIEFycmF5LnByb3RvdHlwZS5mb3JFYWNoLmNhbGwobGlzdCwgYXBwZW5kKTtcbiAgcmV0dXJuIHJlc3VsdDtcblxuICBmdW5jdGlvbiBkcnlydW4oYnVmZmVyKSB7XG4gICAgbGVuZ3RoICs9IGJ1ZmZlci5sZW5ndGg7XG4gIH1cblxuICBmdW5jdGlvbiBhcHBlbmQoYnVmZmVyKSB7XG4gICAgb2Zmc2V0ICs9IEJ1ZmZlclByb3RvLmNvcHkuY2FsbChidWZmZXIsIHJlc3VsdCwgb2Zmc2V0KTtcbiAgfVxufVxuXG52YXIgX2lzQXJyYXlCdWZmZXIgPSBfaXMoXCJBcnJheUJ1ZmZlclwiKTtcblxuZnVuY3Rpb24gaXNBcnJheUJ1ZmZlcih2YWx1ZSkge1xuICByZXR1cm4gKHZhbHVlIGluc3RhbmNlb2YgQXJyYXlCdWZmZXIpIHx8IF9pc0FycmF5QnVmZmVyKHZhbHVlKTtcbn1cblxuLyoqXG4gKiBAcHJpdmF0ZVxuICovXG5cbmZ1bmN0aW9uIGZyb21TdHJpbmcodmFsdWUpIHtcbiAgdmFyIGV4cGVjdGVkID0gdmFsdWUubGVuZ3RoICogMztcbiAgdmFyIHRoYXQgPSBhbGxvYy5jYWxsKHRoaXMsIGV4cGVjdGVkKTtcbiAgdmFyIGFjdHVhbCA9IEJ1ZmZlclByb3RvLndyaXRlLmNhbGwodGhhdCwgdmFsdWUpO1xuICBpZiAoZXhwZWN0ZWQgIT09IGFjdHVhbCkge1xuICAgIHRoYXQgPSBCdWZmZXJQcm90by5zbGljZS5jYWxsKHRoYXQsIDAsIGFjdHVhbCk7XG4gIH1cbiAgcmV0dXJuIHRoYXQ7XG59XG5cbmZ1bmN0aW9uIGF1dG8odGhhdCkge1xuICByZXR1cm4gaXNCdWZmZXIodGhhdCkgPyBCdWZmZXJCdWZmZXJcbiAgICA6IGlzVmlldyh0aGF0KSA/IEJ1ZmZlclVpbnQ4QXJyYXlcbiAgICA6IGlzQXJyYXkodGhhdCkgPyBCdWZmZXJBcnJheVxuICAgIDogaGFzQnVmZmVyID8gQnVmZmVyQnVmZmVyXG4gICAgOiBoYXNBcnJheUJ1ZmZlciA/IEJ1ZmZlclVpbnQ4QXJyYXlcbiAgICA6IEJ1ZmZlckFycmF5O1xufVxuXG5mdW5jdGlvbiBfZmFsc2UoKSB7XG4gIHJldHVybiBmYWxzZTtcbn1cblxuZnVuY3Rpb24gX2lzKG5hbWUsIGtleSkge1xuICAvKiBqc2hpbnQgZXFudWxsOnRydWUgKi9cbiAgbmFtZSA9IFwiW29iamVjdCBcIiArIG5hbWUgKyBcIl1cIjtcbiAgcmV0dXJuIGZ1bmN0aW9uKHZhbHVlKSB7XG4gICAgcmV0dXJuICh2YWx1ZSAhPSBudWxsKSAmJiB7fS50b1N0cmluZy5jYWxsKGtleSA/IHZhbHVlW2tleV0gOiB2YWx1ZSkgPT09IG5hbWU7XG4gIH07XG59IiwiLy8gY29kZWMtYmFzZS5qc1xuXG52YXIgSVNfQVJSQVkgPSByZXF1aXJlKFwiaXNhcnJheVwiKTtcblxuZXhwb3J0cy5jcmVhdGVDb2RlYyA9IGNyZWF0ZUNvZGVjO1xuZXhwb3J0cy5pbnN0YWxsID0gaW5zdGFsbDtcbmV4cG9ydHMuZmlsdGVyID0gZmlsdGVyO1xuXG52YXIgQnVmZmVyaXNoID0gcmVxdWlyZShcIi4vYnVmZmVyaXNoXCIpO1xuXG5mdW5jdGlvbiBDb2RlYyhvcHRpb25zKSB7XG4gIGlmICghKHRoaXMgaW5zdGFuY2VvZiBDb2RlYykpIHJldHVybiBuZXcgQ29kZWMob3B0aW9ucyk7XG4gIHRoaXMub3B0aW9ucyA9IG9wdGlvbnM7XG4gIHRoaXMuaW5pdCgpO1xufVxuXG5Db2RlYy5wcm90b3R5cGUuaW5pdCA9IGZ1bmN0aW9uKCkge1xuICB2YXIgb3B0aW9ucyA9IHRoaXMub3B0aW9ucztcblxuICBpZiAob3B0aW9ucyAmJiBvcHRpb25zLnVpbnQ4YXJyYXkpIHtcbiAgICB0aGlzLmJ1ZmZlcmlzaCA9IEJ1ZmZlcmlzaC5VaW50OEFycmF5O1xuICB9XG5cbiAgcmV0dXJuIHRoaXM7XG59O1xuXG5mdW5jdGlvbiBpbnN0YWxsKHByb3BzKSB7XG4gIGZvciAodmFyIGtleSBpbiBwcm9wcykge1xuICAgIENvZGVjLnByb3RvdHlwZVtrZXldID0gYWRkKENvZGVjLnByb3RvdHlwZVtrZXldLCBwcm9wc1trZXldKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBhZGQoYSwgYikge1xuICByZXR1cm4gKGEgJiYgYikgPyBhYiA6IChhIHx8IGIpO1xuXG4gIGZ1bmN0aW9uIGFiKCkge1xuICAgIGEuYXBwbHkodGhpcywgYXJndW1lbnRzKTtcbiAgICByZXR1cm4gYi5hcHBseSh0aGlzLCBhcmd1bWVudHMpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGpvaW4oZmlsdGVycykge1xuICBmaWx0ZXJzID0gZmlsdGVycy5zbGljZSgpO1xuXG4gIHJldHVybiBmdW5jdGlvbih2YWx1ZSkge1xuICAgIHJldHVybiBmaWx0ZXJzLnJlZHVjZShpdGVyYXRvciwgdmFsdWUpO1xuICB9O1xuXG4gIGZ1bmN0aW9uIGl0ZXJhdG9yKHZhbHVlLCBmaWx0ZXIpIHtcbiAgICByZXR1cm4gZmlsdGVyKHZhbHVlKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBmaWx0ZXIoZmlsdGVyKSB7XG4gIHJldHVybiBJU19BUlJBWShmaWx0ZXIpID8gam9pbihmaWx0ZXIpIDogZmlsdGVyO1xufVxuXG4vLyBAcHVibGljXG4vLyBtc2dwYWNrLmNyZWF0ZUNvZGVjKClcblxuZnVuY3Rpb24gY3JlYXRlQ29kZWMob3B0aW9ucykge1xuICByZXR1cm4gbmV3IENvZGVjKG9wdGlvbnMpO1xufVxuXG4vLyBkZWZhdWx0IHNoYXJlZCBjb2RlY1xuXG5leHBvcnRzLnByZXNldCA9IGNyZWF0ZUNvZGVjKHtwcmVzZXQ6IHRydWV9KTtcbiIsIi8vIGNvZGVjLmpzXG5cbi8vIGxvYWQgYm90aCBpbnRlcmZhY2VzXG5yZXF1aXJlKFwiLi9yZWFkLWNvcmVcIik7XG5yZXF1aXJlKFwiLi93cml0ZS1jb3JlXCIpO1xuXG4vLyBAcHVibGljXG4vLyBtc2dwYWNrLmNvZGVjLnByZXNldFxuXG5leHBvcnRzLmNvZGVjID0ge1xuICBwcmVzZXQ6IHJlcXVpcmUoXCIuL2NvZGVjLWJhc2VcIikucHJlc2V0XG59O1xuIiwiLy8gZGVjb2RlLWJ1ZmZlci5qc1xuXG5leHBvcnRzLkRlY29kZUJ1ZmZlciA9IERlY29kZUJ1ZmZlcjtcblxudmFyIHByZXNldCA9IHJlcXVpcmUoXCIuL3JlYWQtY29yZVwiKS5wcmVzZXQ7XG5cbnZhciBGbGV4RGVjb2RlciA9IHJlcXVpcmUoXCIuL2ZsZXgtYnVmZmVyXCIpLkZsZXhEZWNvZGVyO1xuXG5GbGV4RGVjb2Rlci5taXhpbihEZWNvZGVCdWZmZXIucHJvdG90eXBlKTtcblxuZnVuY3Rpb24gRGVjb2RlQnVmZmVyKG9wdGlvbnMpIHtcbiAgaWYgKCEodGhpcyBpbnN0YW5jZW9mIERlY29kZUJ1ZmZlcikpIHJldHVybiBuZXcgRGVjb2RlQnVmZmVyKG9wdGlvbnMpO1xuXG4gIGlmIChvcHRpb25zKSB7XG4gICAgdGhpcy5vcHRpb25zID0gb3B0aW9ucztcbiAgICBpZiAob3B0aW9ucy5jb2RlYykge1xuICAgICAgdmFyIGNvZGVjID0gdGhpcy5jb2RlYyA9IG9wdGlvbnMuY29kZWM7XG4gICAgICBpZiAoY29kZWMuYnVmZmVyaXNoKSB0aGlzLmJ1ZmZlcmlzaCA9IGNvZGVjLmJ1ZmZlcmlzaDtcbiAgICB9XG4gIH1cbn1cblxuRGVjb2RlQnVmZmVyLnByb3RvdHlwZS5jb2RlYyA9IHByZXNldDtcblxuRGVjb2RlQnVmZmVyLnByb3RvdHlwZS5mZXRjaCA9IGZ1bmN0aW9uKCkge1xuICByZXR1cm4gdGhpcy5jb2RlYy5kZWNvZGUodGhpcyk7XG59O1xuIiwiLy8gZGVjb2RlLmpzXG5cbmV4cG9ydHMuZGVjb2RlID0gZGVjb2RlO1xuXG52YXIgRGVjb2RlQnVmZmVyID0gcmVxdWlyZShcIi4vZGVjb2RlLWJ1ZmZlclwiKS5EZWNvZGVCdWZmZXI7XG5cbmZ1bmN0aW9uIGRlY29kZShpbnB1dCwgb3B0aW9ucykge1xuICB2YXIgZGVjb2RlciA9IG5ldyBEZWNvZGVCdWZmZXIob3B0aW9ucyk7XG4gIGRlY29kZXIud3JpdGUoaW5wdXQpO1xuICByZXR1cm4gZGVjb2Rlci5yZWFkKCk7XG59IiwiLy8gZGVjb2Rlci5qc1xuXG5leHBvcnRzLkRlY29kZXIgPSBEZWNvZGVyO1xuXG52YXIgRXZlbnRMaXRlID0gcmVxdWlyZShcImV2ZW50LWxpdGVcIik7XG52YXIgRGVjb2RlQnVmZmVyID0gcmVxdWlyZShcIi4vZGVjb2RlLWJ1ZmZlclwiKS5EZWNvZGVCdWZmZXI7XG5cbmZ1bmN0aW9uIERlY29kZXIob3B0aW9ucykge1xuICBpZiAoISh0aGlzIGluc3RhbmNlb2YgRGVjb2RlcikpIHJldHVybiBuZXcgRGVjb2RlcihvcHRpb25zKTtcbiAgRGVjb2RlQnVmZmVyLmNhbGwodGhpcywgb3B0aW9ucyk7XG59XG5cbkRlY29kZXIucHJvdG90eXBlID0gbmV3IERlY29kZUJ1ZmZlcigpO1xuXG5FdmVudExpdGUubWl4aW4oRGVjb2Rlci5wcm90b3R5cGUpO1xuXG5EZWNvZGVyLnByb3RvdHlwZS5kZWNvZGUgPSBmdW5jdGlvbihjaHVuaykge1xuICBpZiAoYXJndW1lbnRzLmxlbmd0aCkgdGhpcy53cml0ZShjaHVuayk7XG4gIHRoaXMuZmx1c2goKTtcbn07XG5cbkRlY29kZXIucHJvdG90eXBlLnB1c2ggPSBmdW5jdGlvbihjaHVuaykge1xuICB0aGlzLmVtaXQoXCJkYXRhXCIsIGNodW5rKTtcbn07XG5cbkRlY29kZXIucHJvdG90eXBlLmVuZCA9IGZ1bmN0aW9uKGNodW5rKSB7XG4gIHRoaXMuZGVjb2RlKGNodW5rKTtcbiAgdGhpcy5lbWl0KFwiZW5kXCIpO1xufTtcbiIsIi8vIGVuY29kZS1idWZmZXIuanNcblxuZXhwb3J0cy5FbmNvZGVCdWZmZXIgPSBFbmNvZGVCdWZmZXI7XG5cbnZhciBwcmVzZXQgPSByZXF1aXJlKFwiLi93cml0ZS1jb3JlXCIpLnByZXNldDtcblxudmFyIEZsZXhFbmNvZGVyID0gcmVxdWlyZShcIi4vZmxleC1idWZmZXJcIikuRmxleEVuY29kZXI7XG5cbkZsZXhFbmNvZGVyLm1peGluKEVuY29kZUJ1ZmZlci5wcm90b3R5cGUpO1xuXG5mdW5jdGlvbiBFbmNvZGVCdWZmZXIob3B0aW9ucykge1xuICBpZiAoISh0aGlzIGluc3RhbmNlb2YgRW5jb2RlQnVmZmVyKSkgcmV0dXJuIG5ldyBFbmNvZGVCdWZmZXIob3B0aW9ucyk7XG5cbiAgaWYgKG9wdGlvbnMpIHtcbiAgICB0aGlzLm9wdGlvbnMgPSBvcHRpb25zO1xuICAgIGlmIChvcHRpb25zLmNvZGVjKSB7XG4gICAgICB2YXIgY29kZWMgPSB0aGlzLmNvZGVjID0gb3B0aW9ucy5jb2RlYztcbiAgICAgIGlmIChjb2RlYy5idWZmZXJpc2gpIHRoaXMuYnVmZmVyaXNoID0gY29kZWMuYnVmZmVyaXNoO1xuICAgIH1cbiAgfVxufVxuXG5FbmNvZGVCdWZmZXIucHJvdG90eXBlLmNvZGVjID0gcHJlc2V0O1xuXG5FbmNvZGVCdWZmZXIucHJvdG90eXBlLndyaXRlID0gZnVuY3Rpb24oaW5wdXQpIHtcbiAgdGhpcy5jb2RlYy5lbmNvZGUodGhpcywgaW5wdXQpO1xufTtcbiIsIi8vIGVuY29kZS5qc1xuXG5leHBvcnRzLmVuY29kZSA9IGVuY29kZTtcblxudmFyIEVuY29kZUJ1ZmZlciA9IHJlcXVpcmUoXCIuL2VuY29kZS1idWZmZXJcIikuRW5jb2RlQnVmZmVyO1xuXG5mdW5jdGlvbiBlbmNvZGUoaW5wdXQsIG9wdGlvbnMpIHtcbiAgdmFyIGVuY29kZXIgPSBuZXcgRW5jb2RlQnVmZmVyKG9wdGlvbnMpO1xuICBlbmNvZGVyLndyaXRlKGlucHV0KTtcbiAgcmV0dXJuIGVuY29kZXIucmVhZCgpO1xufVxuIiwiLy8gZW5jb2Rlci5qc1xuXG5leHBvcnRzLkVuY29kZXIgPSBFbmNvZGVyO1xuXG52YXIgRXZlbnRMaXRlID0gcmVxdWlyZShcImV2ZW50LWxpdGVcIik7XG52YXIgRW5jb2RlQnVmZmVyID0gcmVxdWlyZShcIi4vZW5jb2RlLWJ1ZmZlclwiKS5FbmNvZGVCdWZmZXI7XG5cbmZ1bmN0aW9uIEVuY29kZXIob3B0aW9ucykge1xuICBpZiAoISh0aGlzIGluc3RhbmNlb2YgRW5jb2RlcikpIHJldHVybiBuZXcgRW5jb2RlcihvcHRpb25zKTtcbiAgRW5jb2RlQnVmZmVyLmNhbGwodGhpcywgb3B0aW9ucyk7XG59XG5cbkVuY29kZXIucHJvdG90eXBlID0gbmV3IEVuY29kZUJ1ZmZlcigpO1xuXG5FdmVudExpdGUubWl4aW4oRW5jb2Rlci5wcm90b3R5cGUpO1xuXG5FbmNvZGVyLnByb3RvdHlwZS5lbmNvZGUgPSBmdW5jdGlvbihjaHVuaykge1xuICB0aGlzLndyaXRlKGNodW5rKTtcbiAgdGhpcy5lbWl0KFwiZGF0YVwiLCB0aGlzLnJlYWQoKSk7XG59O1xuXG5FbmNvZGVyLnByb3RvdHlwZS5lbmQgPSBmdW5jdGlvbihjaHVuaykge1xuICBpZiAoYXJndW1lbnRzLmxlbmd0aCkgdGhpcy5lbmNvZGUoY2h1bmspO1xuICB0aGlzLmZsdXNoKCk7XG4gIHRoaXMuZW1pdChcImVuZFwiKTtcbn07XG4iLCIvLyBleHQtYnVmZmVyLmpzXG5cbmV4cG9ydHMuRXh0QnVmZmVyID0gRXh0QnVmZmVyO1xuXG52YXIgQnVmZmVyaXNoID0gcmVxdWlyZShcIi4vYnVmZmVyaXNoXCIpO1xuXG5mdW5jdGlvbiBFeHRCdWZmZXIoYnVmZmVyLCB0eXBlKSB7XG4gIGlmICghKHRoaXMgaW5zdGFuY2VvZiBFeHRCdWZmZXIpKSByZXR1cm4gbmV3IEV4dEJ1ZmZlcihidWZmZXIsIHR5cGUpO1xuICB0aGlzLmJ1ZmZlciA9IEJ1ZmZlcmlzaC5mcm9tKGJ1ZmZlcik7XG4gIHRoaXMudHlwZSA9IHR5cGU7XG59XG4iLCIvLyBleHQtcGFja2VyLmpzXG5cbmV4cG9ydHMuc2V0RXh0UGFja2VycyA9IHNldEV4dFBhY2tlcnM7XG5cbnZhciBCdWZmZXJpc2ggPSByZXF1aXJlKFwiLi9idWZmZXJpc2hcIik7XG52YXIgQnVmZmVyID0gQnVmZmVyaXNoLmdsb2JhbDtcbnZhciBwYWNrVHlwZWRBcnJheSA9IEJ1ZmZlcmlzaC5VaW50OEFycmF5LmZyb207XG52YXIgX2VuY29kZTtcblxudmFyIEVSUk9SX0NPTFVNTlMgPSB7bmFtZTogMSwgbWVzc2FnZTogMSwgc3RhY2s6IDEsIGNvbHVtbk51bWJlcjogMSwgZmlsZU5hbWU6IDEsIGxpbmVOdW1iZXI6IDF9O1xuXG5mdW5jdGlvbiBzZXRFeHRQYWNrZXJzKGNvZGVjKSB7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDBFLCBFcnJvciwgW3BhY2tFcnJvciwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDAxLCBFdmFsRXJyb3IsIFtwYWNrRXJyb3IsIGVuY29kZV0pO1xuICBjb2RlYy5hZGRFeHRQYWNrZXIoMHgwMiwgUmFuZ2VFcnJvciwgW3BhY2tFcnJvciwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDAzLCBSZWZlcmVuY2VFcnJvciwgW3BhY2tFcnJvciwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDA0LCBTeW50YXhFcnJvciwgW3BhY2tFcnJvciwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDA1LCBUeXBlRXJyb3IsIFtwYWNrRXJyb3IsIGVuY29kZV0pO1xuICBjb2RlYy5hZGRFeHRQYWNrZXIoMHgwNiwgVVJJRXJyb3IsIFtwYWNrRXJyb3IsIGVuY29kZV0pO1xuXG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDBBLCBSZWdFeHAsIFtwYWNrUmVnRXhwLCBlbmNvZGVdKTtcbiAgY29kZWMuYWRkRXh0UGFja2VyKDB4MEIsIEJvb2xlYW4sIFtwYWNrVmFsdWVPZiwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDBDLCBTdHJpbmcsIFtwYWNrVmFsdWVPZiwgZW5jb2RlXSk7XG4gIGNvZGVjLmFkZEV4dFBhY2tlcigweDBELCBEYXRlLCBbTnVtYmVyLCBlbmNvZGVdKTtcbiAgY29kZWMuYWRkRXh0UGFja2VyKDB4MEYsIE51bWJlciwgW3BhY2tWYWx1ZU9mLCBlbmNvZGVdKTtcblxuICBpZiAoXCJ1bmRlZmluZWRcIiAhPT0gdHlwZW9mIFVpbnQ4QXJyYXkpIHtcbiAgICBjb2RlYy5hZGRFeHRQYWNrZXIoMHgxMSwgSW50OEFycmF5LCBwYWNrVHlwZWRBcnJheSk7XG4gICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MTIsIFVpbnQ4QXJyYXksIHBhY2tUeXBlZEFycmF5KTtcbiAgICBjb2RlYy5hZGRFeHRQYWNrZXIoMHgxMywgSW50MTZBcnJheSwgcGFja1R5cGVkQXJyYXkpO1xuICAgIGNvZGVjLmFkZEV4dFBhY2tlcigweDE0LCBVaW50MTZBcnJheSwgcGFja1R5cGVkQXJyYXkpO1xuICAgIGNvZGVjLmFkZEV4dFBhY2tlcigweDE1LCBJbnQzMkFycmF5LCBwYWNrVHlwZWRBcnJheSk7XG4gICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MTYsIFVpbnQzMkFycmF5LCBwYWNrVHlwZWRBcnJheSk7XG4gICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MTcsIEZsb2F0MzJBcnJheSwgcGFja1R5cGVkQXJyYXkpO1xuXG4gICAgLy8gUGhhbnRvbUpTLzEuOS43IGRvZXNuJ3QgaGF2ZSBGbG9hdDY0QXJyYXlcbiAgICBpZiAoXCJ1bmRlZmluZWRcIiAhPT0gdHlwZW9mIEZsb2F0NjRBcnJheSkge1xuICAgICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MTgsIEZsb2F0NjRBcnJheSwgcGFja1R5cGVkQXJyYXkpO1xuICAgIH1cblxuICAgIC8vIElFMTAgZG9lc24ndCBoYXZlIFVpbnQ4Q2xhbXBlZEFycmF5XG4gICAgaWYgKFwidW5kZWZpbmVkXCIgIT09IHR5cGVvZiBVaW50OENsYW1wZWRBcnJheSkge1xuICAgICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MTksIFVpbnQ4Q2xhbXBlZEFycmF5LCBwYWNrVHlwZWRBcnJheSk7XG4gICAgfVxuXG4gICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MUEsIEFycmF5QnVmZmVyLCBwYWNrVHlwZWRBcnJheSk7XG4gICAgY29kZWMuYWRkRXh0UGFja2VyKDB4MUQsIERhdGFWaWV3LCBwYWNrVHlwZWRBcnJheSk7XG4gIH1cblxuICBpZiAoQnVmZmVyaXNoLmhhc0J1ZmZlcikge1xuICAgIGNvZGVjLmFkZEV4dFBhY2tlcigweDFCLCBCdWZmZXIsIEJ1ZmZlcmlzaC5mcm9tKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBlbmNvZGUoaW5wdXQpIHtcbiAgaWYgKCFfZW5jb2RlKSBfZW5jb2RlID0gcmVxdWlyZShcIi4vZW5jb2RlXCIpLmVuY29kZTsgLy8gbGF6eSBsb2FkXG4gIHJldHVybiBfZW5jb2RlKGlucHV0KTtcbn1cblxuZnVuY3Rpb24gcGFja1ZhbHVlT2YodmFsdWUpIHtcbiAgcmV0dXJuICh2YWx1ZSkudmFsdWVPZigpO1xufVxuXG5mdW5jdGlvbiBwYWNrUmVnRXhwKHZhbHVlKSB7XG4gIHZhbHVlID0gUmVnRXhwLnByb3RvdHlwZS50b1N0cmluZy5jYWxsKHZhbHVlKS5zcGxpdChcIi9cIik7XG4gIHZhbHVlLnNoaWZ0KCk7XG4gIHZhciBvdXQgPSBbdmFsdWUucG9wKCldO1xuICBvdXQudW5zaGlmdCh2YWx1ZS5qb2luKFwiL1wiKSk7XG4gIHJldHVybiBvdXQ7XG59XG5cbmZ1bmN0aW9uIHBhY2tFcnJvcih2YWx1ZSkge1xuICB2YXIgb3V0ID0ge307XG4gIGZvciAodmFyIGtleSBpbiBFUlJPUl9DT0xVTU5TKSB7XG4gICAgb3V0W2tleV0gPSB2YWx1ZVtrZXldO1xuICB9XG4gIHJldHVybiBvdXQ7XG59XG4iLCIvLyBleHQtdW5wYWNrZXIuanNcblxuZXhwb3J0cy5zZXRFeHRVbnBhY2tlcnMgPSBzZXRFeHRVbnBhY2tlcnM7XG5cbnZhciBCdWZmZXJpc2ggPSByZXF1aXJlKFwiLi9idWZmZXJpc2hcIik7XG52YXIgQnVmZmVyID0gQnVmZmVyaXNoLmdsb2JhbDtcbnZhciBfZGVjb2RlO1xuXG52YXIgRVJST1JfQ09MVU1OUyA9IHtuYW1lOiAxLCBtZXNzYWdlOiAxLCBzdGFjazogMSwgY29sdW1uTnVtYmVyOiAxLCBmaWxlTmFtZTogMSwgbGluZU51bWJlcjogMX07XG5cbmZ1bmN0aW9uIHNldEV4dFVucGFja2Vycyhjb2RlYykge1xuICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDBFLCBbZGVjb2RlLCB1bnBhY2tFcnJvcihFcnJvcildKTtcbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwMSwgW2RlY29kZSwgdW5wYWNrRXJyb3IoRXZhbEVycm9yKV0pO1xuICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDAyLCBbZGVjb2RlLCB1bnBhY2tFcnJvcihSYW5nZUVycm9yKV0pO1xuICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDAzLCBbZGVjb2RlLCB1bnBhY2tFcnJvcihSZWZlcmVuY2VFcnJvcildKTtcbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwNCwgW2RlY29kZSwgdW5wYWNrRXJyb3IoU3ludGF4RXJyb3IpXSk7XG4gIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MDUsIFtkZWNvZGUsIHVucGFja0Vycm9yKFR5cGVFcnJvcildKTtcbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwNiwgW2RlY29kZSwgdW5wYWNrRXJyb3IoVVJJRXJyb3IpXSk7XG5cbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwQSwgW2RlY29kZSwgdW5wYWNrUmVnRXhwXSk7XG4gIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MEIsIFtkZWNvZGUsIHVucGFja0NsYXNzKEJvb2xlYW4pXSk7XG4gIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MEMsIFtkZWNvZGUsIHVucGFja0NsYXNzKFN0cmluZyldKTtcbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwRCwgW2RlY29kZSwgdW5wYWNrQ2xhc3MoRGF0ZSldKTtcbiAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgwRiwgW2RlY29kZSwgdW5wYWNrQ2xhc3MoTnVtYmVyKV0pO1xuXG4gIGlmIChcInVuZGVmaW5lZFwiICE9PSB0eXBlb2YgVWludDhBcnJheSkge1xuICAgIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MTEsIHVucGFja0NsYXNzKEludDhBcnJheSkpO1xuICAgIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MTIsIHVucGFja0NsYXNzKFVpbnQ4QXJyYXkpKTtcbiAgICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDEzLCBbdW5wYWNrQXJyYXlCdWZmZXIsIHVucGFja0NsYXNzKEludDE2QXJyYXkpXSk7XG4gICAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgxNCwgW3VucGFja0FycmF5QnVmZmVyLCB1bnBhY2tDbGFzcyhVaW50MTZBcnJheSldKTtcbiAgICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDE1LCBbdW5wYWNrQXJyYXlCdWZmZXIsIHVucGFja0NsYXNzKEludDMyQXJyYXkpXSk7XG4gICAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgxNiwgW3VucGFja0FycmF5QnVmZmVyLCB1bnBhY2tDbGFzcyhVaW50MzJBcnJheSldKTtcbiAgICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDE3LCBbdW5wYWNrQXJyYXlCdWZmZXIsIHVucGFja0NsYXNzKEZsb2F0MzJBcnJheSldKTtcblxuICAgIC8vIFBoYW50b21KUy8xLjkuNyBkb2Vzbid0IGhhdmUgRmxvYXQ2NEFycmF5XG4gICAgaWYgKFwidW5kZWZpbmVkXCIgIT09IHR5cGVvZiBGbG9hdDY0QXJyYXkpIHtcbiAgICAgIGNvZGVjLmFkZEV4dFVucGFja2VyKDB4MTgsIFt1bnBhY2tBcnJheUJ1ZmZlciwgdW5wYWNrQ2xhc3MoRmxvYXQ2NEFycmF5KV0pO1xuICAgIH1cblxuICAgIC8vIElFMTAgZG9lc24ndCBoYXZlIFVpbnQ4Q2xhbXBlZEFycmF5XG4gICAgaWYgKFwidW5kZWZpbmVkXCIgIT09IHR5cGVvZiBVaW50OENsYW1wZWRBcnJheSkge1xuICAgICAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgxOSwgdW5wYWNrQ2xhc3MoVWludDhDbGFtcGVkQXJyYXkpKTtcbiAgICB9XG5cbiAgICBjb2RlYy5hZGRFeHRVbnBhY2tlcigweDFBLCB1bnBhY2tBcnJheUJ1ZmZlcik7XG4gICAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgxRCwgW3VucGFja0FycmF5QnVmZmVyLCB1bnBhY2tDbGFzcyhEYXRhVmlldyldKTtcbiAgfVxuXG4gIGlmIChCdWZmZXJpc2guaGFzQnVmZmVyKSB7XG4gICAgY29kZWMuYWRkRXh0VW5wYWNrZXIoMHgxQiwgdW5wYWNrQ2xhc3MoQnVmZmVyKSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gZGVjb2RlKGlucHV0KSB7XG4gIGlmICghX2RlY29kZSkgX2RlY29kZSA9IHJlcXVpcmUoXCIuL2RlY29kZVwiKS5kZWNvZGU7IC8vIGxhenkgbG9hZFxuICByZXR1cm4gX2RlY29kZShpbnB1dCk7XG59XG5cbmZ1bmN0aW9uIHVucGFja1JlZ0V4cCh2YWx1ZSkge1xuICByZXR1cm4gUmVnRXhwLmFwcGx5KG51bGwsIHZhbHVlKTtcbn1cblxuZnVuY3Rpb24gdW5wYWNrRXJyb3IoQ2xhc3MpIHtcbiAgcmV0dXJuIGZ1bmN0aW9uKHZhbHVlKSB7XG4gICAgdmFyIG91dCA9IG5ldyBDbGFzcygpO1xuICAgIGZvciAodmFyIGtleSBpbiBFUlJPUl9DT0xVTU5TKSB7XG4gICAgICBvdXRba2V5XSA9IHZhbHVlW2tleV07XG4gICAgfVxuICAgIHJldHVybiBvdXQ7XG4gIH07XG59XG5cbmZ1bmN0aW9uIHVucGFja0NsYXNzKENsYXNzKSB7XG4gIHJldHVybiBmdW5jdGlvbih2YWx1ZSkge1xuICAgIHJldHVybiBuZXcgQ2xhc3ModmFsdWUpO1xuICB9O1xufVxuXG5mdW5jdGlvbiB1bnBhY2tBcnJheUJ1ZmZlcih2YWx1ZSkge1xuICByZXR1cm4gKG5ldyBVaW50OEFycmF5KHZhbHVlKSkuYnVmZmVyO1xufVxuIiwiLy8gZXh0LmpzXG5cbi8vIGxvYWQgYm90aCBpbnRlcmZhY2VzXG5yZXF1aXJlKFwiLi9yZWFkLWNvcmVcIik7XG5yZXF1aXJlKFwiLi93cml0ZS1jb3JlXCIpO1xuXG5leHBvcnRzLmNyZWF0ZUNvZGVjID0gcmVxdWlyZShcIi4vY29kZWMtYmFzZVwiKS5jcmVhdGVDb2RlYztcbiIsIi8vIGZsZXgtYnVmZmVyLmpzXG5cbmV4cG9ydHMuRmxleERlY29kZXIgPSBGbGV4RGVjb2RlcjtcbmV4cG9ydHMuRmxleEVuY29kZXIgPSBGbGV4RW5jb2RlcjtcblxudmFyIEJ1ZmZlcmlzaCA9IHJlcXVpcmUoXCIuL2J1ZmZlcmlzaFwiKTtcblxudmFyIE1JTl9CVUZGRVJfU0laRSA9IDIwNDg7XG52YXIgTUFYX0JVRkZFUl9TSVpFID0gNjU1MzY7XG52YXIgQlVGRkVSX1NIT1JUQUdFID0gXCJCVUZGRVJfU0hPUlRBR0VcIjtcblxuZnVuY3Rpb24gRmxleERlY29kZXIoKSB7XG4gIGlmICghKHRoaXMgaW5zdGFuY2VvZiBGbGV4RGVjb2RlcikpIHJldHVybiBuZXcgRmxleERlY29kZXIoKTtcbn1cblxuZnVuY3Rpb24gRmxleEVuY29kZXIoKSB7XG4gIGlmICghKHRoaXMgaW5zdGFuY2VvZiBGbGV4RW5jb2RlcikpIHJldHVybiBuZXcgRmxleEVuY29kZXIoKTtcbn1cblxuRmxleERlY29kZXIubWl4aW4gPSBtaXhpbkZhY3RvcnkoZ2V0RGVjb2Rlck1ldGhvZHMoKSk7XG5GbGV4RGVjb2Rlci5taXhpbihGbGV4RGVjb2Rlci5wcm90b3R5cGUpO1xuXG5GbGV4RW5jb2Rlci5taXhpbiA9IG1peGluRmFjdG9yeShnZXRFbmNvZGVyTWV0aG9kcygpKTtcbkZsZXhFbmNvZGVyLm1peGluKEZsZXhFbmNvZGVyLnByb3RvdHlwZSk7XG5cbmZ1bmN0aW9uIGdldERlY29kZXJNZXRob2RzKCkge1xuICByZXR1cm4ge1xuICAgIGJ1ZmZlcmlzaDogQnVmZmVyaXNoLFxuICAgIHdyaXRlOiB3cml0ZSxcbiAgICBmZXRjaDogZmV0Y2gsXG4gICAgZmx1c2g6IGZsdXNoLFxuICAgIHB1c2g6IHB1c2gsXG4gICAgcHVsbDogcHVsbCxcbiAgICByZWFkOiByZWFkLFxuICAgIHJlc2VydmU6IHJlc2VydmUsXG4gICAgb2Zmc2V0OiAwXG4gIH07XG5cbiAgZnVuY3Rpb24gd3JpdGUoY2h1bmspIHtcbiAgICB2YXIgcHJldiA9IHRoaXMub2Zmc2V0ID8gQnVmZmVyaXNoLnByb3RvdHlwZS5zbGljZS5jYWxsKHRoaXMuYnVmZmVyLCB0aGlzLm9mZnNldCkgOiB0aGlzLmJ1ZmZlcjtcbiAgICB0aGlzLmJ1ZmZlciA9IHByZXYgPyAoY2h1bmsgPyB0aGlzLmJ1ZmZlcmlzaC5jb25jYXQoW3ByZXYsIGNodW5rXSkgOiBwcmV2KSA6IGNodW5rO1xuICAgIHRoaXMub2Zmc2V0ID0gMDtcbiAgfVxuXG4gIGZ1bmN0aW9uIGZsdXNoKCkge1xuICAgIHdoaWxlICh0aGlzLm9mZnNldCA8IHRoaXMuYnVmZmVyLmxlbmd0aCkge1xuICAgICAgdmFyIHN0YXJ0ID0gdGhpcy5vZmZzZXQ7XG4gICAgICB2YXIgdmFsdWU7XG4gICAgICB0cnkge1xuICAgICAgICB2YWx1ZSA9IHRoaXMuZmV0Y2goKTtcbiAgICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgaWYgKGUgJiYgZS5tZXNzYWdlICE9IEJVRkZFUl9TSE9SVEFHRSkgdGhyb3cgZTtcbiAgICAgICAgLy8gcm9sbGJhY2tcbiAgICAgICAgdGhpcy5vZmZzZXQgPSBzdGFydDtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICB0aGlzLnB1c2godmFsdWUpO1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIHJlc2VydmUobGVuZ3RoKSB7XG4gICAgdmFyIHN0YXJ0ID0gdGhpcy5vZmZzZXQ7XG4gICAgdmFyIGVuZCA9IHN0YXJ0ICsgbGVuZ3RoO1xuICAgIGlmIChlbmQgPiB0aGlzLmJ1ZmZlci5sZW5ndGgpIHRocm93IG5ldyBFcnJvcihCVUZGRVJfU0hPUlRBR0UpO1xuICAgIHRoaXMub2Zmc2V0ID0gZW5kO1xuICAgIHJldHVybiBzdGFydDtcbiAgfVxufVxuXG5mdW5jdGlvbiBnZXRFbmNvZGVyTWV0aG9kcygpIHtcbiAgcmV0dXJuIHtcbiAgICBidWZmZXJpc2g6IEJ1ZmZlcmlzaCxcbiAgICB3cml0ZTogd3JpdGUsXG4gICAgZmV0Y2g6IGZldGNoLFxuICAgIGZsdXNoOiBmbHVzaCxcbiAgICBwdXNoOiBwdXNoLFxuICAgIHB1bGw6IHB1bGwsXG4gICAgcmVhZDogcmVhZCxcbiAgICByZXNlcnZlOiByZXNlcnZlLFxuICAgIHNlbmQ6IHNlbmQsXG4gICAgbWF4QnVmZmVyU2l6ZTogTUFYX0JVRkZFUl9TSVpFLFxuICAgIG1pbkJ1ZmZlclNpemU6IE1JTl9CVUZGRVJfU0laRSxcbiAgICBvZmZzZXQ6IDAsXG4gICAgc3RhcnQ6IDBcbiAgfTtcblxuICBmdW5jdGlvbiBmZXRjaCgpIHtcbiAgICB2YXIgc3RhcnQgPSB0aGlzLnN0YXJ0O1xuICAgIGlmIChzdGFydCA8IHRoaXMub2Zmc2V0KSB7XG4gICAgICB2YXIgZW5kID0gdGhpcy5zdGFydCA9IHRoaXMub2Zmc2V0O1xuICAgICAgcmV0dXJuIEJ1ZmZlcmlzaC5wcm90b3R5cGUuc2xpY2UuY2FsbCh0aGlzLmJ1ZmZlciwgc3RhcnQsIGVuZCk7XG4gICAgfVxuICB9XG5cbiAgZnVuY3Rpb24gZmx1c2goKSB7XG4gICAgd2hpbGUgKHRoaXMuc3RhcnQgPCB0aGlzLm9mZnNldCkge1xuICAgICAgdmFyIHZhbHVlID0gdGhpcy5mZXRjaCgpO1xuICAgICAgaWYgKHZhbHVlKSB0aGlzLnB1c2godmFsdWUpO1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIHB1bGwoKSB7XG4gICAgdmFyIGJ1ZmZlcnMgPSB0aGlzLmJ1ZmZlcnMgfHwgKHRoaXMuYnVmZmVycyA9IFtdKTtcbiAgICB2YXIgY2h1bmsgPSBidWZmZXJzLmxlbmd0aCA+IDEgPyB0aGlzLmJ1ZmZlcmlzaC5jb25jYXQoYnVmZmVycykgOiBidWZmZXJzWzBdO1xuICAgIGJ1ZmZlcnMubGVuZ3RoID0gMDsgLy8gYnVmZmVyIGV4aGF1c3RlZFxuICAgIHJldHVybiBjaHVuaztcbiAgfVxuXG4gIGZ1bmN0aW9uIHJlc2VydmUobGVuZ3RoKSB7XG4gICAgdmFyIHJlcSA9IGxlbmd0aCB8IDA7XG5cbiAgICBpZiAodGhpcy5idWZmZXIpIHtcbiAgICAgIHZhciBzaXplID0gdGhpcy5idWZmZXIubGVuZ3RoO1xuICAgICAgdmFyIHN0YXJ0ID0gdGhpcy5vZmZzZXQgfCAwO1xuICAgICAgdmFyIGVuZCA9IHN0YXJ0ICsgcmVxO1xuXG4gICAgICAvLyBpcyBpdCBsb25nIGVub3VnaD9cbiAgICAgIGlmIChlbmQgPCBzaXplKSB7XG4gICAgICAgIHRoaXMub2Zmc2V0ID0gZW5kO1xuICAgICAgICByZXR1cm4gc3RhcnQ7XG4gICAgICB9XG5cbiAgICAgIC8vIGZsdXNoIGN1cnJlbnQgYnVmZmVyXG4gICAgICB0aGlzLmZsdXNoKCk7XG5cbiAgICAgIC8vIHJlc2l6ZSBpdCB0byAyeCBjdXJyZW50IGxlbmd0aFxuICAgICAgbGVuZ3RoID0gTWF0aC5tYXgobGVuZ3RoLCBNYXRoLm1pbihzaXplICogMiwgdGhpcy5tYXhCdWZmZXJTaXplKSk7XG4gICAgfVxuXG4gICAgLy8gbWluaW11bSBidWZmZXIgc2l6ZVxuICAgIGxlbmd0aCA9IE1hdGgubWF4KGxlbmd0aCwgdGhpcy5taW5CdWZmZXJTaXplKTtcblxuICAgIC8vIGFsbG9jYXRlIG5ldyBidWZmZXJcbiAgICB0aGlzLmJ1ZmZlciA9IHRoaXMuYnVmZmVyaXNoLmFsbG9jKGxlbmd0aCk7XG4gICAgdGhpcy5zdGFydCA9IDA7XG4gICAgdGhpcy5vZmZzZXQgPSByZXE7XG4gICAgcmV0dXJuIDA7XG4gIH1cblxuICBmdW5jdGlvbiBzZW5kKGJ1ZmZlcikge1xuICAgIHZhciBsZW5ndGggPSBidWZmZXIubGVuZ3RoO1xuICAgIGlmIChsZW5ndGggPiB0aGlzLm1pbkJ1ZmZlclNpemUpIHtcbiAgICAgIHRoaXMuZmx1c2goKTtcbiAgICAgIHRoaXMucHVzaChidWZmZXIpO1xuICAgIH0gZWxzZSB7XG4gICAgICB2YXIgb2Zmc2V0ID0gdGhpcy5yZXNlcnZlKGxlbmd0aCk7XG4gICAgICBCdWZmZXJpc2gucHJvdG90eXBlLmNvcHkuY2FsbChidWZmZXIsIHRoaXMuYnVmZmVyLCBvZmZzZXQpO1xuICAgIH1cbiAgfVxufVxuXG4vLyBjb21tb24gbWV0aG9kc1xuXG5mdW5jdGlvbiB3cml0ZSgpIHtcbiAgdGhyb3cgbmV3IEVycm9yKFwibWV0aG9kIG5vdCBpbXBsZW1lbnRlZDogd3JpdGUoKVwiKTtcbn1cblxuZnVuY3Rpb24gZmV0Y2goKSB7XG4gIHRocm93IG5ldyBFcnJvcihcIm1ldGhvZCBub3QgaW1wbGVtZW50ZWQ6IGZldGNoKClcIik7XG59XG5cbmZ1bmN0aW9uIHJlYWQoKSB7XG4gIHZhciBsZW5ndGggPSB0aGlzLmJ1ZmZlcnMgJiYgdGhpcy5idWZmZXJzLmxlbmd0aDtcblxuICAvLyBmZXRjaCB0aGUgZmlyc3QgcmVzdWx0XG4gIGlmICghbGVuZ3RoKSByZXR1cm4gdGhpcy5mZXRjaCgpO1xuXG4gIC8vIGZsdXNoIGN1cnJlbnQgYnVmZmVyXG4gIHRoaXMuZmx1c2goKTtcblxuICAvLyByZWFkIGZyb20gdGhlIHJlc3VsdHNcbiAgcmV0dXJuIHRoaXMucHVsbCgpO1xufVxuXG5mdW5jdGlvbiBwdXNoKGNodW5rKSB7XG4gIHZhciBidWZmZXJzID0gdGhpcy5idWZmZXJzIHx8ICh0aGlzLmJ1ZmZlcnMgPSBbXSk7XG4gIGJ1ZmZlcnMucHVzaChjaHVuayk7XG59XG5cbmZ1bmN0aW9uIHB1bGwoKSB7XG4gIHZhciBidWZmZXJzID0gdGhpcy5idWZmZXJzIHx8ICh0aGlzLmJ1ZmZlcnMgPSBbXSk7XG4gIHJldHVybiBidWZmZXJzLnNoaWZ0KCk7XG59XG5cbmZ1bmN0aW9uIG1peGluRmFjdG9yeShzb3VyY2UpIHtcbiAgcmV0dXJuIG1peGluO1xuXG4gIGZ1bmN0aW9uIG1peGluKHRhcmdldCkge1xuICAgIGZvciAodmFyIGtleSBpbiBzb3VyY2UpIHtcbiAgICAgIHRhcmdldFtrZXldID0gc291cmNlW2tleV07XG4gICAgfVxuICAgIHJldHVybiB0YXJnZXQ7XG4gIH1cbn1cbiIsIi8vIHJlYWQtY29yZS5qc1xuXG52YXIgRXh0QnVmZmVyID0gcmVxdWlyZShcIi4vZXh0LWJ1ZmZlclwiKS5FeHRCdWZmZXI7XG52YXIgRXh0VW5wYWNrZXIgPSByZXF1aXJlKFwiLi9leHQtdW5wYWNrZXJcIik7XG52YXIgcmVhZFVpbnQ4ID0gcmVxdWlyZShcIi4vcmVhZC1mb3JtYXRcIikucmVhZFVpbnQ4O1xudmFyIFJlYWRUb2tlbiA9IHJlcXVpcmUoXCIuL3JlYWQtdG9rZW5cIik7XG52YXIgQ29kZWNCYXNlID0gcmVxdWlyZShcIi4vY29kZWMtYmFzZVwiKTtcblxuQ29kZWNCYXNlLmluc3RhbGwoe1xuICBhZGRFeHRVbnBhY2tlcjogYWRkRXh0VW5wYWNrZXIsXG4gIGdldEV4dFVucGFja2VyOiBnZXRFeHRVbnBhY2tlcixcbiAgaW5pdDogaW5pdFxufSk7XG5cbmV4cG9ydHMucHJlc2V0ID0gaW5pdC5jYWxsKENvZGVjQmFzZS5wcmVzZXQpO1xuXG5mdW5jdGlvbiBnZXREZWNvZGVyKG9wdGlvbnMpIHtcbiAgdmFyIHJlYWRUb2tlbiA9IFJlYWRUb2tlbi5nZXRSZWFkVG9rZW4ob3B0aW9ucyk7XG4gIHJldHVybiBkZWNvZGU7XG5cbiAgZnVuY3Rpb24gZGVjb2RlKGRlY29kZXIpIHtcbiAgICB2YXIgdHlwZSA9IHJlYWRVaW50OChkZWNvZGVyKTtcbiAgICB2YXIgZnVuYyA9IHJlYWRUb2tlblt0eXBlXTtcbiAgICBpZiAoIWZ1bmMpIHRocm93IG5ldyBFcnJvcihcIkludmFsaWQgdHlwZTogXCIgKyAodHlwZSA/IChcIjB4XCIgKyB0eXBlLnRvU3RyaW5nKDE2KSkgOiB0eXBlKSk7XG4gICAgcmV0dXJuIGZ1bmMoZGVjb2Rlcik7XG4gIH1cbn1cblxuZnVuY3Rpb24gaW5pdCgpIHtcbiAgdmFyIG9wdGlvbnMgPSB0aGlzLm9wdGlvbnM7XG4gIHRoaXMuZGVjb2RlID0gZ2V0RGVjb2RlcihvcHRpb25zKTtcblxuICBpZiAob3B0aW9ucyAmJiBvcHRpb25zLnByZXNldCkge1xuICAgIEV4dFVucGFja2VyLnNldEV4dFVucGFja2Vycyh0aGlzKTtcbiAgfVxuXG4gIHJldHVybiB0aGlzO1xufVxuXG5mdW5jdGlvbiBhZGRFeHRVbnBhY2tlcihldHlwZSwgdW5wYWNrZXIpIHtcbiAgdmFyIHVucGFja2VycyA9IHRoaXMuZXh0VW5wYWNrZXJzIHx8ICh0aGlzLmV4dFVucGFja2VycyA9IFtdKTtcbiAgdW5wYWNrZXJzW2V0eXBlXSA9IENvZGVjQmFzZS5maWx0ZXIodW5wYWNrZXIpO1xufVxuXG5mdW5jdGlvbiBnZXRFeHRVbnBhY2tlcih0eXBlKSB7XG4gIHZhciB1bnBhY2tlcnMgPSB0aGlzLmV4dFVucGFja2VycyB8fCAodGhpcy5leHRVbnBhY2tlcnMgPSBbXSk7XG4gIHJldHVybiB1bnBhY2tlcnNbdHlwZV0gfHwgZXh0VW5wYWNrZXI7XG5cbiAgZnVuY3Rpb24gZXh0VW5wYWNrZXIoYnVmZmVyKSB7XG4gICAgcmV0dXJuIG5ldyBFeHRCdWZmZXIoYnVmZmVyLCB0eXBlKTtcbiAgfVxufVxuIiwiLy8gcmVhZC1mb3JtYXQuanNcblxudmFyIGllZWU3NTQgPSByZXF1aXJlKFwiaWVlZTc1NFwiKTtcbnZhciBJbnQ2NEJ1ZmZlciA9IHJlcXVpcmUoXCJpbnQ2NC1idWZmZXJcIik7XG52YXIgVWludDY0QkUgPSBJbnQ2NEJ1ZmZlci5VaW50NjRCRTtcbnZhciBJbnQ2NEJFID0gSW50NjRCdWZmZXIuSW50NjRCRTtcblxuZXhwb3J0cy5nZXRSZWFkRm9ybWF0ID0gZ2V0UmVhZEZvcm1hdDtcbmV4cG9ydHMucmVhZFVpbnQ4ID0gdWludDg7XG5cbnZhciBCdWZmZXJpc2ggPSByZXF1aXJlKFwiLi9idWZmZXJpc2hcIik7XG52YXIgQnVmZmVyUHJvdG8gPSByZXF1aXJlKFwiLi9idWZmZXJpc2gtcHJvdG9cIik7XG5cbnZhciBIQVNfTUFQID0gKFwidW5kZWZpbmVkXCIgIT09IHR5cGVvZiBNYXApO1xudmFyIE5PX0FTU0VSVCA9IHRydWU7XG5cbmZ1bmN0aW9uIGdldFJlYWRGb3JtYXQob3B0aW9ucykge1xuICB2YXIgYmluYXJyYXlidWZmZXIgPSBCdWZmZXJpc2guaGFzQXJyYXlCdWZmZXIgJiYgb3B0aW9ucyAmJiBvcHRpb25zLmJpbmFycmF5YnVmZmVyO1xuICB2YXIgaW50NjQgPSBvcHRpb25zICYmIG9wdGlvbnMuaW50NjQ7XG4gIHZhciB1c2VtYXAgPSBIQVNfTUFQICYmIG9wdGlvbnMgJiYgb3B0aW9ucy51c2VtYXA7XG5cbiAgdmFyIHJlYWRGb3JtYXQgPSB7XG4gICAgbWFwOiAodXNlbWFwID8gbWFwX3RvX21hcCA6IG1hcF90b19vYmopLFxuICAgIGFycmF5OiBhcnJheSxcbiAgICBzdHI6IHN0cixcbiAgICBiaW46IChiaW5hcnJheWJ1ZmZlciA/IGJpbl9hcnJheWJ1ZmZlciA6IGJpbl9idWZmZXIpLFxuICAgIGV4dDogZXh0LFxuICAgIHVpbnQ4OiB1aW50OCxcbiAgICB1aW50MTY6IHVpbnQxNixcbiAgICB1aW50MzI6IHVpbnQzMixcbiAgICB1aW50NjQ6IHJlYWQoOCwgaW50NjQgPyByZWFkVUludDY0QkVfaW50NjQgOiByZWFkVUludDY0QkUpLFxuICAgIGludDg6IGludDgsXG4gICAgaW50MTY6IGludDE2LFxuICAgIGludDMyOiBpbnQzMixcbiAgICBpbnQ2NDogcmVhZCg4LCBpbnQ2NCA/IHJlYWRJbnQ2NEJFX2ludDY0IDogcmVhZEludDY0QkUpLFxuICAgIGZsb2F0MzI6IHJlYWQoNCwgcmVhZEZsb2F0QkUpLFxuICAgIGZsb2F0NjQ6IHJlYWQoOCwgcmVhZERvdWJsZUJFKVxuICB9O1xuXG4gIHJldHVybiByZWFkRm9ybWF0O1xufVxuXG5mdW5jdGlvbiBtYXBfdG9fb2JqKGRlY29kZXIsIGxlbikge1xuICB2YXIgdmFsdWUgPSB7fTtcbiAgdmFyIGk7XG4gIHZhciBrID0gbmV3IEFycmF5KGxlbik7XG4gIHZhciB2ID0gbmV3IEFycmF5KGxlbik7XG5cbiAgdmFyIGRlY29kZSA9IGRlY29kZXIuY29kZWMuZGVjb2RlO1xuICBmb3IgKGkgPSAwOyBpIDwgbGVuOyBpKyspIHtcbiAgICBrW2ldID0gZGVjb2RlKGRlY29kZXIpO1xuICAgIHZbaV0gPSBkZWNvZGUoZGVjb2Rlcik7XG4gIH1cbiAgZm9yIChpID0gMDsgaSA8IGxlbjsgaSsrKSB7XG4gICAgdmFsdWVba1tpXV0gPSB2W2ldO1xuICB9XG4gIHJldHVybiB2YWx1ZTtcbn1cblxuZnVuY3Rpb24gbWFwX3RvX21hcChkZWNvZGVyLCBsZW4pIHtcbiAgdmFyIHZhbHVlID0gbmV3IE1hcCgpO1xuICB2YXIgaTtcbiAgdmFyIGsgPSBuZXcgQXJyYXkobGVuKTtcbiAgdmFyIHYgPSBuZXcgQXJyYXkobGVuKTtcblxuICB2YXIgZGVjb2RlID0gZGVjb2Rlci5jb2RlYy5kZWNvZGU7XG4gIGZvciAoaSA9IDA7IGkgPCBsZW47IGkrKykge1xuICAgIGtbaV0gPSBkZWNvZGUoZGVjb2Rlcik7XG4gICAgdltpXSA9IGRlY29kZShkZWNvZGVyKTtcbiAgfVxuICBmb3IgKGkgPSAwOyBpIDwgbGVuOyBpKyspIHtcbiAgICB2YWx1ZS5zZXQoa1tpXSwgdltpXSk7XG4gIH1cbiAgcmV0dXJuIHZhbHVlO1xufVxuXG5mdW5jdGlvbiBhcnJheShkZWNvZGVyLCBsZW4pIHtcbiAgdmFyIHZhbHVlID0gbmV3IEFycmF5KGxlbik7XG4gIHZhciBkZWNvZGUgPSBkZWNvZGVyLmNvZGVjLmRlY29kZTtcbiAgZm9yICh2YXIgaSA9IDA7IGkgPCBsZW47IGkrKykge1xuICAgIHZhbHVlW2ldID0gZGVjb2RlKGRlY29kZXIpO1xuICB9XG4gIHJldHVybiB2YWx1ZTtcbn1cblxuZnVuY3Rpb24gc3RyKGRlY29kZXIsIGxlbikge1xuICB2YXIgc3RhcnQgPSBkZWNvZGVyLnJlc2VydmUobGVuKTtcbiAgdmFyIGVuZCA9IHN0YXJ0ICsgbGVuO1xuICByZXR1cm4gQnVmZmVyUHJvdG8udG9TdHJpbmcuY2FsbChkZWNvZGVyLmJ1ZmZlciwgXCJ1dGYtOFwiLCBzdGFydCwgZW5kKTtcbn1cblxuZnVuY3Rpb24gYmluX2J1ZmZlcihkZWNvZGVyLCBsZW4pIHtcbiAgdmFyIHN0YXJ0ID0gZGVjb2Rlci5yZXNlcnZlKGxlbik7XG4gIHZhciBlbmQgPSBzdGFydCArIGxlbjtcbiAgdmFyIGJ1ZiA9IEJ1ZmZlclByb3RvLnNsaWNlLmNhbGwoZGVjb2Rlci5idWZmZXIsIHN0YXJ0LCBlbmQpO1xuICByZXR1cm4gQnVmZmVyaXNoLmZyb20oYnVmKTtcbn1cblxuZnVuY3Rpb24gYmluX2FycmF5YnVmZmVyKGRlY29kZXIsIGxlbikge1xuICB2YXIgc3RhcnQgPSBkZWNvZGVyLnJlc2VydmUobGVuKTtcbiAgdmFyIGVuZCA9IHN0YXJ0ICsgbGVuO1xuICB2YXIgYnVmID0gQnVmZmVyUHJvdG8uc2xpY2UuY2FsbChkZWNvZGVyLmJ1ZmZlciwgc3RhcnQsIGVuZCk7XG4gIHJldHVybiBCdWZmZXJpc2guVWludDhBcnJheS5mcm9tKGJ1ZikuYnVmZmVyO1xufVxuXG5mdW5jdGlvbiBleHQoZGVjb2RlciwgbGVuKSB7XG4gIHZhciBzdGFydCA9IGRlY29kZXIucmVzZXJ2ZShsZW4rMSk7XG4gIHZhciB0eXBlID0gZGVjb2Rlci5idWZmZXJbc3RhcnQrK107XG4gIHZhciBlbmQgPSBzdGFydCArIGxlbjtcbiAgdmFyIHVucGFjayA9IGRlY29kZXIuY29kZWMuZ2V0RXh0VW5wYWNrZXIodHlwZSk7XG4gIGlmICghdW5wYWNrKSB0aHJvdyBuZXcgRXJyb3IoXCJJbnZhbGlkIGV4dCB0eXBlOiBcIiArICh0eXBlID8gKFwiMHhcIiArIHR5cGUudG9TdHJpbmcoMTYpKSA6IHR5cGUpKTtcbiAgdmFyIGJ1ZiA9IEJ1ZmZlclByb3RvLnNsaWNlLmNhbGwoZGVjb2Rlci5idWZmZXIsIHN0YXJ0LCBlbmQpO1xuICByZXR1cm4gdW5wYWNrKGJ1Zik7XG59XG5cbmZ1bmN0aW9uIHVpbnQ4KGRlY29kZXIpIHtcbiAgdmFyIHN0YXJ0ID0gZGVjb2Rlci5yZXNlcnZlKDEpO1xuICByZXR1cm4gZGVjb2Rlci5idWZmZXJbc3RhcnRdO1xufVxuXG5mdW5jdGlvbiBpbnQ4KGRlY29kZXIpIHtcbiAgdmFyIHN0YXJ0ID0gZGVjb2Rlci5yZXNlcnZlKDEpO1xuICB2YXIgdmFsdWUgPSBkZWNvZGVyLmJ1ZmZlcltzdGFydF07XG4gIHJldHVybiAodmFsdWUgJiAweDgwKSA/IHZhbHVlIC0gMHgxMDAgOiB2YWx1ZTtcbn1cblxuZnVuY3Rpb24gdWludDE2KGRlY29kZXIpIHtcbiAgdmFyIHN0YXJ0ID0gZGVjb2Rlci5yZXNlcnZlKDIpO1xuICB2YXIgYnVmZmVyID0gZGVjb2Rlci5idWZmZXI7XG4gIHJldHVybiAoYnVmZmVyW3N0YXJ0KytdIDw8IDgpIHwgYnVmZmVyW3N0YXJ0XTtcbn1cblxuZnVuY3Rpb24gaW50MTYoZGVjb2Rlcikge1xuICB2YXIgc3RhcnQgPSBkZWNvZGVyLnJlc2VydmUoMik7XG4gIHZhciBidWZmZXIgPSBkZWNvZGVyLmJ1ZmZlcjtcbiAgdmFyIHZhbHVlID0gKGJ1ZmZlcltzdGFydCsrXSA8PCA4KSB8IGJ1ZmZlcltzdGFydF07XG4gIHJldHVybiAodmFsdWUgJiAweDgwMDApID8gdmFsdWUgLSAweDEwMDAwIDogdmFsdWU7XG59XG5cbmZ1bmN0aW9uIHVpbnQzMihkZWNvZGVyKSB7XG4gIHZhciBzdGFydCA9IGRlY29kZXIucmVzZXJ2ZSg0KTtcbiAgdmFyIGJ1ZmZlciA9IGRlY29kZXIuYnVmZmVyO1xuICByZXR1cm4gKGJ1ZmZlcltzdGFydCsrXSAqIDE2Nzc3MjE2KSArIChidWZmZXJbc3RhcnQrK10gPDwgMTYpICsgKGJ1ZmZlcltzdGFydCsrXSA8PCA4KSArIGJ1ZmZlcltzdGFydF07XG59XG5cbmZ1bmN0aW9uIGludDMyKGRlY29kZXIpIHtcbiAgdmFyIHN0YXJ0ID0gZGVjb2Rlci5yZXNlcnZlKDQpO1xuICB2YXIgYnVmZmVyID0gZGVjb2Rlci5idWZmZXI7XG4gIHJldHVybiAoYnVmZmVyW3N0YXJ0KytdIDw8IDI0KSB8IChidWZmZXJbc3RhcnQrK10gPDwgMTYpIHwgKGJ1ZmZlcltzdGFydCsrXSA8PCA4KSB8IGJ1ZmZlcltzdGFydF07XG59XG5cbmZ1bmN0aW9uIHJlYWQobGVuLCBtZXRob2QpIHtcbiAgcmV0dXJuIGZ1bmN0aW9uKGRlY29kZXIpIHtcbiAgICB2YXIgc3RhcnQgPSBkZWNvZGVyLnJlc2VydmUobGVuKTtcbiAgICByZXR1cm4gbWV0aG9kLmNhbGwoZGVjb2Rlci5idWZmZXIsIHN0YXJ0LCBOT19BU1NFUlQpO1xuICB9O1xufVxuXG5mdW5jdGlvbiByZWFkVUludDY0QkUoc3RhcnQpIHtcbiAgcmV0dXJuIG5ldyBVaW50NjRCRSh0aGlzLCBzdGFydCkudG9OdW1iZXIoKTtcbn1cblxuZnVuY3Rpb24gcmVhZEludDY0QkUoc3RhcnQpIHtcbiAgcmV0dXJuIG5ldyBJbnQ2NEJFKHRoaXMsIHN0YXJ0KS50b051bWJlcigpO1xufVxuXG5mdW5jdGlvbiByZWFkVUludDY0QkVfaW50NjQoc3RhcnQpIHtcbiAgcmV0dXJuIG5ldyBVaW50NjRCRSh0aGlzLCBzdGFydCk7XG59XG5cbmZ1bmN0aW9uIHJlYWRJbnQ2NEJFX2ludDY0KHN0YXJ0KSB7XG4gIHJldHVybiBuZXcgSW50NjRCRSh0aGlzLCBzdGFydCk7XG59XG5cbmZ1bmN0aW9uIHJlYWRGbG9hdEJFKHN0YXJ0KSB7XG4gIHJldHVybiBpZWVlNzU0LnJlYWQodGhpcywgc3RhcnQsIGZhbHNlLCAyMywgNCk7XG59XG5cbmZ1bmN0aW9uIHJlYWREb3VibGVCRShzdGFydCkge1xuICByZXR1cm4gaWVlZTc1NC5yZWFkKHRoaXMsIHN0YXJ0LCBmYWxzZSwgNTIsIDgpO1xufSIsIi8vIHJlYWQtdG9rZW4uanNcblxudmFyIFJlYWRGb3JtYXQgPSByZXF1aXJlKFwiLi9yZWFkLWZvcm1hdFwiKTtcblxuZXhwb3J0cy5nZXRSZWFkVG9rZW4gPSBnZXRSZWFkVG9rZW47XG5cbmZ1bmN0aW9uIGdldFJlYWRUb2tlbihvcHRpb25zKSB7XG4gIHZhciBmb3JtYXQgPSBSZWFkRm9ybWF0LmdldFJlYWRGb3JtYXQob3B0aW9ucyk7XG5cbiAgaWYgKG9wdGlvbnMgJiYgb3B0aW9ucy51c2VyYXcpIHtcbiAgICByZXR1cm4gaW5pdF91c2VyYXcoZm9ybWF0KTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gaW5pdF90b2tlbihmb3JtYXQpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGluaXRfdG9rZW4oZm9ybWF0KSB7XG4gIHZhciBpO1xuICB2YXIgdG9rZW4gPSBuZXcgQXJyYXkoMjU2KTtcblxuICAvLyBwb3NpdGl2ZSBmaXhpbnQgLS0gMHgwMCAtIDB4N2ZcbiAgZm9yIChpID0gMHgwMDsgaSA8PSAweDdmOyBpKyspIHtcbiAgICB0b2tlbltpXSA9IGNvbnN0YW50KGkpO1xuICB9XG5cbiAgLy8gZml4bWFwIC0tIDB4ODAgLSAweDhmXG4gIGZvciAoaSA9IDB4ODA7IGkgPD0gMHg4ZjsgaSsrKSB7XG4gICAgdG9rZW5baV0gPSBmaXgoaSAtIDB4ODAsIGZvcm1hdC5tYXApO1xuICB9XG5cbiAgLy8gZml4YXJyYXkgLS0gMHg5MCAtIDB4OWZcbiAgZm9yIChpID0gMHg5MDsgaSA8PSAweDlmOyBpKyspIHtcbiAgICB0b2tlbltpXSA9IGZpeChpIC0gMHg5MCwgZm9ybWF0LmFycmF5KTtcbiAgfVxuXG4gIC8vIGZpeHN0ciAtLSAweGEwIC0gMHhiZlxuICBmb3IgKGkgPSAweGEwOyBpIDw9IDB4YmY7IGkrKykge1xuICAgIHRva2VuW2ldID0gZml4KGkgLSAweGEwLCBmb3JtYXQuc3RyKTtcbiAgfVxuXG4gIC8vIG5pbCAtLSAweGMwXG4gIHRva2VuWzB4YzBdID0gY29uc3RhbnQobnVsbCk7XG5cbiAgLy8gKG5ldmVyIHVzZWQpIC0tIDB4YzFcbiAgdG9rZW5bMHhjMV0gPSBudWxsO1xuXG4gIC8vIGZhbHNlIC0tIDB4YzJcbiAgLy8gdHJ1ZSAtLSAweGMzXG4gIHRva2VuWzB4YzJdID0gY29uc3RhbnQoZmFsc2UpO1xuICB0b2tlblsweGMzXSA9IGNvbnN0YW50KHRydWUpO1xuXG4gIC8vIGJpbiA4IC0tIDB4YzRcbiAgLy8gYmluIDE2IC0tIDB4YzVcbiAgLy8gYmluIDMyIC0tIDB4YzZcbiAgdG9rZW5bMHhjNF0gPSBmbGV4KGZvcm1hdC51aW50OCwgZm9ybWF0LmJpbik7XG4gIHRva2VuWzB4YzVdID0gZmxleChmb3JtYXQudWludDE2LCBmb3JtYXQuYmluKTtcbiAgdG9rZW5bMHhjNl0gPSBmbGV4KGZvcm1hdC51aW50MzIsIGZvcm1hdC5iaW4pO1xuXG4gIC8vIGV4dCA4IC0tIDB4YzdcbiAgLy8gZXh0IDE2IC0tIDB4YzhcbiAgLy8gZXh0IDMyIC0tIDB4YzlcbiAgdG9rZW5bMHhjN10gPSBmbGV4KGZvcm1hdC51aW50OCwgZm9ybWF0LmV4dCk7XG4gIHRva2VuWzB4YzhdID0gZmxleChmb3JtYXQudWludDE2LCBmb3JtYXQuZXh0KTtcbiAgdG9rZW5bMHhjOV0gPSBmbGV4KGZvcm1hdC51aW50MzIsIGZvcm1hdC5leHQpO1xuXG4gIC8vIGZsb2F0IDMyIC0tIDB4Y2FcbiAgLy8gZmxvYXQgNjQgLS0gMHhjYlxuICB0b2tlblsweGNhXSA9IGZvcm1hdC5mbG9hdDMyO1xuICB0b2tlblsweGNiXSA9IGZvcm1hdC5mbG9hdDY0O1xuXG4gIC8vIHVpbnQgOCAtLSAweGNjXG4gIC8vIHVpbnQgMTYgLS0gMHhjZFxuICAvLyB1aW50IDMyIC0tIDB4Y2VcbiAgLy8gdWludCA2NCAtLSAweGNmXG4gIHRva2VuWzB4Y2NdID0gZm9ybWF0LnVpbnQ4O1xuICB0b2tlblsweGNkXSA9IGZvcm1hdC51aW50MTY7XG4gIHRva2VuWzB4Y2VdID0gZm9ybWF0LnVpbnQzMjtcbiAgdG9rZW5bMHhjZl0gPSBmb3JtYXQudWludDY0O1xuXG4gIC8vIGludCA4IC0tIDB4ZDBcbiAgLy8gaW50IDE2IC0tIDB4ZDFcbiAgLy8gaW50IDMyIC0tIDB4ZDJcbiAgLy8gaW50IDY0IC0tIDB4ZDNcbiAgdG9rZW5bMHhkMF0gPSBmb3JtYXQuaW50ODtcbiAgdG9rZW5bMHhkMV0gPSBmb3JtYXQuaW50MTY7XG4gIHRva2VuWzB4ZDJdID0gZm9ybWF0LmludDMyO1xuICB0b2tlblsweGQzXSA9IGZvcm1hdC5pbnQ2NDtcblxuICAvLyBmaXhleHQgMSAtLSAweGQ0XG4gIC8vIGZpeGV4dCAyIC0tIDB4ZDVcbiAgLy8gZml4ZXh0IDQgLS0gMHhkNlxuICAvLyBmaXhleHQgOCAtLSAweGQ3XG4gIC8vIGZpeGV4dCAxNiAtLSAweGQ4XG4gIHRva2VuWzB4ZDRdID0gZml4KDEsIGZvcm1hdC5leHQpO1xuICB0b2tlblsweGQ1XSA9IGZpeCgyLCBmb3JtYXQuZXh0KTtcbiAgdG9rZW5bMHhkNl0gPSBmaXgoNCwgZm9ybWF0LmV4dCk7XG4gIHRva2VuWzB4ZDddID0gZml4KDgsIGZvcm1hdC5leHQpO1xuICB0b2tlblsweGQ4XSA9IGZpeCgxNiwgZm9ybWF0LmV4dCk7XG5cbiAgLy8gc3RyIDggLS0gMHhkOVxuICAvLyBzdHIgMTYgLS0gMHhkYVxuICAvLyBzdHIgMzIgLS0gMHhkYlxuICB0b2tlblsweGQ5XSA9IGZsZXgoZm9ybWF0LnVpbnQ4LCBmb3JtYXQuc3RyKTtcbiAgdG9rZW5bMHhkYV0gPSBmbGV4KGZvcm1hdC51aW50MTYsIGZvcm1hdC5zdHIpO1xuICB0b2tlblsweGRiXSA9IGZsZXgoZm9ybWF0LnVpbnQzMiwgZm9ybWF0LnN0cik7XG5cbiAgLy8gYXJyYXkgMTYgLS0gMHhkY1xuICAvLyBhcnJheSAzMiAtLSAweGRkXG4gIHRva2VuWzB4ZGNdID0gZmxleChmb3JtYXQudWludDE2LCBmb3JtYXQuYXJyYXkpO1xuICB0b2tlblsweGRkXSA9IGZsZXgoZm9ybWF0LnVpbnQzMiwgZm9ybWF0LmFycmF5KTtcblxuICAvLyBtYXAgMTYgLS0gMHhkZVxuICAvLyBtYXAgMzIgLS0gMHhkZlxuICB0b2tlblsweGRlXSA9IGZsZXgoZm9ybWF0LnVpbnQxNiwgZm9ybWF0Lm1hcCk7XG4gIHRva2VuWzB4ZGZdID0gZmxleChmb3JtYXQudWludDMyLCBmb3JtYXQubWFwKTtcblxuICAvLyBuZWdhdGl2ZSBmaXhpbnQgLS0gMHhlMCAtIDB4ZmZcbiAgZm9yIChpID0gMHhlMDsgaSA8PSAweGZmOyBpKyspIHtcbiAgICB0b2tlbltpXSA9IGNvbnN0YW50KGkgLSAweDEwMCk7XG4gIH1cblxuICByZXR1cm4gdG9rZW47XG59XG5cbmZ1bmN0aW9uIGluaXRfdXNlcmF3KGZvcm1hdCkge1xuICB2YXIgaTtcbiAgdmFyIHRva2VuID0gaW5pdF90b2tlbihmb3JtYXQpLnNsaWNlKCk7XG5cbiAgLy8gcmF3IDggLS0gMHhkOVxuICAvLyByYXcgMTYgLS0gMHhkYVxuICAvLyByYXcgMzIgLS0gMHhkYlxuICB0b2tlblsweGQ5XSA9IHRva2VuWzB4YzRdO1xuICB0b2tlblsweGRhXSA9IHRva2VuWzB4YzVdO1xuICB0b2tlblsweGRiXSA9IHRva2VuWzB4YzZdO1xuXG4gIC8vIGZpeHJhdyAtLSAweGEwIC0gMHhiZlxuICBmb3IgKGkgPSAweGEwOyBpIDw9IDB4YmY7IGkrKykge1xuICAgIHRva2VuW2ldID0gZml4KGkgLSAweGEwLCBmb3JtYXQuYmluKTtcbiAgfVxuXG4gIHJldHVybiB0b2tlbjtcbn1cblxuZnVuY3Rpb24gY29uc3RhbnQodmFsdWUpIHtcbiAgcmV0dXJuIGZ1bmN0aW9uKCkge1xuICAgIHJldHVybiB2YWx1ZTtcbiAgfTtcbn1cblxuZnVuY3Rpb24gZmxleChsZW5GdW5jLCBkZWNvZGVGdW5jKSB7XG4gIHJldHVybiBmdW5jdGlvbihkZWNvZGVyKSB7XG4gICAgdmFyIGxlbiA9IGxlbkZ1bmMoZGVjb2Rlcik7XG4gICAgcmV0dXJuIGRlY29kZUZ1bmMoZGVjb2RlciwgbGVuKTtcbiAgfTtcbn1cblxuZnVuY3Rpb24gZml4KGxlbiwgbWV0aG9kKSB7XG4gIHJldHVybiBmdW5jdGlvbihkZWNvZGVyKSB7XG4gICAgcmV0dXJuIG1ldGhvZChkZWNvZGVyLCBsZW4pO1xuICB9O1xufVxuIiwiLy8gd3JpdGUtY29yZS5qc1xuXG52YXIgRXh0QnVmZmVyID0gcmVxdWlyZShcIi4vZXh0LWJ1ZmZlclwiKS5FeHRCdWZmZXI7XG52YXIgRXh0UGFja2VyID0gcmVxdWlyZShcIi4vZXh0LXBhY2tlclwiKTtcbnZhciBXcml0ZVR5cGUgPSByZXF1aXJlKFwiLi93cml0ZS10eXBlXCIpO1xudmFyIENvZGVjQmFzZSA9IHJlcXVpcmUoXCIuL2NvZGVjLWJhc2VcIik7XG5cbkNvZGVjQmFzZS5pbnN0YWxsKHtcbiAgYWRkRXh0UGFja2VyOiBhZGRFeHRQYWNrZXIsXG4gIGdldEV4dFBhY2tlcjogZ2V0RXh0UGFja2VyLFxuICBpbml0OiBpbml0XG59KTtcblxuZXhwb3J0cy5wcmVzZXQgPSBpbml0LmNhbGwoQ29kZWNCYXNlLnByZXNldCk7XG5cbmZ1bmN0aW9uIGdldEVuY29kZXIob3B0aW9ucykge1xuICB2YXIgd3JpdGVUeXBlID0gV3JpdGVUeXBlLmdldFdyaXRlVHlwZShvcHRpb25zKTtcbiAgcmV0dXJuIGVuY29kZTtcblxuICBmdW5jdGlvbiBlbmNvZGUoZW5jb2RlciwgdmFsdWUpIHtcbiAgICB2YXIgZnVuYyA9IHdyaXRlVHlwZVt0eXBlb2YgdmFsdWVdO1xuICAgIGlmICghZnVuYykgdGhyb3cgbmV3IEVycm9yKFwiVW5zdXBwb3J0ZWQgdHlwZSBcXFwiXCIgKyAodHlwZW9mIHZhbHVlKSArIFwiXFxcIjogXCIgKyB2YWx1ZSk7XG4gICAgZnVuYyhlbmNvZGVyLCB2YWx1ZSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gaW5pdCgpIHtcbiAgdmFyIG9wdGlvbnMgPSB0aGlzLm9wdGlvbnM7XG4gIHRoaXMuZW5jb2RlID0gZ2V0RW5jb2RlcihvcHRpb25zKTtcblxuICBpZiAob3B0aW9ucyAmJiBvcHRpb25zLnByZXNldCkge1xuICAgIEV4dFBhY2tlci5zZXRFeHRQYWNrZXJzKHRoaXMpO1xuICB9XG5cbiAgcmV0dXJuIHRoaXM7XG59XG5cbmZ1bmN0aW9uIGFkZEV4dFBhY2tlcihldHlwZSwgQ2xhc3MsIHBhY2tlcikge1xuICBwYWNrZXIgPSBDb2RlY0Jhc2UuZmlsdGVyKHBhY2tlcik7XG4gIHZhciBuYW1lID0gQ2xhc3MubmFtZTtcbiAgaWYgKG5hbWUgJiYgbmFtZSAhPT0gXCJPYmplY3RcIikge1xuICAgIHZhciBwYWNrZXJzID0gdGhpcy5leHRQYWNrZXJzIHx8ICh0aGlzLmV4dFBhY2tlcnMgPSB7fSk7XG4gICAgcGFja2Vyc1tuYW1lXSA9IGV4dFBhY2tlcjtcbiAgfSBlbHNlIHtcbiAgICAvLyBmYWxsYmFjayBmb3IgSUVcbiAgICB2YXIgbGlzdCA9IHRoaXMuZXh0RW5jb2Rlckxpc3QgfHwgKHRoaXMuZXh0RW5jb2Rlckxpc3QgPSBbXSk7XG4gICAgbGlzdC51bnNoaWZ0KFtDbGFzcywgZXh0UGFja2VyXSk7XG4gIH1cblxuICBmdW5jdGlvbiBleHRQYWNrZXIodmFsdWUpIHtcbiAgICBpZiAocGFja2VyKSB2YWx1ZSA9IHBhY2tlcih2YWx1ZSk7XG4gICAgcmV0dXJuIG5ldyBFeHRCdWZmZXIodmFsdWUsIGV0eXBlKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBnZXRFeHRQYWNrZXIodmFsdWUpIHtcbiAgdmFyIHBhY2tlcnMgPSB0aGlzLmV4dFBhY2tlcnMgfHwgKHRoaXMuZXh0UGFja2VycyA9IHt9KTtcbiAgdmFyIGMgPSB2YWx1ZS5jb25zdHJ1Y3RvcjtcbiAgdmFyIGUgPSBjICYmIGMubmFtZSAmJiBwYWNrZXJzW2MubmFtZV07XG4gIGlmIChlKSByZXR1cm4gZTtcblxuICAvLyBmYWxsYmFjayBmb3IgSUVcbiAgdmFyIGxpc3QgPSB0aGlzLmV4dEVuY29kZXJMaXN0IHx8ICh0aGlzLmV4dEVuY29kZXJMaXN0ID0gW10pO1xuICB2YXIgbGVuID0gbGlzdC5sZW5ndGg7XG4gIGZvciAodmFyIGkgPSAwOyBpIDwgbGVuOyBpKyspIHtcbiAgICB2YXIgcGFpciA9IGxpc3RbaV07XG4gICAgaWYgKGMgPT09IHBhaXJbMF0pIHJldHVybiBwYWlyWzFdO1xuICB9XG59XG4iLCIvLyB3cml0ZS10b2tlbi5qc1xuXG52YXIgaWVlZTc1NCA9IHJlcXVpcmUoXCJpZWVlNzU0XCIpO1xudmFyIEludDY0QnVmZmVyID0gcmVxdWlyZShcImludDY0LWJ1ZmZlclwiKTtcbnZhciBVaW50NjRCRSA9IEludDY0QnVmZmVyLlVpbnQ2NEJFO1xudmFyIEludDY0QkUgPSBJbnQ2NEJ1ZmZlci5JbnQ2NEJFO1xuXG52YXIgdWludDggPSByZXF1aXJlKFwiLi93cml0ZS11aW50OFwiKS51aW50ODtcbnZhciBCdWZmZXJpc2ggPSByZXF1aXJlKFwiLi9idWZmZXJpc2hcIik7XG52YXIgQnVmZmVyID0gQnVmZmVyaXNoLmdsb2JhbDtcbnZhciBJU19CVUZGRVJfU0hJTSA9IEJ1ZmZlcmlzaC5oYXNCdWZmZXIgJiYgKFwiVFlQRURfQVJSQVlfU1VQUE9SVFwiIGluIEJ1ZmZlcik7XG52YXIgTk9fVFlQRURfQVJSQVkgPSBJU19CVUZGRVJfU0hJTSAmJiAhQnVmZmVyLlRZUEVEX0FSUkFZX1NVUFBPUlQ7XG52YXIgQnVmZmVyX3Byb3RvdHlwZSA9IEJ1ZmZlcmlzaC5oYXNCdWZmZXIgJiYgQnVmZmVyLnByb3RvdHlwZSB8fCB7fTtcblxuZXhwb3J0cy5nZXRXcml0ZVRva2VuID0gZ2V0V3JpdGVUb2tlbjtcblxuZnVuY3Rpb24gZ2V0V3JpdGVUb2tlbihvcHRpb25zKSB7XG4gIGlmIChvcHRpb25zICYmIG9wdGlvbnMudWludDhhcnJheSkge1xuICAgIHJldHVybiBpbml0X3VpbnQ4YXJyYXkoKTtcbiAgfSBlbHNlIGlmIChOT19UWVBFRF9BUlJBWSB8fCAoQnVmZmVyaXNoLmhhc0J1ZmZlciAmJiBvcHRpb25zICYmIG9wdGlvbnMuc2FmZSkpIHtcbiAgICByZXR1cm4gaW5pdF9zYWZlKCk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGluaXRfdG9rZW4oKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBpbml0X3VpbnQ4YXJyYXkoKSB7XG4gIHZhciB0b2tlbiA9IGluaXRfdG9rZW4oKTtcblxuICAvLyBmbG9hdCAzMiAtLSAweGNhXG4gIC8vIGZsb2F0IDY0IC0tIDB4Y2JcbiAgdG9rZW5bMHhjYV0gPSB3cml0ZU4oMHhjYSwgNCwgd3JpdGVGbG9hdEJFKTtcbiAgdG9rZW5bMHhjYl0gPSB3cml0ZU4oMHhjYiwgOCwgd3JpdGVEb3VibGVCRSk7XG5cbiAgcmV0dXJuIHRva2VuO1xufVxuXG4vLyBOb2RlLmpzIGFuZCBicm93c2VycyB3aXRoIFR5cGVkQXJyYXlcblxuZnVuY3Rpb24gaW5pdF90b2tlbigpIHtcbiAgLy8gKGltbWVkaWF0ZSB2YWx1ZXMpXG4gIC8vIHBvc2l0aXZlIGZpeGludCAtLSAweDAwIC0gMHg3ZlxuICAvLyBuaWwgLS0gMHhjMFxuICAvLyBmYWxzZSAtLSAweGMyXG4gIC8vIHRydWUgLS0gMHhjM1xuICAvLyBuZWdhdGl2ZSBmaXhpbnQgLS0gMHhlMCAtIDB4ZmZcbiAgdmFyIHRva2VuID0gdWludDguc2xpY2UoKTtcblxuICAvLyBiaW4gOCAtLSAweGM0XG4gIC8vIGJpbiAxNiAtLSAweGM1XG4gIC8vIGJpbiAzMiAtLSAweGM2XG4gIHRva2VuWzB4YzRdID0gd3JpdGUxKDB4YzQpO1xuICB0b2tlblsweGM1XSA9IHdyaXRlMigweGM1KTtcbiAgdG9rZW5bMHhjNl0gPSB3cml0ZTQoMHhjNik7XG5cbiAgLy8gZXh0IDggLS0gMHhjN1xuICAvLyBleHQgMTYgLS0gMHhjOFxuICAvLyBleHQgMzIgLS0gMHhjOVxuICB0b2tlblsweGM3XSA9IHdyaXRlMSgweGM3KTtcbiAgdG9rZW5bMHhjOF0gPSB3cml0ZTIoMHhjOCk7XG4gIHRva2VuWzB4YzldID0gd3JpdGU0KDB4YzkpO1xuXG4gIC8vIGZsb2F0IDMyIC0tIDB4Y2FcbiAgLy8gZmxvYXQgNjQgLS0gMHhjYlxuICB0b2tlblsweGNhXSA9IHdyaXRlTigweGNhLCA0LCAoQnVmZmVyX3Byb3RvdHlwZS53cml0ZUZsb2F0QkUgfHwgd3JpdGVGbG9hdEJFKSwgdHJ1ZSk7XG4gIHRva2VuWzB4Y2JdID0gd3JpdGVOKDB4Y2IsIDgsIChCdWZmZXJfcHJvdG90eXBlLndyaXRlRG91YmxlQkUgfHwgd3JpdGVEb3VibGVCRSksIHRydWUpO1xuXG4gIC8vIHVpbnQgOCAtLSAweGNjXG4gIC8vIHVpbnQgMTYgLS0gMHhjZFxuICAvLyB1aW50IDMyIC0tIDB4Y2VcbiAgLy8gdWludCA2NCAtLSAweGNmXG4gIHRva2VuWzB4Y2NdID0gd3JpdGUxKDB4Y2MpO1xuICB0b2tlblsweGNkXSA9IHdyaXRlMigweGNkKTtcbiAgdG9rZW5bMHhjZV0gPSB3cml0ZTQoMHhjZSk7XG4gIHRva2VuWzB4Y2ZdID0gd3JpdGVOKDB4Y2YsIDgsIHdyaXRlVUludDY0QkUpO1xuXG4gIC8vIGludCA4IC0tIDB4ZDBcbiAgLy8gaW50IDE2IC0tIDB4ZDFcbiAgLy8gaW50IDMyIC0tIDB4ZDJcbiAgLy8gaW50IDY0IC0tIDB4ZDNcbiAgdG9rZW5bMHhkMF0gPSB3cml0ZTEoMHhkMCk7XG4gIHRva2VuWzB4ZDFdID0gd3JpdGUyKDB4ZDEpO1xuICB0b2tlblsweGQyXSA9IHdyaXRlNCgweGQyKTtcbiAgdG9rZW5bMHhkM10gPSB3cml0ZU4oMHhkMywgOCwgd3JpdGVJbnQ2NEJFKTtcblxuICAvLyBzdHIgOCAtLSAweGQ5XG4gIC8vIHN0ciAxNiAtLSAweGRhXG4gIC8vIHN0ciAzMiAtLSAweGRiXG4gIHRva2VuWzB4ZDldID0gd3JpdGUxKDB4ZDkpO1xuICB0b2tlblsweGRhXSA9IHdyaXRlMigweGRhKTtcbiAgdG9rZW5bMHhkYl0gPSB3cml0ZTQoMHhkYik7XG5cbiAgLy8gYXJyYXkgMTYgLS0gMHhkY1xuICAvLyBhcnJheSAzMiAtLSAweGRkXG4gIHRva2VuWzB4ZGNdID0gd3JpdGUyKDB4ZGMpO1xuICB0b2tlblsweGRkXSA9IHdyaXRlNCgweGRkKTtcblxuICAvLyBtYXAgMTYgLS0gMHhkZVxuICAvLyBtYXAgMzIgLS0gMHhkZlxuICB0b2tlblsweGRlXSA9IHdyaXRlMigweGRlKTtcbiAgdG9rZW5bMHhkZl0gPSB3cml0ZTQoMHhkZik7XG5cbiAgcmV0dXJuIHRva2VuO1xufVxuXG4vLyBzYWZlIG1vZGU6IGZvciBvbGQgYnJvd3NlcnMgYW5kIHdobyBuZWVkcyBhc3NlcnRzXG5cbmZ1bmN0aW9uIGluaXRfc2FmZSgpIHtcbiAgLy8gKGltbWVkaWF0ZSB2YWx1ZXMpXG4gIC8vIHBvc2l0aXZlIGZpeGludCAtLSAweDAwIC0gMHg3ZlxuICAvLyBuaWwgLS0gMHhjMFxuICAvLyBmYWxzZSAtLSAweGMyXG4gIC8vIHRydWUgLS0gMHhjM1xuICAvLyBuZWdhdGl2ZSBmaXhpbnQgLS0gMHhlMCAtIDB4ZmZcbiAgdmFyIHRva2VuID0gdWludDguc2xpY2UoKTtcblxuICAvLyBiaW4gOCAtLSAweGM0XG4gIC8vIGJpbiAxNiAtLSAweGM1XG4gIC8vIGJpbiAzMiAtLSAweGM2XG4gIHRva2VuWzB4YzRdID0gd3JpdGVOKDB4YzQsIDEsIEJ1ZmZlci5wcm90b3R5cGUud3JpdGVVSW50OCk7XG4gIHRva2VuWzB4YzVdID0gd3JpdGVOKDB4YzUsIDIsIEJ1ZmZlci5wcm90b3R5cGUud3JpdGVVSW50MTZCRSk7XG4gIHRva2VuWzB4YzZdID0gd3JpdGVOKDB4YzYsIDQsIEJ1ZmZlci5wcm90b3R5cGUud3JpdGVVSW50MzJCRSk7XG5cbiAgLy8gZXh0IDggLS0gMHhjN1xuICAvLyBleHQgMTYgLS0gMHhjOFxuICAvLyBleHQgMzIgLS0gMHhjOVxuICB0b2tlblsweGM3XSA9IHdyaXRlTigweGM3LCAxLCBCdWZmZXIucHJvdG90eXBlLndyaXRlVUludDgpO1xuICB0b2tlblsweGM4XSA9IHdyaXRlTigweGM4LCAyLCBCdWZmZXIucHJvdG90eXBlLndyaXRlVUludDE2QkUpO1xuICB0b2tlblsweGM5XSA9IHdyaXRlTigweGM5LCA0LCBCdWZmZXIucHJvdG90eXBlLndyaXRlVUludDMyQkUpO1xuXG4gIC8vIGZsb2F0IDMyIC0tIDB4Y2FcbiAgLy8gZmxvYXQgNjQgLS0gMHhjYlxuICB0b2tlblsweGNhXSA9IHdyaXRlTigweGNhLCA0LCBCdWZmZXIucHJvdG90eXBlLndyaXRlRmxvYXRCRSk7XG4gIHRva2VuWzB4Y2JdID0gd3JpdGVOKDB4Y2IsIDgsIEJ1ZmZlci5wcm90b3R5cGUud3JpdGVEb3VibGVCRSk7XG5cbiAgLy8gdWludCA4IC0tIDB4Y2NcbiAgLy8gdWludCAxNiAtLSAweGNkXG4gIC8vIHVpbnQgMzIgLS0gMHhjZVxuICAvLyB1aW50IDY0IC0tIDB4Y2ZcbiAgdG9rZW5bMHhjY10gPSB3cml0ZU4oMHhjYywgMSwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQ4KTtcbiAgdG9rZW5bMHhjZF0gPSB3cml0ZU4oMHhjZCwgMiwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQxNkJFKTtcbiAgdG9rZW5bMHhjZV0gPSB3cml0ZU4oMHhjZSwgNCwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQzMkJFKTtcbiAgdG9rZW5bMHhjZl0gPSB3cml0ZU4oMHhjZiwgOCwgd3JpdGVVSW50NjRCRSk7XG5cbiAgLy8gaW50IDggLS0gMHhkMFxuICAvLyBpbnQgMTYgLS0gMHhkMVxuICAvLyBpbnQgMzIgLS0gMHhkMlxuICAvLyBpbnQgNjQgLS0gMHhkM1xuICB0b2tlblsweGQwXSA9IHdyaXRlTigweGQwLCAxLCBCdWZmZXIucHJvdG90eXBlLndyaXRlSW50OCk7XG4gIHRva2VuWzB4ZDFdID0gd3JpdGVOKDB4ZDEsIDIsIEJ1ZmZlci5wcm90b3R5cGUud3JpdGVJbnQxNkJFKTtcbiAgdG9rZW5bMHhkMl0gPSB3cml0ZU4oMHhkMiwgNCwgQnVmZmVyLnByb3RvdHlwZS53cml0ZUludDMyQkUpO1xuICB0b2tlblsweGQzXSA9IHdyaXRlTigweGQzLCA4LCB3cml0ZUludDY0QkUpO1xuXG4gIC8vIHN0ciA4IC0tIDB4ZDlcbiAgLy8gc3RyIDE2IC0tIDB4ZGFcbiAgLy8gc3RyIDMyIC0tIDB4ZGJcbiAgdG9rZW5bMHhkOV0gPSB3cml0ZU4oMHhkOSwgMSwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQ4KTtcbiAgdG9rZW5bMHhkYV0gPSB3cml0ZU4oMHhkYSwgMiwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQxNkJFKTtcbiAgdG9rZW5bMHhkYl0gPSB3cml0ZU4oMHhkYiwgNCwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQzMkJFKTtcblxuICAvLyBhcnJheSAxNiAtLSAweGRjXG4gIC8vIGFycmF5IDMyIC0tIDB4ZGRcbiAgdG9rZW5bMHhkY10gPSB3cml0ZU4oMHhkYywgMiwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQxNkJFKTtcbiAgdG9rZW5bMHhkZF0gPSB3cml0ZU4oMHhkZCwgNCwgQnVmZmVyLnByb3RvdHlwZS53cml0ZVVJbnQzMkJFKTtcblxuICAvLyBtYXAgMTYgLS0gMHhkZVxuICAvLyBtYXAgMzIgLS0gMHhkZlxuICB0b2tlblsweGRlXSA9IHdyaXRlTigweGRlLCAyLCBCdWZmZXIucHJvdG90eXBlLndyaXRlVUludDE2QkUpO1xuICB0b2tlblsweGRmXSA9IHdyaXRlTigweGRmLCA0LCBCdWZmZXIucHJvdG90eXBlLndyaXRlVUludDMyQkUpO1xuXG4gIHJldHVybiB0b2tlbjtcbn1cblxuZnVuY3Rpb24gd3JpdGUxKHR5cGUpIHtcbiAgcmV0dXJuIGZ1bmN0aW9uKGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIG9mZnNldCA9IGVuY29kZXIucmVzZXJ2ZSgyKTtcbiAgICB2YXIgYnVmZmVyID0gZW5jb2Rlci5idWZmZXI7XG4gICAgYnVmZmVyW29mZnNldCsrXSA9IHR5cGU7XG4gICAgYnVmZmVyW29mZnNldF0gPSB2YWx1ZTtcbiAgfTtcbn1cblxuZnVuY3Rpb24gd3JpdGUyKHR5cGUpIHtcbiAgcmV0dXJuIGZ1bmN0aW9uKGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIG9mZnNldCA9IGVuY29kZXIucmVzZXJ2ZSgzKTtcbiAgICB2YXIgYnVmZmVyID0gZW5jb2Rlci5idWZmZXI7XG4gICAgYnVmZmVyW29mZnNldCsrXSA9IHR5cGU7XG4gICAgYnVmZmVyW29mZnNldCsrXSA9IHZhbHVlID4+PiA4O1xuICAgIGJ1ZmZlcltvZmZzZXRdID0gdmFsdWU7XG4gIH07XG59XG5cbmZ1bmN0aW9uIHdyaXRlNCh0eXBlKSB7XG4gIHJldHVybiBmdW5jdGlvbihlbmNvZGVyLCB2YWx1ZSkge1xuICAgIHZhciBvZmZzZXQgPSBlbmNvZGVyLnJlc2VydmUoNSk7XG4gICAgdmFyIGJ1ZmZlciA9IGVuY29kZXIuYnVmZmVyO1xuICAgIGJ1ZmZlcltvZmZzZXQrK10gPSB0eXBlO1xuICAgIGJ1ZmZlcltvZmZzZXQrK10gPSB2YWx1ZSA+Pj4gMjQ7XG4gICAgYnVmZmVyW29mZnNldCsrXSA9IHZhbHVlID4+PiAxNjtcbiAgICBidWZmZXJbb2Zmc2V0KytdID0gdmFsdWUgPj4+IDg7XG4gICAgYnVmZmVyW29mZnNldF0gPSB2YWx1ZTtcbiAgfTtcbn1cblxuZnVuY3Rpb24gd3JpdGVOKHR5cGUsIGxlbiwgbWV0aG9kLCBub0Fzc2VydCkge1xuICByZXR1cm4gZnVuY3Rpb24oZW5jb2RlciwgdmFsdWUpIHtcbiAgICB2YXIgb2Zmc2V0ID0gZW5jb2Rlci5yZXNlcnZlKGxlbiArIDEpO1xuICAgIGVuY29kZXIuYnVmZmVyW29mZnNldCsrXSA9IHR5cGU7XG4gICAgbWV0aG9kLmNhbGwoZW5jb2Rlci5idWZmZXIsIHZhbHVlLCBvZmZzZXQsIG5vQXNzZXJ0KTtcbiAgfTtcbn1cblxuZnVuY3Rpb24gd3JpdGVVSW50NjRCRSh2YWx1ZSwgb2Zmc2V0KSB7XG4gIG5ldyBVaW50NjRCRSh0aGlzLCBvZmZzZXQsIHZhbHVlKTtcbn1cblxuZnVuY3Rpb24gd3JpdGVJbnQ2NEJFKHZhbHVlLCBvZmZzZXQpIHtcbiAgbmV3IEludDY0QkUodGhpcywgb2Zmc2V0LCB2YWx1ZSk7XG59XG5cbmZ1bmN0aW9uIHdyaXRlRmxvYXRCRSh2YWx1ZSwgb2Zmc2V0KSB7XG4gIGllZWU3NTQud3JpdGUodGhpcywgdmFsdWUsIG9mZnNldCwgZmFsc2UsIDIzLCA0KTtcbn1cblxuZnVuY3Rpb24gd3JpdGVEb3VibGVCRSh2YWx1ZSwgb2Zmc2V0KSB7XG4gIGllZWU3NTQud3JpdGUodGhpcywgdmFsdWUsIG9mZnNldCwgZmFsc2UsIDUyLCA4KTtcbn1cbiIsIi8vIHdyaXRlLXR5cGUuanNcblxudmFyIElTX0FSUkFZID0gcmVxdWlyZShcImlzYXJyYXlcIik7XG52YXIgSW50NjRCdWZmZXIgPSByZXF1aXJlKFwiaW50NjQtYnVmZmVyXCIpO1xudmFyIFVpbnQ2NEJFID0gSW50NjRCdWZmZXIuVWludDY0QkU7XG52YXIgSW50NjRCRSA9IEludDY0QnVmZmVyLkludDY0QkU7XG5cbnZhciBCdWZmZXJpc2ggPSByZXF1aXJlKFwiLi9idWZmZXJpc2hcIik7XG52YXIgQnVmZmVyUHJvdG8gPSByZXF1aXJlKFwiLi9idWZmZXJpc2gtcHJvdG9cIik7XG52YXIgV3JpdGVUb2tlbiA9IHJlcXVpcmUoXCIuL3dyaXRlLXRva2VuXCIpO1xudmFyIHVpbnQ4ID0gcmVxdWlyZShcIi4vd3JpdGUtdWludDhcIikudWludDg7XG52YXIgRXh0QnVmZmVyID0gcmVxdWlyZShcIi4vZXh0LWJ1ZmZlclwiKS5FeHRCdWZmZXI7XG5cbnZhciBIQVNfVUlOVDhBUlJBWSA9IChcInVuZGVmaW5lZFwiICE9PSB0eXBlb2YgVWludDhBcnJheSk7XG52YXIgSEFTX01BUCA9IChcInVuZGVmaW5lZFwiICE9PSB0eXBlb2YgTWFwKTtcblxudmFyIGV4dG1hcCA9IFtdO1xuZXh0bWFwWzFdID0gMHhkNDtcbmV4dG1hcFsyXSA9IDB4ZDU7XG5leHRtYXBbNF0gPSAweGQ2O1xuZXh0bWFwWzhdID0gMHhkNztcbmV4dG1hcFsxNl0gPSAweGQ4O1xuXG5leHBvcnRzLmdldFdyaXRlVHlwZSA9IGdldFdyaXRlVHlwZTtcblxuZnVuY3Rpb24gZ2V0V3JpdGVUeXBlKG9wdGlvbnMpIHtcbiAgdmFyIHRva2VuID0gV3JpdGVUb2tlbi5nZXRXcml0ZVRva2VuKG9wdGlvbnMpO1xuICB2YXIgdXNlcmF3ID0gb3B0aW9ucyAmJiBvcHRpb25zLnVzZXJhdztcbiAgdmFyIGJpbmFycmF5YnVmZmVyID0gSEFTX1VJTlQ4QVJSQVkgJiYgb3B0aW9ucyAmJiBvcHRpb25zLmJpbmFycmF5YnVmZmVyO1xuICB2YXIgaXNCdWZmZXIgPSBiaW5hcnJheWJ1ZmZlciA/IEJ1ZmZlcmlzaC5pc0FycmF5QnVmZmVyIDogQnVmZmVyaXNoLmlzQnVmZmVyO1xuICB2YXIgYmluID0gYmluYXJyYXlidWZmZXIgPyBiaW5fYXJyYXlidWZmZXIgOiBiaW5fYnVmZmVyO1xuICB2YXIgdXNlbWFwID0gSEFTX01BUCAmJiBvcHRpb25zICYmIG9wdGlvbnMudXNlbWFwO1xuICB2YXIgbWFwID0gdXNlbWFwID8gbWFwX3RvX21hcCA6IG9ial90b19tYXA7XG5cbiAgdmFyIHdyaXRlVHlwZSA9IHtcbiAgICBcImJvb2xlYW5cIjogYm9vbCxcbiAgICBcImZ1bmN0aW9uXCI6IG5pbCxcbiAgICBcIm51bWJlclwiOiBudW1iZXIsXG4gICAgXCJvYmplY3RcIjogKHVzZXJhdyA/IG9iamVjdF9yYXcgOiBvYmplY3QpLFxuICAgIFwic3RyaW5nXCI6IF9zdHJpbmcodXNlcmF3ID8gcmF3X2hlYWRfc2l6ZSA6IHN0cl9oZWFkX3NpemUpLFxuICAgIFwic3ltYm9sXCI6IG5pbCxcbiAgICBcInVuZGVmaW5lZFwiOiBuaWxcbiAgfTtcblxuICByZXR1cm4gd3JpdGVUeXBlO1xuXG4gIC8vIGZhbHNlIC0tIDB4YzJcbiAgLy8gdHJ1ZSAtLSAweGMzXG4gIGZ1bmN0aW9uIGJvb2woZW5jb2RlciwgdmFsdWUpIHtcbiAgICB2YXIgdHlwZSA9IHZhbHVlID8gMHhjMyA6IDB4YzI7XG4gICAgdG9rZW5bdHlwZV0oZW5jb2RlciwgdmFsdWUpO1xuICB9XG5cbiAgZnVuY3Rpb24gbnVtYmVyKGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIGl2YWx1ZSA9IHZhbHVlIHwgMDtcbiAgICB2YXIgdHlwZTtcbiAgICBpZiAodmFsdWUgIT09IGl2YWx1ZSkge1xuICAgICAgLy8gZmxvYXQgNjQgLS0gMHhjYlxuICAgICAgdHlwZSA9IDB4Y2I7XG4gICAgICB0b2tlblt0eXBlXShlbmNvZGVyLCB2YWx1ZSk7XG4gICAgICByZXR1cm47XG4gICAgfSBlbHNlIGlmICgtMHgyMCA8PSBpdmFsdWUgJiYgaXZhbHVlIDw9IDB4N0YpIHtcbiAgICAgIC8vIHBvc2l0aXZlIGZpeGludCAtLSAweDAwIC0gMHg3ZlxuICAgICAgLy8gbmVnYXRpdmUgZml4aW50IC0tIDB4ZTAgLSAweGZmXG4gICAgICB0eXBlID0gaXZhbHVlICYgMHhGRjtcbiAgICB9IGVsc2UgaWYgKDAgPD0gaXZhbHVlKSB7XG4gICAgICAvLyB1aW50IDggLS0gMHhjY1xuICAgICAgLy8gdWludCAxNiAtLSAweGNkXG4gICAgICAvLyB1aW50IDMyIC0tIDB4Y2VcbiAgICAgIHR5cGUgPSAoaXZhbHVlIDw9IDB4RkYpID8gMHhjYyA6IChpdmFsdWUgPD0gMHhGRkZGKSA/IDB4Y2QgOiAweGNlO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBpbnQgOCAtLSAweGQwXG4gICAgICAvLyBpbnQgMTYgLS0gMHhkMVxuICAgICAgLy8gaW50IDMyIC0tIDB4ZDJcbiAgICAgIHR5cGUgPSAoLTB4ODAgPD0gaXZhbHVlKSA/IDB4ZDAgOiAoLTB4ODAwMCA8PSBpdmFsdWUpID8gMHhkMSA6IDB4ZDI7XG4gICAgfVxuICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIGl2YWx1ZSk7XG4gIH1cblxuICAvLyB1aW50IDY0IC0tIDB4Y2ZcbiAgZnVuY3Rpb24gdWludDY0KGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIHR5cGUgPSAweGNmO1xuICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIHZhbHVlLnRvQXJyYXkoKSk7XG4gIH1cblxuICAvLyBpbnQgNjQgLS0gMHhkM1xuICBmdW5jdGlvbiBpbnQ2NChlbmNvZGVyLCB2YWx1ZSkge1xuICAgIHZhciB0eXBlID0gMHhkMztcbiAgICB0b2tlblt0eXBlXShlbmNvZGVyLCB2YWx1ZS50b0FycmF5KCkpO1xuICB9XG5cbiAgLy8gc3RyIDggLS0gMHhkOVxuICAvLyBzdHIgMTYgLS0gMHhkYVxuICAvLyBzdHIgMzIgLS0gMHhkYlxuICAvLyBmaXhzdHIgLS0gMHhhMCAtIDB4YmZcbiAgZnVuY3Rpb24gc3RyX2hlYWRfc2l6ZShsZW5ndGgpIHtcbiAgICByZXR1cm4gKGxlbmd0aCA8IDMyKSA/IDEgOiAobGVuZ3RoIDw9IDB4RkYpID8gMiA6IChsZW5ndGggPD0gMHhGRkZGKSA/IDMgOiA1O1xuICB9XG5cbiAgLy8gcmF3IDE2IC0tIDB4ZGFcbiAgLy8gcmF3IDMyIC0tIDB4ZGJcbiAgLy8gZml4cmF3IC0tIDB4YTAgLSAweGJmXG4gIGZ1bmN0aW9uIHJhd19oZWFkX3NpemUobGVuZ3RoKSB7XG4gICAgcmV0dXJuIChsZW5ndGggPCAzMikgPyAxIDogKGxlbmd0aCA8PSAweEZGRkYpID8gMyA6IDU7XG4gIH1cblxuICBmdW5jdGlvbiBfc3RyaW5nKGhlYWRfc2l6ZSkge1xuICAgIHJldHVybiBzdHJpbmc7XG5cbiAgICBmdW5jdGlvbiBzdHJpbmcoZW5jb2RlciwgdmFsdWUpIHtcbiAgICAgIC8vIHByZXBhcmUgYnVmZmVyXG4gICAgICB2YXIgbGVuZ3RoID0gdmFsdWUubGVuZ3RoO1xuICAgICAgdmFyIG1heHNpemUgPSA1ICsgbGVuZ3RoICogMztcbiAgICAgIGVuY29kZXIub2Zmc2V0ID0gZW5jb2Rlci5yZXNlcnZlKG1heHNpemUpO1xuICAgICAgdmFyIGJ1ZmZlciA9IGVuY29kZXIuYnVmZmVyO1xuXG4gICAgICAvLyBleHBlY3RlZCBoZWFkZXIgc2l6ZVxuICAgICAgdmFyIGV4cGVjdGVkID0gaGVhZF9zaXplKGxlbmd0aCk7XG5cbiAgICAgIC8vIGV4cGVjdGVkIHN0YXJ0IHBvaW50XG4gICAgICB2YXIgc3RhcnQgPSBlbmNvZGVyLm9mZnNldCArIGV4cGVjdGVkO1xuXG4gICAgICAvLyB3cml0ZSBzdHJpbmdcbiAgICAgIGxlbmd0aCA9IEJ1ZmZlclByb3RvLndyaXRlLmNhbGwoYnVmZmVyLCB2YWx1ZSwgc3RhcnQpO1xuXG4gICAgICAvLyBhY3R1YWwgaGVhZGVyIHNpemVcbiAgICAgIHZhciBhY3R1YWwgPSBoZWFkX3NpemUobGVuZ3RoKTtcblxuICAgICAgLy8gbW92ZSBjb250ZW50IHdoZW4gbmVlZGVkXG4gICAgICBpZiAoZXhwZWN0ZWQgIT09IGFjdHVhbCkge1xuICAgICAgICB2YXIgdGFyZ2V0U3RhcnQgPSBzdGFydCArIGFjdHVhbCAtIGV4cGVjdGVkO1xuICAgICAgICB2YXIgZW5kID0gc3RhcnQgKyBsZW5ndGg7XG4gICAgICAgIEJ1ZmZlclByb3RvLmNvcHkuY2FsbChidWZmZXIsIGJ1ZmZlciwgdGFyZ2V0U3RhcnQsIHN0YXJ0LCBlbmQpO1xuICAgICAgfVxuXG4gICAgICAvLyB3cml0ZSBoZWFkZXJcbiAgICAgIHZhciB0eXBlID0gKGFjdHVhbCA9PT0gMSkgPyAoMHhhMCArIGxlbmd0aCkgOiAoYWN0dWFsIDw9IDMpID8gKDB4ZDcgKyBhY3R1YWwpIDogMHhkYjtcbiAgICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIGxlbmd0aCk7XG5cbiAgICAgIC8vIG1vdmUgY3Vyc29yXG4gICAgICBlbmNvZGVyLm9mZnNldCArPSBsZW5ndGg7XG4gICAgfVxuICB9XG5cbiAgZnVuY3Rpb24gb2JqZWN0KGVuY29kZXIsIHZhbHVlKSB7XG4gICAgLy8gbnVsbFxuICAgIGlmICh2YWx1ZSA9PT0gbnVsbCkgcmV0dXJuIG5pbChlbmNvZGVyLCB2YWx1ZSk7XG5cbiAgICAvLyBCdWZmZXJcbiAgICBpZiAoaXNCdWZmZXIodmFsdWUpKSByZXR1cm4gYmluKGVuY29kZXIsIHZhbHVlKTtcblxuICAgIC8vIEFycmF5XG4gICAgaWYgKElTX0FSUkFZKHZhbHVlKSkgcmV0dXJuIGFycmF5KGVuY29kZXIsIHZhbHVlKTtcblxuICAgIC8vIGludDY0LWJ1ZmZlciBvYmplY3RzXG4gICAgaWYgKFVpbnQ2NEJFLmlzVWludDY0QkUodmFsdWUpKSByZXR1cm4gdWludDY0KGVuY29kZXIsIHZhbHVlKTtcbiAgICBpZiAoSW50NjRCRS5pc0ludDY0QkUodmFsdWUpKSByZXR1cm4gaW50NjQoZW5jb2RlciwgdmFsdWUpO1xuXG4gICAgLy8gZXh0IGZvcm1hdHNcbiAgICB2YXIgcGFja2VyID0gZW5jb2Rlci5jb2RlYy5nZXRFeHRQYWNrZXIodmFsdWUpO1xuICAgIGlmIChwYWNrZXIpIHZhbHVlID0gcGFja2VyKHZhbHVlKTtcbiAgICBpZiAodmFsdWUgaW5zdGFuY2VvZiBFeHRCdWZmZXIpIHJldHVybiBleHQoZW5jb2RlciwgdmFsdWUpO1xuXG4gICAgLy8gcGxhaW4gb2xkIE9iamVjdHMgb3IgTWFwXG4gICAgbWFwKGVuY29kZXIsIHZhbHVlKTtcbiAgfVxuXG4gIGZ1bmN0aW9uIG9iamVjdF9yYXcoZW5jb2RlciwgdmFsdWUpIHtcbiAgICAvLyBCdWZmZXJcbiAgICBpZiAoaXNCdWZmZXIodmFsdWUpKSByZXR1cm4gcmF3KGVuY29kZXIsIHZhbHVlKTtcblxuICAgIC8vIG90aGVyc1xuICAgIG9iamVjdChlbmNvZGVyLCB2YWx1ZSk7XG4gIH1cblxuICAvLyBuaWwgLS0gMHhjMFxuICBmdW5jdGlvbiBuaWwoZW5jb2RlciwgdmFsdWUpIHtcbiAgICB2YXIgdHlwZSA9IDB4YzA7XG4gICAgdG9rZW5bdHlwZV0oZW5jb2RlciwgdmFsdWUpO1xuICB9XG5cbiAgLy8gZml4YXJyYXkgLS0gMHg5MCAtIDB4OWZcbiAgLy8gYXJyYXkgMTYgLS0gMHhkY1xuICAvLyBhcnJheSAzMiAtLSAweGRkXG4gIGZ1bmN0aW9uIGFycmF5KGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIGxlbmd0aCA9IHZhbHVlLmxlbmd0aDtcbiAgICB2YXIgdHlwZSA9IChsZW5ndGggPCAxNikgPyAoMHg5MCArIGxlbmd0aCkgOiAobGVuZ3RoIDw9IDB4RkZGRikgPyAweGRjIDogMHhkZDtcbiAgICB0b2tlblt0eXBlXShlbmNvZGVyLCBsZW5ndGgpO1xuXG4gICAgdmFyIGVuY29kZSA9IGVuY29kZXIuY29kZWMuZW5jb2RlO1xuICAgIGZvciAodmFyIGkgPSAwOyBpIDwgbGVuZ3RoOyBpKyspIHtcbiAgICAgIGVuY29kZShlbmNvZGVyLCB2YWx1ZVtpXSk7XG4gICAgfVxuICB9XG5cbiAgLy8gYmluIDggLS0gMHhjNFxuICAvLyBiaW4gMTYgLS0gMHhjNVxuICAvLyBiaW4gMzIgLS0gMHhjNlxuICBmdW5jdGlvbiBiaW5fYnVmZmVyKGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIGxlbmd0aCA9IHZhbHVlLmxlbmd0aDtcbiAgICB2YXIgdHlwZSA9IChsZW5ndGggPCAweEZGKSA/IDB4YzQgOiAobGVuZ3RoIDw9IDB4RkZGRikgPyAweGM1IDogMHhjNjtcbiAgICB0b2tlblt0eXBlXShlbmNvZGVyLCBsZW5ndGgpO1xuICAgIGVuY29kZXIuc2VuZCh2YWx1ZSk7XG4gIH1cblxuICBmdW5jdGlvbiBiaW5fYXJyYXlidWZmZXIoZW5jb2RlciwgdmFsdWUpIHtcbiAgICBiaW5fYnVmZmVyKGVuY29kZXIsIG5ldyBVaW50OEFycmF5KHZhbHVlKSk7XG4gIH1cblxuICAvLyBmaXhleHQgMSAtLSAweGQ0XG4gIC8vIGZpeGV4dCAyIC0tIDB4ZDVcbiAgLy8gZml4ZXh0IDQgLS0gMHhkNlxuICAvLyBmaXhleHQgOCAtLSAweGQ3XG4gIC8vIGZpeGV4dCAxNiAtLSAweGQ4XG4gIC8vIGV4dCA4IC0tIDB4YzdcbiAgLy8gZXh0IDE2IC0tIDB4YzhcbiAgLy8gZXh0IDMyIC0tIDB4YzlcbiAgZnVuY3Rpb24gZXh0KGVuY29kZXIsIHZhbHVlKSB7XG4gICAgdmFyIGJ1ZmZlciA9IHZhbHVlLmJ1ZmZlcjtcbiAgICB2YXIgbGVuZ3RoID0gYnVmZmVyLmxlbmd0aDtcbiAgICB2YXIgdHlwZSA9IGV4dG1hcFtsZW5ndGhdIHx8ICgobGVuZ3RoIDwgMHhGRikgPyAweGM3IDogKGxlbmd0aCA8PSAweEZGRkYpID8gMHhjOCA6IDB4YzkpO1xuICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIGxlbmd0aCk7XG4gICAgdWludDhbdmFsdWUudHlwZV0oZW5jb2Rlcik7XG4gICAgZW5jb2Rlci5zZW5kKGJ1ZmZlcik7XG4gIH1cblxuICAvLyBmaXhtYXAgLS0gMHg4MCAtIDB4OGZcbiAgLy8gbWFwIDE2IC0tIDB4ZGVcbiAgLy8gbWFwIDMyIC0tIDB4ZGZcbiAgZnVuY3Rpb24gb2JqX3RvX21hcChlbmNvZGVyLCB2YWx1ZSkge1xuICAgIHZhciBrZXlzID0gT2JqZWN0LmtleXModmFsdWUpO1xuICAgIHZhciBsZW5ndGggPSBrZXlzLmxlbmd0aDtcbiAgICB2YXIgdHlwZSA9IChsZW5ndGggPCAxNikgPyAoMHg4MCArIGxlbmd0aCkgOiAobGVuZ3RoIDw9IDB4RkZGRikgPyAweGRlIDogMHhkZjtcbiAgICB0b2tlblt0eXBlXShlbmNvZGVyLCBsZW5ndGgpO1xuXG4gICAgdmFyIGVuY29kZSA9IGVuY29kZXIuY29kZWMuZW5jb2RlO1xuICAgIGtleXMuZm9yRWFjaChmdW5jdGlvbihrZXkpIHtcbiAgICAgIGVuY29kZShlbmNvZGVyLCBrZXkpO1xuICAgICAgZW5jb2RlKGVuY29kZXIsIHZhbHVlW2tleV0pO1xuICAgIH0pO1xuICB9XG5cbiAgLy8gZml4bWFwIC0tIDB4ODAgLSAweDhmXG4gIC8vIG1hcCAxNiAtLSAweGRlXG4gIC8vIG1hcCAzMiAtLSAweGRmXG4gIGZ1bmN0aW9uIG1hcF90b19tYXAoZW5jb2RlciwgdmFsdWUpIHtcbiAgICBpZiAoISh2YWx1ZSBpbnN0YW5jZW9mIE1hcCkpIHJldHVybiBvYmpfdG9fbWFwKGVuY29kZXIsIHZhbHVlKTtcblxuICAgIHZhciBsZW5ndGggPSB2YWx1ZS5zaXplO1xuICAgIHZhciB0eXBlID0gKGxlbmd0aCA8IDE2KSA/ICgweDgwICsgbGVuZ3RoKSA6IChsZW5ndGggPD0gMHhGRkZGKSA/IDB4ZGUgOiAweGRmO1xuICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIGxlbmd0aCk7XG5cbiAgICB2YXIgZW5jb2RlID0gZW5jb2Rlci5jb2RlYy5lbmNvZGU7XG4gICAgdmFsdWUuZm9yRWFjaChmdW5jdGlvbih2YWwsIGtleSwgbSkge1xuICAgICAgZW5jb2RlKGVuY29kZXIsIGtleSk7XG4gICAgICBlbmNvZGUoZW5jb2RlciwgdmFsKTtcbiAgICB9KTtcbiAgfVxuXG4gIC8vIHJhdyAxNiAtLSAweGRhXG4gIC8vIHJhdyAzMiAtLSAweGRiXG4gIC8vIGZpeHJhdyAtLSAweGEwIC0gMHhiZlxuICBmdW5jdGlvbiByYXcoZW5jb2RlciwgdmFsdWUpIHtcbiAgICB2YXIgbGVuZ3RoID0gdmFsdWUubGVuZ3RoO1xuICAgIHZhciB0eXBlID0gKGxlbmd0aCA8IDMyKSA/ICgweGEwICsgbGVuZ3RoKSA6IChsZW5ndGggPD0gMHhGRkZGKSA/IDB4ZGEgOiAweGRiO1xuICAgIHRva2VuW3R5cGVdKGVuY29kZXIsIGxlbmd0aCk7XG4gICAgZW5jb2Rlci5zZW5kKHZhbHVlKTtcbiAgfVxufVxuIiwiLy8gd3JpdGUtdW5pdDguanNcblxudmFyIGNvbnN0YW50ID0gZXhwb3J0cy51aW50OCA9IG5ldyBBcnJheSgyNTYpO1xuXG5mb3IgKHZhciBpID0gMHgwMDsgaSA8PSAweEZGOyBpKyspIHtcbiAgY29uc3RhbnRbaV0gPSB3cml0ZTAoaSk7XG59XG5cbmZ1bmN0aW9uIHdyaXRlMCh0eXBlKSB7XG4gIHJldHVybiBmdW5jdGlvbihlbmNvZGVyKSB7XG4gICAgdmFyIG9mZnNldCA9IGVuY29kZXIucmVzZXJ2ZSgxKTtcbiAgICBlbmNvZGVyLmJ1ZmZlcltvZmZzZXRdID0gdHlwZTtcbiAgfTtcbn1cbiIsIlxuZXhwb3J0IGNsYXNzIEV2ZW50RW1pdHRlcjxUIGV4dGVuZHMgc3RyaW5nLCBVIGV4dGVuZHMgKC4uLmFyZ3M6IGFueVtdKSA9PiB2b2lkPiB7XG4gICAgcHJpdmF0ZSBsaXN0ZW5lcnMgPSBuZXcgTWFwPFQsIFVbXT4oKTtcblxuICAgIG9uKGV2ZW50OiBULCBoYW5kbGVyOiBVKSB7XG4gICAgICAgIGxldCBoYW5kbGVycyA9IHRoaXMubGlzdGVuZXJzLmdldChldmVudCk7XG4gICAgICAgIGlmIChoYW5kbGVycyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICBoYW5kbGVycyA9IFtdO1xuICAgICAgICAgICAgdGhpcy5saXN0ZW5lcnMuc2V0KGV2ZW50LCBoYW5kbGVycyk7XG4gICAgICAgIH1cbiAgICAgICAgaGFuZGxlcnMucHVzaChoYW5kbGVyKTtcbiAgICB9XG5cbiAgICBlbWl0KGV2ZW50OiBULCAuLi5kYXRhOiBhbnkpIHtcbiAgICAgICAgY29uc3QgaGFuZGxlcnMgPSB0aGlzLmxpc3RlbmVycy5nZXQoZXZlbnQpO1xuICAgICAgICBpZiAoaGFuZGxlcnMgIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgY29uc3QgZXJyb3JzIDogRXJyb3JbXSA9IFtdO1xuICAgICAgICAgICAgaGFuZGxlcnMuZm9yRWFjaCgoaGFuZGxlcikgPT4ge1xuICAgICAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgICAgIGhhbmRsZXIoLi4uZGF0YSk7XG4gICAgICAgICAgICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICAgICAgICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICAgICAgICAgICAgICBlcnJvcnMucHVzaChlKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIC8qIEVycm9yIGNvbmRpdGlvbnMgaGVyZSBhcmUgaW1wb3NzaWJsZSB0byB0ZXN0IGZvciBmcm9tIHNlbGVuaXVtXG4gICAgICAgICAgICAgKiBiZWNhdXNlIGl0IHdvdWxkIGFyaXNlIGZyb20gdGhlIHdyb25nIHVzZSBvZiB0aGUgQVBJLCB3aGljaCB3ZVxuICAgICAgICAgICAgICogY2FuJ3Qgc2hpcCBpbiB0aGUgZXh0ZW5zaW9uLCBzbyBkb24ndCB0cnkgdG8gaW5zdHJ1bWVudC4gKi9cbiAgICAgICAgICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgICAgICAgICBpZiAoZXJyb3JzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoSlNPTi5zdHJpbmdpZnkoZXJyb3JzKSk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59XG4iLCJpbXBvcnQgeyBFdmVudEVtaXR0ZXIgfSBmcm9tIFwiLi9FdmVudEVtaXR0ZXJcIjtcbmltcG9ydCB7IEdsb2JhbFNldHRpbmdzLCBOdmltTW9kZSB9IGZyb20gXCIuL3V0aWxzL2NvbmZpZ3VyYXRpb25cIjtcbmltcG9ydCB7IGFkZE1vZGlmaWVyLCBub25MaXRlcmFsS2V5cywgdHJhbnNsYXRlS2V5IH0gZnJvbSBcIi4vdXRpbHMva2V5c1wiO1xuXG4vLyBLZXlIYW5kbGVyIGlzIHRoZSBpbnRlcmZhY2UgZXhwZWN0ZSBieSBnZXRJbnB1dFxuZXhwb3J0IGludGVyZmFjZSBLZXlIYW5kbGVyIGV4dGVuZHMgRXZlbnRFbWl0dGVyPFwiaW5wdXRcIiwgKHM6IHN0cmluZykgPT4gdm9pZD4ge1xuICAgIHNldE1vZGU6IChtOiBOdmltTW9kZSkgPT4gdm9pZCxcbiAgICBmb2N1czogKCkgPT4gdm9pZCxcbiAgICBtb3ZlVG86ICh4OiBudW1iZXIsIHk6IG51bWJlcikgPT4gdm9pZCxcbn1cblxudHlwZSBLZXlkb3duRW1pdHRpbmdPYmplY3QgPSB7XG4gICAgYWRkRXZlbnRMaXN0ZW5lcjogKHM6IFwia2V5ZG93blwiLCBoOiAoKGU6IEtleWJvYXJkRXZlbnQpID0+IHZvaWQpKSA9PiB2b2lkLFxuICAgIGZvY3VzOiAoKSA9PiB2b2lkXG59O1xuXG4vLyBUaGlzIGNsYXNzIGltcGxlbWVudHMgdGhlIGtleWRvd24gbG9naWMgdGhhdCBkZWFscyB3aXRoIG1vZGlmaWVycyBhbmQgaXNcbi8vIHNoYXJlZCBhY3Jvc3MgYm90aCBicm93c2VycyBhbmQgdGh1bmRlcmJpcmRcbmV4cG9ydCBjbGFzcyBLZXlkb3duSGFuZGxlciBleHRlbmRzIEV2ZW50RW1pdHRlcjxcImlucHV0XCIsIChzOiBzdHJpbmcpID0+IHZvaWQ+IGltcGxlbWVudHMgS2V5SGFuZGxlciB7XG4gICAgcHJpdmF0ZSBjdXJyZW50TW9kZSA6IE52aW1Nb2RlO1xuICAgIGNvbnN0cnVjdG9yKHByaXZhdGUgZWxlbTogS2V5ZG93bkVtaXR0aW5nT2JqZWN0LCBzZXR0aW5nczogR2xvYmFsU2V0dGluZ3MpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgICAgY29uc3QgaWdub3JlS2V5cyA9IHNldHRpbmdzLmlnbm9yZUtleXM7XG4gICAgICAgIHRoaXMuZWxlbS5hZGRFdmVudExpc3RlbmVyKFwia2V5ZG93blwiLCAoZXZ0KSA9PiB7XG4gICAgICAgICAgICAvLyBUaGlzIGlzIGEgd29ya2Fyb3VuZCBmb3Igb3N4IHdoZXJlIHByZXNzaW5nIG5vbi1hbHBoYW51bWVyaWNcbiAgICAgICAgICAgIC8vIGNoYXJhY3RlcnMgbGlrZSBcIkBcIiByZXF1aXJlcyBwcmVzc2luZyA8QS1hPiwgd2hpY2ggcmVzdWx0c1xuICAgICAgICAgICAgLy8gaW4gdGhlIGJyb3dzZXIgc2VuZGluZyBhbiA8QS1APiBldmVudCwgd2hpY2ggd2Ugd2FudCB0b1xuICAgICAgICAgICAgLy8gdHJlYXQgYXMgYSByZWd1bGFyIEAuXG4gICAgICAgICAgICAvLyBTbyBpZiB3ZSdyZSBzZWVpbmcgYW4gYWx0IG9uIGEgbm9uLWFscGhhbnVtZXJpYyBjaGFyYWN0ZXIsXG4gICAgICAgICAgICAvLyB3ZSBqdXN0IGlnbm9yZSBpdCBhbmQgbGV0IHRoZSBpbnB1dCBldmVudCBoYW5kbGVyIGRvIGl0c1xuICAgICAgICAgICAgLy8gbWFnaWMuIFRoaXMgY2FuIG9ubHkgYmUgdGVzdGVkIG9uIE9TWCwgYXMgZ2VuZXJhdGluZyBhblxuICAgICAgICAgICAgLy8gPEEtQD4ga2V5ZG93biBldmVudCB3aXRoIHNlbGVuaXVtIHdvbid0IHJlc3VsdCBpbiBhbiBpbnB1dFxuICAgICAgICAgICAgLy8gZXZlbnQuXG4gICAgICAgICAgICAvLyBTaW5jZSBjb3ZlcmFnZSByZXBvcnRzIGFyZSBvbmx5IHJldHJpZXZlZCBvbiBsaW51eCwgd2UgZG9uJ3RcbiAgICAgICAgICAgIC8vIGluc3RydW1lbnQgdGhpcyBjb25kaXRpb24uXG4gICAgICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICAgICAgaWYgKGV2dC5hbHRLZXkgJiYgc2V0dGluZ3MuYWx0ID09PSBcImFscGhhbnVtXCIgJiYgIS9bYS16QS1aMC05XS8udGVzdChldnQua2V5KSkge1xuICAgICAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIC8vIE5vdGU6IG9yZGVyIG9mIHRoaXMgYXJyYXkgaXMgaW1wb3J0YW50LCB3ZSBuZWVkIHRvIGNoZWNrIE9TIGJlZm9yZSBjaGVja2luZyBtZXRhXG4gICAgICAgICAgICBjb25zdCBzcGVjaWFsS2V5cyA9IFtbXCJBbHRcIiwgXCJBXCJdLCBbXCJDb250cm9sXCIsIFwiQ1wiXSwgW1wiT1NcIiwgXCJEXCJdLCBbXCJNZXRhXCIsIFwiRFwiXV07XG4gICAgICAgICAgICAvLyBUaGUgZXZlbnQgaGFzIHRvIGJlIHRydXN0ZWQgYW5kIGVpdGhlciBoYXZlIGEgbW9kaWZpZXIgb3IgYSBub24tbGl0ZXJhbCByZXByZXNlbnRhdGlvblxuICAgICAgICAgICAgaWYgKGV2dC5pc1RydXN0ZWRcbiAgICAgICAgICAgICAgICAmJiAobm9uTGl0ZXJhbEtleXNbZXZ0LmtleV0gIT09IHVuZGVmaW5lZFxuICAgICAgICAgICAgICAgICAgICB8fCBzcGVjaWFsS2V5cy5maW5kKChbbW9kLCBfXTogW3N0cmluZywgc3RyaW5nXSkgPT5cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBldnQua2V5ICE9PSBtb2QgJiYgKGV2dCBhcyBhbnkpLmdldE1vZGlmaWVyU3RhdGUobW9kKSkpKSB7XG4gICAgICAgICAgICAgICAgY29uc3QgdGV4dCA9IHNwZWNpYWxLZXlzLmNvbmNhdChbW1wiU2hpZnRcIiwgXCJTXCJdXSlcbiAgICAgICAgICAgICAgICAucmVkdWNlKChrZXk6IHN0cmluZywgW2F0dHIsIG1vZF06IFtzdHJpbmcsIHN0cmluZ10pID0+IHtcbiAgICAgICAgICAgICAgICAgICAgaWYgKChldnQgYXMgYW55KS5nZXRNb2RpZmllclN0YXRlKGF0dHIpKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gYWRkTW9kaWZpZXIobW9kLCBrZXkpO1xuICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBrZXk7XG4gICAgICAgICAgICAgICAgfSwgdHJhbnNsYXRlS2V5KGV2dC5rZXkpKTtcblxuICAgICAgICAgICAgICAgIGxldCBrZXlzIDogc3RyaW5nW10gPSBbXTtcbiAgICAgICAgICAgICAgICBpZiAoaWdub3JlS2V5c1t0aGlzLmN1cnJlbnRNb2RlXSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICAgICAgICAgIGtleXMgPSBpZ25vcmVLZXlzW3RoaXMuY3VycmVudE1vZGVdLnNsaWNlKCk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGlmIChpZ25vcmVLZXlzLmFsbCAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICAgICAgICAgIGtleXMucHVzaC5hcHBseShrZXlzLCBpZ25vcmVLZXlzLmFsbCk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGlmICgha2V5cy5pbmNsdWRlcyh0ZXh0KSkge1xuICAgICAgICAgICAgICAgICAgICB0aGlzLmVtaXQoXCJpbnB1dFwiLCB0ZXh0KTtcbiAgICAgICAgICAgICAgICAgICAgZXZ0LnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgICAgICAgICAgICAgIGV2dC5zdG9wSW1tZWRpYXRlUHJvcGFnYXRpb24oKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pXG4gICAgfVxuXG4gICAgZm9jdXMoKSB7XG4gICAgICAgIHRoaXMuZWxlbS5mb2N1cygpO1xuICAgIH1cblxuICAgIG1vdmVUbyhfOiBudW1iZXIsIF9fOiBudW1iZXIpIHtcbiAgICAgICAgLy8gRG9uJ3QgZG8gbnV0aGluXG4gICAgfVxuXG4gICAgc2V0TW9kZShzOiBOdmltTW9kZSkge1xuICAgICAgICB0aGlzLmN1cnJlbnRNb2RlID0gcztcbiAgICB9XG59O1xuIiwiaW1wb3J0IHsgUGFnZVR5cGUgfSBmcm9tIFwiLi9wYWdlXCJcbmltcG9ydCAqIGFzIENhbnZhc1JlbmRlcmVyIGZyb20gXCIuL3JlbmRlcmVyXCI7XG5pbXBvcnQgeyBTdGRpbiB9IGZyb20gXCIuL1N0ZGluXCI7XG5pbXBvcnQgeyBTdGRvdXQgfSBmcm9tIFwiLi9TdGRvdXRcIjtcblxuZXhwb3J0IGFzeW5jIGZ1bmN0aW9uIG5lb3ZpbShcbiAgICAgICAgcGFnZTogUGFnZVR5cGUsXG4gICAgICAgIGNhbnZhczogSFRNTENhbnZhc0VsZW1lbnQsXG4gICAgICAgIHsgcG9ydCwgcGFzc3dvcmQgfTogeyBwb3J0OiBudW1iZXIsIHBhc3N3b3JkOiBzdHJpbmcgfSxcbiAgICApIHtcbiAgICBjb25zdCBmdW5jdGlvbnM6IGFueSA9IHt9O1xuICAgIGNvbnN0IHJlcXVlc3RzID0gbmV3IE1hcDxudW1iZXIsIHsgcmVzb2x2ZTogYW55LCByZWplY3Q6IGFueSB9PigpO1xuXG4gICAgQ2FudmFzUmVuZGVyZXIuc2V0Q2FudmFzKGNhbnZhcyk7XG4gICAgQ2FudmFzUmVuZGVyZXIuZXZlbnRzLm9uKFwicmVzaXplXCIsICh7Z3JpZCwgd2lkdGgsIGhlaWdodH06IGFueSkgPT4ge1xuICAgICAgICAoZnVuY3Rpb25zIGFzIGFueSkudWlfdHJ5X3Jlc2l6ZV9ncmlkKGdyaWQsIHdpZHRoLCBoZWlnaHQpO1xuICAgIH0pO1xuICAgIENhbnZhc1JlbmRlcmVyLmV2ZW50cy5vbihcImZyYW1lUmVzaXplXCIsICh7d2lkdGgsIGhlaWdodH06IGFueSkgPT4ge1xuICAgICAgICBwYWdlLnJlc2l6ZUVkaXRvcih3aWR0aCwgaGVpZ2h0KTtcbiAgICB9KTtcblxuICAgIGxldCBwcmV2Tm90aWZpY2F0aW9uUHJvbWlzZSA9IFByb21pc2UucmVzb2x2ZSgpO1xuICAgIGNvbnN0IHNvY2tldCA9IG5ldyBXZWJTb2NrZXQoYHdzOi8vMTI3LjAuMC4xOiR7cG9ydH0vJHtwYXNzd29yZH1gKTtcbiAgICBzb2NrZXQuYmluYXJ5VHlwZSA9IFwiYXJyYXlidWZmZXJcIjtcbiAgICBzb2NrZXQuYWRkRXZlbnRMaXN0ZW5lcihcImNsb3NlXCIsICgoXzogYW55KSA9PiB7XG4gICAgICAgIHByZXZOb3RpZmljYXRpb25Qcm9taXNlID0gcHJldk5vdGlmaWNhdGlvblByb21pc2UuZmluYWxseSgoKSA9PiBwYWdlLmtpbGxFZGl0b3IoKSk7XG4gICAgfSkpO1xuICAgIGF3YWl0IChuZXcgUHJvbWlzZShyZXNvbHZlID0+IHNvY2tldC5hZGRFdmVudExpc3RlbmVyKFwib3BlblwiLCAoKSA9PiB7XG4gICAgICAgIHJlc29sdmUodW5kZWZpbmVkKTtcbiAgICB9KSkpO1xuICAgIGNvbnN0IHN0ZGluID0gbmV3IFN0ZGluKHNvY2tldCk7XG4gICAgY29uc3Qgc3Rkb3V0ID0gbmV3IFN0ZG91dChzb2NrZXQpO1xuXG4gICAgbGV0IHJlcUlkID0gMDtcbiAgICBjb25zdCByZXF1ZXN0ID0gKGFwaTogc3RyaW5nLCBhcmdzOiBhbnlbXSkgPT4ge1xuICAgICAgICByZXR1cm4gbmV3IFByb21pc2UoKHJlc29sdmUsIHJlamVjdCkgPT4ge1xuICAgICAgICAgICAgcmVxSWQgKz0gMTtcbiAgICAgICAgICAgIHJlcXVlc3RzLnNldChyZXFJZCwge3Jlc29sdmUsIHJlamVjdH0pO1xuICAgICAgICAgICAgc3RkaW4ud3JpdGUocmVxSWQsIGFwaSwgYXJncyk7XG4gICAgICAgIH0pO1xuICAgIH07XG4gICAgc3Rkb3V0Lm9uKFwicmVxdWVzdFwiLCAoaWQ6IG51bWJlciwgbmFtZTogYW55LCBhcmdzOiBhbnkpID0+IHtcbiAgICAgICAgY29uc29sZS53YXJuKFwiZmlyZW52aW06IHVuaGFuZGxlZCByZXF1ZXN0IGZyb20gbmVvdmltXCIsIGlkLCBuYW1lLCBhcmdzKTtcbiAgICB9KTtcbiAgICBzdGRvdXQub24oXCJyZXNwb25zZVwiLCAoaWQ6IGFueSwgZXJyb3I6IGFueSwgcmVzdWx0OiBhbnkpID0+IHtcbiAgICAgICAgY29uc3QgciA9IHJlcXVlc3RzLmdldChpZCk7XG4gICAgICAgIGlmICghcikge1xuICAgICAgICAgICAgLy8gVGhpcyBjYW4ndCBoYXBwZW4gYW5kIHlldCBpdCBzb21ldGltZXMgZG9lcywgcG9zc2libHkgZHVlIHRvIGEgZmlyZWZveCBidWdcbiAgICAgICAgICAgIGNvbnNvbGUuZXJyb3IoYFJlY2VpdmVkIGFuc3dlciB0byAke2lkfSBidXQgbm8gaGFuZGxlciBmb3VuZCFgKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHJlcXVlc3RzLmRlbGV0ZShpZCk7XG4gICAgICAgICAgICBpZiAoZXJyb3IpIHtcbiAgICAgICAgICAgICAgICByLnJlamVjdChlcnJvcik7XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIHIucmVzb2x2ZShyZXN1bHQpO1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfSk7XG5cbiAgICBsZXQgbGFzdExvc3RGb2N1cyA9IHBlcmZvcm1hbmNlLm5vdygpO1xuICAgIHN0ZG91dC5vbihcIm5vdGlmaWNhdGlvblwiLCBhc3luYyAobmFtZTogc3RyaW5nLCBhcmdzOiBhbnlbXSkgPT4ge1xuICAgICAgICBpZiAobmFtZSA9PT0gXCJyZWRyYXdcIiAmJiBhcmdzKSB7XG4gICAgICAgICAgICBDYW52YXNSZW5kZXJlci5vblJlZHJhdyhhcmdzKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBwcmV2Tm90aWZpY2F0aW9uUHJvbWlzZSA9IHByZXZOb3RpZmljYXRpb25Qcm9taXNlLmZpbmFsbHkoKCkgPT4ge1xuICAgICAgICAgICAgLy8gQSB2ZXJ5IHRyaWNreSBzZXF1ZW5jZSBvZiBldmVudHMgY291bGQgaGFwcGVuIGhlcmU6XG4gICAgICAgICAgICAvLyAtIGZpcmVudmltX2J1ZndyaXRlIGlzIHJlY2VpdmVkIHBhZ2Uuc2V0RWxlbWVudENvbnRlbnQgaXMgY2FsbGVkXG4gICAgICAgICAgICAvLyAgIGFzeW5jaHJvbm91c2x5XG4gICAgICAgICAgICAvLyAtIGZpcmVudmltX2ZvY3VzX3BhZ2UgaXMgY2FsbGVkLCBwYWdlLmZvY3VzUGFnZSgpIGlzIGNhbGxlZFxuICAgICAgICAgICAgLy8gICBhc3luY2hyb25vdXNseSwgbGFzdExvc3RGb2N1cyBpcyBzZXQgdG8gbm93XG4gICAgICAgICAgICAvLyAtIHBhZ2Uuc2V0RWxlbWVudENvbnRlbnQgY29tcGxldGVzLCBsYXN0TG9zdEZvY3VzIGlzIGNoZWNrZWQgdG8gc2VlXG4gICAgICAgICAgICAvLyAgIGlmIGZvY3VzIHNob3VsZCBiZSBncmFiYmVkIG9yIG5vdFxuICAgICAgICAgICAgLy8gVGhhdCdzIHdoeSB3ZSBoYXZlIHRvIGNoZWNrIGZvciBsYXN0TG9zdEZvY3VzIGFmdGVyXG4gICAgICAgICAgICAvLyBwYWdlLnNldEVsZW1lbnRDb250ZW50L0N1cnNvciEgU2FtZSB0aGluZyBmb3IgZmlyZW52aW1fcHJlc3Nfa2V5c1xuICAgICAgICAgICAgY29uc3QgaGFkRm9jdXMgPSBkb2N1bWVudC5oYXNGb2N1cygpO1xuICAgICAgICAgICAgc3dpdGNoIChuYW1lKSB7XG4gICAgICAgICAgICAgICAgY2FzZSBcImZpcmVudmltX2J1ZndyaXRlXCI6XG4gICAgICAgICAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgZGF0YSA9IGFyZ3NbMF0gYXMgeyB0ZXh0OiBzdHJpbmdbXSwgY3Vyc29yOiBbbnVtYmVyLCBudW1iZXJdIH07XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBwYWdlLnNldEVsZW1lbnRDb250ZW50KGRhdGEudGV4dC5qb2luKFwiXFxuXCIpKVxuICAgICAgICAgICAgICAgICAgICAgICAgLnRoZW4oKCkgPT4gcGFnZS5zZXRFbGVtZW50Q3Vyc29yKC4uLihkYXRhLmN1cnNvcikpKVxuICAgICAgICAgICAgICAgICAgICAgICAgLnRoZW4oKCkgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChoYWRGb2N1c1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmJiAhZG9jdW1lbnQuaGFzRm9jdXMoKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmJiAocGVyZm9ybWFuY2Uubm93KCkgLSBsYXN0TG9zdEZvY3VzID4gMzAwMCkpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2luZG93LmZvY3VzKCk7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBjYXNlIFwiZmlyZW52aW1fZXZhbF9qc1wiOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFnZS5ldmFsSW5QYWdlKGFyZ3NbMF0pLmNhdGNoKF8gPT4gXykudGhlbihyZXN1bHQgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGFyZ3NbMV0pIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXF1ZXN0KFwibnZpbV9jYWxsX2Z1bmN0aW9uXCIsIFthcmdzWzFdLCBbSlNPTi5zdHJpbmdpZnkocmVzdWx0KV1dKTtcbiAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICAgICAgY2FzZSBcImZpcmVudmltX2ZvY3VzX3BhZ2VcIjpcbiAgICAgICAgICAgICAgICAgICAgbGFzdExvc3RGb2N1cyA9IHBlcmZvcm1hbmNlLm5vdygpO1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFnZS5mb2N1c1BhZ2UoKTtcbiAgICAgICAgICAgICAgICBjYXNlIFwiZmlyZW52aW1fZm9jdXNfaW5wdXRcIjpcbiAgICAgICAgICAgICAgICAgICAgbGFzdExvc3RGb2N1cyA9IHBlcmZvcm1hbmNlLm5vdygpO1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFnZS5mb2N1c0lucHV0KCk7XG4gICAgICAgICAgICAgICAgY2FzZSBcImZpcmVudmltX2hpZGVfZnJhbWVcIjpcbiAgICAgICAgICAgICAgICAgICAgbGFzdExvc3RGb2N1cyA9IHBlcmZvcm1hbmNlLm5vdygpO1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFnZS5oaWRlRWRpdG9yKCk7XG4gICAgICAgICAgICAgICAgY2FzZSBcImZpcmVudmltX3ByZXNzX2tleXNcIjpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHBhZ2UucHJlc3NLZXlzKGFyZ3NbMF0pO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJmaXJlbnZpbV92aW1sZWF2ZVwiOlxuICAgICAgICAgICAgICAgICAgICBsYXN0TG9zdEZvY3VzID0gcGVyZm9ybWFuY2Uubm93KCk7XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBwYWdlLmtpbGxFZGl0b3IoKTtcbiAgICAgICAgICAgICAgICBjYXNlIFwiZmlyZW52aW1fdGh1bmRlcmJpcmRfc2VuZFwiOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gYnJvd3Nlci5ydW50aW1lLnNlbmRNZXNzYWdlKHtcbiAgICAgICAgICAgICAgICAgICAgICAgIGFyZ3M6IFtdLFxuICAgICAgICAgICAgICAgICAgICAgICAgZnVuY05hbWU6IFtcInRodW5kZXJiaXJkU2VuZFwiXSxcbiAgICAgICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgIH0pO1xuXG4gICAgY29uc3QgeyAwOiBjaGFubmVsLCAxOiBhcGlJbmZvIH0gPSAoYXdhaXQgcmVxdWVzdChcIm52aW1fZ2V0X2FwaV9pbmZvXCIsIFtdKSkgYXMgSU52aW1BcGlJbmZvO1xuXG4gICAgc3Rkb3V0LnNldFR5cGVzKGFwaUluZm8udHlwZXMpO1xuXG4gICAgT2JqZWN0LmFzc2lnbihmdW5jdGlvbnMsIGFwaUluZm8uZnVuY3Rpb25zXG4gICAgICAgIC5maWx0ZXIoZiA9PiBmLmRlcHJlY2F0ZWRfc2luY2UgPT09IHVuZGVmaW5lZClcbiAgICAgICAgLnJlZHVjZSgoYWNjLCBjdXIpID0+IHtcbiAgICAgICAgICAgIGxldCBuYW1lID0gY3VyLm5hbWU7XG4gICAgICAgICAgICBpZiAobmFtZS5zdGFydHNXaXRoKFwibnZpbV9cIikpIHtcbiAgICAgICAgICAgICAgICBuYW1lID0gbmFtZS5zbGljZSg1KTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGFjY1tuYW1lXSA9ICguLi5hcmdzOiBhbnlbXSkgPT4gcmVxdWVzdChjdXIubmFtZSwgYXJncyk7XG4gICAgICAgICAgICByZXR1cm4gYWNjO1xuICAgICAgICB9LCB7fSBhcyB7W2s6IHN0cmluZ106ICguLi5hcmdzOiBhbnlbXSkgPT4gYW55fSkpO1xuICAgIGZ1bmN0aW9ucy5nZXRfY3VycmVudF9jaGFubmVsID0gKCkgPT4gY2hhbm5lbDtcbiAgICByZXR1cm4gZnVuY3Rpb25zO1xufVxuIiwiaW1wb3J0ICogYXMgbXNncGFjayBmcm9tIFwibXNncGFjay1saXRlXCI7XG5cbmV4cG9ydCBjbGFzcyBTdGRpbiB7XG5cbiAgICBjb25zdHJ1Y3Rvcihwcml2YXRlIHNvY2tldDogV2ViU29ja2V0KSB7fVxuXG4gICAgcHVibGljIHdyaXRlKHJlcUlkOiBudW1iZXIsIG1ldGhvZDogc3RyaW5nLCBhcmdzOiBhbnlbXSkge1xuICAgICAgICBjb25zdCByZXEgPSBbMCwgcmVxSWQsIG1ldGhvZCwgYXJnc107XG4gICAgICAgIGNvbnN0IGVuY29kZWQgPSBtc2dwYWNrLmVuY29kZShyZXEpO1xuICAgICAgICB0aGlzLnNvY2tldC5zZW5kKGVuY29kZWQpO1xuICAgIH1cblxufVxuIiwiaW1wb3J0ICogYXMgbXNncGFjayBmcm9tIFwibXNncGFjay1saXRlXCI7XG5pbXBvcnQgeyBFdmVudEVtaXR0ZXIgfSBmcm9tIFwiLi9FdmVudEVtaXR0ZXJcIjtcblxudHlwZSBNZXNzYWdlS2luZCA9IFwicmVxdWVzdFwiIHwgXCJyZXNwb25zZVwiIHwgXCJub3RpZmljYXRpb25cIjtcbnR5cGUgUmVxdWVzdEhhbmRsZXIgPSAoaWQ6IG51bWJlciwgbmFtZTogc3RyaW5nLCBhcmdzOiBhbnlbXSkgPT4gdm9pZDtcbnR5cGUgUmVzcG9uc2VIYW5kbGVyID0gKGlkOiBudW1iZXIsIGVycm9yOiBhbnksIHJlc3VsdDogYW55KSA9PiB2b2lkO1xudHlwZSBOb3RpZmljYXRpb25IYW5kbGVyID0gKG5hbWU6IHN0cmluZywgYXJnczogYW55W10pID0+IHZvaWQ7XG50eXBlIE1lc3NhZ2VIYW5kbGVyID0gUmVxdWVzdEhhbmRsZXIgfCBSZXNwb25zZUhhbmRsZXIgfCBOb3RpZmljYXRpb25IYW5kbGVyO1xuZXhwb3J0IGNsYXNzIFN0ZG91dCBleHRlbmRzIEV2ZW50RW1pdHRlcjxNZXNzYWdlS2luZCwgTWVzc2FnZUhhbmRsZXI+e1xuICAgIHByaXZhdGUgbWVzc2FnZU5hbWVzID0gbmV3IE1hcDxudW1iZXIsIE1lc3NhZ2VLaW5kPihbWzAsIFwicmVxdWVzdFwiXSwgWzEsIFwicmVzcG9uc2VcIl0sIFsyLCBcIm5vdGlmaWNhdGlvblwiXV0pO1xuICAgIC8vIEhvbGRzIHByZXZpb3VzbHktcmVjZWl2ZWQsIGluY29tcGxldGUgYW5kIHVucHJvY2Vzc2VkIG1lc3NhZ2VzXG4gICAgcHJpdmF0ZSBwcmV2ID0gbmV3IFVpbnQ4QXJyYXkoMCk7XG4gICAgcHJpdmF0ZSBtc2dwYWNrQ29uZmlnID0ge30gYXMgbXNncGFjay5EZWNvZGVyT3B0aW9ucztcblxuICAgIGNvbnN0cnVjdG9yKHByaXZhdGUgc29ja2V0OiBXZWJTb2NrZXQpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgICAgdGhpcy5zb2NrZXQuYWRkRXZlbnRMaXN0ZW5lcihcIm1lc3NhZ2VcIiwgdGhpcy5vbk1lc3NhZ2UuYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgcHVibGljIHNldFR5cGVzKHR5cGVzOiB7W2tleTogc3RyaW5nXTogeyBpZDogbnVtYmVyIH19KSB7XG4gICAgICAgIHRoaXMubXNncGFja0NvbmZpZy5jb2RlYyA9IG1zZ3BhY2suY3JlYXRlQ29kZWMoeyBwcmVzZXQ6IHRydWUgfSk7XG4gICAgICAgIE9iamVjdFxuICAgICAgICAgICAgLmVudHJpZXModHlwZXMpXG4gICAgICAgICAgICAuZm9yRWFjaCgoW18sIHsgaWQgfV0pID0+XG4gICAgICAgICAgICAgICAgICAgICB0aGlzXG4gICAgICAgICAgICAgICAgICAgICAgICAubXNncGFja0NvbmZpZ1xuICAgICAgICAgICAgICAgICAgICAgICAgLmNvZGVjXG4gICAgICAgICAgICAgICAgICAgICAgICAuYWRkRXh0VW5wYWNrZXIoaWQsIChkYXRhOiBhbnkpID0+IGRhdGEpKTtcbiAgICB9XG5cbiAgICBwcml2YXRlIG9uTWVzc2FnZShtc2c6IGFueSkge1xuICAgICAgICBjb25zdCBtc2dEYXRhID0gbmV3IFVpbnQ4QXJyYXkobXNnLmRhdGEpO1xuICAgICAgICBsZXQgZGF0YSA9IG5ldyBVaW50OEFycmF5KG1zZ0RhdGEuYnl0ZUxlbmd0aCArIHRoaXMucHJldi5ieXRlTGVuZ3RoKTtcbiAgICAgICAgZGF0YS5zZXQodGhpcy5wcmV2KTtcbiAgICAgICAgZGF0YS5zZXQobXNnRGF0YSwgdGhpcy5wcmV2Lmxlbmd0aCk7XG4gICAgICAgIHdoaWxlICh0cnVlKSB7XG4gICAgICAgICAgICBsZXQgZGVjb2RlZDtcbiAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgZGVjb2RlZCA9IG1zZ3BhY2suZGVjb2RlKGRhdGEsIHRoaXMubXNncGFja0NvbmZpZyk7XG4gICAgICAgICAgICB9IGNhdGNoIChlKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5wcmV2ID0gZGF0YTtcbiAgICAgICAgICAgICAgICByZXR1cm47XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBjb25zdCBlbmNvZGVkID0gbXNncGFjay5lbmNvZGUoZGVjb2RlZCk7XG4gICAgICAgICAgICBkYXRhID0gZGF0YS5zbGljZShlbmNvZGVkLmJ5dGVMZW5ndGgpO1xuICAgICAgICAgICAgY29uc3QgW2tpbmQsIHJlcUlkLCBkYXRhMSwgZGF0YTJdID0gZGVjb2RlZDtcbiAgICAgICAgICAgIGNvbnN0IG5hbWUgPSB0aGlzLm1lc3NhZ2VOYW1lcy5nZXQoa2luZCk7XG4gICAgICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgZWxzZSAqL1xuICAgICAgICAgICAgaWYgKG5hbWUpIHtcbiAgICAgICAgICAgICAgICB0aGlzLmVtaXQobmFtZSwgcmVxSWQsIGRhdGExLCBkYXRhMik7XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIC8vIENhbid0IGJlIHRlc3RlZCBiZWNhdXNlIHRoaXMgd291bGQgbWVhbiBtZXNzYWdlcyB0aGF0IGJyZWFrXG4gICAgICAgICAgICAgICAgLy8gdGhlIG1zZ3BhY2stcnBjIHNwZWMsIHNvIGNvdmVyYWdlIGltcG9zc2libGUgdG8gZ2V0LlxuICAgICAgICAgICAgICAgIGNvbnNvbGUuZXJyb3IoYFVuaGFuZGxlZCBtZXNzYWdlIGtpbmQgJHtuYW1lfWApO1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxufVxuIiwiaW1wb3J0IHsgbmVvdmltIH0gZnJvbSBcIi4vTmVvdmltXCI7XG5pbXBvcnQgeyBnZXRHcmlkSWQsIGdldExvZ2ljYWxTaXplLCBjb21wdXRlR3JpZERpbWVuc2lvbnNGb3IsIGdldEdyaWRDb29yZGluYXRlcywgZXZlbnRzIGFzIHJlbmRlcmVyRXZlbnRzIH0gZnJvbSBcIi4vcmVuZGVyZXJcIjtcbmltcG9ydCB7IGNvbmZSZWFkeSwgZ2V0Q29uZkZvclVybCwgTnZpbU1vZGUgfSBmcm9tIFwiLi91dGlscy9jb25maWd1cmF0aW9uXCI7XG5pbXBvcnQgeyB0b0ZpbGVOYW1lIH0gZnJvbSBcIi4vdXRpbHMvdXRpbHNcIjtcbmltcG9ydCB7IFBhZ2VUeXBlIH0gZnJvbSBcIi4vcGFnZVwiO1xuaW1wb3J0IHsgS2V5SGFuZGxlciB9IGZyb20gXCIuL0tleUhhbmRsZXJcIjtcblxuZXhwb3J0IGFzeW5jIGZ1bmN0aW9uIHNldHVwSW5wdXQoXG4gICAgcGFnZTogUGFnZVR5cGUsXG4gICAgY2FudmFzOiBIVE1MQ2FudmFzRWxlbWVudCxcbiAgICBrZXlIYW5kbGVyOiBLZXlIYW5kbGVyLFxuICAgIGNvbm5lY3Rpb25Qcm9taXNlOiBQcm9taXNlPHsgcG9ydDogbnVtYmVyLCBwYXNzd29yZDogc3RyaW5nIH0+LFxuKSB7XG4gICAgdHJ5IHtcbiAgICAgICAgY29uc3QgW1t1cmwsIHNlbGVjdG9yLCBjdXJzb3IsIGxhbmd1YWdlXSwgY29ubmVjdGlvbkRhdGFdID1cbiAgICAgICAgICAgIGF3YWl0IFByb21pc2UuYWxsKFtwYWdlLmdldEVkaXRvckluZm8oKSwgY29ubmVjdGlvblByb21pc2VdKTtcbiAgICAgICAgY29uc3QgbnZpbVByb21pc2UgPSBuZW92aW0ocGFnZSwgY2FudmFzLCBjb25uZWN0aW9uRGF0YSk7XG4gICAgICAgIGNvbnN0IGNvbnRlbnRQcm9taXNlID0gcGFnZS5nZXRFbGVtZW50Q29udGVudCgpO1xuXG4gICAgICAgIGNvbnN0IFtjb2xzLCByb3dzXSA9IGdldExvZ2ljYWxTaXplKCk7XG5cbiAgICAgICAgY29uc3QgbnZpbSA9IGF3YWl0IG52aW1Qcm9taXNlO1xuXG4gICAgICAgIGtleUhhbmRsZXIub24oXCJpbnB1dFwiLCAoczogc3RyaW5nKSA9PiBudmltLmlucHV0KHMpKTtcbiAgICAgICAgcmVuZGVyZXJFdmVudHMub24oXCJtb2RlQ2hhbmdlXCIsIChzOiBOdmltTW9kZSkgPT4ga2V5SGFuZGxlci5zZXRNb2RlKHMpKTtcblxuICAgICAgICAvLyBXZSBuZWVkIHRvIHNldCBjbGllbnQgaW5mbyBiZWZvcmUgcnVubmluZyB1aV9hdHRhY2ggYmVjYXVzZSB3ZSB3YW50IHRoaXNcbiAgICAgICAgLy8gaW5mbyB0byBiZSBhdmFpbGFibGUgd2hlbiBVSUVudGVyIGlzIHRyaWdnZXJlZFxuICAgICAgICBjb25zdCBleHRJbmZvID0gYnJvd3Nlci5ydW50aW1lLmdldE1hbmlmZXN0KCk7XG4gICAgICAgIGNvbnN0IFttYWpvciwgbWlub3IsIHBhdGNoXSA9IGV4dEluZm8udmVyc2lvbi5zcGxpdChcIi5cIik7XG4gICAgICAgIG52aW0uc2V0X2NsaWVudF9pbmZvKGV4dEluZm8ubmFtZSxcbiAgICAgICAgICAgIHsgbWFqb3IsIG1pbm9yLCBwYXRjaCB9LFxuICAgICAgICAgICAgXCJ1aVwiLFxuICAgICAgICAgICAge30sXG4gICAgICAgICAgICB7fSxcbiAgICAgICAgKTtcblxuICAgICAgICBhd2FpdCBjb25mUmVhZHk7XG4gICAgICAgIGNvbnN0IHVybFNldHRpbmdzID0gZ2V0Q29uZkZvclVybCh1cmwpO1xuICAgICAgICBudmltLnVpX2F0dGFjaChcbiAgICAgICAgICAgIGNvbHMgPCAxID8gMSA6IGNvbHMsXG4gICAgICAgICAgICByb3dzIDwgMSA/IDEgOiByb3dzLFxuICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgIGV4dF9saW5lZ3JpZDogdHJ1ZSxcbiAgICAgICAgICAgICAgICBleHRfbWVzc2FnZXM6IHVybFNldHRpbmdzLmNtZGxpbmUgPT09IFwiZmlyZW52aW1cIixcbiAgICAgICAgICAgICAgICByZ2I6IHRydWUsXG4gICAgICAgIH0pLmNhdGNoKGNvbnNvbGUubG9nKTtcblxuICAgICAgICBsZXQgcmVzaXplUmVxSWQgPSAwO1xuICAgICAgICBwYWdlLm9uKFwicmVzaXplXCIsIChbaWQsIHdpZHRoLCBoZWlnaHRdOiBbbnVtYmVyLCBudW1iZXIsIG51bWJlcl0pID0+IHtcbiAgICAgICAgICAgIGlmIChpZCA+IHJlc2l6ZVJlcUlkKSB7XG4gICAgICAgICAgICAgICAgcmVzaXplUmVxSWQgPSBpZDtcbiAgICAgICAgICAgICAgICAvLyBXZSBuZWVkIHRvIHB1dCB0aGUga2V5SGFuZGxlciBhdCB0aGUgb3JpZ2luIGluIG9yZGVyIHRvIGF2b2lkXG4gICAgICAgICAgICAgICAgLy8gaXNzdWVzIHdoZW4gaXQgc2xpcHMgb3V0IG9mIHRoZSB2aWV3cG9ydFxuICAgICAgICAgICAgICAgIGtleUhhbmRsZXIubW92ZVRvKDAsIDApO1xuICAgICAgICAgICAgICAgIC8vIEl0J3MgdGVtcHRpbmcgdG8gdHJ5IHRvIG9wdGltaXplIHRoaXMgYnkgb25seSBjYWxsaW5nXG4gICAgICAgICAgICAgICAgLy8gdWlfdHJ5X3Jlc2l6ZSB3aGVuIG5Db2xzIGlzIGRpZmZlcmVudCBmcm9tIGNvbHMgYW5kIG5Sb3dzIGlzXG4gICAgICAgICAgICAgICAgLy8gZGlmZmVyZW50IGZyb20gcm93cyBidXQgd2UgY2FuJ3QgYmVjYXVzZSByZWRyYXcgbm90aWZpY2F0aW9uc1xuICAgICAgICAgICAgICAgIC8vIG1pZ2h0IGhhcHBlbiB3aXRob3V0IHVzIGFjdHVhbGx5IGNhbGxpbmcgdWlfdHJ5X3Jlc2l6ZSBhbmQgdGhlblxuICAgICAgICAgICAgICAgIC8vIHRoZSBzaXplcyB3b3VsZG4ndCBiZSBpbiBzeW5jIGFueW1vcmVcbiAgICAgICAgICAgICAgICBjb25zdCBbbkNvbHMsIG5Sb3dzXSA9IGNvbXB1dGVHcmlkRGltZW5zaW9uc0ZvcihcbiAgICAgICAgICAgICAgICAgICAgd2lkdGggKiB3aW5kb3cuZGV2aWNlUGl4ZWxSYXRpbyxcbiAgICAgICAgICAgICAgICAgICAgaGVpZ2h0ICogd2luZG93LmRldmljZVBpeGVsUmF0aW9cbiAgICAgICAgICAgICAgICApO1xuICAgICAgICAgICAgICAgIG52aW0udWlfdHJ5X3Jlc2l6ZV9ncmlkKGdldEdyaWRJZCgpLCBuQ29scywgblJvd3MpO1xuICAgICAgICAgICAgICAgIHBhZ2UucmVzaXplRWRpdG9yKE1hdGguZmxvb3Iod2lkdGggLyBuQ29scykgKiBuQ29scywgTWF0aC5mbG9vcihoZWlnaHQgLyBuUm93cykgKiBuUm93cyk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgICBwYWdlLm9uKFwiZnJhbWVfc2VuZEtleVwiLCAoYXJncykgPT4gbnZpbS5pbnB1dChhcmdzLmpvaW4oXCJcIikpKTtcbiAgICAgICAgcGFnZS5vbihcImdldF9idWZfY29udGVudFwiLCAocjogYW55KSA9PiByKG52aW0uYnVmX2dldF9saW5lcygwLCAwLCAtMSwgMCkpKTtcblxuICAgICAgICAvLyBDcmVhdGUgZmlsZSwgc2V0IGl0cyBjb250ZW50IHRvIHRoZSB0ZXh0YXJlYSdzLCB3cml0ZSBpdFxuICAgICAgICBjb25zdCBmaWxlbmFtZSA9IHRvRmlsZU5hbWUodXJsU2V0dGluZ3MuZmlsZW5hbWUsIHVybCwgc2VsZWN0b3IsIGxhbmd1YWdlKTtcbiAgICAgICAgY29uc3QgY29udGVudCA9IGF3YWl0IGNvbnRlbnRQcm9taXNlO1xuICAgICAgICBjb25zdCBbbGluZSwgY29sXSA9IGN1cnNvcjtcbiAgICAgICAgY29uc3Qgd3JpdGVGaWxlUHJvbWlzZSA9IG52aW0uY2FsbF9mdW5jdGlvbihcIndyaXRlZmlsZVwiLCBbY29udGVudC5zcGxpdChcIlxcblwiKSwgZmlsZW5hbWVdKVxuICAgICAgICAgICAgLnRoZW4oKCkgPT4gbnZpbS5jb21tYW5kKGBlZGl0ICR7ZmlsZW5hbWV9IGBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArIGB8IGNhbGwgbnZpbV93aW5fc2V0X2N1cnNvcigwLCBbJHtsaW5lfSwgJHtjb2x9XSlgKSk7XG5cbiAgICAgICAgLy8gQ2FuJ3QgZ2V0IGNvdmVyYWdlIGZvciB0aGlzIGFzIGJyb3dzZXJzIGRvbid0IGxldCB1cyByZWxpYWJseVxuICAgICAgICAvLyBwdXNoIGRhdGEgdG8gdGhlIHNlcnZlciBvbiBiZWZvcmV1bmxvYWQuXG4gICAgICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgICAgIHdpbmRvdy5hZGRFdmVudExpc3RlbmVyKFwiYmVmb3JldW5sb2FkXCIsICgpID0+IHtcbiAgICAgICAgICAgIG52aW0udWlfZGV0YWNoKCk7XG4gICAgICAgICAgICBudmltLmNvbW1hbmQoXCJxYWxsIVwiKTtcbiAgICAgICAgfSk7XG5cbiAgICAgICAgLy8gS2VlcCB0cmFjayBvZiBsYXN0IGFjdGl2ZSBpbnN0YW5jZSAobmVjZXNzYXJ5IGZvciBmaXJlbnZpbSNmb2N1c19pbnB1dCgpICYgb3RoZXJzKVxuICAgICAgICBjb25zdCBjaGFuID0gbnZpbS5nZXRfY3VycmVudF9jaGFubmVsKCk7XG4gICAgICAgIGZ1bmN0aW9uIHNldEN1cnJlbnRDaGFuKCkge1xuICAgICAgICAgICAgbnZpbS5zZXRfdmFyKFwibGFzdF9mb2N1c2VkX2ZpcmVudmltX2NoYW5uZWxcIiwgY2hhbik7XG4gICAgICAgIH1cbiAgICAgICAgc2V0Q3VycmVudENoYW4oKTtcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJmb2N1c1wiLCBzZXRDdXJyZW50Q2hhbik7XG4gICAgICAgIHdpbmRvdy5hZGRFdmVudExpc3RlbmVyKFwiY2xpY2tcIiwgc2V0Q3VycmVudENoYW4pO1xuXG4gICAgICAgIGNvbnN0IGF1Z3JvdXBOYW1lID0gYEZpcmVudmltQXVncm91cENoYW4ke2NoYW59YDtcbiAgICAgICAgLy8gQ2xlYW51cCBtZWFuczpcbiAgICAgICAgLy8gLSBub3RpZnkgZnJvbnRlbmQgdGhhdCB3ZSdyZSBzaHV0dGluZyBkb3duXG4gICAgICAgIC8vIC0gZGVsZXRlIGZpbGVcbiAgICAgICAgLy8gLSByZW1vdmUgb3duIGF1Z3JvdXBcbiAgICAgICAgY29uc3QgY2xlYW51cCA9IGBjYWxsIHJwY25vdGlmeSgke2NoYW59LCAnZmlyZW52aW1fdmltbGVhdmUnKSB8IGBcbiAgICAgICAgICAgICAgICAgICAgKyBgY2FsbCBkZWxldGUoJyR7ZmlsZW5hbWV9JylgO1xuICAgICAgICAvLyBBc2sgZm9yIG5vdGlmaWNhdGlvbnMgd2hlbiB1c2VyIHdyaXRlcy9sZWF2ZXMgZmlyZW52aW1cbiAgICAgICAgbnZpbS5jYWxsX2F0b21pYygoYGF1Z3JvdXAgJHthdWdyb3VwTmFtZX1cbiAgICAgICAgICAgICAgICAgICAgICAgIGF1IVxuICAgICAgICAgICAgICAgICAgICAgICAgYXV0b2NtZCBCdWZXcml0ZSAke2ZpbGVuYW1lfSBgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgKyBgY2FsbCBycGNub3RpZnkoJHtjaGFufSwgYFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArIGAnZmlyZW52aW1fYnVmd3JpdGUnLCBgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICsgYHtgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArIGAndGV4dCc6IG52aW1fYnVmX2dldF9saW5lcygwLCAwLCAtMSwgMCksYFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKyBgJ2N1cnNvcic6IG52aW1fd2luX2dldF9jdXJzb3IoMCksYFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArIGB9KVxuICAgICAgICAgICAgICAgICAgICAgICAgYXUgVmltTGVhdmUgKiAke2NsZWFudXB9XG4gICAgICAgICAgICAgICAgICAgIGF1Z3JvdXAgRU5EYCkuc3BsaXQoXCJcXG5cIikubWFwKGNvbW1hbmQgPT4gW1wibnZpbV9jb21tYW5kXCIsIFtjb21tYW5kXV0pKTtcblxuICAgICAgICB3aW5kb3cuYWRkRXZlbnRMaXN0ZW5lcihcIm1vdXNlbW92ZVwiLCAoZXZ0OiBNb3VzZUV2ZW50KSA9PiB7XG4gICAgICAgICAgICBrZXlIYW5kbGVyLm1vdmVUbyhldnQuY2xpZW50WCwgZXZ0LmNsaWVudFkpO1xuICAgICAgICB9KTtcbiAgICAgICAgZnVuY3Rpb24gb25Nb3VzZShldnQ6IE1vdXNlRXZlbnQsIGFjdGlvbjogc3RyaW5nKSB7XG4gICAgICAgICAgICBsZXQgYnV0dG9uO1xuICAgICAgICAgICAgLy8gU2VsZW5pdW0gY2FuJ3QgZ2VuZXJhdGUgd2hlZWwgZXZlbnRzIHlldCA6KFxuICAgICAgICAgICAgLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbiAgICAgICAgICAgIGlmIChldnQgaW5zdGFuY2VvZiBXaGVlbEV2ZW50KSB7XG4gICAgICAgICAgICAgICAgYnV0dG9uID0gXCJ3aGVlbFwiO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgICAvLyBTZWxlbml1bSBjYW4ndCBnZW5lcmF0ZSBtb3VzZSBldmVudHMgd2l0aCBtb3JlIGJ1dHRvbnMgOihcbiAgICAgICAgICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICAgICAgICAgIGlmIChldnQuYnV0dG9uID4gMikge1xuICAgICAgICAgICAgICAgICAgICAvLyBOZW92aW0gZG9lc24ndCBoYW5kbGUgb3RoZXIgbW91c2UgYnV0dG9ucyBmb3Igbm93XG4gICAgICAgICAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgYnV0dG9uID0gW1wibGVmdFwiLCBcIm1pZGRsZVwiLCBcInJpZ2h0XCJdW2V2dC5idXR0b25dO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgZXZ0LnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgICAgICBldnQuc3RvcEltbWVkaWF0ZVByb3BhZ2F0aW9uKCk7XG5cbiAgICAgICAgICAgIGNvbnN0IG1vZGlmaWVycyA9IChldnQuYWx0S2V5ID8gXCJBXCIgOiBcIlwiKSArXG4gICAgICAgICAgICAgICAgKGV2dC5jdHJsS2V5ID8gXCJDXCIgOiBcIlwiKSArXG4gICAgICAgICAgICAgICAgKGV2dC5tZXRhS2V5ID8gXCJEXCIgOiBcIlwiKSArXG4gICAgICAgICAgICAgICAgKGV2dC5zaGlmdEtleSA/IFwiU1wiIDogXCJcIik7XG4gICAgICAgICAgICBjb25zdCBbeCwgeV0gPSBnZXRHcmlkQ29vcmRpbmF0ZXMoZXZ0LnBhZ2VYLCBldnQucGFnZVkpO1xuICAgICAgICAgICAgbnZpbS5pbnB1dF9tb3VzZShidXR0b24sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFjdGlvbixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbW9kaWZpZXJzLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnZXRHcmlkSWQoKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeCk7XG4gICAgICAgICAgICBrZXlIYW5kbGVyLmZvY3VzKCk7XG4gICAgICAgIH1cbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJtb3VzZWRvd25cIiwgZSA9PiB7XG4gICAgICAgICAgICBvbk1vdXNlKGUsIFwicHJlc3NcIik7XG4gICAgICAgIH0pO1xuICAgICAgICB3aW5kb3cuYWRkRXZlbnRMaXN0ZW5lcihcIm1vdXNldXBcIiwgZSA9PiB7XG4gICAgICAgICAgICBvbk1vdXNlKGUsIFwicmVsZWFzZVwiKTtcbiAgICAgICAgfSk7XG4gICAgICAgIC8vIFNlbGVuaXVtIGRvZXNuJ3QgbGV0IHlvdSBzaW11bGF0ZSBtb3VzZSB3aGVlbCBldmVudHMgOihcbiAgICAgICAgLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJ3aGVlbFwiLCBldnQgPT4ge1xuICAgICAgICAgICAgaWYgKE1hdGguYWJzKGV2dC5kZWx0YVkpID49IE1hdGguYWJzKGV2dC5kZWx0YVgpKSB7XG4gICAgICAgICAgICAgICAgb25Nb3VzZShldnQsIGV2dC5kZWx0YVkgPCAwID8gXCJ1cFwiIDogXCJkb3duXCIpO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgICBvbk1vdXNlKGV2dCwgZXZ0LmRlbHRhWCA8IDAgPyBcInJpZ2h0XCIgOiBcImxlZnRcIik7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgICAvLyBMZXQgdXNlcnMga25vdyB3aGVuIHRoZXkgZm9jdXMvdW5mb2N1cyB0aGUgZnJhbWVcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJmb2N1c1wiLCAoKSA9PiB7XG4gICAgICAgICAgICBkb2N1bWVudC5kb2N1bWVudEVsZW1lbnQuc3R5bGUub3BhY2l0eSA9IFwiMVwiO1xuICAgICAgICAgICAga2V5SGFuZGxlci5mb2N1cygpO1xuICAgICAgICAgICAgbnZpbS5jb21tYW5kKFwiZG9hdXRvY21kIEZvY3VzR2FpbmVkXCIpO1xuICAgICAgICB9KTtcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJibHVyXCIsICgpID0+IHtcbiAgICAgICAgICAgIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudC5zdHlsZS5vcGFjaXR5ID0gXCIwLjVcIjtcbiAgICAgICAgICAgIG52aW0uY29tbWFuZChcImRvYXV0b2NtZCBGb2N1c0xvc3RcIik7XG4gICAgICAgIH0pO1xuICAgICAgICBrZXlIYW5kbGVyLmZvY3VzKCk7XG4gICAgICAgIHJldHVybiBuZXcgUHJvbWlzZSAoKHJlc29sdmUsIHJlamVjdCkgPT4gc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgICAgICBrZXlIYW5kbGVyLmZvY3VzKCk7XG4gICAgICAgICAgICB3cml0ZUZpbGVQcm9taXNlLnRoZW4oKCkgPT4gcmVzb2x2ZShwYWdlKSk7XG4gICAgICAgICAgICAvLyBUbyBoYXJkIHRvIHRlc3QgKHdlJ2QgbmVlZCB0byBmaW5kIGEgd2F5IHRvIG1ha2UgbmVvdmltIGZhaWxcbiAgICAgICAgICAgIC8vIHRvIHdyaXRlIHRoZSBmaWxlLCB3aGljaCByZXF1aXJlcyB0b28gbWFueSBvcy1kZXBlbmRlbnQgc2lkZVxuICAgICAgICAgICAgLy8gZWZmZWN0cyksIHNvIGRvbid0IGluc3RydW1lbnQuXG4gICAgICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICAgICAgd3JpdGVGaWxlUHJvbWlzZS5jYXRjaCgoKSA9PiByZWplY3QoKSk7XG4gICAgICAgIH0sIDEwKSk7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgICBjb25zb2xlLmVycm9yKGUpO1xuICAgICAgICBwYWdlLmtpbGxFZGl0b3IoKTtcbiAgICAgICAgdGhyb3cgZTtcbiAgICB9XG59XG4iLCJpbXBvcnQgeyBFdmVudEVtaXR0ZXIgICAgfSBmcm9tIFwiLi9FdmVudEVtaXR0ZXJcIjtcbmltcG9ydCB7IEZpcmVudmltRWxlbWVudCB9IGZyb20gXCIuL0ZpcmVudmltRWxlbWVudFwiO1xuaW1wb3J0IHsgZXhlY3V0ZUluUGFnZSAgIH0gZnJvbSBcIi4vdXRpbHMvdXRpbHNcIjtcbmltcG9ydCB7IGdldENvbmYgICAgICAgICB9IGZyb20gXCIuL3V0aWxzL2NvbmZpZ3VyYXRpb25cIjtcbmltcG9ydCB7IGtleXNUb0V2ZW50cyAgICB9IGZyb20gXCIuL3V0aWxzL2tleXNcIjtcblxuLy8gVGhpcyBtb2R1bGUgaXMgbG9hZGVkIGluIGJvdGggdGhlIGJyb3dzZXIncyBjb250ZW50IHNjcmlwdCwgdGhlIGJyb3dzZXInc1xuLy8gZnJhbWUgc2NyaXB0IGFuZCB0aHVuZGVyYmlyZCdzIGNvbXBvc2Ugc2NyaXB0LlxuLy8gQXMgc3VjaCwgaXQgc2hvdWxkIG5vdCBoYXZlIGFueSBzaWRlIGVmZmVjdHMuXG5cbmludGVyZmFjZSBJR2xvYmFsU3RhdGUge1xuICAgIGRpc2FibGVkOiBib29sZWFuIHwgUHJvbWlzZTxib29sZWFuPjtcbiAgICBsYXN0Rm9jdXNlZENvbnRlbnRTY3JpcHQ6IG51bWJlcjtcbiAgICBmaXJlbnZpbUVsZW1zOiBNYXA8bnVtYmVyLCBGaXJlbnZpbUVsZW1lbnQ+O1xuICAgIGZyYW1lSWRSZXNvbHZlOiAoXzogbnVtYmVyKSA9PiB2b2lkO1xuICAgIG52aW1pZnk6IChldnQ6IEZvY3VzRXZlbnQpID0+IHZvaWQ7XG59XG5cbi8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vL1xuLy8gRnVuY3Rpb25zIHJ1bm5pbmcgaW4gdGhlIGNvbnRlbnQgc2NyaXB0IC8vXG4vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy9cblxuZnVuY3Rpb24gX2ZvY3VzSW5wdXQoZ2xvYmFsOiBJR2xvYmFsU3RhdGUsIGZpcmVudmltOiBGaXJlbnZpbUVsZW1lbnQsIGFkZExpc3RlbmVyOiBib29sZWFuKSB7XG4gICAgaWYgKGFkZExpc3RlbmVyKSB7XG4gICAgICAgIC8vIE9ubHkgcmUtYWRkIGV2ZW50IGxpc3RlbmVyIGlmIGlucHV0J3Mgc2VsZWN0b3IgbWF0Y2hlcyB0aGUgb25lc1xuICAgICAgICAvLyB0aGF0IHNob3VsZCBiZSBhdXRvbnZpbWlmaWVkXG4gICAgICAgIGNvbnN0IGNvbmYgPSBnZXRDb25mKCk7XG4gICAgICAgIGlmIChjb25mLnNlbGVjdG9yICYmIGNvbmYuc2VsZWN0b3IgIT09IFwiXCIpIHtcbiAgICAgICAgICAgIGNvbnN0IGVsZW1zID0gQXJyYXkuZnJvbShkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKGNvbmYuc2VsZWN0b3IpKTtcbiAgICAgICAgICAgIGFkZExpc3RlbmVyID0gZWxlbXMuaW5jbHVkZXMoZmlyZW52aW0uZ2V0RWxlbWVudCgpKTtcbiAgICAgICAgfVxuICAgIH1cbiAgICBmaXJlbnZpbS5mb2N1c09yaWdpbmFsRWxlbWVudChhZGRMaXN0ZW5lcik7XG59XG5cbmZ1bmN0aW9uIGdldEZvY3VzZWRFbGVtZW50IChmaXJlbnZpbUVsZW1zOiBNYXA8bnVtYmVyLCBGaXJlbnZpbUVsZW1lbnQ+KSB7XG4gICAgcmV0dXJuIEFycmF5XG4gICAgICAgIC5mcm9tKGZpcmVudmltRWxlbXMudmFsdWVzKCkpXG4gICAgICAgIC5maW5kKGluc3RhbmNlID0+IGluc3RhbmNlLmlzRm9jdXNlZCgpKTtcbn1cblxuLy8gVGFiIGZ1bmN0aW9ucyBhcmUgZnVuY3Rpb25zIGFsbCBjb250ZW50IHNjcmlwdHMgc2hvdWxkIHJlYWN0IHRvXG5leHBvcnQgZnVuY3Rpb24gZ2V0VGFiRnVuY3Rpb25zKGdsb2JhbDogSUdsb2JhbFN0YXRlKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgICAgZ2V0QWN0aXZlSW5zdGFuY2VDb3VudCA6ICgpID0+IGdsb2JhbC5maXJlbnZpbUVsZW1zLnNpemUsXG4gICAgICAgIHJlZ2lzdGVyTmV3RnJhbWVJZDogKGZyYW1lSWQ6IG51bWJlcikgPT4ge1xuICAgICAgICAgICAgZ2xvYmFsLmZyYW1lSWRSZXNvbHZlKGZyYW1lSWQpO1xuICAgICAgICB9LFxuICAgICAgICBzZXREaXNhYmxlZDogKGRpc2FibGVkOiBib29sZWFuKSA9PiB7XG4gICAgICAgICAgICBnbG9iYWwuZGlzYWJsZWQgPSBkaXNhYmxlZDtcbiAgICAgICAgfSxcbiAgICAgICAgc2V0TGFzdEZvY3VzZWRDb250ZW50U2NyaXB0OiAoZnJhbWVJZDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICBnbG9iYWwubGFzdEZvY3VzZWRDb250ZW50U2NyaXB0ID0gZnJhbWVJZDtcbiAgICAgICAgfVxuICAgIH07XG59XG5cbmZ1bmN0aW9uIGlzVmlzaWJsZShlOiBIVE1MRWxlbWVudCkge1xuICAgIGNvbnN0IHJlY3QgPSBlLmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpO1xuICAgIGNvbnN0IHZpZXdIZWlnaHQgPSBNYXRoLm1heChkb2N1bWVudC5kb2N1bWVudEVsZW1lbnQuY2xpZW50SGVpZ2h0LCB3aW5kb3cuaW5uZXJIZWlnaHQpO1xuICAgIHJldHVybiAhKHJlY3QuYm90dG9tIDwgMCB8fCByZWN0LnRvcCAtIHZpZXdIZWlnaHQgPj0gMCk7XG59XG5cbi8vIEFjdGl2ZUNvbnRlbnQgZnVuY3Rpb25zIGFyZSBmdW5jdGlvbnMgb25seSB0aGUgYWN0aXZlIGNvbnRlbnQgc2NyaXB0IHNob3VsZCByZWFjdCB0b1xuZXhwb3J0IGZ1bmN0aW9uIGdldEFjdGl2ZUNvbnRlbnRGdW5jdGlvbnMoZ2xvYmFsOiBJR2xvYmFsU3RhdGUpIHtcbiAgICByZXR1cm4ge1xuICAgICAgICBmb3JjZU52aW1pZnk6ICgpID0+IHtcbiAgICAgICAgICAgIGxldCBlbGVtID0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudDtcbiAgICAgICAgICAgIGNvbnN0IGlzTnVsbCA9IGVsZW0gPT09IG51bGwgfHwgZWxlbSA9PT0gdW5kZWZpbmVkO1xuICAgICAgICAgICAgY29uc3QgcGFnZU5vdEVkaXRhYmxlID0gZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmNvbnRlbnRFZGl0YWJsZSAhPT0gXCJ0cnVlXCI7XG4gICAgICAgICAgICBjb25zdCBib2R5Tm90RWRpdGFibGUgPSAoZG9jdW1lbnQuYm9keS5jb250ZW50RWRpdGFibGUgPT09IFwiZmFsc2VcIlxuICAgICAgICAgICAgICAgICAgICAgICAgfHwgKGRvY3VtZW50LmJvZHkuY29udGVudEVkaXRhYmxlID09PSBcImluaGVyaXRcIlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICYmIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudC5jb250ZW50RWRpdGFibGUgIT09IFwidHJ1ZVwiKSk7XG4gICAgICAgICAgICBpZiAoaXNOdWxsXG4gICAgICAgICAgICAgICAgfHwgKGVsZW0gPT09IGRvY3VtZW50LmRvY3VtZW50RWxlbWVudCAmJiBwYWdlTm90RWRpdGFibGUpXG4gICAgICAgICAgICAgICAgfHwgKGVsZW0gPT09IGRvY3VtZW50LmJvZHkgJiYgYm9keU5vdEVkaXRhYmxlKSkge1xuICAgICAgICAgICAgICAgIGVsZW0gPSBBcnJheS5mcm9tKGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKFwidGV4dGFyZWFcIikpXG4gICAgICAgICAgICAgICAgICAgIC5maW5kKGlzVmlzaWJsZSk7XG4gICAgICAgICAgICAgICAgaWYgKCFlbGVtKSB7XG4gICAgICAgICAgICAgICAgICAgIGVsZW0gPSBBcnJheS5mcm9tKGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKFwiaW5wdXRcIikpXG4gICAgICAgICAgICAgICAgICAgICAgICAuZmluZChlID0+IGUudHlwZSA9PT0gXCJ0ZXh0XCIgJiYgaXNWaXNpYmxlKGUpKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgaWYgKCFlbGVtKSB7XG4gICAgICAgICAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBnbG9iYWwubnZpbWlmeSh7IHRhcmdldDogZWxlbSB9IGFzIGFueSk7XG4gICAgICAgIH0sXG4gICAgICAgIHNlbmRLZXk6IChrZXk6IHN0cmluZykgPT4ge1xuICAgICAgICAgICAgY29uc3QgZmlyZW52aW0gPSBnZXRGb2N1c2VkRWxlbWVudChnbG9iYWwuZmlyZW52aW1FbGVtcyk7XG4gICAgICAgICAgICBpZiAoZmlyZW52aW0gIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgICAgIGZpcmVudmltLnNlbmRLZXkoa2V5KTtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgLy8gSXQncyBpbXBvcnRhbnQgdG8gdGhyb3cgdGhpcyBlcnJvciBhcyB0aGUgYmFja2dyb3VuZCBzY3JpcHRcbiAgICAgICAgICAgICAgICAvLyB3aWxsIGV4ZWN1dGUgYSBmYWxsYmFja1xuICAgICAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcihcIk5vIGZpcmVudmltIGZyYW1lIHNlbGVjdGVkXCIpO1xuICAgICAgICAgICAgfVxuICAgICAgICB9LFxuICAgIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXROZW92aW1GcmFtZUZ1bmN0aW9ucyhnbG9iYWw6IElHbG9iYWxTdGF0ZSkge1xuICAgIHJldHVybiB7XG4gICAgICAgIGV2YWxJblBhZ2U6IChfOiBudW1iZXIsIGpzOiBzdHJpbmcpID0+IGV4ZWN1dGVJblBhZ2UoanMpLFxuICAgICAgICBmb2N1c0lucHV0OiAoZnJhbWVJZDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICBsZXQgZmlyZW52aW1FbGVtZW50O1xuICAgICAgICAgICAgaWYgKGZyYW1lSWQgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgICAgIGZpcmVudmltRWxlbWVudCA9IGdldEZvY3VzZWRFbGVtZW50KGdsb2JhbC5maXJlbnZpbUVsZW1zKTtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgZmlyZW52aW1FbGVtZW50ID0gZ2xvYmFsLmZpcmVudmltRWxlbXMuZ2V0KGZyYW1lSWQpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgX2ZvY3VzSW5wdXQoZ2xvYmFsLCBmaXJlbnZpbUVsZW1lbnQsIHRydWUpO1xuICAgICAgICB9LFxuICAgICAgICBmb2N1c1BhZ2U6IChmcmFtZUlkOiBudW1iZXIpID0+IHtcbiAgICAgICAgICAgIGNvbnN0IGZpcmVudmltRWxlbWVudCA9IGdsb2JhbC5maXJlbnZpbUVsZW1zLmdldChmcmFtZUlkKTtcbiAgICAgICAgICAgIGZpcmVudmltRWxlbWVudC5jbGVhckZvY3VzTGlzdGVuZXJzKCk7XG4gICAgICAgICAgICAoZG9jdW1lbnQuYWN0aXZlRWxlbWVudCBhcyBhbnkpLmJsdXIoKTtcbiAgICAgICAgICAgIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudC5mb2N1cygpO1xuICAgICAgICB9LFxuICAgICAgICBnZXRFZGl0b3JJbmZvOiAoZnJhbWVJZDogbnVtYmVyKSA9PiBnbG9iYWxcbiAgICAgICAgICAgIC5maXJlbnZpbUVsZW1zXG4gICAgICAgICAgICAuZ2V0KGZyYW1lSWQpXG4gICAgICAgICAgICAuZ2V0QnVmZmVySW5mbygpLFxuICAgICAgICBnZXRFbGVtZW50Q29udGVudDogKGZyYW1lSWQ6IG51bWJlcikgPT4gZ2xvYmFsXG4gICAgICAgICAgICAuZmlyZW52aW1FbGVtc1xuICAgICAgICAgICAgLmdldChmcmFtZUlkKVxuICAgICAgICAgICAgLmdldFBhZ2VFbGVtZW50Q29udGVudCgpLFxuICAgICAgICBoaWRlRWRpdG9yOiAoZnJhbWVJZDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICBjb25zdCBmaXJlbnZpbSA9IGdsb2JhbC5maXJlbnZpbUVsZW1zLmdldChmcmFtZUlkKTtcbiAgICAgICAgICAgIGZpcmVudmltLmhpZGUoKTtcbiAgICAgICAgICAgIF9mb2N1c0lucHV0KGdsb2JhbCwgZmlyZW52aW0sIHRydWUpO1xuICAgICAgICB9LFxuICAgICAgICBraWxsRWRpdG9yOiAoZnJhbWVJZDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICBjb25zdCBmaXJlbnZpbSA9IGdsb2JhbC5maXJlbnZpbUVsZW1zLmdldChmcmFtZUlkKTtcbiAgICAgICAgICAgIGNvbnN0IGlzRm9jdXNlZCA9IGZpcmVudmltLmlzRm9jdXNlZCgpO1xuICAgICAgICAgICAgZmlyZW52aW0uZGV0YWNoRnJvbVBhZ2UoKTtcbiAgICAgICAgICAgIGNvbnN0IGNvbmYgPSBnZXRDb25mKCk7XG4gICAgICAgICAgICBpZiAoaXNGb2N1c2VkKSB7XG4gICAgICAgICAgICAgICAgX2ZvY3VzSW5wdXQoZ2xvYmFsLCBmaXJlbnZpbSwgY29uZi50YWtlb3ZlciAhPT0gXCJvbmNlXCIpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgZ2xvYmFsLmZpcmVudmltRWxlbXMuZGVsZXRlKGZyYW1lSWQpO1xuICAgICAgICB9LFxuICAgICAgICBwcmVzc0tleXM6IChmcmFtZUlkOiBudW1iZXIsIGtleXM6IHN0cmluZ1tdKSA9PiB7XG4gICAgICAgICAgICBnbG9iYWwuZmlyZW52aW1FbGVtcy5nZXQoZnJhbWVJZCkucHJlc3NLZXlzKGtleXNUb0V2ZW50cyhrZXlzKSk7XG4gICAgICAgIH0sXG4gICAgICAgIHJlc2l6ZUVkaXRvcjogKGZyYW1lSWQ6IG51bWJlciwgd2lkdGg6IG51bWJlciwgaGVpZ2h0OiBudW1iZXIpID0+IHtcbiAgICAgICAgICAgIGNvbnN0IGVsZW0gPSBnbG9iYWwuZmlyZW52aW1FbGVtcy5nZXQoZnJhbWVJZCk7XG4gICAgICAgICAgICBlbGVtLnJlc2l6ZVRvKHdpZHRoLCBoZWlnaHQsIHRydWUpO1xuICAgICAgICAgICAgZWxlbS5wdXRFZGl0b3JDbG9zZVRvSW5wdXRPcmlnaW5BZnRlclJlc2l6ZUZyb21GcmFtZSgpO1xuICAgICAgICB9LFxuICAgICAgICBzZXRFbGVtZW50Q29udGVudDogKGZyYW1lSWQ6IG51bWJlciwgdGV4dDogc3RyaW5nKSA9PiB7XG4gICAgICAgICAgICByZXR1cm4gZ2xvYmFsLmZpcmVudmltRWxlbXMuZ2V0KGZyYW1lSWQpLnNldFBhZ2VFbGVtZW50Q29udGVudCh0ZXh0KTtcbiAgICAgICAgfSxcbiAgICAgICAgc2V0RWxlbWVudEN1cnNvcjogKGZyYW1lSWQ6IG51bWJlciwgbGluZTogbnVtYmVyLCBjb2x1bW46IG51bWJlcikgPT4ge1xuICAgICAgICAgICAgcmV0dXJuIGdsb2JhbC5maXJlbnZpbUVsZW1zLmdldChmcmFtZUlkKS5zZXRQYWdlRWxlbWVudEN1cnNvcihsaW5lLCBjb2x1bW4pO1xuICAgICAgICB9LFxuICAgIH07XG59XG5cbi8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vL1xuLy8gRGVmaW5pdGlvbiBvZiBhIHByb3h5IHR5cGUgdGhhdCBsZXRzIHRoZSBmcmFtZSBzY3JpcHQgdHJhbnNwYXJlbnRseSBjYWxsIC8vXG4vLyB0aGUgY29udGVudCBzY3JpcHQncyBmdW5jdGlvbnMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbi8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vL1xuO1xuXG4vLyBUaGUgcHJveHkgYXV0b21hdGljYWxseSBhcHBlbmRzIHRoZSBmcmFtZUlkIHRvIHRoZSByZXF1ZXN0LCBzbyB3ZSBoaWRlIHRoYXQgZnJvbSB1c2Vyc1xudHlwZSBBcmd1bWVudHNUeXBlPFQ+ID0gVCBleHRlbmRzICh4OiBhbnksIC4uLmFyZ3M6IGluZmVyIFUpID0+IGFueSA/IFU6IG5ldmVyO1xudHlwZSBQcm9taXNpZnk8VD4gPSBUIGV4dGVuZHMgUHJvbWlzZTxhbnk+ID8gVCA6IFByb21pc2U8VD47XG5cbnR5cGUgZnQgPSBSZXR1cm5UeXBlPHR5cGVvZiBnZXROZW92aW1GcmFtZUZ1bmN0aW9ucz5cblxudHlwZSBQYWdlRXZlbnRzID0gXCJyZXNpemVcIiB8IFwiZnJhbWVfc2VuZEtleVwiIHwgXCJnZXRfYnVmX2NvbnRlbnRcIiB8IFwicGF1c2Vfa2V5aGFuZGxlclwiO1xudHlwZSBQYWdlSGFuZGxlcnMgPSAoYXJnczogYW55W10pID0+IHZvaWQ7XG5leHBvcnQgY2xhc3MgUGFnZUV2ZW50RW1pdHRlciBleHRlbmRzIEV2ZW50RW1pdHRlcjxQYWdlRXZlbnRzLCBQYWdlSGFuZGxlcnM+IHtcbiAgICBjb25zdHJ1Y3RvcigpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgICAgYnJvd3Nlci5ydW50aW1lLm9uTWVzc2FnZS5hZGRMaXN0ZW5lcigocmVxdWVzdDogYW55LCBfc2VuZGVyOiBhbnksIF9zZW5kUmVzcG9uc2U6IGFueSkgPT4ge1xuICAgICAgICAgICAgc3dpdGNoIChyZXF1ZXN0LmZ1bmNOYW1lWzBdKSB7XG4gICAgICAgICAgICAgICAgY2FzZSBcInBhdXNlX2tleWhhbmRsZXJcIjpcbiAgICAgICAgICAgICAgICBjYXNlIFwiZnJhbWVfc2VuZEtleVwiOlxuICAgICAgICAgICAgICAgIGNhc2UgXCJyZXNpemVcIjpcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5lbWl0KHJlcXVlc3QuZnVuY05hbWVbMF0sIHJlcXVlc3QuYXJncyk7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJnZXRfYnVmX2NvbnRlbnRcIjpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIG5ldyBQcm9taXNlKHJlc29sdmUgPT4gdGhpcy5lbWl0KHJlcXVlc3QuZnVuY05hbWVbMF0sIHJlc29sdmUpKTtcbiAgICAgICAgICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgICAgICAgICAgICBjb25zb2xlLmVycm9yKFwiVW5oYW5kbGVkIHBhZ2UgcmVxdWVzdDpcIiwgcmVxdWVzdCk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgIH1cbn1cblxuZXhwb3J0IHR5cGUgUGFnZVR5cGUgPSBQYWdlRXZlbnRFbWl0dGVyICYge1xuICAgIFtrIGluIGtleW9mIGZ0XTogKC4uLmFyZ3M6IEFyZ3VtZW50c1R5cGU8ZnRba10+KSA9PiBQcm9taXNpZnk8UmV0dXJuVHlwZTxmdFtrXT4+O1xufTtcblxuZXhwb3J0IGZ1bmN0aW9uIGdldFBhZ2VQcm94eSAoZnJhbWVJZDogbnVtYmVyKSB7XG4gICAgY29uc3QgcGFnZSA9IG5ldyBQYWdlRXZlbnRFbWl0dGVyKCk7XG5cbiAgICBsZXQgZnVuY05hbWU6IGtleW9mIFBhZ2VUeXBlO1xuICAgIGZvciAoZnVuY05hbWUgaW4gZ2V0TmVvdmltRnJhbWVGdW5jdGlvbnMoe30gYXMgYW55KSkge1xuICAgICAgICAvLyBXZSBuZWVkIHRvIGRlY2xhcmUgZnVuYyBoZXJlIGJlY2F1c2UgZnVuY05hbWUgaXMgYSBnbG9iYWwgYW5kIHdvdWxkIG5vdFxuICAgICAgICAvLyBiZSBjYXB0dXJlZCBpbiB0aGUgY2xvc3VyZSBvdGhlcndpc2VcbiAgICAgICAgY29uc3QgZnVuYyA9IGZ1bmNOYW1lO1xuICAgICAgICAocGFnZSBhcyBhbnkpW2Z1bmNdID0gKCguLi5hcnI6IGFueVtdKSA9PiB7XG4gICAgICAgICAgICByZXR1cm4gYnJvd3Nlci5ydW50aW1lLnNlbmRNZXNzYWdlKHtcbiAgICAgICAgICAgICAgICBhcmdzOiB7XG4gICAgICAgICAgICAgICAgICAgIGFyZ3M6IFtmcmFtZUlkXS5jb25jYXQoYXJyKSxcbiAgICAgICAgICAgICAgICAgICAgZnVuY05hbWU6IFtmdW5jXSxcbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIGZ1bmNOYW1lOiBbXCJtZXNzYWdlUGFnZVwiXSxcbiAgICAgICAgICAgIH0pO1xuICAgICAgICB9KTtcbiAgICB9XG4gICAgcmV0dXJuIHBhZ2UgYXMgUGFnZVR5cGU7XG59O1xuIiwiaW1wb3J0IHsgcGFyc2VHdWlmb250LCB0b0hleENzcyB9IGZyb20gXCIuL3V0aWxzL3V0aWxzXCI7XG5pbXBvcnQgeyBOdmltTW9kZSwgY29uZlJlYWR5LCBnZXRHbG9iYWxDb25mIH0gZnJvbSBcIi4vdXRpbHMvY29uZmlndXJhdGlvblwiO1xuaW1wb3J0IHsgRXZlbnRFbWl0dGVyIH0gZnJvbSBcIi4vRXZlbnRFbWl0dGVyXCI7XG5cbnR5cGUgUmVzaXplRXZlbnQgPSB7Z3JpZDogbnVtYmVyLCB3aWR0aDogbnVtYmVyLCBoZWlnaHQ6IG51bWJlcn07XG50eXBlIEZyYW1lUmVzaXplRXZlbnQgPSB7d2lkdGg6IG51bWJlciwgaGVpZ2h0OiBudW1iZXJ9XG50eXBlIE1vZGVDaGFuZ2VFdmVudCA9IE52aW1Nb2RlO1xudHlwZSBSZXNpemVFdmVudEhhbmRsZXIgPSAoZTogUmVzaXplRXZlbnQgfCBGcmFtZVJlc2l6ZUV2ZW50IHwgTW9kZUNoYW5nZUV2ZW50KSA9PiB2b2lkO1xudHlwZSBFdmVudEtpbmQgPSBcInJlc2l6ZVwiIHwgXCJmcmFtZVJlc2l6ZVwiIHwgXCJtb2RlQ2hhbmdlXCI7XG5leHBvcnQgY29uc3QgZXZlbnRzID0gbmV3IEV2ZW50RW1pdHRlcjxFdmVudEtpbmQsIFJlc2l6ZUV2ZW50SGFuZGxlcj4oKTtcblxubGV0IGdseXBoQ2FjaGUgOiBhbnkgPSB7fTtcbmZ1bmN0aW9uIHdpcGVHbHlwaENhY2hlKCkge1xuICAgIGdseXBoQ2FjaGUgPSB7fTtcbn1cblxubGV0IG1ldHJpY3NJbnZhbGlkYXRlZCA9IGZhbHNlO1xuXG5mdW5jdGlvbiBpbnZhbGlkYXRlTWV0cmljcygpIHtcbiAgICBtZXRyaWNzSW52YWxpZGF0ZWQgPSB0cnVlO1xuICAgIHdpcGVHbHlwaENhY2hlKCk7XG59XG5cbmxldCBmb250U3RyaW5nIDogc3RyaW5nO1xuZnVuY3Rpb24gc2V0Rm9udFN0cmluZyAoc3RhdGU6IFN0YXRlLCBzIDogc3RyaW5nKSB7XG4gICAgZm9udFN0cmluZyA9IHM7XG4gICAgc3RhdGUuY29udGV4dC5mb250ID0gZm9udFN0cmluZztcbiAgICBpbnZhbGlkYXRlTWV0cmljcygpO1xufVxuZnVuY3Rpb24gZ2x5cGhJZChjaGFyOiBzdHJpbmcsIGhpZ2g6IG51bWJlcikge1xuICAgIHJldHVybiBjaGFyICsgXCItXCIgKyBoaWdoO1xufVxuZnVuY3Rpb24gc2V0Q2FudmFzRGltZW5zaW9ucyAoY3ZzOiBIVE1MQ2FudmFzRWxlbWVudCwgd2lkdGg6IG51bWJlciwgaGVpZ2h0OiBudW1iZXIpIHtcbiAgICBjdnMud2lkdGggPSB3aWR0aCAqIHdpbmRvdy5kZXZpY2VQaXhlbFJhdGlvO1xuICAgIGN2cy5oZWlnaHQgPSBoZWlnaHQgKiB3aW5kb3cuZGV2aWNlUGl4ZWxSYXRpbztcbiAgICBjdnMuc3R5bGUud2lkdGggPSBgJHt3aWR0aH1weGA7XG4gICAgY3ZzLnN0eWxlLmhlaWdodCA9IGAke2hlaWdodH1weGA7XG59XG5mdW5jdGlvbiBtYWtlRm9udFN0cmluZyhmb250U2l6ZTogc3RyaW5nLCBmb250RmFtaWx5OiBzdHJpbmcpIHtcbiAgICByZXR1cm4gYCR7Zm9udFNpemV9ICR7Zm9udEZhbWlseX1gO1xufVxubGV0IGRlZmF1bHRGb250U2l6ZSA9IFwiXCI7XG5jb25zdCBkZWZhdWx0Rm9udEZhbWlseSA9IFwibW9ub3NwYWNlXCI7XG5sZXQgZGVmYXVsdEZvbnRTdHJpbmcgPSBcIlwiO1xuZXhwb3J0IGZ1bmN0aW9uIHNldENhbnZhcyAoY3ZzOiBIVE1MQ2FudmFzRWxlbWVudCkge1xuICAgIGNvbnN0IHN0YXRlID0gZ2xvYmFsU3RhdGU7XG4gICAgc3RhdGUuY2FudmFzID0gY3ZzO1xuICAgIHNldENhbnZhc0RpbWVuc2lvbnMoc3RhdGUuY2FudmFzLFxuICAgICAgICAgICAgICAgICAgICAgICAgd2luZG93LmlubmVyV2lkdGgsXG4gICAgICAgICAgICAgICAgICAgICAgICB3aW5kb3cuaW5uZXJIZWlnaHQpO1xuICAgIGRlZmF1bHRGb250U2l6ZSA9IHdpbmRvdy5nZXRDb21wdXRlZFN0eWxlKHN0YXRlLmNhbnZhcykuZm9udFNpemU7XG4gICAgZGVmYXVsdEZvbnRTdHJpbmcgPSBtYWtlRm9udFN0cmluZyhkZWZhdWx0Rm9udFNpemUsIGRlZmF1bHRGb250RmFtaWx5KTtcbiAgICBzdGF0ZS5jb250ZXh0ID0gc3RhdGUuY2FudmFzLmdldENvbnRleHQoXCIyZFwiLCB7IFwiYWxwaGFcIjogZmFsc2UgfSk7XG4gICAgc2V0Rm9udFN0cmluZyhzdGF0ZSwgZGVmYXVsdEZvbnRTdHJpbmcpO1xufVxuXG4vLyBXZSBmaXJzdCBkZWZpbmUgaGlnaGxpZ2h0IGluZm9ybWF0aW9uLlxuY29uc3QgZGVmYXVsdEJhY2tncm91bmQgPSBcIiNGRkZGRkZcIjtcbmNvbnN0IGRlZmF1bHRGb3JlZ3JvdW5kID0gXCIjMDAwMDAwXCI7XG50eXBlIEhpZ2hsaWdodEluZm8gPSB7XG4gICAgYmFja2dyb3VuZDogc3RyaW5nLFxuICAgIGJvbGQ6IGJvb2xlYW4sXG4gICAgYmxlbmQ6IG51bWJlcixcbiAgICBmb3JlZ3JvdW5kOiBzdHJpbmcsXG4gICAgaXRhbGljOiBib29sZWFuLFxuICAgIHJldmVyc2U6IGJvb2xlYW4sXG4gICAgc3BlY2lhbDogc3RyaW5nLFxuICAgIHN0cmlrZXRocm91Z2g6IGJvb2xlYW4sXG4gICAgdW5kZXJjdXJsOiBib29sZWFuLFxuICAgIHVuZGVybGluZTogYm9vbGVhblxufTtcblxuLy8gV2UgdGhlbiBoYXZlIGEgR3JpZFNpemUgdHlwZS4gV2UgbmVlZCB0aGlzIHR5cGUgaW4gb3JkZXIgdG8ga2VlcCB0cmFjayBvZlxuLy8gdGhlIHNpemUgb2YgZ3JpZHMuIFN0b3JpbmcgdGhpcyBpbmZvcm1hdGlvbiBoZXJlIGNhbiBhcHBlYXIgcmVkdW5kYW50IHNpbmNlXG4vLyB0aGUgZ3JpZHMgYXJlIHJlcHJlc2VudGVkIGFzIGFycmF5cyBhbmQgdGh1cyBoYXZlIGEgLmxlbmd0aCBhdHRyaWJ1dGUsIGJ1dFxuLy8gaXQncyBub3Q6IHN0b3JpbmcgZ3JpZCBzaXplIGluIGEgc2VwYXJhdGUgZGF0YXN0cnVjdHVyZSBhbGxvd3MgdXMgdG8gbmV2ZXJcbi8vIGhhdmUgdG8gc2hyaW5rIGFycmF5cywgYW5kIHRvIG5vdCBuZWVkIGFsbG9jYXRpb25zIGlmIGVubGFyZ2luZyBhbiBhcnJheVxuLy8gdGhhdCBoYXMgYmVlbiBzaHJpbmtlZC5cbnR5cGUgR3JpZERpbWVuc2lvbnMgPSB7XG4gICAgd2lkdGg6IG51bWJlcixcbiAgICBoZWlnaHQ6IG51bWJlcixcbn07XG5cbmVudW0gRGFtYWdlS2luZCB7XG4gICAgQ2VsbCxcbiAgICBSZXNpemUsXG4gICAgU2Nyb2xsLFxufVxuXG4vLyBVc2VkIHRvIHRyYWNrIHJlY3RhbmdsZXMgb2YgZGFtYWdlIGRvbmUgdG8gYSBncmlkIGFuZCBvbmx5IHJlcGFpbnQgdGhlXG4vLyBuZWNlc3NhcnkgYml0cy4gVGhlc2UgYXJlIGxvZ2ljIHBvc2l0aW9ucyAoaS5lLiBjZWxscykgLSBub3QgcGl4ZWxzLlxudHlwZSBDZWxsRGFtYWdlID0ge1xuICAgIGtpbmQ6IERhbWFnZUtpbmQsXG4gICAgLy8gVGhlIG51bWJlciBvZiByb3dzIHRoZSBkYW1hZ2Ugc3BhbnNcbiAgICBoOiBudW1iZXIsXG4gICAgLy8gVGhlIG51bWJlciBvZiBjb2x1bW5zIHRoZSBkYW1hZ2Ugc3BhbnNcbiAgICB3OiBudW1iZXIsXG4gICAgLy8gVGhlIGNvbHVtbiB0aGUgZGFtYWdlIGJlZ2lucyBhdFxuICAgIHg6IG51bWJlcixcbiAgICAvLyBUaGUgcm93IHRoZSBkYW1hZ2UgYmVnaW5zIGF0XG4gICAgeTogbnVtYmVyLFxufTtcblxudHlwZSBSZXNpemVEYW1hZ2UgPSB7XG4gICAga2luZDogRGFtYWdlS2luZCxcbiAgICAvLyBUaGUgbmV3IGhlaWdodCBvZiB0aGUgY2FudmFzXG4gICAgaDogbnVtYmVyLFxuICAgIC8vIFRoZSBuZXcgd2lkdGggb2YgdGhlIGNhbnZhc1xuICAgIHc6IG51bWJlcixcbiAgICAvLyBUaGUgcHJldmlvdXMgd2lkdGggb2YgdGhlIGNhbnZhc1xuICAgIHg6IG51bWJlcixcbiAgICAvLyBUaGUgcHJldmlvdXMgaGVpZ2h0IG9mIHRoZSBjYW52YXNcbiAgICB5OiBudW1iZXIsXG59O1xuXG50eXBlIFNjcm9sbERhbWFnZSA9IHtcbiAgICBraW5kOiBEYW1hZ2VLaW5kLFxuICAgIC8vIFRoZSBkaXJlY3Rpb24gb2YgdGhlIHNjcm9sbCwgLTEgbWVhbnMgdXAsIDEgbWVhbnMgZG93blxuICAgIGg6IG51bWJlcixcbiAgICAvLyBUaGUgbnVtYmVyIG9mIGxpbmVzIG9mIHRoZSBzY3JvbGwsIHBvc2l0aXZlIG51bWJlclxuICAgIHc6IG51bWJlcixcbiAgICAvLyBUaGUgdG9wIGxpbmUgb2YgdGhlIHNjcm9sbGluZyByZWdpb24sIGluIGNlbGxzXG4gICAgeDogbnVtYmVyLFxuICAgIC8vIFRoZSBib3R0b20gbGluZSBvZiB0aGUgc2Nyb2xsaW5nIHJlZ2lvbiwgaW4gY2VsbHNcbiAgICB5OiBudW1iZXIsXG59O1xuXG50eXBlIEdyaWREYW1hZ2UgPSBDZWxsRGFtYWdlICYgUmVzaXplRGFtYWdlICYgU2Nyb2xsRGFtYWdlO1xuXG4vLyBUaGUgc3RhdGUgb2YgdGhlIGNvbW1hbmRsaW5lLiBJdCBpcyBvbmx5IHVzZWQgd2hlbiB1c2luZyBuZW92aW0ncyBleHRlcm5hbFxuLy8gY29tbWFuZGxpbmUuXG50eXBlIENvbW1hbmRMaW5lU3RhdGUgPSB7XG4gICAgc3RhdHVzOiBcImhpZGRlblwiIHwgXCJzaG93blwiLFxuICAgIGNvbnRlbnQ6IFthbnksIHN0cmluZ11bXSxcbiAgICBwb3M6IG51bWJlcixcbiAgICBmaXJzdGM6IHN0cmluZyxcbiAgICBwcm9tcHQ6IHN0cmluZyxcbiAgICBpbmRlbnQ6IG51bWJlcixcbiAgICBsZXZlbDogbnVtYmVyXG59O1xuXG50eXBlIEN1cnNvciA9IHtcbiAgICBjdXJyZW50R3JpZDogbnVtYmVyLFxuICAgIGRpc3BsYXk6IGJvb2xlYW4sXG4gICAgeDogbnVtYmVyLFxuICAgIHk6IG51bWJlcixcbiAgICBsYXN0TW92ZTogRE9NSGlnaFJlc1RpbWVTdGFtcCxcbiAgICBtb3ZlZFNpbmNlTGFzdE1lc3NhZ2U6IGJvb2xlYW4sXG59O1xuXG50eXBlIE1vZGUgPSB7XG4gICAgY3VycmVudDogbnVtYmVyLFxuICAgIHN0eWxlRW5hYmxlZDogYm9vbGVhbixcbiAgICBtb2RlSW5mbzoge1xuICAgICAgICBhdHRyX2lkOiBudW1iZXIsXG4gICAgICAgIGF0dHJfaWRfbG06IG51bWJlcixcbiAgICAgICAgYmxpbmtvZmY6IG51bWJlcixcbiAgICAgICAgYmxpbmtvbjogbnVtYmVyLFxuICAgICAgICBibGlua3dhaXQ6IG51bWJlcixcbiAgICAgICAgY2VsbF9wZXJjZW50YWdlOiBudW1iZXIsXG4gICAgICAgIGN1cnNvcl9zaGFwZTogc3RyaW5nLFxuICAgICAgICBuYW1lOiBOdmltTW9kZSxcbiAgICB9W10sXG59O1xuXG50eXBlIE1lc3NhZ2UgPSBbbnVtYmVyLCBzdHJpbmddW107XG50eXBlIE1lc3NhZ2VzUG9zaXRpb24gPSB7IHg6IG51bWJlciwgeTogbnVtYmVyIH07XG5cbnR5cGUgU3RhdGUgPSB7XG4gICAgY2FudmFzOiBIVE1MQ2FudmFzRWxlbWVudCxcbiAgICBjb250ZXh0OiBDYW52YXNSZW5kZXJpbmdDb250ZXh0MkQsXG4gICAgY29tbWFuZExpbmUgOiBDb21tYW5kTGluZVN0YXRlLFxuICAgIGN1cnNvcjogQ3Vyc29yLFxuICAgIGdyaWRDaGFyYWN0ZXJzOiBzdHJpbmdbXVtdW10sXG4gICAgZ3JpZERhbWFnZXM6IEdyaWREYW1hZ2VbXVtdLFxuICAgIGdyaWREYW1hZ2VzQ291bnQ6IG51bWJlcltdLFxuICAgIGdyaWRIaWdobGlnaHRzOiBudW1iZXJbXVtdW10sXG4gICAgZ3JpZFNpemVzOiBHcmlkRGltZW5zaW9uc1tdLFxuICAgIGhpZ2hsaWdodHM6IEhpZ2hsaWdodEluZm9bXSxcbiAgICBsYXN0TWVzc2FnZTogRE9NSGlnaFJlc1RpbWVTdGFtcCxcbiAgICBsaW5lc3BhY2U6IG51bWJlcixcbiAgICBtZXNzYWdlczogTWVzc2FnZVtdLFxuICAgIG1lc3NhZ2VzUG9zaXRpb25zOiBNZXNzYWdlc1Bvc2l0aW9uW10sXG4gICAgbW9kZTogTW9kZSxcbiAgICBydWxlcjogTWVzc2FnZSxcbiAgICBzaG93Y21kOiBNZXNzYWdlLFxuICAgIHNob3dtb2RlOiBNZXNzYWdlLFxufTtcblxuY29uc3QgZ2xvYmFsU3RhdGU6IFN0YXRlID0ge1xuICAgIGNhbnZhczogdW5kZWZpbmVkLFxuICAgIGNvbnRleHQ6IHVuZGVmaW5lZCxcbiAgICBjb21tYW5kTGluZToge1xuICAgICAgICBzdGF0dXM6IFwiaGlkZGVuXCIsXG4gICAgICAgIGNvbnRlbnQ6IFtdLFxuICAgICAgICBwb3M6IDAsXG4gICAgICAgIGZpcnN0YzogXCJcIixcbiAgICAgICAgcHJvbXB0OiBcIlwiLFxuICAgICAgICBpbmRlbnQ6IDAsXG4gICAgICAgIGxldmVsOiAwLFxuICAgIH0sXG4gICAgY3Vyc29yOiB7XG4gICAgICAgIGN1cnJlbnRHcmlkOiAxLFxuICAgICAgICBkaXNwbGF5OiB0cnVlLFxuICAgICAgICB4OiAwLFxuICAgICAgICB5OiAwLFxuICAgICAgICBsYXN0TW92ZTogcGVyZm9ybWFuY2Uubm93KCksXG4gICAgICAgIG1vdmVkU2luY2VMYXN0TWVzc2FnZTogZmFsc2UsXG4gICAgfSxcbiAgICBncmlkQ2hhcmFjdGVyczogW10sXG4gICAgZ3JpZERhbWFnZXM6IFtdLFxuICAgIGdyaWREYW1hZ2VzQ291bnQ6IFtdLFxuICAgIGdyaWRIaWdobGlnaHRzOiBbXSxcbiAgICBncmlkU2l6ZXM6IFtdLFxuICAgIGhpZ2hsaWdodHM6IFtuZXdIaWdobGlnaHQoZGVmYXVsdEJhY2tncm91bmQsIGRlZmF1bHRGb3JlZ3JvdW5kKV0sXG4gICAgbGFzdE1lc3NhZ2U6IHBlcmZvcm1hbmNlLm5vdygpLFxuICAgIGxpbmVzcGFjZTogMCxcbiAgICBtZXNzYWdlczogW10sXG4gICAgbWVzc2FnZXNQb3NpdGlvbnM6IFtdLFxuICAgIG1vZGU6IHtcbiAgICAgICAgY3VycmVudDogMCxcbiAgICAgICAgc3R5bGVFbmFibGVkIDogZmFsc2UsXG4gICAgICAgIG1vZGVJbmZvOiBbe1xuICAgICAgICAgICAgYXR0cl9pZDogMCxcbiAgICAgICAgICAgIGF0dHJfaWRfbG06IDAsXG4gICAgICAgICAgICBibGlua29mZjogMCxcbiAgICAgICAgICAgIGJsaW5rb246IDAsXG4gICAgICAgICAgICBibGlua3dhaXQ6IDAsXG4gICAgICAgICAgICBjZWxsX3BlcmNlbnRhZ2U6IDAsXG4gICAgICAgICAgICBjdXJzb3Jfc2hhcGU6IFwiYmxvY2tcIixcbiAgICAgICAgICAgIG5hbWU6IFwibm9ybWFsXCIsXG4gICAgICAgIH1dXG4gICAgfSxcbiAgICBydWxlcjogdW5kZWZpbmVkLFxuICAgIHNob3djbWQ6IHVuZGVmaW5lZCxcbiAgICBzaG93bW9kZTogdW5kZWZpbmVkLFxufTtcblxuZnVuY3Rpb24gcHVzaERhbWFnZShncmlkOiBudW1iZXIsIGtpbmQ6IERhbWFnZUtpbmQsIGg6IG51bWJlciwgdzogbnVtYmVyLCB4OiBudW1iZXIsIHk6IG51bWJlcikge1xuICAgIGNvbnN0IGRhbWFnZXMgPSBnbG9iYWxTdGF0ZS5ncmlkRGFtYWdlc1tncmlkXTtcbiAgICBjb25zdCBjb3VudCA9IGdsb2JhbFN0YXRlLmdyaWREYW1hZ2VzQ291bnRbZ3JpZF07XG4gICAgaWYgKGRhbWFnZXMubGVuZ3RoID09PSBjb3VudCkge1xuICAgICAgICBkYW1hZ2VzLnB1c2goeyBraW5kLCBoLCB3LCB4LCB5IH0pO1xuICAgIH0gZWxzZSB7XG4gICAgICAgIGRhbWFnZXNbY291bnRdLmtpbmQgPSBraW5kO1xuICAgICAgICBkYW1hZ2VzW2NvdW50XS5oID0gaDtcbiAgICAgICAgZGFtYWdlc1tjb3VudF0udyA9IHc7XG4gICAgICAgIGRhbWFnZXNbY291bnRdLnggPSB4O1xuICAgICAgICBkYW1hZ2VzW2NvdW50XS55ID0geTtcbiAgICB9XG4gICAgZ2xvYmFsU3RhdGUuZ3JpZERhbWFnZXNDb3VudFtncmlkXSA9IGNvdW50ICsgMTtcbn1cblxubGV0IG1heENlbGxXaWR0aDogbnVtYmVyO1xubGV0IG1heENlbGxIZWlnaHQ6IG51bWJlcjtcbmxldCBtYXhCYXNlbGluZURpc3RhbmNlOiBudW1iZXI7XG5mdW5jdGlvbiByZWNvbXB1dGVDaGFyU2l6ZSAoY3R4OiBDYW52YXNSZW5kZXJpbmdDb250ZXh0MkQpIHtcbiAgICAvLyA5NCwgSyszMjogd2UgaWdub3JlIHRoZSBmaXJzdCAzMiBhc2NpaSBjaGFycyBiZWNhdXNlIHRoZXkncmUgbm9uLXByaW50YWJsZVxuICAgIGNvbnN0IGNoYXJzID0gbmV3IEFycmF5KDk0KVxuICAgICAgICAuZmlsbCgwKVxuICAgICAgICAubWFwKChfLCBrKSA9PiBTdHJpbmcuZnJvbUNoYXJDb2RlKGsgKyAzMikpXG4gICAgICAgIC8vIENvbmNhdGVuaW5nIMOCIGJlY2F1c2UgdGhhdCdzIHRoZSB0YWxsZXN0IGNoYXJhY3RlciBJIGNhbiB0aGluayBvZi5cbiAgICAgICAgLmNvbmNhdChbXCLDglwiXSk7XG4gICAgbGV0IHdpZHRoID0gMDtcbiAgICBsZXQgaGVpZ2h0ID0gMDtcbiAgICBsZXQgYmFzZWxpbmUgPSAwO1xuICAgIGxldCBtZWFzdXJlOiBUZXh0TWV0cmljcztcbiAgICBmb3IgKGNvbnN0IGNoYXIgb2YgY2hhcnMpIHtcbiAgICAgICAgbWVhc3VyZSA9IGN0eC5tZWFzdXJlVGV4dChjaGFyKTtcbiAgICAgICAgaWYgKG1lYXN1cmUud2lkdGggPiB3aWR0aCkge1xuICAgICAgICAgICAgd2lkdGggPSBtZWFzdXJlLndpZHRoO1xuICAgICAgICB9XG4gICAgICAgIGxldCB0bXAgPSBNYXRoLmFicyhtZWFzdXJlLmFjdHVhbEJvdW5kaW5nQm94QXNjZW50KTtcbiAgICAgICAgaWYgKHRtcCA+IGJhc2VsaW5lKSB7XG4gICAgICAgICAgICBiYXNlbGluZSA9IHRtcDtcbiAgICAgICAgfVxuICAgICAgICB0bXAgKz0gTWF0aC5hYnMobWVhc3VyZS5hY3R1YWxCb3VuZGluZ0JveERlc2NlbnQpO1xuICAgICAgICBpZiAodG1wID4gaGVpZ2h0KSB7XG4gICAgICAgICAgICBoZWlnaHQgPSB0bXA7XG4gICAgICAgIH1cbiAgICB9XG4gICAgbWF4Q2VsbFdpZHRoID0gTWF0aC5jZWlsKHdpZHRoKTtcbiAgICBtYXhDZWxsSGVpZ2h0ID0gTWF0aC5jZWlsKGhlaWdodCkgKyBnbG9iYWxTdGF0ZS5saW5lc3BhY2U7XG4gICAgbWF4QmFzZWxpbmVEaXN0YW5jZSA9IGJhc2VsaW5lO1xuICAgIG1ldHJpY3NJbnZhbGlkYXRlZCA9IGZhbHNlO1xufVxuZXhwb3J0IGZ1bmN0aW9uIGdldEdseXBoSW5mbyAoc3RhdGU6IFN0YXRlKSB7XG4gICAgaWYgKG1ldHJpY3NJbnZhbGlkYXRlZFxuICAgICAgICB8fCBtYXhDZWxsV2lkdGggPT09IHVuZGVmaW5lZFxuICAgICAgICB8fCBtYXhDZWxsSGVpZ2h0ID09PSB1bmRlZmluZWRcbiAgICAgICAgfHwgbWF4QmFzZWxpbmVEaXN0YW5jZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIHJlY29tcHV0ZUNoYXJTaXplKHN0YXRlLmNvbnRleHQpO1xuICAgIH1cbiAgICByZXR1cm4gW21heENlbGxXaWR0aCwgbWF4Q2VsbEhlaWdodCwgbWF4QmFzZWxpbmVEaXN0YW5jZV07XG59XG5mdW5jdGlvbiBtZWFzdXJlV2lkdGgoc3RhdGU6IFN0YXRlLCBjaGFyOiBzdHJpbmcpIHtcbiAgICBjb25zdCBjaGFyV2lkdGggPSBnZXRHbHlwaEluZm8oc3RhdGUpWzBdO1xuICAgIHJldHVybiBNYXRoLmNlaWwoc3RhdGUuY29udGV4dC5tZWFzdXJlVGV4dChjaGFyKS53aWR0aCAvIGNoYXJXaWR0aCkgKiBjaGFyV2lkdGg7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRMb2dpY2FsU2l6ZSgpIHtcbiAgICBjb25zdCBzdGF0ZSA9IGdsb2JhbFN0YXRlO1xuICAgIGNvbnN0IFtjZWxsV2lkdGgsIGNlbGxIZWlnaHRdID0gZ2V0R2x5cGhJbmZvKHN0YXRlKTtcbiAgICByZXR1cm4gW01hdGguZmxvb3Ioc3RhdGUuY2FudmFzLndpZHRoIC8gY2VsbFdpZHRoKSwgTWF0aC5mbG9vcihzdGF0ZS5jYW52YXMuaGVpZ2h0IC8gY2VsbEhlaWdodCldO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY29tcHV0ZUdyaWREaW1lbnNpb25zRm9yICh3aWR0aCA6IG51bWJlciwgaGVpZ2h0IDogbnVtYmVyKSB7XG4gICAgY29uc3QgW2NlbGxXaWR0aCwgY2VsbEhlaWdodF0gPSBnZXRHbHlwaEluZm8oZ2xvYmFsU3RhdGUpO1xuICAgIHJldHVybiBbTWF0aC5mbG9vcih3aWR0aCAvIGNlbGxXaWR0aCksIE1hdGguZmxvb3IoaGVpZ2h0IC8gY2VsbEhlaWdodCldO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0R3JpZENvb3JkaW5hdGVzICh4OiBudW1iZXIsIHk6IG51bWJlcikge1xuICAgIGNvbnN0IFtjZWxsV2lkdGgsIGNlbGxIZWlnaHRdID0gZ2V0R2x5cGhJbmZvKGdsb2JhbFN0YXRlKTtcbiAgICByZXR1cm4gW01hdGguZmxvb3IoeCAqIHdpbmRvdy5kZXZpY2VQaXhlbFJhdGlvIC8gY2VsbFdpZHRoKSwgTWF0aC5mbG9vcih5ICogd2luZG93LmRldmljZVBpeGVsUmF0aW8gLyBjZWxsSGVpZ2h0KV07XG59XG5cbmZ1bmN0aW9uIG5ld0hpZ2hsaWdodCAoYmc6IHN0cmluZywgZmc6IHN0cmluZyk6IEhpZ2hsaWdodEluZm8ge1xuICAgIHJldHVybiB7XG4gICAgICAgIGJhY2tncm91bmQ6IGJnLFxuICAgICAgICBib2xkOiB1bmRlZmluZWQsXG4gICAgICAgIGJsZW5kOiB1bmRlZmluZWQsXG4gICAgICAgIGZvcmVncm91bmQ6IGZnLFxuICAgICAgICBpdGFsaWM6IHVuZGVmaW5lZCxcbiAgICAgICAgcmV2ZXJzZTogdW5kZWZpbmVkLFxuICAgICAgICBzcGVjaWFsOiB1bmRlZmluZWQsXG4gICAgICAgIHN0cmlrZXRocm91Z2g6IHVuZGVmaW5lZCxcbiAgICAgICAgdW5kZXJjdXJsOiB1bmRlZmluZWQsXG4gICAgICAgIHVuZGVybGluZTogdW5kZWZpbmVkLFxuICAgIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRHcmlkSWQoKSB7XG4gICAgcmV0dXJuIDE7XG59XG5cbmZ1bmN0aW9uIGdldENvbW1hbmRMaW5lUmVjdCAoc3RhdGU6IFN0YXRlKSB7XG4gICAgY29uc3QgW3dpZHRoLCBoZWlnaHRdID0gZ2V0R2x5cGhJbmZvKHN0YXRlKTtcbiAgICByZXR1cm4ge1xuICAgICAgICB4OiB3aWR0aCAtIDEsXG4gICAgICAgIHk6ICgoc3RhdGUuY2FudmFzLmhlaWdodCAtIGhlaWdodCAtIDEpIC8gMiksXG4gICAgICAgIHdpZHRoOiAoc3RhdGUuY2FudmFzLndpZHRoIC0gKHdpZHRoICogMikpICsgMixcbiAgICAgICAgaGVpZ2h0OiBoZWlnaHQgKyAyLFxuICAgIH07XG59XG5cbmZ1bmN0aW9uIGRhbWFnZUNvbW1hbmRMaW5lU3BhY2UgKHN0YXRlOiBTdGF0ZSkge1xuICAgIGNvbnN0IFt3aWR0aCwgaGVpZ2h0XSA9IGdldEdseXBoSW5mbyhzdGF0ZSk7XG4gICAgY29uc3QgcmVjdCA9IGdldENvbW1hbmRMaW5lUmVjdChzdGF0ZSk7XG4gICAgY29uc3QgZ2lkID0gZ2V0R3JpZElkKCk7XG4gICAgY29uc3QgZGltZW5zaW9ucyA9IGdsb2JhbFN0YXRlLmdyaWRTaXplc1tnaWRdO1xuICAgIHB1c2hEYW1hZ2UoZ2lkLFxuICAgICAgICAgICAgICAgRGFtYWdlS2luZC5DZWxsLFxuICAgICAgICAgICAgICAgTWF0aC5taW4oTWF0aC5jZWlsKHJlY3QuaGVpZ2h0IC8gaGVpZ2h0KSArIDEsIGRpbWVuc2lvbnMuaGVpZ2h0KSxcbiAgICAgICAgICAgICAgIE1hdGgubWluKE1hdGguY2VpbChyZWN0LndpZHRoIC8gd2lkdGgpICsgMSwgZGltZW5zaW9ucy53aWR0aCksXG4gICAgICAgICAgICAgICBNYXRoLm1heChNYXRoLmZsb29yKHJlY3QueCAvIHdpZHRoKSwgMCksXG4gICAgICAgICAgICAgICBNYXRoLm1heChNYXRoLmZsb29yKHJlY3QueSAvIGhlaWdodCksIDApKTtcbn1cblxuZnVuY3Rpb24gZGFtYWdlTWVzc2FnZXNTcGFjZSAoc3RhdGU6IFN0YXRlKSB7XG4gICAgY29uc3QgZ0lkID0gZ2V0R3JpZElkKCk7XG4gICAgY29uc3QgbXNnUG9zID0gZ2xvYmFsU3RhdGUubWVzc2FnZXNQb3NpdGlvbnNbZ0lkXTtcbiAgICBjb25zdCBkaW1lbnNpb25zID0gZ2xvYmFsU3RhdGUuZ3JpZFNpemVzW2dJZF07XG4gICAgY29uc3QgW2NoYXJXaWR0aCwgY2hhckhlaWdodF0gPSBnZXRHbHlwaEluZm8oc3RhdGUpO1xuICAgIHB1c2hEYW1hZ2UoZ0lkLFxuICAgICAgICAgICAgICAgRGFtYWdlS2luZC5DZWxsLFxuICAgICAgICAgICAgICAgTWF0aC5taW4oXG4gICAgICAgICAgICAgICAgICAgTWF0aC5jZWlsKChzdGF0ZS5jYW52YXMuaGVpZ2h0IC0gbXNnUG9zLnkpIC8gY2hhckhlaWdodCkgKyAyLFxuICAgICAgICAgICAgICAgICAgIGRpbWVuc2lvbnMuaGVpZ2h0KSxcbiAgICAgICAgICAgICAgIE1hdGgubWluKFxuICAgICAgICAgICAgICAgICAgIE1hdGguY2VpbCgoc3RhdGUuY2FudmFzLndpZHRoIC0gbXNnUG9zLngpIC8gY2hhcldpZHRoKSArIDIsXG4gICAgICAgICAgICAgICAgICAgZGltZW5zaW9ucy53aWR0aCksXG4gICAgICAgICAgICAgICBNYXRoLm1heChNYXRoLmZsb29yKG1zZ1Bvcy54IC8gY2hhcldpZHRoKSAtIDEsIDApLFxuICAgICAgICAgICAgICAgTWF0aC5tYXgoTWF0aC5mbG9vcihtc2dQb3MueSAvIGNoYXJIZWlnaHQpIC0gMSwgMCkpO1xuICAgIG1zZ1Bvcy54ID0gc3RhdGUuY2FudmFzLndpZHRoO1xuICAgIG1zZ1Bvcy55ID0gc3RhdGUuY2FudmFzLmhlaWdodDtcbn1cblxuY29uc3QgaGFuZGxlcnMgOiB7IFtrZXk6c3RyaW5nXSA6ICguLi5hcmdzOiBhbnlbXSk9PnZvaWQgfSA9IHtcbiAgICBidXN5X3N0YXJ0OiAoKSA9PiB7XG4gICAgICAgIHB1c2hEYW1hZ2UoZ2V0R3JpZElkKCksIERhbWFnZUtpbmQuQ2VsbCwgMSwgMSwgZ2xvYmFsU3RhdGUuY3Vyc29yLngsIGdsb2JhbFN0YXRlLmN1cnNvci55KTtcbiAgICAgICAgZ2xvYmFsU3RhdGUuY3Vyc29yLmRpc3BsYXkgPSBmYWxzZTtcbiAgICB9LFxuICAgIGJ1c3lfc3RvcDogKCkgPT4geyBnbG9iYWxTdGF0ZS5jdXJzb3IuZGlzcGxheSA9IHRydWU7IH0sXG4gICAgY21kbGluZV9oaWRlOiAoKSA9PiB7XG4gICAgICAgIGdsb2JhbFN0YXRlLmNvbW1hbmRMaW5lLnN0YXR1cyA9IFwiaGlkZGVuXCI7XG4gICAgICAgIGRhbWFnZUNvbW1hbmRMaW5lU3BhY2UoZ2xvYmFsU3RhdGUpO1xuICAgIH0sXG4gICAgY21kbGluZV9wb3M6IChwb3M6IG51bWJlciwgbGV2ZWw6IG51bWJlcikgPT4ge1xuICAgICAgICBnbG9iYWxTdGF0ZS5jb21tYW5kTGluZS5wb3MgPSBwb3M7XG4gICAgICAgIGdsb2JhbFN0YXRlLmNvbW1hbmRMaW5lLmxldmVsID0gbGV2ZWw7XG4gICAgfSxcbiAgICBjbWRsaW5lX3Nob3c6XG4gICAgICAgIChjb250ZW50OiBbYW55LCBzdHJpbmddW10sXG4gICAgICAgICBwb3M6IG51bWJlcixcbiAgICAgICAgIGZpcnN0Yzogc3RyaW5nLFxuICAgICAgICAgcHJvbXB0OiBzdHJpbmcsXG4gICAgICAgICBpbmRlbnQ6IG51bWJlcixcbiAgICAgICAgIGxldmVsOiBudW1iZXIpID0+IHtcbiAgICAgICAgICAgICBnbG9iYWxTdGF0ZS5jb21tYW5kTGluZS5zdGF0dXMgPSBcInNob3duXCI7XG4gICAgICAgICAgICAgZ2xvYmFsU3RhdGUuY29tbWFuZExpbmUuY29udGVudCA9IGNvbnRlbnQ7XG4gICAgICAgICAgICAgZ2xvYmFsU3RhdGUuY29tbWFuZExpbmUucG9zID0gcG9zO1xuICAgICAgICAgICAgIGdsb2JhbFN0YXRlLmNvbW1hbmRMaW5lLmZpcnN0YyA9IGZpcnN0YztcbiAgICAgICAgICAgICBnbG9iYWxTdGF0ZS5jb21tYW5kTGluZS5wcm9tcHQgPSBwcm9tcHQ7XG4gICAgICAgICAgICAgZ2xvYmFsU3RhdGUuY29tbWFuZExpbmUuaW5kZW50ID0gaW5kZW50O1xuICAgICAgICAgICAgIGdsb2JhbFN0YXRlLmNvbW1hbmRMaW5lLmxldmVsID0gbGV2ZWw7XG4gICAgICAgICB9LFxuICAgIGRlZmF1bHRfY29sb3JzX3NldDogKGZnOiBudW1iZXIsIGJnOiBudW1iZXIsIHNwOiBudW1iZXIpID0+IHtcbiAgICAgICAgaWYgKGZnICE9PSB1bmRlZmluZWQgJiYgZmcgIT09IC0xKSB7XG4gICAgICAgICAgICBnbG9iYWxTdGF0ZS5oaWdobGlnaHRzWzBdLmZvcmVncm91bmQgPSB0b0hleENzcyhmZyk7XG4gICAgICAgIH1cbiAgICAgICAgaWYgKGJnICE9PSB1bmRlZmluZWQgJiYgYmcgIT09IC0xKSB7XG4gICAgICAgICAgICBnbG9iYWxTdGF0ZS5oaWdobGlnaHRzWzBdLmJhY2tncm91bmQgPSB0b0hleENzcyhiZyk7XG4gICAgICAgIH1cbiAgICAgICAgaWYgKHNwICE9PSB1bmRlZmluZWQgJiYgc3AgIT09IC0xKSB7XG4gICAgICAgICAgICBnbG9iYWxTdGF0ZS5oaWdobGlnaHRzWzBdLnNwZWNpYWwgPSB0b0hleENzcyhzcCk7XG4gICAgICAgIH1cbiAgICAgICAgY29uc3QgY3VyR3JpZFNpemUgPSBnbG9iYWxTdGF0ZS5ncmlkU2l6ZXNbZ2V0R3JpZElkKCldO1xuICAgICAgICBpZiAoY3VyR3JpZFNpemUgIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgcHVzaERhbWFnZShnZXRHcmlkSWQoKSwgRGFtYWdlS2luZC5DZWxsLCBjdXJHcmlkU2l6ZS5oZWlnaHQsIGN1ckdyaWRTaXplLndpZHRoLCAwLCAwKTtcbiAgICAgICAgfVxuICAgICAgICB3aXBlR2x5cGhDYWNoZSgpO1xuICAgIH0sXG4gICAgZmx1c2g6ICgpID0+IHtcbiAgICAgICAgc2NoZWR1bGVGcmFtZSgpO1xuICAgIH0sXG4gICAgZ3JpZF9jbGVhcjogKGlkOiBudW1iZXIpID0+IHtcbiAgICAgICAgLy8gZ2xhY2FtYnJlOiBXaGF0IHNob3VsZCBhY3R1YWxseSBoYXBwZW4gb24gZ3JpZF9jbGVhcj8gVGhlXG4gICAgICAgIC8vICAgICAgICAgICAgZG9jdW1lbnRhdGlvbiBzYXlzIFwiY2xlYXIgdGhlIGdyaWRcIiwgYnV0IHdoYXQgZG9lcyB0aGF0XG4gICAgICAgIC8vICAgICAgICAgICAgbWVhbj8gSSBndWVzcyB0aGUgY2hhcmFjdGVycyBzaG91bGQgYmUgcmVtb3ZlZCwgYnV0IHdoYXRcbiAgICAgICAgLy8gICAgICAgICAgICBhYm91dCB0aGUgaGlnaGxpZ2h0cz8gQXJlIHRoZXJlIG90aGVyIHRoaW5ncyB0aGF0IG5lZWQgdG9cbiAgICAgICAgLy8gICAgICAgICAgICBiZSBjbGVhcmVkP1xuICAgICAgICAvLyBiZnJlZGw6IHRvIGRlZmF1bHQgYmcgY29sb3JcbiAgICAgICAgLy8gICAgICAgICBncmlkX2NsZWFyIGlzIG5vdCBtZWFudCB0byBiZSB1c2VkIG9mdGVuXG4gICAgICAgIC8vICAgICAgICAgaXQgaXMgbW9yZSBcInRoZSB0ZXJtaW5hbCBnb3Qgc2NyZXdlZCB1cCwgYmV0dGVyIHRvIGJlIHNhZmVcbiAgICAgICAgLy8gICAgICAgICB0aGFuIHNvcnJ5XCJcbiAgICAgICAgY29uc3QgY2hhckdyaWQgPSBnbG9iYWxTdGF0ZS5ncmlkQ2hhcmFjdGVyc1tpZF07XG4gICAgICAgIGNvbnN0IGhpZ2hHcmlkID0gZ2xvYmFsU3RhdGUuZ3JpZEhpZ2hsaWdodHNbaWRdO1xuICAgICAgICBjb25zdCBkaW1zID0gZ2xvYmFsU3RhdGUuZ3JpZFNpemVzW2lkXTtcbiAgICAgICAgZm9yIChsZXQgaiA9IDA7IGogPCBkaW1zLmhlaWdodDsgKytqKSB7XG4gICAgICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGRpbXMud2lkdGg7ICsraSkge1xuICAgICAgICAgICAgICAgIGNoYXJHcmlkW2pdW2ldID0gXCIgXCI7XG4gICAgICAgICAgICAgICAgaGlnaEdyaWRbal1baV0gPSAwO1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIHB1c2hEYW1hZ2UoaWQsIERhbWFnZUtpbmQuQ2VsbCwgZGltcy5oZWlnaHQsIGRpbXMud2lkdGgsIDAsIDApO1xuICAgIH0sXG4gICAgZ3JpZF9jdXJzb3JfZ290bzogKGlkOiBudW1iZXIsIHJvdzogbnVtYmVyLCBjb2x1bW46IG51bWJlcikgPT4ge1xuICAgICAgICBjb25zdCBjdXJzb3IgPSBnbG9iYWxTdGF0ZS5jdXJzb3I7XG4gICAgICAgIHB1c2hEYW1hZ2UoZ2V0R3JpZElkKCksIERhbWFnZUtpbmQuQ2VsbCwgMSwgMSwgY3Vyc29yLngsIGN1cnNvci55KTtcbiAgICAgICAgY3Vyc29yLmN1cnJlbnRHcmlkID0gaWQ7XG4gICAgICAgIGN1cnNvci54ID0gY29sdW1uO1xuICAgICAgICBjdXJzb3IueSA9IHJvdztcbiAgICAgICAgY3Vyc29yLmxhc3RNb3ZlID0gcGVyZm9ybWFuY2Uubm93KCk7XG4gICAgICAgIGN1cnNvci5tb3ZlZFNpbmNlTGFzdE1lc3NhZ2UgPSB0cnVlO1xuICAgIH0sXG4gICAgZ3JpZF9saW5lOiAoaWQ6IG51bWJlciwgcm93OiBudW1iZXIsIGNvbDogbnVtYmVyLCBjaGFuZ2VzOiAgYW55W10pID0+IHtcbiAgICAgICAgY29uc3QgY2hhckdyaWQgPSBnbG9iYWxTdGF0ZS5ncmlkQ2hhcmFjdGVyc1tpZF07XG4gICAgICAgIGNvbnN0IGhpZ2hsaWdodHMgPSBnbG9iYWxTdGF0ZS5ncmlkSGlnaGxpZ2h0c1tpZF07XG4gICAgICAgIGxldCBwcmV2Q29sID0gY29sO1xuICAgICAgICBsZXQgaGlnaCA9IDA7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY2hhbmdlcy5sZW5ndGg7ICsraSkge1xuICAgICAgICAgICAgY29uc3QgY2hhbmdlID0gY2hhbmdlc1tpXTtcbiAgICAgICAgICAgIGNvbnN0IGNoYXJhID0gY2hhbmdlWzBdO1xuICAgICAgICAgICAgaWYgKGNoYW5nZVsxXSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICAgICAgaGlnaCA9IGNoYW5nZVsxXTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGNvbnN0IHJlcGVhdCA9IGNoYW5nZVsyXSA9PT0gdW5kZWZpbmVkID8gMSA6IGNoYW5nZVsyXTtcblxuICAgICAgICAgICAgcHVzaERhbWFnZShpZCwgRGFtYWdlS2luZC5DZWxsLCAxLCByZXBlYXQsIHByZXZDb2wsIHJvdyk7XG5cbiAgICAgICAgICAgIGNvbnN0IGxpbWl0ID0gcHJldkNvbCArIHJlcGVhdDtcbiAgICAgICAgICAgIGZvciAobGV0IGogPSBwcmV2Q29sOyBqIDwgbGltaXQ7IGogKz0gMSkge1xuICAgICAgICAgICAgICAgIGNoYXJHcmlkW3Jvd11bal0gPSBjaGFyYTtcbiAgICAgICAgICAgICAgICBoaWdobGlnaHRzW3Jvd11bal0gPSBoaWdoO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcHJldkNvbCA9IGxpbWl0O1xuICAgICAgICB9XG4gICAgfSxcbiAgICBncmlkX3Jlc2l6ZTogKGlkOiBudW1iZXIsIHdpZHRoOiBudW1iZXIsIGhlaWdodDogbnVtYmVyKSA9PiB7XG4gICAgICAgIGNvbnN0IHN0YXRlID0gZ2xvYmFsU3RhdGU7XG4gICAgICAgIGNvbnN0IGNyZWF0ZUdyaWQgPSBzdGF0ZS5ncmlkQ2hhcmFjdGVyc1tpZF0gPT09IHVuZGVmaW5lZDtcbiAgICAgICAgaWYgKGNyZWF0ZUdyaWQpIHtcbiAgICAgICAgICAgIHN0YXRlLmdyaWRDaGFyYWN0ZXJzW2lkXSA9IFtdO1xuICAgICAgICAgICAgc3RhdGUuZ3JpZENoYXJhY3RlcnNbaWRdLnB1c2goW10pO1xuICAgICAgICAgICAgc3RhdGUuZ3JpZFNpemVzW2lkXSA9IHsgd2lkdGg6IDAsIGhlaWdodDogMCB9O1xuICAgICAgICAgICAgc3RhdGUuZ3JpZERhbWFnZXNbaWRdID0gW107XG4gICAgICAgICAgICBzdGF0ZS5ncmlkRGFtYWdlc0NvdW50W2lkXSA9IDA7XG4gICAgICAgICAgICBzdGF0ZS5ncmlkSGlnaGxpZ2h0c1tpZF0gPSBbXTtcbiAgICAgICAgICAgIHN0YXRlLmdyaWRIaWdobGlnaHRzW2lkXS5wdXNoKFtdKTtcbiAgICAgICAgICAgIHN0YXRlLm1lc3NhZ2VzUG9zaXRpb25zW2lkXSA9IHtcbiAgICAgICAgICAgICAgICB4OiBzdGF0ZS5jYW52YXMud2lkdGgsXG4gICAgICAgICAgICAgICAgeTogc3RhdGUuY2FudmFzLmhlaWdodCxcbiAgICAgICAgICAgIH07XG4gICAgICAgIH1cblxuICAgICAgICBjb25zdCBjdXJHcmlkU2l6ZSA9IGdsb2JhbFN0YXRlLmdyaWRTaXplc1tpZF07XG5cbiAgICAgICAgcHVzaERhbWFnZShpZCwgRGFtYWdlS2luZC5SZXNpemUsIGhlaWdodCwgd2lkdGgsIGN1ckdyaWRTaXplLndpZHRoLCBjdXJHcmlkU2l6ZS5oZWlnaHQpO1xuXG4gICAgICAgIGNvbnN0IGhpZ2hsaWdodHMgPSBnbG9iYWxTdGF0ZS5ncmlkSGlnaGxpZ2h0c1tpZF07XG4gICAgICAgIGNvbnN0IGNoYXJHcmlkID0gZ2xvYmFsU3RhdGUuZ3JpZENoYXJhY3RlcnNbaWRdO1xuICAgICAgICBpZiAod2lkdGggPiBjaGFyR3JpZFswXS5sZW5ndGgpIHtcbiAgICAgICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY2hhckdyaWQubGVuZ3RoOyArK2kpIHtcbiAgICAgICAgICAgICAgICBjb25zdCByb3cgPSBjaGFyR3JpZFtpXTtcbiAgICAgICAgICAgICAgICBjb25zdCBoaWdocyA9IGhpZ2hsaWdodHNbaV07XG4gICAgICAgICAgICAgICAgd2hpbGUgKHJvdy5sZW5ndGggPCB3aWR0aCkge1xuICAgICAgICAgICAgICAgICAgICByb3cucHVzaChcIiBcIik7XG4gICAgICAgICAgICAgICAgICAgIGhpZ2hzLnB1c2goMCk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIGlmIChoZWlnaHQgPiBjaGFyR3JpZC5sZW5ndGgpIHtcbiAgICAgICAgICAgIHdoaWxlIChjaGFyR3JpZC5sZW5ndGggPCBoZWlnaHQpIHtcbiAgICAgICAgICAgICAgICBjaGFyR3JpZC5wdXNoKChuZXcgQXJyYXkod2lkdGgpKS5maWxsKFwiIFwiKSk7XG4gICAgICAgICAgICAgICAgaGlnaGxpZ2h0cy5wdXNoKChuZXcgQXJyYXkod2lkdGgpKS5maWxsKDApKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICBwdXNoRGFtYWdlKGlkLCBEYW1hZ2VLaW5kLkNlbGwsIDAsIHdpZHRoLCAwLCBjdXJHcmlkU2l6ZS5oZWlnaHQpO1xuICAgICAgICBjdXJHcmlkU2l6ZS53aWR0aCA9IHdpZHRoO1xuICAgICAgICBjdXJHcmlkU2l6ZS5oZWlnaHQgPSBoZWlnaHQ7XG4gICAgfSxcbiAgICBncmlkX3Njcm9sbDogKGlkOiBudW1iZXIsXG4gICAgICAgICAgICAgICAgICB0b3A6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgIGJvdDogbnVtYmVyLFxuICAgICAgICAgICAgICAgICAgbGVmdDogbnVtYmVyLFxuICAgICAgICAgICAgICAgICAgcmlnaHQ6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgIHJvd3M6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgIF9jb2xzOiBudW1iZXIpID0+IHtcbiAgICAgICAgY29uc3QgZGltZW5zaW9ucyA9IGdsb2JhbFN0YXRlLmdyaWRTaXplc1tpZF07XG4gICAgICAgIGNvbnN0IGNoYXJHcmlkID0gZ2xvYmFsU3RhdGUuZ3JpZENoYXJhY3RlcnNbaWRdO1xuICAgICAgICBjb25zdCBoaWdoR3JpZCA9IGdsb2JhbFN0YXRlLmdyaWRIaWdobGlnaHRzW2lkXTtcbiAgICAgICAgaWYgKHJvd3MgPiAwKSB7XG4gICAgICAgICAgICBjb25zdCBib3R0b20gPSAoYm90ICsgcm93cykgPj0gZGltZW5zaW9ucy5oZWlnaHRcbiAgICAgICAgICAgICAgICA/IGRpbWVuc2lvbnMuaGVpZ2h0IC0gcm93c1xuICAgICAgICAgICAgICAgIDogYm90O1xuICAgICAgICAgICAgZm9yIChsZXQgeSA9IHRvcDsgeSA8IGJvdHRvbTsgKyt5KSB7XG4gICAgICAgICAgICAgICAgY29uc3Qgc3JjQ2hhcnMgPSBjaGFyR3JpZFt5ICsgcm93c107XG4gICAgICAgICAgICAgICAgY29uc3QgZHN0Q2hhcnMgPSBjaGFyR3JpZFt5XTtcbiAgICAgICAgICAgICAgICBjb25zdCBzcmNIaWdocyA9IGhpZ2hHcmlkW3kgKyByb3dzXTtcbiAgICAgICAgICAgICAgICBjb25zdCBkc3RIaWdocyA9IGhpZ2hHcmlkW3ldO1xuICAgICAgICAgICAgICAgIGZvciAobGV0IHggPSBsZWZ0OyB4IDwgcmlnaHQ7ICsreCkge1xuICAgICAgICAgICAgICAgICAgICBkc3RDaGFyc1t4XSA9IHNyY0NoYXJzW3hdO1xuICAgICAgICAgICAgICAgICAgICBkc3RIaWdoc1t4XSA9IHNyY0hpZ2hzW3hdO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHB1c2hEYW1hZ2UoaWQsIERhbWFnZUtpbmQuQ2VsbCwgZGltZW5zaW9ucy5oZWlnaHQsIGRpbWVuc2lvbnMud2lkdGgsIDAsIDApO1xuICAgICAgICB9IGVsc2UgaWYgKHJvd3MgPCAwKSB7XG4gICAgICAgICAgICBmb3IgKGxldCB5ID0gYm90IC0gMTsgeSA+PSB0b3AgJiYgKHkgKyByb3dzKSA+PSAwOyAtLXkpIHtcbiAgICAgICAgICAgICAgICBjb25zdCBzcmNDaGFycyA9IGNoYXJHcmlkW3kgKyByb3dzXTtcbiAgICAgICAgICAgICAgICBjb25zdCBkc3RDaGFycyA9IGNoYXJHcmlkW3ldO1xuICAgICAgICAgICAgICAgIGNvbnN0IHNyY0hpZ2hzID0gaGlnaEdyaWRbeSArIHJvd3NdO1xuICAgICAgICAgICAgICAgIGNvbnN0IGRzdEhpZ2hzID0gaGlnaEdyaWRbeV07XG4gICAgICAgICAgICAgICAgZm9yIChsZXQgeCA9IGxlZnQ7IHggPCByaWdodDsgKyt4KSB7XG4gICAgICAgICAgICAgICAgICAgIGRzdENoYXJzW3hdID0gc3JjQ2hhcnNbeF07XG4gICAgICAgICAgICAgICAgICAgIGRzdEhpZ2hzW3hdID0gc3JjSGlnaHNbeF07XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcHVzaERhbWFnZShpZCwgRGFtYWdlS2luZC5DZWxsLCBkaW1lbnNpb25zLmhlaWdodCwgZGltZW5zaW9ucy53aWR0aCwgMCwgMCk7XG4gICAgICAgIH1cbiAgICB9LFxuICAgIGhsX2F0dHJfZGVmaW5lOiAoaWQ6IG51bWJlciwgcmdiQXR0cjogYW55KSA9PiB7XG4gICAgICAgIGNvbnN0IGhpZ2hsaWdodHMgPSBnbG9iYWxTdGF0ZS5oaWdobGlnaHRzO1xuICAgICAgICBpZiAoaGlnaGxpZ2h0c1tpZF0gPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgaGlnaGxpZ2h0c1tpZF0gPSBuZXdIaWdobGlnaHQodW5kZWZpbmVkLCB1bmRlZmluZWQpO1xuICAgICAgICB9XG4gICAgICAgIGhpZ2hsaWdodHNbaWRdLmZvcmVncm91bmQgPSB0b0hleENzcyhyZ2JBdHRyLmZvcmVncm91bmQpO1xuICAgICAgICBoaWdobGlnaHRzW2lkXS5iYWNrZ3JvdW5kID0gdG9IZXhDc3MocmdiQXR0ci5iYWNrZ3JvdW5kKTtcbiAgICAgICAgaGlnaGxpZ2h0c1tpZF0uYm9sZCA9IHJnYkF0dHIuYm9sZDtcbiAgICAgICAgaGlnaGxpZ2h0c1tpZF0uYmxlbmQgPSByZ2JBdHRyLmJsZW5kO1xuICAgICAgICBoaWdobGlnaHRzW2lkXS5pdGFsaWMgPSByZ2JBdHRyLml0YWxpYztcbiAgICAgICAgaGlnaGxpZ2h0c1tpZF0uc3BlY2lhbCA9IHRvSGV4Q3NzKHJnYkF0dHIuc3BlY2lhbCk7XG4gICAgICAgIGhpZ2hsaWdodHNbaWRdLnN0cmlrZXRocm91Z2ggPSByZ2JBdHRyLnN0cmlrZXRocm91Z2g7XG4gICAgICAgIGhpZ2hsaWdodHNbaWRdLnVuZGVyY3VybCA9IHJnYkF0dHIudW5kZXJjdXJsO1xuICAgICAgICBoaWdobGlnaHRzW2lkXS51bmRlcmxpbmUgPSByZ2JBdHRyLnVuZGVybGluZTtcbiAgICAgICAgaGlnaGxpZ2h0c1tpZF0ucmV2ZXJzZSA9IHJnYkF0dHIucmV2ZXJzZTtcbiAgICB9LFxuICAgIG1vZGVfY2hhbmdlOiAoXzogc3RyaW5nLCBtb2RlSWR4OiBudW1iZXIpID0+IHtcbiAgICAgICAgZ2xvYmFsU3RhdGUubW9kZS5jdXJyZW50ID0gbW9kZUlkeDtcbiAgICAgICAgZXZlbnRzLmVtaXQoXCJtb2RlQ2hhbmdlXCIsIGdsb2JhbFN0YXRlLm1vZGUubW9kZUluZm9bbW9kZUlkeF0ubmFtZSk7XG4gICAgICAgIGlmIChnbG9iYWxTdGF0ZS5tb2RlLnN0eWxlRW5hYmxlZCkge1xuICAgICAgICAgICAgY29uc3QgY3Vyc29yID0gZ2xvYmFsU3RhdGUuY3Vyc29yO1xuICAgICAgICAgICAgcHVzaERhbWFnZShnZXRHcmlkSWQoKSwgRGFtYWdlS2luZC5DZWxsLCAxLCAxLCBjdXJzb3IueCwgY3Vyc29yLnkpO1xuICAgICAgICAgICAgc2NoZWR1bGVGcmFtZSgpO1xuICAgICAgICB9XG4gICAgfSxcbiAgICBtb2RlX2luZm9fc2V0OiAoY3Vyc29yU3R5bGVFbmFibGVkOiBib29sZWFuLCBtb2RlSW5mbzogW10pID0+IHtcbiAgICAgICAgLy8gTWlzc2luZzogaGFuZGxpbmcgb2YgY2VsbC1wZXJjZW50YWdlXG4gICAgICAgIGNvbnN0IG1vZGUgPSBnbG9iYWxTdGF0ZS5tb2RlO1xuICAgICAgICBtb2RlLnN0eWxlRW5hYmxlZCA9IGN1cnNvclN0eWxlRW5hYmxlZDtcbiAgICAgICAgbW9kZS5tb2RlSW5mbyA9IG1vZGVJbmZvO1xuICAgIH0sXG4gICAgbXNnX2NsZWFyOiAoKSA9PiB7XG4gICAgICAgIGRhbWFnZU1lc3NhZ2VzU3BhY2UoZ2xvYmFsU3RhdGUpO1xuICAgICAgICBnbG9iYWxTdGF0ZS5tZXNzYWdlcy5sZW5ndGggPSAwO1xuICAgIH0sXG4gICAgbXNnX2hpc3Rvcnlfc2hvdzogKGVudHJpZXM6IGFueVtdKSA9PiB7XG4gICAgICAgIGRhbWFnZU1lc3NhZ2VzU3BhY2UoZ2xvYmFsU3RhdGUpO1xuICAgICAgICBnbG9iYWxTdGF0ZS5tZXNzYWdlcyA9IGVudHJpZXMubWFwKChbLCBiXSkgPT4gYik7XG4gICAgfSxcbiAgICBtc2dfcnVsZXI6IChjb250ZW50OiBNZXNzYWdlKSA9PiB7XG4gICAgICAgIGRhbWFnZU1lc3NhZ2VzU3BhY2UoZ2xvYmFsU3RhdGUpO1xuICAgICAgICBnbG9iYWxTdGF0ZS5ydWxlciA9IGNvbnRlbnQ7XG4gICAgfSxcbiAgICBtc2dfc2hvdzogKF86IHN0cmluZywgY29udGVudDogTWVzc2FnZSwgcmVwbGFjZUxhc3Q6IGJvb2xlYW4pID0+IHtcbiAgICAgICAgZGFtYWdlTWVzc2FnZXNTcGFjZShnbG9iYWxTdGF0ZSk7XG4gICAgICAgIGlmIChyZXBsYWNlTGFzdCkge1xuICAgICAgICAgICAgZ2xvYmFsU3RhdGUubWVzc2FnZXMubGVuZ3RoID0gMDtcbiAgICAgICAgfVxuICAgICAgICBnbG9iYWxTdGF0ZS5tZXNzYWdlcy5wdXNoKGNvbnRlbnQpO1xuICAgICAgICBnbG9iYWxTdGF0ZS5sYXN0TWVzc2FnZSA9IHBlcmZvcm1hbmNlLm5vdygpO1xuICAgICAgICBnbG9iYWxTdGF0ZS5jdXJzb3IubW92ZWRTaW5jZUxhc3RNZXNzYWdlID0gZmFsc2U7XG4gICAgfSxcbiAgICBtc2dfc2hvd2NtZDogKGNvbnRlbnQ6IE1lc3NhZ2UpID0+IHtcbiAgICAgICAgZGFtYWdlTWVzc2FnZXNTcGFjZShnbG9iYWxTdGF0ZSk7XG4gICAgICAgIGdsb2JhbFN0YXRlLnNob3djbWQgPSBjb250ZW50O1xuICAgIH0sXG4gICAgbXNnX3Nob3dtb2RlOiAoY29udGVudDogTWVzc2FnZSkgPT4ge1xuICAgICAgICBkYW1hZ2VNZXNzYWdlc1NwYWNlKGdsb2JhbFN0YXRlKTtcbiAgICAgICAgZ2xvYmFsU3RhdGUuc2hvd21vZGUgPSBjb250ZW50O1xuICAgIH0sXG4gICAgb3B0aW9uX3NldDogKG9wdGlvbjogc3RyaW5nLCB2YWx1ZTogYW55KSA9PiB7XG4gICAgICAgIGNvbnN0IHN0YXRlID0gZ2xvYmFsU3RhdGU7XG4gICAgICAgIHN3aXRjaCAob3B0aW9uKSB7XG4gICAgICAgICAgICBjYXNlIFwiZ3VpZm9udFwiOiB7XG4gICAgICAgICAgICAgICAgbGV0IG5ld0ZvbnRTdHJpbmc7XG4gICAgICAgICAgICAgICAgaWYgKHZhbHVlID09PSBcIlwiKSB7XG4gICAgICAgICAgICAgICAgICAgIG5ld0ZvbnRTdHJpbmcgPSBkZWZhdWx0Rm9udFN0cmluZztcbiAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgICBjb25zdCBndWlmb250ID0gcGFyc2VHdWlmb250KHZhbHVlLCB7XG4gICAgICAgICAgICAgICAgICAgICAgICBcImZvbnQtZmFtaWx5XCI6IGRlZmF1bHRGb250RmFtaWx5LFxuICAgICAgICAgICAgICAgICAgICAgICAgXCJmb250LXNpemVcIjogZGVmYXVsdEZvbnRTaXplLFxuICAgICAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgICAgICAgICAgbmV3Rm9udFN0cmluZyA9ICBtYWtlRm9udFN0cmluZyhndWlmb250W1wiZm9udC1zaXplXCJdLCBndWlmb250W1wiZm9udC1mYW1pbHlcIl0pO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBpZiAobmV3Rm9udFN0cmluZyA9PT0gZm9udFN0cmluZykge1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgc2V0Rm9udFN0cmluZyhzdGF0ZSwgbmV3Rm9udFN0cmluZyk7XG4gICAgICAgICAgICAgICAgY29uc3QgW2NoYXJXaWR0aCwgY2hhckhlaWdodF0gPSBnZXRHbHlwaEluZm8oc3RhdGUpO1xuICAgICAgICAgICAgICAgIGV2ZW50cy5lbWl0KFwicmVzaXplXCIsIHtcbiAgICAgICAgICAgICAgICAgICAgZ3JpZDogZ2V0R3JpZElkKCksXG4gICAgICAgICAgICAgICAgICAgIHdpZHRoOiBNYXRoLmZsb29yKHN0YXRlLmNhbnZhcy53aWR0aCAvIGNoYXJXaWR0aCksXG4gICAgICAgICAgICAgICAgICAgIGhlaWdodDogTWF0aC5mbG9vcihzdGF0ZS5jYW52YXMuaGVpZ2h0IC8gY2hhckhlaWdodCksXG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIGNhc2UgXCJsaW5lc3BhY2VcIjoge1xuICAgICAgICAgICAgICAgIGlmIChzdGF0ZS5saW5lc3BhY2UgPT09IHZhbHVlKSB7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBzdGF0ZS5saW5lc3BhY2UgPSB2YWx1ZTtcbiAgICAgICAgICAgICAgICBpbnZhbGlkYXRlTWV0cmljcygpO1xuICAgICAgICAgICAgICAgIGNvbnN0IFtjaGFyV2lkdGgsIGNoYXJIZWlnaHRdID0gZ2V0R2x5cGhJbmZvKHN0YXRlKTtcbiAgICAgICAgICAgICAgICBjb25zdCBnaWQgPSBnZXRHcmlkSWQoKTtcbiAgICAgICAgICAgICAgICBjb25zdCBjdXJHcmlkU2l6ZSA9IHN0YXRlLmdyaWRTaXplc1tnaWRdO1xuICAgICAgICAgICAgICAgIGlmIChjdXJHcmlkU2l6ZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICAgICAgICAgIHB1c2hEYW1hZ2UoZ2V0R3JpZElkKCksIERhbWFnZUtpbmQuQ2VsbCwgY3VyR3JpZFNpemUuaGVpZ2h0LCBjdXJHcmlkU2l6ZS53aWR0aCwgMCwgMCk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGV2ZW50cy5lbWl0KFwicmVzaXplXCIsIHtcbiAgICAgICAgICAgICAgICAgICAgZ3JpZDogZ2lkLFxuICAgICAgICAgICAgICAgICAgICB3aWR0aDogTWF0aC5mbG9vcihzdGF0ZS5jYW52YXMud2lkdGggLyBjaGFyV2lkdGgpLFxuICAgICAgICAgICAgICAgICAgICBoZWlnaHQ6IE1hdGguZmxvb3Ioc3RhdGUuY2FudmFzLmhlaWdodCAvIGNoYXJIZWlnaHQpLFxuICAgICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICB9LFxufTtcblxuLy8ga2VlcCB0cmFjayBvZiB3aGV0ZXIgYSBmcmFtZSBpcyBhbHJlYWR5IGJlaW5nIHNjaGVkdWxlZCBvciBub3QuIFRoaXMgYXZvaWRzXG4vLyBhc2tpbmcgZm9yIG11bHRpcGxlIGZyYW1lcyB3aGVyZSB3ZSdkIHBhaW50IHRoZSBzYW1lIHRoaW5nIGFueXdheS5cbmxldCBmcmFtZVNjaGVkdWxlZCA9IGZhbHNlO1xuZnVuY3Rpb24gc2NoZWR1bGVGcmFtZSgpIHtcbiAgICBpZiAoIWZyYW1lU2NoZWR1bGVkKSB7XG4gICAgICAgIGZyYW1lU2NoZWR1bGVkID0gdHJ1ZTtcbiAgICAgICAgd2luZG93LnJlcXVlc3RBbmltYXRpb25GcmFtZShwYWludCk7XG4gICAgfVxufVxuXG5mdW5jdGlvbiBwYWludE1lc3NhZ2VzKHN0YXRlOiBTdGF0ZSkge1xuICAgIGNvbnN0IGN0eCA9IHN0YXRlLmNvbnRleHQ7XG4gICAgY29uc3QgZ0lkID0gZ2V0R3JpZElkKCk7XG4gICAgY29uc3QgbWVzc2FnZXNQb3NpdGlvbiA9IHN0YXRlLm1lc3NhZ2VzUG9zaXRpb25zW2dJZF07XG4gICAgY29uc3QgWywgY2hhckhlaWdodCwgYmFzZWxpbmVdID0gZ2V0R2x5cGhJbmZvKHN0YXRlKTtcbiAgICBjb25zdCBtZXNzYWdlcyA9IHN0YXRlLm1lc3NhZ2VzO1xuICAgIC8vIHdlIG5lZWQgdG8ga25vdyB0aGUgc2l6ZSBvZiB0aGUgbWVzc2FnZSBib3ggaW4gb3JkZXIgdG8gZHJhdyBpdHMgYm9yZGVyXG4gICAgLy8gYW5kIGJhY2tncm91bmQuIFRoZSBhbGdvcml0aG0gdG8gY29tcHV0ZSB0aGlzIGlzIGVxdWl2YWxlbnQgdG8gZHJhd2luZ1xuICAgIC8vIGFsbCBtZXNzYWdlcy4gU28gd2UgcHV0IHRoZSBkcmF3aW5nIGFsZ29yaXRobSBpbiBhIGZ1bmN0aW9uIHdpdGggYVxuICAgIC8vIGJvb2xlYW4gYXJndW1lbnQgdGhhdCB3aWxsIGNvbnRyb2wgd2hldGhlciB0ZXh0IHNob3VsZCBhY3R1YWxseSBiZVxuICAgIC8vIGRyYXduLiBUaGlzIGxldHMgdXMgcnVuIHRoZSBhbGdvcml0aG0gb25jZSB0byBnZXQgdGhlIGRpbWVuc2lvbnMgYW5kXG4gICAgLy8gdGhlbiBhZ2FpbiB0byBhY3R1YWxseSBkcmF3IHRleHQuXG4gICAgZnVuY3Rpb24gcmVuZGVyTWVzc2FnZXMgKGRyYXc6IGJvb2xlYW4pIHtcbiAgICAgICAgbGV0IHJlbmRlcmVkWCA9IHN0YXRlLmNhbnZhcy53aWR0aDtcbiAgICAgICAgbGV0IHJlbmRlcmVkWSA9IHN0YXRlLmNhbnZhcy5oZWlnaHQgLSBjaGFySGVpZ2h0ICsgYmFzZWxpbmU7XG4gICAgICAgIGZvciAobGV0IGkgPSBtZXNzYWdlcy5sZW5ndGggLSAxOyBpID49IDA7IC0taSkge1xuICAgICAgICAgICAgY29uc3QgbWVzc2FnZSA9IG1lc3NhZ2VzW2ldO1xuICAgICAgICAgICAgZm9yIChsZXQgaiA9IG1lc3NhZ2UubGVuZ3RoIC0gMTsgaiA+PSAwOyAtLWopIHtcbiAgICAgICAgICAgICAgICBjb25zdCBjaGFycyA9IEFycmF5LmZyb20obWVzc2FnZVtqXVsxXSk7XG4gICAgICAgICAgICAgICAgZm9yIChsZXQgayA9IGNoYXJzLmxlbmd0aCAtIDE7IGsgPj0gMDsgLS1rKSB7XG4gICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgPSBjaGFyc1trXTtcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgbWVhc3VyZWRXaWR0aCA9IG1lYXN1cmVXaWR0aChzdGF0ZSwgY2hhcik7XG4gICAgICAgICAgICAgICAgICAgIGlmIChyZW5kZXJlZFggLSBtZWFzdXJlZFdpZHRoIDwgMCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHJlbmRlcmVkWSAtIGNoYXJIZWlnaHQgPCAwKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuO1xuICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgcmVuZGVyZWRYID0gc3RhdGUuY2FudmFzLndpZHRoO1xuICAgICAgICAgICAgICAgICAgICAgICAgcmVuZGVyZWRZID0gcmVuZGVyZWRZIC0gY2hhckhlaWdodDtcbiAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICByZW5kZXJlZFggPSByZW5kZXJlZFggLSBtZWFzdXJlZFdpZHRoO1xuICAgICAgICAgICAgICAgICAgICBpZiAoZHJhdykge1xuICAgICAgICAgICAgICAgICAgICAgICAgY3R4LmZpbGxUZXh0KGNoYXIsIHJlbmRlcmVkWCwgcmVuZGVyZWRZKTtcbiAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICBpZiAocmVuZGVyZWRYIDwgbWVzc2FnZXNQb3NpdGlvbi54KSB7XG4gICAgICAgICAgICAgICAgICAgICAgICBtZXNzYWdlc1Bvc2l0aW9uLnggPSByZW5kZXJlZFg7XG4gICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgaWYgKHJlbmRlcmVkWSA8IG1lc3NhZ2VzUG9zaXRpb24ueSkge1xuICAgICAgICAgICAgICAgICAgICAgICAgbWVzc2FnZXNQb3NpdGlvbi55ID0gcmVuZGVyZWRZIC0gYmFzZWxpbmU7XG4gICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICByZW5kZXJlZFggPSBzdGF0ZS5jYW52YXMud2lkdGg7XG4gICAgICAgICAgICByZW5kZXJlZFkgPSByZW5kZXJlZFkgLSBjaGFySGVpZ2h0O1xuICAgICAgICB9XG4gICAgfVxuICAgIHJlbmRlck1lc3NhZ2VzKGZhbHNlKTtcbiAgICBjdHguZmlsbFN0eWxlID0gc3RhdGUuaGlnaGxpZ2h0c1swXS5mb3JlZ3JvdW5kO1xuICAgIGN0eC5maWxsUmVjdChtZXNzYWdlc1Bvc2l0aW9uLnggLSAyLFxuICAgICAgICAgICAgICAgICAgICAgbWVzc2FnZXNQb3NpdGlvbi55IC0gMixcbiAgICAgICAgICAgICAgICAgICAgIHN0YXRlLmNhbnZhcy53aWR0aCAtIG1lc3NhZ2VzUG9zaXRpb24ueCArIDIsXG4gICAgICAgICAgICAgICAgICAgICBzdGF0ZS5jYW52YXMuaGVpZ2h0IC0gbWVzc2FnZXNQb3NpdGlvbi55ICsgMik7XG5cbiAgICBjdHguZmlsbFN0eWxlID0gc3RhdGUuaGlnaGxpZ2h0c1swXS5iYWNrZ3JvdW5kO1xuICAgIGN0eC5maWxsUmVjdChtZXNzYWdlc1Bvc2l0aW9uLnggLSAxLFxuICAgICAgICAgICAgICAgICAgICAgbWVzc2FnZXNQb3NpdGlvbi55IC0gMSxcbiAgICAgICAgICAgICAgICAgICAgIHN0YXRlLmNhbnZhcy53aWR0aCAtIG1lc3NhZ2VzUG9zaXRpb24ueCArIDEsXG4gICAgICAgICAgICAgICAgICAgICBzdGF0ZS5jYW52YXMuaGVpZ2h0IC0gbWVzc2FnZXNQb3NpdGlvbi55ICsgMSk7XG4gICAgY3R4LmZpbGxTdHlsZSA9IHN0YXRlLmhpZ2hsaWdodHNbMF0uZm9yZWdyb3VuZDtcbiAgICByZW5kZXJNZXNzYWdlcyh0cnVlKTtcbn1cblxuZnVuY3Rpb24gcGFpbnRDb21tYW5kbGluZVdpbmRvdyhzdGF0ZTogU3RhdGUpIHtcbiAgICBjb25zdCBjdHggPSBzdGF0ZS5jb250ZXh0O1xuICAgIGNvbnN0IFtjaGFyV2lkdGgsIGNoYXJIZWlnaHQsIGJhc2VsaW5lXSA9IGdldEdseXBoSW5mbyhzdGF0ZSk7XG4gICAgY29uc3QgY29tbWFuZExpbmUgPSBzdGF0ZS5jb21tYW5kTGluZTtcbiAgICBjb25zdCByZWN0ID0gZ2V0Q29tbWFuZExpbmVSZWN0KHN0YXRlKTtcbiAgICAvLyBvdXRlciByZWN0YW5nbGVcbiAgICBjdHguZmlsbFN0eWxlID0gc3RhdGUuaGlnaGxpZ2h0c1swXS5mb3JlZ3JvdW5kO1xuICAgIGN0eC5maWxsUmVjdChyZWN0LngsXG4gICAgICAgICAgICAgICAgICAgICByZWN0LnksXG4gICAgICAgICAgICAgICAgICAgICByZWN0LndpZHRoLFxuICAgICAgICAgICAgICAgICAgICAgcmVjdC5oZWlnaHQpO1xuXG4gICAgLy8gaW5uZXIgcmVjdGFuZ2xlXG4gICAgcmVjdC54ICs9IDE7XG4gICAgcmVjdC55ICs9IDE7XG4gICAgcmVjdC53aWR0aCAtPSAyO1xuICAgIHJlY3QuaGVpZ2h0IC09IDI7XG4gICAgY3R4LmZpbGxTdHlsZSA9IHN0YXRlLmhpZ2hsaWdodHNbMF0uYmFja2dyb3VuZDtcbiAgICBjdHguZmlsbFJlY3QocmVjdC54LFxuICAgICAgICAgICAgICAgICAgICAgcmVjdC55LFxuICAgICAgICAgICAgICAgICAgICAgcmVjdC53aWR0aCxcbiAgICAgICAgICAgICAgICAgICAgIHJlY3QuaGVpZ2h0KTtcblxuICAgIC8vIHBhZGRpbmcgb2YgaW5uZXIgcmVjdGFuZ2xlXG4gICAgcmVjdC54ICs9IDE7XG4gICAgcmVjdC55ICs9IDE7XG4gICAgcmVjdC53aWR0aCAtPSAyO1xuICAgIHJlY3QuaGVpZ2h0IC09IDI7XG5cbiAgICAvLyBQb3NpdGlvbiB3aGVyZSB0ZXh0IHNob3VsZCBiZSBkcmF3blxuICAgIGxldCB4ID0gcmVjdC54O1xuICAgIGNvbnN0IHkgPSByZWN0Lnk7XG5cbiAgICAvLyBmaXJzdCBjaGFyYWN0ZXJcbiAgICBjdHguZmlsbFN0eWxlID0gc3RhdGUuaGlnaGxpZ2h0c1swXS5mb3JlZ3JvdW5kO1xuICAgIGN0eC5maWxsVGV4dChjb21tYW5kTGluZS5maXJzdGMsIHgsIHkgKyBiYXNlbGluZSk7XG4gICAgeCArPSBjaGFyV2lkdGg7XG4gICAgcmVjdC53aWR0aCAtPSBjaGFyV2lkdGg7XG5cbiAgICBjb25zdCBlbmNvZGVyID0gbmV3IFRleHRFbmNvZGVyKCk7XG4gICAgLy8gcmVkdWNlIHRoZSBjb21tYW5kbGluZSdzIGNvbnRlbnQgdG8gYSBzdHJpbmcgZm9yIGl0ZXJhdGlvblxuICAgIGNvbnN0IHN0ciA9IGNvbW1hbmRMaW5lLmNvbnRlbnQucmVkdWNlKChyOiBzdHJpbmcsIHNlZ21lbnQ6IFthbnksIHN0cmluZ10pID0+IHIgKyBzZWdtZW50WzFdLCBcIlwiKTtcbiAgICAvLyBBcnJheS5mcm9tKHN0cikgd2lsbCByZXR1cm4gYW4gYXJyYXkgd2hvc2UgY2VsbHMgYXJlIGdyYXBoZW1lXG4gICAgLy8gY2x1c3RlcnMuIEl0IGlzIGltcG9ydGFudCB0byBpdGVyYXRlIG92ZXIgZ3JhcGhlbWVzIGluc3RlYWQgb2YgdGhlXG4gICAgLy8gc3RyaW5nIGJlY2F1c2UgaXRlcmF0aW5nIG92ZXIgdGhlIHN0cmluZyB3b3VsZCBzb21ldGltZXMgeWllbGQgb25seVxuICAgIC8vIGhhbGYgb2YgdGhlIFVURi0xNiBjaGFyYWN0ZXIvc3Vycm9nYXRlIHBhaXIuXG4gICAgY29uc3QgY2hhcmFjdGVycyA9IEFycmF5LmZyb20oc3RyKTtcbiAgICAvLyByZW5kZXJlZEkgaXMgdGhlIGhvcml6b250YWwgcGl4ZWwgcG9zaXRpb24gd2hlcmUgdGhlIG5leHQgY2hhcmFjdGVyXG4gICAgLy8gc2hvdWxkIGJlIGRyYXduXG4gICAgbGV0IHJlbmRlcmVkSSA9IDA7XG4gICAgLy8gZW5jb2RlZEkgaXMgdGhlIG51bWJlciBvZiBieXRlcyB0aGF0IGhhdmUgYmVlbiBpdGVyYXRlZCBvdmVyIHRodXNcbiAgICAvLyBmYXIuIEl0IGlzIHVzZWQgdG8gZmluZCBvdXQgd2hlcmUgdG8gZHJhdyB0aGUgY3Vyc29yLiBJbmRlZWQsIG5lb3ZpbVxuICAgIC8vIHNlbmRzIHRoZSBjdXJzb3IncyBwb3NpdGlvbiBhcyBhIGJ5dGUgcG9zaXRpb24gd2l0aGluIHRoZSBVVEYtOFxuICAgIC8vIGVuY29kZWQgY29tbWFuZGxpbmUgc3RyaW5nLlxuICAgIGxldCBlbmNvZGVkSSA9IDA7XG4gICAgLy8gY3Vyc29yWCBpcyB0aGUgaG9yaXpvbnRhbCBwaXhlbCBwb3NpdGlvbiB3aGVyZSB0aGUgY3Vyc29yIHNob3VsZCBiZVxuICAgIC8vIGRyYXduLlxuICAgIGxldCBjdXJzb3JYID0gMDtcbiAgICAvLyBUaGUgaW5kZXggb2YgdGhlIGZpcnN0IGNoYXJhY3RlciBvZiBgY2hhcmFjdGVyc2AgdGhhdCBjYW4gYmUgZHJhd24uXG4gICAgLy8gSXQgaXMgaGlnaGVyIHRoYW4gMCB3aGVuIHRoZSBjb21tYW5kIGxpbmUgc3RyaW5nIGlzIHRvbyBsb25nIHRvIGJlXG4gICAgLy8gZW50aXJlbHkgZGlzcGxheWVkLlxuICAgIGxldCBzbGljZVN0YXJ0ID0gMDtcbiAgICAvLyBUaGUgaW5kZXggb2YgdGhlIGxhc3QgY2hhcmFjdGVyIG9mIGBjaGFyYWN0ZXJzYCB0aGF0IGNhbiBiZSBkcmF3bi5cbiAgICAvLyBJdCBpcyBkaWZmZXJlbnQgZnJvbSBjaGFyYWN0ZXJzLmxlbmd0aCB3aGVuIHRoZSBjb21tYW5kIGxpbmUgc3RyaW5nXG4gICAgLy8gaXMgdG9vIGxvbmcgdG8gYmUgZW50aXJlbHkgZGlzcGxheWVkLlxuICAgIGxldCBzbGljZUVuZCA9IDA7XG4gICAgLy8gVGhlIGhvcml6b250YWwgd2lkdGggaW4gcGl4ZWxzIHRha2VuIGJ5IHRoZSBkaXNwbGF5ZWQgc2xpY2UuIEl0XG4gICAgLy8gaXMgdXNlZCB0byBrZWVwIHRyYWNrIG9mIHdoZXRoZXIgdGhlIGNvbW1hbmRsaW5lIHN0cmluZyBpcyBsb25nZXJcbiAgICAvLyB0aGFuIHRoZSBjb21tYW5kbGluZSB3aW5kb3cuXG4gICAgbGV0IHNsaWNlV2lkdGggPSAwO1xuICAgIC8vIGN1cnNvckRpc3BsYXllZCBrZWVwcyB0cmFjayBvZiB3aGV0aGVyIHRoZSBjdXJzb3IgY2FuIGJlIGRpc3BsYXllZFxuICAgIC8vIGluIHRoZSBzbGljZS5cbiAgICBsZXQgY3Vyc29yRGlzcGxheWVkID0gY29tbWFuZExpbmUucG9zID09PSAwO1xuICAgIC8vIGRlc2NyaXB0aW9uIG9mIHRoZSBhbGdvcml0aG06XG4gICAgLy8gRm9yIGVhY2ggY2hhcmFjdGVyLCBmaW5kIG91dCBpdHMgd2lkdGguIElmIGl0IGNhbm5vdCBmaXQgaW4gdGhlXG4gICAgLy8gY29tbWFuZCBsaW5lIHdpbmRvdyBhbG9uZyB3aXRoIHRoZSByZXN0IG9mIHRoZSBzbGljZSBhbmQgdGhlIGN1cnNvclxuICAgIC8vIGhhc24ndCBiZWVuIGZvdW5kIHlldCwgcmVtb3ZlIGNoYXJhY3RlcnMgZnJvbSB0aGUgYmVnaW5uaW5nIG9mIHRoZVxuICAgIC8vIHNsaWNlIHVudGlsIHRoZSBjaGFyYWN0ZXIgZml0cy5cbiAgICAvLyBTdG9wIGVpdGhlciB3aGVuIGFsbCBjaGFyYWN0ZXJzIGFyZSBpbiB0aGUgc2xpY2Ugb3Igd2hlbiB0aGUgY3Vyc29yXG4gICAgLy8gY2FuIGJlIGRpc3BsYXllZCBhbmQgdGhlIHNsaWNlIHRha2VzIGFsbCBhdmFpbGFibGUgd2lkdGguXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBjaGFyYWN0ZXJzLmxlbmd0aDsgKytpKSB7XG4gICAgICAgIHNsaWNlRW5kID0gaTtcbiAgICAgICAgY29uc3QgY2hhciA9IGNoYXJhY3RlcnNbaV07XG5cbiAgICAgICAgY29uc3QgY1dpZHRoID0gbWVhc3VyZVdpZHRoKHN0YXRlLCBjaGFyKTtcbiAgICAgICAgcmVuZGVyZWRJICs9IGNXaWR0aDtcblxuICAgICAgICBzbGljZVdpZHRoICs9IGNXaWR0aDtcbiAgICAgICAgaWYgKHNsaWNlV2lkdGggPiByZWN0LndpZHRoKSB7XG4gICAgICAgICAgICBpZiAoY3Vyc29yRGlzcGxheWVkKSB7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBkbyB7XG4gICAgICAgICAgICAgICAgY29uc3QgcmVtb3ZlZENoYXIgPSBjaGFyYWN0ZXJzW3NsaWNlU3RhcnRdO1xuICAgICAgICAgICAgICAgIGNvbnN0IHJlbW92ZWRXaWR0aCA9IG1lYXN1cmVXaWR0aChzdGF0ZSwgcmVtb3ZlZENoYXIpO1xuICAgICAgICAgICAgICAgIHJlbmRlcmVkSSAtPSByZW1vdmVkV2lkdGg7XG4gICAgICAgICAgICAgICAgc2xpY2VXaWR0aCAtPSByZW1vdmVkV2lkdGg7XG4gICAgICAgICAgICAgICAgc2xpY2VTdGFydCArPSAxO1xuICAgICAgICAgICAgfSB3aGlsZSAoc2xpY2VXaWR0aCA+IHJlY3Qud2lkdGgpO1xuICAgICAgICB9XG5cbiAgICAgICAgZW5jb2RlZEkgKz0gZW5jb2Rlci5lbmNvZGUoY2hhcikubGVuZ3RoO1xuICAgICAgICBpZiAoZW5jb2RlZEkgPT09IGNvbW1hbmRMaW5lLnBvcykge1xuICAgICAgICAgICAgY3Vyc29yWCA9IHJlbmRlcmVkSTtcbiAgICAgICAgICAgIGN1cnNvckRpc3BsYXllZCA9IHRydWU7XG4gICAgICAgIH1cbiAgICB9XG4gICAgaWYgKGNoYXJhY3RlcnMubGVuZ3RoID4gMCkge1xuICAgICAgICByZW5kZXJlZEkgPSAwO1xuICAgICAgICBmb3IgKGxldCBpID0gc2xpY2VTdGFydDsgaSA8PSBzbGljZUVuZDsgKytpKSB7XG4gICAgICAgICAgICBjb25zdCBjaGFyID0gY2hhcmFjdGVyc1tpXTtcbiAgICAgICAgICAgIGN0eC5maWxsVGV4dChjaGFyLCB4ICsgcmVuZGVyZWRJLCB5ICsgYmFzZWxpbmUpO1xuICAgICAgICAgICAgcmVuZGVyZWRJICs9IG1lYXN1cmVXaWR0aChzdGF0ZSwgY2hhcik7XG4gICAgICAgIH1cbiAgICB9XG4gICAgY3R4LmZpbGxSZWN0KHggKyBjdXJzb3JYLCB5LCAxLCBjaGFySGVpZ2h0KTtcbn1cblxuZnVuY3Rpb24gcGFpbnQgKF86IERPTUhpZ2hSZXNUaW1lU3RhbXApIHtcbiAgICBmcmFtZVNjaGVkdWxlZCA9IGZhbHNlO1xuXG4gICAgY29uc3Qgc3RhdGUgPSBnbG9iYWxTdGF0ZTtcbiAgICBjb25zdCBjYW52YXMgPSBzdGF0ZS5jYW52YXM7XG4gICAgY29uc3QgY29udGV4dCA9IHN0YXRlLmNvbnRleHQ7XG4gICAgY29uc3QgZ2lkID0gZ2V0R3JpZElkKCk7XG4gICAgY29uc3QgY2hhcmFjdGVyc0dyaWQgPSBzdGF0ZS5ncmlkQ2hhcmFjdGVyc1tnaWRdO1xuICAgIGNvbnN0IGhpZ2hsaWdodHNHcmlkID0gc3RhdGUuZ3JpZEhpZ2hsaWdodHNbZ2lkXTtcbiAgICBjb25zdCBkYW1hZ2VzID0gc3RhdGUuZ3JpZERhbWFnZXNbZ2lkXTtcbiAgICBjb25zdCBkYW1hZ2VDb3VudCA9IHN0YXRlLmdyaWREYW1hZ2VzQ291bnRbZ2lkXTtcbiAgICBjb25zdCBoaWdobGlnaHRzID0gc3RhdGUuaGlnaGxpZ2h0cztcbiAgICBjb25zdCBbY2hhcldpZHRoLCBjaGFySGVpZ2h0LCBiYXNlbGluZV0gPSBnZXRHbHlwaEluZm8oc3RhdGUpO1xuXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBkYW1hZ2VDb3VudDsgKytpKSB7XG4gICAgICAgIGNvbnN0IGRhbWFnZSA9IGRhbWFnZXNbaV07XG4gICAgICAgIHN3aXRjaCAoZGFtYWdlLmtpbmQpIHtcbiAgICAgICAgICAgIGNhc2UgRGFtYWdlS2luZC5SZXNpemU6IHtcbiAgICAgICAgICAgICAgICBjb25zdCBwaXhlbFdpZHRoID0gZGFtYWdlLncgKiBjaGFyV2lkdGggLyB3aW5kb3cuZGV2aWNlUGl4ZWxSYXRpbztcbiAgICAgICAgICAgICAgICBjb25zdCBwaXhlbEhlaWdodCA9IGRhbWFnZS5oICogY2hhckhlaWdodCAvIHdpbmRvdy5kZXZpY2VQaXhlbFJhdGlvO1xuICAgICAgICAgICAgICAgIGV2ZW50cy5lbWl0KFwiZnJhbWVSZXNpemVcIiwgeyB3aWR0aDogcGl4ZWxXaWR0aCwgaGVpZ2h0OiBwaXhlbEhlaWdodCB9KTtcbiAgICAgICAgICAgICAgICBzZXRDYW52YXNEaW1lbnNpb25zKGNhbnZhcywgcGl4ZWxXaWR0aCwgcGl4ZWxIZWlnaHQpO1xuICAgICAgICAgICAgICAgIC8vIE5vdGU6IGNoYW5naW5nIHdpZHRoIGFuZCBoZWlnaHQgcmVzZXRzIGZvbnQsIHNvIHdlIGhhdmUgdG9cbiAgICAgICAgICAgICAgICAvLyBzZXQgaXQgYWdhaW4uIFdobyB0aG91Z2h0IHRoaXMgd2FzIGEgZ29vZCBpZGVhPz8/XG4gICAgICAgICAgICAgICAgY29udGV4dC5mb250ID0gZm9udFN0cmluZztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBEYW1hZ2VLaW5kLlNjcm9sbDpcbiAgICAgICAgICAgIGNhc2UgRGFtYWdlS2luZC5DZWxsOlxuICAgICAgICAgICAgICAgIGZvciAobGV0IHkgPSBkYW1hZ2UueTsgeSA8IGRhbWFnZS55ICsgZGFtYWdlLmggJiYgeSA8IGNoYXJhY3RlcnNHcmlkLmxlbmd0aDsgKyt5KSB7XG4gICAgICAgICAgICAgICAgICAgIGNvbnN0IHJvdyA9IGNoYXJhY3RlcnNHcmlkW3ldO1xuICAgICAgICAgICAgICAgICAgICBjb25zdCByb3dIaWdoID0gaGlnaGxpZ2h0c0dyaWRbeV07XG4gICAgICAgICAgICAgICAgICAgIGNvbnN0IHBpeGVsWSA9IHkgKiBjaGFySGVpZ2h0O1xuXG4gICAgICAgICAgICAgICAgICAgIGZvciAobGV0IHggPSBkYW1hZ2UueDsgeCA8IGRhbWFnZS54ICsgZGFtYWdlLncgJiYgeCA8IHJvdy5sZW5ndGg7ICsreCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHJvd1t4XSA9PT0gXCJcIikge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgcGl4ZWxYID0geCAqIGNoYXJXaWR0aDtcbiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGlkID0gZ2x5cGhJZChyb3dbeF0sIHJvd0hpZ2hbeF0pO1xuXG4gICAgICAgICAgICAgICAgICAgICAgICBpZiAoZ2x5cGhDYWNoZVtpZF0gPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNlbGxIaWdoID0gaGlnaGxpZ2h0c1tyb3dIaWdoW3hdXTtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCB3aWR0aCA9IE1hdGguY2VpbChtZWFzdXJlV2lkdGgoc3RhdGUsIHJvd1t4XSkgLyBjaGFyV2lkdGgpICogY2hhcldpZHRoO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxldCBiYWNrZ3JvdW5kID0gY2VsbEhpZ2guYmFja2dyb3VuZCB8fCBoaWdobGlnaHRzWzBdLmJhY2tncm91bmQ7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbGV0IGZvcmVncm91bmQgPSBjZWxsSGlnaC5mb3JlZ3JvdW5kIHx8IGhpZ2hsaWdodHNbMF0uZm9yZWdyb3VuZDtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoY2VsbEhpZ2gucmV2ZXJzZSkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCB0bXAgPSBiYWNrZ3JvdW5kO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kID0gZm9yZWdyb3VuZDtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZm9yZWdyb3VuZCA9IHRtcDtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dC5maWxsU3R5bGUgPSBiYWNrZ3JvdW5kO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQuZmlsbFJlY3QocGl4ZWxYLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGl4ZWxZLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2lkdGgsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFySGVpZ2h0KTtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0LmZpbGxTdHlsZSA9IGZvcmVncm91bmQ7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbGV0IGZvbnRTdHIgPSBcIlwiO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxldCBjaGFuZ2VGb250ID0gZmFsc2U7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNlbGxIaWdoLmJvbGQpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZm9udFN0ciArPSBcIiBib2xkIFwiO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFuZ2VGb250ID0gdHJ1ZTtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNlbGxIaWdoLml0YWxpYykge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmb250U3RyICs9IFwiIGl0YWxpYyBcIjtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhbmdlRm9udCA9IHRydWU7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChjaGFuZ2VGb250KSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQuZm9udCA9IGZvbnRTdHIgKyBmb250U3RyaW5nO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0LmZpbGxUZXh0KHJvd1t4XSwgcGl4ZWxYLCBwaXhlbFkgKyBiYXNlbGluZSk7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNoYW5nZUZvbnQpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dC5mb250ID0gZm9udFN0cmluZztcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNlbGxIaWdoLnN0cmlrZXRocm91Z2gpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dC5maWxsUmVjdChwaXhlbFgsIHBpeGVsWSArIGJhc2VsaW5lIC8gMiwgd2lkdGgsIDEpO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0LmZpbGxTdHlsZSA9IGNlbGxIaWdoLnNwZWNpYWw7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgYmFzZWxpbmVIZWlnaHQgPSAoY2hhckhlaWdodCAtIGJhc2VsaW5lKTtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoY2VsbEhpZ2gudW5kZXJsaW5lKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGxpbmVwb3MgPSBiYXNlbGluZUhlaWdodCAqIDAuMztcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dC5maWxsUmVjdChwaXhlbFgsIHBpeGVsWSArIGJhc2VsaW5lICsgbGluZXBvcywgd2lkdGgsIDEpO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoY2VsbEhpZ2gudW5kZXJjdXJsKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGN1cmxwb3MgPSBiYXNlbGluZUhlaWdodCAqIDAuNjtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZm9yIChsZXQgYWJzY2lzc2EgPSBwaXhlbFg7IGFic2Npc3NhIDwgcGl4ZWxYICsgd2lkdGg7ICsrYWJzY2lzc2EpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQuZmlsbFJlY3QoYWJzY2lzc2EsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpeGVsWSArIGJhc2VsaW5lICsgY3VybHBvcyArIE1hdGguY29zKGFic2Npc3NhKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMSk7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gcmVhc29uIGZvciB0aGUgY2hlY2s6IHdlIGNhbid0IHJldHJpZXZlIHBpeGVsc1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIGRyYXduIG91dHNpZGUgdGhlIHZpZXdwb3J0XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHBpeGVsWCA+PSAwXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICYmIHBpeGVsWSA+PSAwXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICYmIChwaXhlbFggKyB3aWR0aCA8IGNhbnZhcy53aWR0aClcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJiYgKHBpeGVsWSArIGNoYXJIZWlnaHQgPCBjYW52YXMuaGVpZ2h0KSkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnbHlwaENhY2hlW2lkXSA9IGNvbnRleHQuZ2V0SW1hZ2VEYXRhKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGl4ZWxYLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGl4ZWxZLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2lkdGgsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFySGVpZ2h0KTtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQucHV0SW1hZ2VEYXRhKGdseXBoQ2FjaGVbaWRdLCBwaXhlbFgsIHBpeGVsWSk7XG4gICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoc3RhdGUubWVzc2FnZXMubGVuZ3RoID4gMCkge1xuICAgICAgICBwYWludE1lc3NhZ2VzKHN0YXRlKTtcbiAgICB9XG5cbiAgICAvLyBJZiB0aGUgY29tbWFuZCBsaW5lIGlzIHNob3duLCB0aGUgY3Vyc29yJ3MgaW4gaXRcbiAgICBpZiAoc3RhdGUuY29tbWFuZExpbmUuc3RhdHVzID09PSBcInNob3duXCIpIHtcbiAgICAgICAgcGFpbnRDb21tYW5kbGluZVdpbmRvdyhzdGF0ZSk7XG4gICAgfSBlbHNlIGlmIChzdGF0ZS5jdXJzb3IuZGlzcGxheSkge1xuICAgICAgICBjb25zdCBjdXJzb3IgPSBzdGF0ZS5jdXJzb3I7XG4gICAgICAgIGlmIChjdXJzb3IuY3VycmVudEdyaWQgPT09IGdpZCkge1xuICAgICAgICAgICAgLy8gTWlzc2luZzogaGFuZGxpbmcgb2YgY2VsbC1wZXJjZW50YWdlXG4gICAgICAgICAgICBjb25zdCBtb2RlID0gc3RhdGUubW9kZTtcbiAgICAgICAgICAgIGNvbnN0IGluZm8gPSBtb2RlLnN0eWxlRW5hYmxlZFxuICAgICAgICAgICAgICAgID8gbW9kZS5tb2RlSW5mb1ttb2RlLmN1cnJlbnRdXG4gICAgICAgICAgICAgICAgOiBtb2RlLm1vZGVJbmZvWzBdO1xuICAgICAgICAgICAgY29uc3Qgc2hvdWxkQmxpbmsgPSAoaW5mby5ibGlua3dhaXQgPiAwICYmIGluZm8uYmxpbmtvbiA+IDAgJiYgaW5mby5ibGlua29mZiA+IDApO1xuXG4gICAgICAgICAgICAvLyBEZWNpZGUgY29sb3IuIEFzIGRlc2NyaWJlZCBpbiB0aGUgZG9jLCBpZiBhdHRyX2lkIGlzIDAgY29sb3JzXG4gICAgICAgICAgICAvLyBzaG91bGQgYmUgcmV2ZXJ0ZWQuXG4gICAgICAgICAgICBsZXQgYmFja2dyb3VuZCA9IGhpZ2hsaWdodHNbaW5mby5hdHRyX2lkXS5iYWNrZ3JvdW5kO1xuICAgICAgICAgICAgbGV0IGZvcmVncm91bmQgPSBoaWdobGlnaHRzW2luZm8uYXR0cl9pZF0uZm9yZWdyb3VuZDtcbiAgICAgICAgICAgIGlmIChpbmZvLmF0dHJfaWQgPT09IDApIHtcbiAgICAgICAgICAgICAgICBjb25zdCB0bXAgPSBiYWNrZ3JvdW5kO1xuICAgICAgICAgICAgICAgIGJhY2tncm91bmQgPSBmb3JlZ3JvdW5kO1xuICAgICAgICAgICAgICAgIGZvcmVncm91bmQgPSB0bXA7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIC8vIERlY2lkZSBjdXJzb3Igc2hhcGUuIERlZmF1bHQgdG8gYmxvY2ssIGNoYW5nZSB0b1xuICAgICAgICAgICAgLy8gdmVydGljYWwvaG9yaXpvbnRhbCBpZiBuZWVkZWQuXG4gICAgICAgICAgICBjb25zdCBjdXJzb3JXaWR0aCA9IGN1cnNvci54ICogY2hhcldpZHRoO1xuICAgICAgICAgICAgbGV0IGN1cnNvckhlaWdodCA9IGN1cnNvci55ICogY2hhckhlaWdodDtcbiAgICAgICAgICAgIGxldCB3aWR0aCA9IGNoYXJXaWR0aDtcbiAgICAgICAgICAgIGxldCBoZWlnaHQgPSBjaGFySGVpZ2h0O1xuICAgICAgICAgICAgaWYgKGluZm8uY3Vyc29yX3NoYXBlID09PSBcInZlcnRpY2FsXCIpIHtcbiAgICAgICAgICAgICAgICB3aWR0aCA9IDE7XG4gICAgICAgICAgICB9IGVsc2UgaWYgKGluZm8uY3Vyc29yX3NoYXBlID09PSBcImhvcml6b250YWxcIikge1xuICAgICAgICAgICAgICAgIGN1cnNvckhlaWdodCArPSBjaGFySGVpZ2h0IC0gMjtcbiAgICAgICAgICAgICAgICBoZWlnaHQgPSAxO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBjb25zdCBub3cgPSBwZXJmb3JtYW5jZS5ub3coKTtcbiAgICAgICAgICAgIC8vIERlY2lkZSBpZiB0aGUgY3Vyc29yIHNob3VsZCBiZSBpbnZlcnRlZC4gVGhpcyBvbmx5IGhhcHBlbnMgaWZcbiAgICAgICAgICAgIC8vIGJsaW5raW5nIGlzIG9uLCB3ZSd2ZSB3YWl0ZWQgYmxpbmt3YWl0IHRpbWUgYW5kIHdlJ3JlIGluIHRoZVxuICAgICAgICAgICAgLy8gXCJibGlua29mZlwiIHRpbWUgc2xvdC5cbiAgICAgICAgICAgIGNvbnN0IGJsaW5rT2ZmID0gc2hvdWxkQmxpbmtcbiAgICAgICAgICAgICAgICAmJiAobm93IC0gaW5mby5ibGlua3dhaXQgPiBjdXJzb3IubGFzdE1vdmUpXG4gICAgICAgICAgICAgICAgJiYgKChub3cgJSAoaW5mby5ibGlua29uICsgaW5mby5ibGlua29mZikpID4gaW5mby5ibGlua29uKTtcbiAgICAgICAgICAgIGlmIChibGlua09mZikge1xuICAgICAgICAgICAgICAgIGNvbnN0IGhpZ2ggPSBoaWdobGlnaHRzW2hpZ2hsaWdodHNHcmlkW2N1cnNvci55XVtjdXJzb3IueF1dO1xuICAgICAgICAgICAgICAgIGJhY2tncm91bmQgPSBoaWdoLmJhY2tncm91bmQ7XG4gICAgICAgICAgICAgICAgZm9yZWdyb3VuZCA9IGhpZ2guZm9yZWdyb3VuZDtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgLy8gRmluYWxseSBkcmF3IGN1cnNvclxuICAgICAgICAgICAgY29udGV4dC5maWxsU3R5bGUgPSBiYWNrZ3JvdW5kO1xuICAgICAgICAgICAgY29udGV4dC5maWxsUmVjdChjdXJzb3JXaWR0aCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3Vyc29ySGVpZ2h0LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3aWR0aCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGVpZ2h0KTtcblxuICAgICAgICAgICAgaWYgKGluZm8uY3Vyc29yX3NoYXBlID09PSBcImJsb2NrXCIpIHtcbiAgICAgICAgICAgICAgICBjb250ZXh0LmZpbGxTdHlsZSA9IGZvcmVncm91bmQ7XG4gICAgICAgICAgICAgICAgY29uc3QgY2hhciA9IGNoYXJhY3RlcnNHcmlkW2N1cnNvci55XVtjdXJzb3IueF07XG4gICAgICAgICAgICAgICAgY29udGV4dC5maWxsVGV4dChjaGFyLCBjdXJzb3IueCAqIGNoYXJXaWR0aCwgY3Vyc29yLnkgKiBjaGFySGVpZ2h0ICsgYmFzZWxpbmUpO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBpZiAoc2hvdWxkQmxpbmspIHtcbiAgICAgICAgICAgICAgICAvLyBpZiB0aGUgY3Vyc29yIHNob3VsZCBibGluaywgd2UgbmVlZCB0byBwYWludCBjb250aW51b3VzbHlcbiAgICAgICAgICAgICAgICBjb25zdCByZWxhdGl2ZU5vdyA9IHBlcmZvcm1hbmNlLm5vdygpICUgKGluZm8uYmxpbmtvbiArIGluZm8uYmxpbmtvZmYpO1xuICAgICAgICAgICAgICAgIGNvbnN0IG5leHRQYWludCA9IHJlbGF0aXZlTm93IDwgaW5mby5ibGlua29uXG4gICAgICAgICAgICAgICAgICAgID8gaW5mby5ibGlua29uIC0gcmVsYXRpdmVOb3dcbiAgICAgICAgICAgICAgICAgICAgOiBpbmZvLmJsaW5rb2ZmIC0gKHJlbGF0aXZlTm93IC0gaW5mby5ibGlua29uKTtcbiAgICAgICAgICAgICAgICBzZXRUaW1lb3V0KHNjaGVkdWxlRnJhbWUsIG5leHRQYWludCk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG5cbiAgICBzdGF0ZS5ncmlkRGFtYWdlc0NvdW50W2dpZF0gPSAwO1xufVxuXG5sZXQgY21kbGluZVRpbWVvdXQgPSAzMDAwO1xuY29uZlJlYWR5LnRoZW4oKCkgPT4gY21kbGluZVRpbWVvdXQgPSBnZXRHbG9iYWxDb25mKCkuY21kbGluZVRpbWVvdXQpO1xuXG5leHBvcnQgZnVuY3Rpb24gb25SZWRyYXcoZXZlbnRzOiBhbnlbXSkge1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgZXZlbnRzLmxlbmd0aDsgKytpKSB7XG4gICAgICAgIGNvbnN0IGV2ZW50ID0gZXZlbnRzW2ldO1xuICAgICAgICBjb25zdCBoYW5kbGVyID0gKGhhbmRsZXJzIGFzIGFueSlbKGV2ZW50WzBdIGFzIGFueSldO1xuICAgICAgICBpZiAoaGFuZGxlciAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICBmb3IgKGxldCBqID0gMTsgaiA8IGV2ZW50Lmxlbmd0aDsgKytqKSB7XG4gICAgICAgICAgICAgICAgaGFuZGxlci5hcHBseShnbG9iYWxTdGF0ZSwgZXZlbnRbal0pO1xuICAgICAgICAgICAgfVxuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgLy8gY29uc29sZS5lcnJvcihgJHtldmVudFswXX0gaXMgbm90IGltcGxlbWVudGVkLmApO1xuICAgICAgICB9XG4gICAgfVxuICAgIGlmIChwZXJmb3JtYW5jZS5ub3coKSAtIGdsb2JhbFN0YXRlLmxhc3RNZXNzYWdlID4gY21kbGluZVRpbWVvdXQgJiYgZ2xvYmFsU3RhdGUuY3Vyc29yLm1vdmVkU2luY2VMYXN0TWVzc2FnZSkge1xuICAgICAgICBoYW5kbGVyc1tcIm1zZ19jbGVhclwiXSgpO1xuICAgIH1cbn1cbiIsIi8vIFRoZXNlIG1vZGVzIGFyZSBkZWZpbmVkIGluIGh0dHBzOi8vZ2l0aHViLmNvbS9uZW92aW0vbmVvdmltL2Jsb2IvbWFzdGVyL3NyYy9udmltL2N1cnNvcl9zaGFwZS5jXG5leHBvcnQgdHlwZSBOdmltTW9kZSA9IFwiYWxsXCJcbiAgfCBcIm5vcm1hbFwiXG4gIHwgXCJ2aXN1YWxcIlxuICB8IFwiaW5zZXJ0XCJcbiAgfCBcInJlcGxhY2VcIlxuICB8IFwiY21kbGluZV9ub3JtYWxcIlxuICB8IFwiY21kbGluZV9pbnNlcnRcIlxuICB8IFwiY21kbGluZV9yZXBsYWNlXCJcbiAgfCBcIm9wZXJhdG9yXCJcbiAgfCBcInZpc3VhbF9zZWxlY3RcIlxuICB8IFwiY21kbGluZV9ob3ZlclwiXG4gIHwgXCJzdGF0dXNsaW5lX2hvdmVyXCJcbiAgfCBcInN0YXR1c2xpbmVfZHJhZ1wiXG4gIHwgXCJ2c2VwX2hvdmVyXCJcbiAgfCBcInZzZXBfZHJhZ1wiXG4gIHwgXCJtb3JlXCJcbiAgfCBcIm1vcmVfbGFzdGxpbmVcIlxuICB8IFwic2hvd21hdGNoXCI7XG5cbmV4cG9ydCBpbnRlcmZhY2UgSVNpdGVDb25maWcge1xuICAgIGNtZGxpbmU6IFwibmVvdmltXCIgfCBcImZpcmVudmltXCI7XG4gICAgY29udGVudDogXCJodG1sXCIgfCBcInRleHRcIjtcbiAgICBwcmlvcml0eTogbnVtYmVyO1xuICAgIHJlbmRlcmVyOiBcImh0bWxcIiB8IFwiY2FudmFzXCI7XG4gICAgc2VsZWN0b3I6IHN0cmluZztcbiAgICB0YWtlb3ZlcjogXCJhbHdheXNcIiB8IFwib25jZVwiIHwgXCJlbXB0eVwiIHwgXCJub25lbXB0eVwiIHwgXCJuZXZlclwiO1xuICAgIGZpbGVuYW1lOiBzdHJpbmc7XG59XG5cbmV4cG9ydCB0eXBlIEdsb2JhbFNldHRpbmdzID0ge1xuICBhbHQ6IFwiYWxwaGFudW1cIiB8IFwiYWxsXCIsXG4gIFwiPEMtbj5cIjogXCJkZWZhdWx0XCIgfCBcIm5vb3BcIixcbiAgXCI8Qy10PlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiLFxuICBcIjxDLXc+XCI6IFwiZGVmYXVsdFwiIHwgXCJub29wXCIsXG4gIFwiPENTLW4+XCI6IFwiZGVmYXVsdFwiIHwgXCJub29wXCIsXG4gIFwiPENTLXQ+XCI6IFwiZGVmYXVsdFwiIHwgXCJub29wXCIsXG4gIFwiPENTLXc+XCI6IFwiZGVmYXVsdFwiIHwgXCJub29wXCIsXG4gIGlnbm9yZUtleXM6IHsgW2tleSBpbiBOdmltTW9kZV06IHN0cmluZ1tdIH0sXG4gIGNtZGxpbmVUaW1lb3V0OiBudW1iZXIsXG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgSUNvbmZpZyB7XG4gICAgZ2xvYmFsU2V0dGluZ3M6IEdsb2JhbFNldHRpbmdzO1xuICAgIGxvY2FsU2V0dGluZ3M6IHsgW2tleTogc3RyaW5nXTogSVNpdGVDb25maWcgfTtcbn1cblxubGV0IGNvbmY6IElDb25maWcgPSB1bmRlZmluZWQgYXMgSUNvbmZpZztcblxuZXhwb3J0IGNvbnN0IGNvbmZSZWFkeSA9IG5ldyBQcm9taXNlKHJlc29sdmUgPT4ge1xuICAgIGJyb3dzZXIuc3RvcmFnZS5sb2NhbC5nZXQoKS50aGVuKChvYmo6IGFueSkgPT4ge1xuICAgICAgICBjb25mID0gb2JqO1xuICAgICAgICByZXNvbHZlKHRydWUpO1xuICAgIH0pO1xufSk7XG5cbmJyb3dzZXIuc3RvcmFnZS5vbkNoYW5nZWQuYWRkTGlzdGVuZXIoKGNoYW5nZXM6IGFueSkgPT4ge1xuICAgIE9iamVjdFxuICAgICAgICAuZW50cmllcyhjaGFuZ2VzKVxuICAgICAgICAuZm9yRWFjaCgoW2tleSwgdmFsdWVdOiBba2V5b2YgSUNvbmZpZywgYW55XSkgPT4gY29uZlJlYWR5LnRoZW4oKCkgPT4ge1xuICAgICAgICAgICAgY29uZltrZXldID0gdmFsdWUubmV3VmFsdWU7XG4gICAgICAgIH0pKTtcbn0pO1xuXG5leHBvcnQgZnVuY3Rpb24gZ2V0R2xvYmFsQ29uZigpIHtcbiAgICAvLyBDYW4ndCBiZSB0ZXN0ZWQgZm9yXG4gICAgLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbiAgICBpZiAoY29uZiA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcImdldEdsb2JhbENvbmYgY2FsbGVkIGJlZm9yZSBjb25maWcgd2FzIHJlYWR5XCIpO1xuICAgIH1cbiAgICByZXR1cm4gY29uZi5nbG9iYWxTZXR0aW5ncztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldENvbmYoKSB7XG4gICAgcmV0dXJuIGdldENvbmZGb3JVcmwoZG9jdW1lbnQubG9jYXRpb24uaHJlZik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDb25mRm9yVXJsKHVybDogc3RyaW5nKTogSVNpdGVDb25maWcge1xuICAgIGNvbnN0IGxvY2FsU2V0dGluZ3MgPSBjb25mLmxvY2FsU2V0dGluZ3M7XG4gICAgZnVuY3Rpb24gb3IxKHZhbDogbnVtYmVyKSB7XG4gICAgICAgIGlmICh2YWwgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAgcmV0dXJuIDE7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIHZhbDtcbiAgICB9XG4gICAgLy8gQ2FuJ3QgYmUgdGVzdGVkIGZvclxuICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgaWYgKGxvY2FsU2V0dGluZ3MgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXCJFcnJvcjogeW91ciBzZXR0aW5ncyBhcmUgdW5kZWZpbmVkLiBUcnkgcmVsb2FkaW5nIHRoZSBwYWdlLiBJZiB0aGlzIGVycm9yIHBlcnNpc3RzLCB0cnkgdGhlIHRyb3VibGVzaG9vdGluZyBndWlkZTogaHR0cHM6Ly9naXRodWIuY29tL2dsYWNhbWJyZS9maXJlbnZpbS9ibG9iL21hc3Rlci9UUk9VQkxFU0hPT1RJTkcubWRcIik7XG4gICAgfVxuICAgIHJldHVybiBBcnJheS5mcm9tKE9iamVjdC5lbnRyaWVzKGxvY2FsU2V0dGluZ3MpKVxuICAgICAgICAuZmlsdGVyKChbcGF0LCBfXSkgPT4gKG5ldyBSZWdFeHAocGF0KSkudGVzdCh1cmwpKVxuICAgICAgICAuc29ydCgoZTEsIGUyKSA9PiAob3IxKGUxWzFdLnByaW9yaXR5KSAtIG9yMShlMlsxXS5wcmlvcml0eSkpKVxuICAgICAgICAucmVkdWNlKChhY2MsIFtfLCBjdXJdKSA9PiBPYmplY3QuYXNzaWduKGFjYywgY3VyKSwge30gYXMgSVNpdGVDb25maWcpO1xufVxuIiwiZXhwb3J0IGNvbnN0IG5vbkxpdGVyYWxLZXlzOiB7W2tleTogc3RyaW5nXTogc3RyaW5nfSA9IHtcbiAgICBcIiBcIjogXCI8U3BhY2U+XCIsXG4gICAgXCI8XCI6IFwiPGx0PlwiLFxuICAgIFwiQXJyb3dEb3duXCI6IFwiPERvd24+XCIsXG4gICAgXCJBcnJvd0xlZnRcIjogXCI8TGVmdD5cIixcbiAgICBcIkFycm93UmlnaHRcIjogXCI8UmlnaHQ+XCIsXG4gICAgXCJBcnJvd1VwXCI6IFwiPFVwPlwiLFxuICAgIFwiQmFja3NwYWNlXCI6IFwiPEJTPlwiLFxuICAgIFwiRGVsZXRlXCI6IFwiPERlbD5cIixcbiAgICBcIkVuZFwiOiBcIjxFbmQ+XCIsXG4gICAgXCJFbnRlclwiOiBcIjxDUj5cIixcbiAgICBcIkVzY2FwZVwiOiBcIjxFc2M+XCIsXG4gICAgXCJGMVwiOiBcIjxGMT5cIixcbiAgICBcIkYxMFwiOiBcIjxGMTA+XCIsXG4gICAgXCJGMTFcIjogXCI8RjExPlwiLFxuICAgIFwiRjEyXCI6IFwiPEYxMj5cIixcbiAgICBcIkYxM1wiOiBcIjxGMTM+XCIsXG4gICAgXCJGMTRcIjogXCI8RjE0PlwiLFxuICAgIFwiRjE1XCI6IFwiPEYxNT5cIixcbiAgICBcIkYxNlwiOiBcIjxGMTY+XCIsXG4gICAgXCJGMTdcIjogXCI8RjE3PlwiLFxuICAgIFwiRjE4XCI6IFwiPEYxOD5cIixcbiAgICBcIkYxOVwiOiBcIjxGMTk+XCIsXG4gICAgXCJGMlwiOiBcIjxGMj5cIixcbiAgICBcIkYyMFwiOiBcIjxGMjA+XCIsXG4gICAgXCJGMjFcIjogXCI8RjIxPlwiLFxuICAgIFwiRjIyXCI6IFwiPEYyMj5cIixcbiAgICBcIkYyM1wiOiBcIjxGMjM+XCIsXG4gICAgXCJGMjRcIjogXCI8RjI0PlwiLFxuICAgIFwiRjNcIjogXCI8RjM+XCIsXG4gICAgXCJGNFwiOiBcIjxGND5cIixcbiAgICBcIkY1XCI6IFwiPEY1PlwiLFxuICAgIFwiRjZcIjogXCI8RjY+XCIsXG4gICAgXCJGN1wiOiBcIjxGNz5cIixcbiAgICBcIkY4XCI6IFwiPEY4PlwiLFxuICAgIFwiRjlcIjogXCI8Rjk+XCIsXG4gICAgXCJIb21lXCI6IFwiPEhvbWU+XCIsXG4gICAgXCJQYWdlRG93blwiOiBcIjxQYWdlRG93bj5cIixcbiAgICBcIlBhZ2VVcFwiOiBcIjxQYWdlVXA+XCIsXG4gICAgXCJUYWJcIjogXCI8VGFiPlwiLFxuICAgIFwiXFxcXFwiOiBcIjxCc2xhc2g+XCIsXG4gICAgXCJ8XCI6IFwiPEJhcj5cIixcbn07XG5cbmNvbnN0IG5vbkxpdGVyYWxWaW1LZXlzID0gT2JqZWN0LmZyb21FbnRyaWVzKE9iamVjdFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmVudHJpZXMobm9uTGl0ZXJhbEtleXMpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKChbeCwgeV0pID0+IFt5LCB4XSkpO1xuXG5jb25zdCBub25MaXRlcmFsS2V5Q29kZXM6IHtba2V5OiBzdHJpbmddOiBudW1iZXJ9ID0ge1xuICAgIFwiRW50ZXJcIjogICAgICAxMyxcbiAgICBcIlNwYWNlXCI6ICAgICAgMzIsXG4gICAgXCJUYWJcIjogICAgICAgIDksXG4gICAgXCJEZWxldGVcIjogICAgIDQ2LFxuICAgIFwiRW5kXCI6ICAgICAgICAzNSxcbiAgICBcIkhvbWVcIjogICAgICAgMzYsXG4gICAgXCJJbnNlcnRcIjogICAgIDQ1LFxuICAgIFwiUGFnZURvd25cIjogICAzNCxcbiAgICBcIlBhZ2VVcFwiOiAgICAgMzMsXG4gICAgXCJBcnJvd0Rvd25cIjogIDQwLFxuICAgIFwiQXJyb3dMZWZ0XCI6ICAzNyxcbiAgICBcIkFycm93UmlnaHRcIjogMzksXG4gICAgXCJBcnJvd1VwXCI6ICAgIDM4LFxuICAgIFwiRXNjYXBlXCI6ICAgICAyNyxcbn07XG5cbi8vIEdpdmVuIGEgXCJzcGVjaWFsXCIga2V5IHJlcHJlc2VudGF0aW9uIChlLmcuIDxFbnRlcj4gb3IgPE0tbD4pLCByZXR1cm5zIGFuXG4vLyBhcnJheSBvZiB0aHJlZSBqYXZhc2NyaXB0IGtleWV2ZW50cywgdGhlIGZpcnN0IG9uZSByZXByZXNlbnRpbmcgdGhlXG4vLyBjb3JyZXNwb25kaW5nIGtleWRvd24sIHRoZSBzZWNvbmQgb25lIGEga2V5cHJlc3MgYW5kIHRoZSB0aGlyZCBvbmUgYSBrZXl1cFxuLy8gZXZlbnQuXG5mdW5jdGlvbiBtb2RLZXlUb0V2ZW50cyhrOiBzdHJpbmcpIHtcbiAgICBsZXQgbW9kcyA9IFwiXCI7XG4gICAgbGV0IGtleSA9IG5vbkxpdGVyYWxWaW1LZXlzW2tdO1xuICAgIGxldCBjdHJsS2V5ID0gZmFsc2U7XG4gICAgbGV0IGFsdEtleSA9IGZhbHNlO1xuICAgIGxldCBzaGlmdEtleSA9IGZhbHNlO1xuICAgIGlmIChrZXkgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICBjb25zdCBhcnIgPSBrLnNsaWNlKDEsIC0xKS5zcGxpdChcIi1cIik7XG4gICAgICAgIG1vZHMgPSBhcnJbMF07XG4gICAgICAgIGtleSA9IGFyclsxXTtcbiAgICAgICAgY3RybEtleSA9IC9jL2kudGVzdChtb2RzKTtcbiAgICAgICAgYWx0S2V5ID0gL2EvaS50ZXN0KG1vZHMpO1xuICAgICAgICBjb25zdCBzcGVjaWFsQ2hhciA9IFwiPFwiICsga2V5ICsgXCI+XCI7XG4gICAgICAgIGlmIChub25MaXRlcmFsVmltS2V5c1tzcGVjaWFsQ2hhcl0gIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgICAga2V5ID0gbm9uTGl0ZXJhbFZpbUtleXNbc3BlY2lhbENoYXJdO1xuICAgICAgICAgICAgc2hpZnRLZXkgPSBmYWxzZTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHNoaWZ0S2V5ID0ga2V5ICE9PSBrZXkudG9Mb2NhbGVMb3dlckNhc2UoKTtcbiAgICAgICAgfVxuICAgIH1cbiAgICAvLyBTb21lIHBhZ2VzIHJlbHkgb24ga2V5Q29kZXMgdG8gZmlndXJlIG91dCB3aGF0IGtleSB3YXMgcHJlc3NlZC4gVGhpcyBpc1xuICAgIC8vIGF3ZnVsIGJlY2F1c2Uga2V5Y29kZXMgYXJlbid0IGd1YXJhbnRlZWQgdG8gYmUgdGhlIHNhbWUgYWNycm9zc1xuICAgIC8vIGJyb3dzZXJzL09TL2tleWJvYXJkIGxheW91dHMgYnV0IHRyeSB0byBkbyB0aGUgcmlnaHQgdGhpbmcgYW55d2F5LlxuICAgIC8vIGh0dHBzOi8vZ2l0aHViLmNvbS9nbGFjYW1icmUvZmlyZW52aW0vaXNzdWVzLzcyM1xuICAgIGxldCBrZXlDb2RlID0gMDtcbiAgICBpZiAoL15bYS16QS1aMC05XSQvLnRlc3Qoa2V5KSkge1xuICAgICAgICBrZXlDb2RlID0ga2V5LmNoYXJDb2RlQXQoMCk7XG4gICAgfSBlbHNlIGlmIChub25MaXRlcmFsS2V5Q29kZXNba2V5XSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIGtleUNvZGUgPSBub25MaXRlcmFsS2V5Q29kZXNba2V5XTtcbiAgICB9XG4gICAgY29uc3QgaW5pdCA9IHsga2V5LCBrZXlDb2RlLCBjdHJsS2V5LCBhbHRLZXksIHNoaWZ0S2V5LCBidWJibGVzOiB0cnVlIH07XG4gICAgcmV0dXJuIFtcbiAgICAgICAgbmV3IEtleWJvYXJkRXZlbnQoXCJrZXlkb3duXCIsIGluaXQpLFxuICAgICAgICBuZXcgS2V5Ym9hcmRFdmVudChcImtleXByZXNzXCIsIGluaXQpLFxuICAgICAgICBuZXcgS2V5Ym9hcmRFdmVudChcImtleXVwXCIsIGluaXQpLFxuICAgIF07XG59XG5cbi8vIEdpdmVuIGEgXCJzaW1wbGVcIiBrZXkgKGUuZy4gYGFgLCBgMWDigKYpLCByZXR1cm5zIGFuIGFycmF5IG9mIHRocmVlIGphdmFzY3JpcHRcbi8vIGV2ZW50cyByZXByZXNlbnRpbmcgdGhlIGFjdGlvbiBvZiBwcmVzc2luZyB0aGUga2V5LlxuZnVuY3Rpb24ga2V5VG9FdmVudHMoa2V5OiBzdHJpbmcpIHtcbiAgICBjb25zdCBzaGlmdEtleSA9IGtleSAhPT0ga2V5LnRvTG9jYWxlTG93ZXJDYXNlKCk7XG4gICAgcmV0dXJuIFtcbiAgICAgICAgbmV3IEtleWJvYXJkRXZlbnQoXCJrZXlkb3duXCIsICB7IGtleSwgc2hpZnRLZXksIGJ1YmJsZXM6IHRydWUgfSksXG4gICAgICAgIG5ldyBLZXlib2FyZEV2ZW50KFwia2V5cHJlc3NcIiwgeyBrZXksIHNoaWZ0S2V5LCBidWJibGVzOiB0cnVlIH0pLFxuICAgICAgICBuZXcgS2V5Ym9hcmRFdmVudChcImtleXVwXCIsICAgIHsga2V5LCBzaGlmdEtleSwgYnViYmxlczogdHJ1ZSB9KSxcbiAgICBdO1xufVxuXG4vLyBHaXZlbiBhbiBhcnJheSBvZiBzdHJpbmcgcmVwcmVzZW50YXRpb24gb2Yga2V5cyAoZS5nLiBbXCJhXCIsIFwiPEVudGVyPlwiLCDigKZdKSxcbi8vIHJldHVybnMgYW4gYXJyYXkgb2YgamF2YXNjcmlwdCBrZXlib2FyZCBldmVudHMgdGhhdCBzaW11bGF0ZSB0aGVzZSBrZXlzXG4vLyBiZWluZyBwcmVzc2VkLlxuZXhwb3J0IGZ1bmN0aW9uIGtleXNUb0V2ZW50cyhrZXlzOiBzdHJpbmdbXSkge1xuICAgIC8vIENvZGUgdG8gc3BsaXQgbW9kIGtleXMgYW5kIG5vbi1tb2Qga2V5czpcbiAgICAvLyBjb25zdCBrZXlzID0gc3RyLm1hdGNoKC8oWzw+XVtePD5dK1s8Pl0pfChbXjw+XSspL2cpXG4gICAgLy8gaWYgKGtleXMgPT09IG51bGwpIHtcbiAgICAvLyAgICAgcmV0dXJuIFtdO1xuICAgIC8vIH1cbiAgICByZXR1cm4ga2V5cy5tYXAoKGtleSkgPT4ge1xuICAgICAgICBpZiAoa2V5WzBdID09PSBcIjxcIikge1xuICAgICAgICAgICAgcmV0dXJuIG1vZEtleVRvRXZlbnRzKGtleSk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGtleVRvRXZlbnRzKGtleSk7XG4gICAgfSkuZmxhdCgpO1xufVxuXG4vLyBUdXJucyBhIG5vbi1saXRlcmFsIGtleSAoZS5nLiBcIkVudGVyXCIpIGludG8gYSB2aW0tZXF1aXZhbGVudCBcIjxFbnRlcj5cIlxuZXhwb3J0IGZ1bmN0aW9uIHRyYW5zbGF0ZUtleShrZXk6IHN0cmluZykge1xuICAgIGlmIChub25MaXRlcmFsS2V5c1trZXldICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcmV0dXJuIG5vbkxpdGVyYWxLZXlzW2tleV07XG4gICAgfVxuICAgIHJldHVybiBrZXk7XG59XG5cbi8vIEFkZCBtb2RpZmllciBgbW9kYCAoYEFgLCBgQ2AsIGBTYOKApikgdG8gYHRleHRgIChhIHZpbSBrZXkgYGJgLCBgPEVudGVyPmAsXG4vLyBgPENTLXg+YOKApilcbmV4cG9ydCBmdW5jdGlvbiBhZGRNb2RpZmllcihtb2Q6IHN0cmluZywgdGV4dDogc3RyaW5nKSB7XG4gICAgbGV0IG1hdGNoO1xuICAgIGxldCBtb2RpZmllcnMgPSBcIlwiO1xuICAgIGxldCBrZXkgPSBcIlwiO1xuICAgIGlmICgobWF0Y2ggPSB0ZXh0Lm1hdGNoKC9ePChbQS1aXXsxLDV9KS0oLispPiQvKSkpIHtcbiAgICAgICAgbW9kaWZpZXJzID0gbWF0Y2hbMV07XG4gICAgICAgIGtleSA9IG1hdGNoWzJdO1xuICAgIH0gZWxzZSBpZiAoKG1hdGNoID0gdGV4dC5tYXRjaCgvXjwoLispPiQvKSkpIHtcbiAgICAgICAga2V5ID0gbWF0Y2hbMV07XG4gICAgfSBlbHNlIHtcbiAgICAgICAga2V5ID0gdGV4dDtcbiAgICB9XG4gICAgcmV0dXJuIFwiPFwiICsgbW9kICsgbW9kaWZpZXJzICsgXCItXCIgKyBrZXkgKyBcIj5cIjtcbn1cbiIsImxldCBjdXJIb3N0IDogc3RyaW5nO1xuXG4vLyBDYW4ndCBnZXQgY292ZXJhZ2UgZm9yIHRodW5kZXJiaXJkLlxuLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbmlmICgoYnJvd3NlciBhcyBhbnkpLmNvbXBvc2VTY3JpcHRzICE9PSB1bmRlZmluZWQgfHwgZG9jdW1lbnQubG9jYXRpb24uaHJlZiA9PT0gXCJhYm91dDpibGFuaz9jb21wb3NlXCIpIHtcbiAgICBjdXJIb3N0ID0gXCJ0aHVuZGVyYmlyZFwiO1xuLy8gQ2hyb21lIGRvZXNuJ3QgaGF2ZSBhIFwiYnJvd3NlclwiIG9iamVjdCwgaW5zdGVhZCBpdCB1c2VzIFwiY2hyb21lXCIuXG59IGVsc2UgaWYgKHdpbmRvdy5sb2NhdGlvbi5wcm90b2NvbCA9PT0gXCJtb3otZXh0ZW5zaW9uOlwiKSB7XG4gICAgY3VySG9zdCA9IFwiZmlyZWZveFwiO1xufSBlbHNlIGlmICh3aW5kb3cubG9jYXRpb24ucHJvdG9jb2wgPT09IFwiY2hyb21lLWV4dGVuc2lvbjpcIikge1xuICAgIGN1ckhvc3QgPSBcImNocm9tZVwiO1xufVxuXG4vLyBPbmx5IHVzYWJsZSBpbiBiYWNrZ3JvdW5kIHNjcmlwdCFcbmV4cG9ydCBmdW5jdGlvbiBpc0Nocm9tZSgpIHtcbiAgICAvLyBDYW4ndCBjb3ZlciBlcnJvciBjb25kaXRpb25cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChjdXJIb3N0ID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhyb3cgRXJyb3IoXCJVc2VkIGlzQ2hyb21lIGluIGNvbnRlbnQgc2NyaXB0IVwiKTtcbiAgICB9XG4gICAgcmV0dXJuIGN1ckhvc3QgPT09IFwiY2hyb21lXCI7XG59XG5leHBvcnQgZnVuY3Rpb24gaXNUaHVuZGVyYmlyZCgpIHtcbiAgICAvLyBDYW4ndCBjb3ZlciBlcnJvciBjb25kaXRpb25cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChjdXJIb3N0ID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhyb3cgRXJyb3IoXCJVc2VkIGlzVGh1bmRlcmJpcmQgaW4gY29udGVudCBzY3JpcHQhXCIpO1xuICAgIH1cbiAgICByZXR1cm4gY3VySG9zdCA9PT0gXCJ0aHVuZGVyYmlyZFwiO1xufVxuXG4vLyBSdW5zIENPREUgaW4gdGhlIHBhZ2UncyBjb250ZXh0IGJ5IHNldHRpbmcgdXAgYSBjdXN0b20gZXZlbnQgbGlzdGVuZXIsXG4vLyBlbWJlZGRpbmcgYSBzY3JpcHQgZWxlbWVudCB0aGF0IHJ1bnMgdGhlIHBpZWNlIG9mIGNvZGUgYW5kIGVtaXRzIGl0cyByZXN1bHRcbi8vIGFzIGFuIGV2ZW50LlxuZXhwb3J0IGZ1bmN0aW9uIGV4ZWN1dGVJblBhZ2UoY29kZTogc3RyaW5nKTogUHJvbWlzZTxhbnk+IHtcbiAgICByZXR1cm4gbmV3IFByb21pc2UoKHJlc29sdmUsIHJlamVjdCkgPT4ge1xuICAgICAgICBjb25zdCBzY3JpcHQgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwic2NyaXB0XCIpO1xuICAgICAgICBjb25zdCBldmVudElkID0gKG5ldyBVUkwoYnJvd3Nlci5ydW50aW1lLmdldFVSTChcIlwiKSkpLmhvc3RuYW1lICsgTWF0aC5yYW5kb20oKTtcbiAgICAgICAgc2NyaXB0LmlubmVySFRNTCA9IGAoYXN5bmMgKGV2SWQpID0+IHtcbiAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgbGV0IHJlc3VsdDtcbiAgICAgICAgICAgICAgICByZXN1bHQgPSBhd2FpdCAke2NvZGV9O1xuICAgICAgICAgICAgICAgIHdpbmRvdy5kaXNwYXRjaEV2ZW50KG5ldyBDdXN0b21FdmVudChldklkLCB7XG4gICAgICAgICAgICAgICAgICAgIGRldGFpbDoge1xuICAgICAgICAgICAgICAgICAgICAgICAgc3VjY2VzczogdHJ1ZSxcbiAgICAgICAgICAgICAgICAgICAgICAgIHJlc3VsdCxcbiAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgICAgICAgICB3aW5kb3cuZGlzcGF0Y2hFdmVudChuZXcgQ3VzdG9tRXZlbnQoZXZJZCwge1xuICAgICAgICAgICAgICAgICAgICBkZXRhaWw6IHsgc3VjY2VzczogZmFsc2UsIHJlYXNvbjogZSB9LFxuICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfSkoJHtKU09OLnN0cmluZ2lmeShldmVudElkKX0pYDtcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoZXZlbnRJZCwgKHsgZGV0YWlsIH06IGFueSkgPT4ge1xuICAgICAgICAgICAgc2NyaXB0LnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoc2NyaXB0KTtcbiAgICAgICAgICAgIGlmIChkZXRhaWwuc3VjY2Vzcykge1xuICAgICAgICAgICAgICAgIHJldHVybiByZXNvbHZlKGRldGFpbC5yZXN1bHQpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmV0dXJuIHJlamVjdChkZXRhaWwucmVhc29uKTtcbiAgICAgICAgfSwgeyBvbmNlOiB0cnVlIH0pO1xuICAgICAgICBkb2N1bWVudC5oZWFkLmFwcGVuZENoaWxkKHNjcmlwdCk7XG4gICAgfSk7XG59XG5cbi8vIFZhcmlvdXMgZmlsdGVycyB0aGF0IGFyZSB1c2VkIHRvIGNoYW5nZSB0aGUgYXBwZWFyYW5jZSBvZiB0aGUgQnJvd3NlckFjdGlvblxuLy8gaWNvbi5cbmNvbnN0IHN2Z3BhdGggPSBcImZpcmVudmltLnN2Z1wiO1xuY29uc3QgdHJhbnNmb3JtYXRpb25zID0ge1xuICAgIGRpc2FibGVkOiAoaW1nOiBVaW50OENsYW1wZWRBcnJheSkgPT4ge1xuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGltZy5sZW5ndGg7IGkgKz0gNCkge1xuICAgICAgICAgICAgLy8gU2tpcCB0cmFuc3BhcmVudCBwaXhlbHNcbiAgICAgICAgICAgIGlmIChpbWdbaSArIDNdID09PSAwKSB7XG4gICAgICAgICAgICAgICAgY29udGludWU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBjb25zdCBtZWFuID0gTWF0aC5mbG9vcigoaW1nW2ldICsgaW1nW2kgKyAxXSArIGltZ1tpICsgMl0pIC8gMyk7XG4gICAgICAgICAgICBpbWdbaV0gPSBtZWFuO1xuICAgICAgICAgICAgaW1nW2kgKyAxXSA9IG1lYW47XG4gICAgICAgICAgICBpbWdbaSArIDJdID0gbWVhbjtcbiAgICAgICAgfVxuICAgIH0sXG4gICAgZXJyb3I6IChpbWc6IFVpbnQ4Q2xhbXBlZEFycmF5KSA9PiB7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgaW1nLmxlbmd0aDsgaSArPSA0KSB7XG4gICAgICAgICAgICAvLyBUdXJuIHRyYW5zcGFyZW50IHBpeGVscyByZWRcbiAgICAgICAgICAgIGlmIChpbWdbaSArIDNdID09PSAwKSB7XG4gICAgICAgICAgICAgICAgaW1nW2ldID0gMjU1O1xuICAgICAgICAgICAgICAgIGltZ1tpICsgM10gPSAyNTU7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9LFxuICAgIG5vcm1hbDogKChfaW1nOiBVaW50OENsYW1wZWRBcnJheSkgPT4gKHVuZGVmaW5lZCBhcyBuZXZlcikpLFxuICAgIG5vdGlmaWNhdGlvbjogKGltZzogVWludDhDbGFtcGVkQXJyYXkpID0+IHtcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBpbWcubGVuZ3RoOyBpICs9IDQpIHtcbiAgICAgICAgICAgIC8vIFR1cm4gdHJhbnNwYXJlbnQgcGl4ZWxzIHllbGxvd1xuICAgICAgICAgICAgaWYgKGltZ1tpICsgM10gPT09IDApIHtcbiAgICAgICAgICAgICAgICBpbWdbaV0gPSAyNTU7XG4gICAgICAgICAgICAgICAgaW1nW2kgKyAxXSA9IDI1NTtcbiAgICAgICAgICAgICAgICBpbWdbaSArIDNdID0gMjU1O1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfSxcbn07XG5cbmV4cG9ydCB0eXBlIEljb25LaW5kID0ga2V5b2YgdHlwZW9mIHRyYW5zZm9ybWF0aW9ucztcblxuLy8gVGFrZXMgYW4gaWNvbiBraW5kIGFuZCBkaW1lbnNpb25zIGFzIHBhcmFtZXRlciwgZHJhd3MgdGhhdCB0byBhIGNhbnZhcyBhbmRcbi8vIHJldHVybnMgYSBwcm9taXNlIHRoYXQgd2lsbCBiZSByZXNvbHZlZCB3aXRoIHRoZSBjYW52YXMnIGltYWdlIGRhdGEuXG5leHBvcnQgZnVuY3Rpb24gZ2V0SWNvbkltYWdlRGF0YShraW5kOiBJY29uS2luZCwgd2lkdGggPSAzMiwgaGVpZ2h0ID0gMzIpIHtcbiAgICBjb25zdCBjYW52YXMgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwiY2FudmFzXCIpIGFzIEhUTUxDYW52YXNFbGVtZW50O1xuICAgIGNvbnN0IGN0eCA9IGNhbnZhcy5nZXRDb250ZXh0KFwiMmRcIik7XG4gICAgY29uc3QgaW1nID0gbmV3IEltYWdlKHdpZHRoLCBoZWlnaHQpO1xuICAgIGNvbnN0IHJlc3VsdCA9IG5ldyBQcm9taXNlKChyZXNvbHZlKSA9PiBpbWcuYWRkRXZlbnRMaXN0ZW5lcihcImxvYWRcIiwgKCkgPT4ge1xuICAgICAgICBjdHguZHJhd0ltYWdlKGltZywgMCwgMCwgd2lkdGgsIGhlaWdodCk7XG4gICAgICAgIGNvbnN0IGlkID0gY3R4LmdldEltYWdlRGF0YSgwLCAwLCB3aWR0aCwgaGVpZ2h0KTtcbiAgICAgICAgdHJhbnNmb3JtYXRpb25zW2tpbmRdKGlkLmRhdGEpO1xuICAgICAgICByZXNvbHZlKGlkKTtcbiAgICB9KSk7XG4gICAgaW1nLnNyYyA9IHN2Z3BhdGg7XG4gICAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLy8gR2l2ZW4gYSB1cmwgYW5kIGEgc2VsZWN0b3IsIHRyaWVzIHRvIGNvbXB1dGUgYSBuYW1lIHRoYXQgd2lsbCBiZSB1bmlxdWUsXG4vLyBzaG9ydCBhbmQgcmVhZGFibGUgZm9yIHRoZSB1c2VyLlxuZXhwb3J0IGZ1bmN0aW9uIHRvRmlsZU5hbWUoZm9ybWF0U3RyaW5nOiBzdHJpbmcsIHVybDogc3RyaW5nLCBpZDogc3RyaW5nLCBsYW5ndWFnZTogc3RyaW5nKSB7XG4gICAgbGV0IHBhcnNlZFVSTDogeyBob3N0bmFtZTogc3RyaW5nLCBwYXRobmFtZTogc3RyaW5nIH07XG4gICAgdHJ5IHtcbiAgICAgICAgcGFyc2VkVVJMID0gbmV3IFVSTCh1cmwpO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgLy8gT25seSBoYXBwZW5zIHdpdGggdGh1bmRlcmJpcmQsIHdoZXJlIHdlIGNhbid0IGdldCBjb3ZlcmFnZVxuICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICBwYXJzZWRVUkwgPSB7IGhvc3RuYW1lOiAndGh1bmRlcmJpcmQnLCBwYXRobmFtZTogJ21haWwnIH07XG4gICAgfVxuXG4gICAgY29uc3Qgc2FuaXRpemUgPSAoczogc3RyaW5nKSA9PiAocy5tYXRjaCgvW2EtekEtWjAtOV0rL2cpIHx8IFtdKS5qb2luKFwiLVwiKTtcblxuICAgIGNvbnN0IGV4cGFuZCA9IChwYXR0ZXJuOiBzdHJpbmcpID0+IHtcbiAgICAgICAgY29uc3Qgbm9CcmFja2V0cyA9IHBhdHRlcm4uc2xpY2UoMSwgLTEpO1xuICAgICAgICBjb25zdCBbc3ltYm9sLCBsZW5ndGhdID0gbm9CcmFja2V0cy5zcGxpdChcIiVcIik7XG4gICAgICAgIGxldCB2YWx1ZSA9IFwiXCI7XG4gICAgICAgIHN3aXRjaCAoc3ltYm9sKSB7XG4gICAgICAgICAgICBjYXNlIFwiaG9zdG5hbWVcIjogdmFsdWUgPSBwYXJzZWRVUkwuaG9zdG5hbWU7IGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBcInBhdGhuYW1lXCI6IHZhbHVlID0gc2FuaXRpemUocGFyc2VkVVJMLnBhdGhuYW1lKTsgYnJlYWs7XG4gICAgICAgICAgICBjYXNlIFwic2VsZWN0b3JcIjogdmFsdWUgPSBzYW5pdGl6ZShpZC5yZXBsYWNlKC86bnRoLW9mLXR5cGUvZywgXCJcIikpOyBicmVhaztcbiAgICAgICAgICAgIGNhc2UgXCJ0aW1lc3RhbXBcIjogdmFsdWUgPSBzYW5pdGl6ZSgobmV3IERhdGUoKSkudG9JU09TdHJpbmcoKSk7IGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBcImV4dGVuc2lvblwiOiB2YWx1ZSA9IGxhbmd1YWdlVG9FeHRlbnNpb25zKGxhbmd1YWdlKTsgYnJlYWs7XG4gICAgICAgICAgICBkZWZhdWx0OiBjb25zb2xlLmVycm9yKGBVbnJlY29nbml6ZWQgZmlsZW5hbWUgcGF0dGVybjogJHtwYXR0ZXJufWApO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiB2YWx1ZS5zbGljZSgtbGVuZ3RoKTtcbiAgICB9O1xuXG4gICAgbGV0IHJlc3VsdCA9IGZvcm1hdFN0cmluZztcbiAgICBjb25zdCBtYXRjaGVzID0gZm9ybWF0U3RyaW5nLm1hdGNoKC97W159XSp9L2cpO1xuICAgIGlmIChtYXRjaGVzICE9PSBudWxsKSB7XG4gICAgICAgIGZvciAoY29uc3QgbWF0Y2ggb2YgbWF0Y2hlcy5maWx0ZXIocyA9PiBzICE9PSB1bmRlZmluZWQpKSB7XG4gICAgICAgICAgICByZXN1bHQgPSByZXN1bHQucmVwbGFjZShtYXRjaCwgZXhwYW5kKG1hdGNoKSk7XG4gICAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLy8gR2l2ZW4gYSBsYW5ndWFnZSBuYW1lLCByZXR1cm5zIGEgZmlsZW5hbWUgZXh0ZW5zaW9uLiBDYW4gcmV0dXJuIHVuZGVmaW5lZC5cbmV4cG9ydCBmdW5jdGlvbiBsYW5ndWFnZVRvRXh0ZW5zaW9ucyhsYW5ndWFnZTogc3RyaW5nKSB7XG4gICAgaWYgKGxhbmd1YWdlID09PSB1bmRlZmluZWQgfHwgbGFuZ3VhZ2UgPT09IG51bGwpIHtcbiAgICAgICAgbGFuZ3VhZ2UgPSBcIlwiO1xuICAgIH1cbiAgICBjb25zdCBsYW5nID0gbGFuZ3VhZ2UudG9Mb3dlckNhc2UoKTtcbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIHN3aXRjaCAobGFuZykge1xuICAgICAgICBjYXNlIFwiYXBsXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJhcGxcIjtcbiAgICAgICAgY2FzZSBcImJyYWluZnVja1wiOiAgICAgICAgcmV0dXJuIFwiYmZcIjtcbiAgICAgICAgY2FzZSBcImNcIjogICAgICAgICAgICAgICAgcmV0dXJuIFwiY1wiO1xuICAgICAgICBjYXNlIFwiYyNcIjogICAgICAgICAgICAgICByZXR1cm4gXCJjc1wiO1xuICAgICAgICBjYXNlIFwiYysrXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJjcHBcIjtcbiAgICAgICAgY2FzZSBcImNleWxvblwiOiAgICAgICAgICAgcmV0dXJuIFwiY2V5bG9uXCI7XG4gICAgICAgIGNhc2UgXCJjbGlrZVwiOiAgICAgICAgICAgIHJldHVybiBcImNcIjtcbiAgICAgICAgY2FzZSBcImNsb2p1cmVcIjogICAgICAgICAgcmV0dXJuIFwiY2xqXCI7XG4gICAgICAgIGNhc2UgXCJjbWFrZVwiOiAgICAgICAgICAgIHJldHVybiBcIi5jbWFrZVwiO1xuICAgICAgICBjYXNlIFwiY29ib2xcIjogICAgICAgICAgICByZXR1cm4gXCJjYmxcIjtcbiAgICAgICAgY2FzZSBcImNvZmZlZXNjcmlwdFwiOiAgICAgcmV0dXJuIFwiY29mZmVlXCI7XG4gICAgICAgIGNhc2UgXCJjb21tb25saXNwXCI6ICAgICAgcmV0dXJuIFwibGlzcFwiO1xuICAgICAgICBjYXNlIFwiY3J5c3RhbFwiOiAgICAgICAgICByZXR1cm4gXCJjclwiO1xuICAgICAgICBjYXNlIFwiY3NzXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJjc3NcIjtcbiAgICAgICAgY2FzZSBcImN5dGhvblwiOiAgICAgICAgICAgcmV0dXJuIFwicHlcIjtcbiAgICAgICAgY2FzZSBcImRcIjogICAgICAgICAgICAgICAgcmV0dXJuIFwiZFwiO1xuICAgICAgICBjYXNlIFwiZGFydFwiOiAgICAgICAgICAgICByZXR1cm4gXCJkYXJ0XCI7XG4gICAgICAgIGNhc2UgXCJkaWZmXCI6ICAgICAgICAgICAgIHJldHVybiBcImRpZmZcIjtcbiAgICAgICAgY2FzZSBcImRvY2tlcmZpbGVcIjogICAgICAgcmV0dXJuIFwiZG9ja2VyZmlsZVwiO1xuICAgICAgICBjYXNlIFwiZHRkXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJkdGRcIjtcbiAgICAgICAgY2FzZSBcImR5bGFuXCI6ICAgICAgICAgICAgcmV0dXJuIFwiZHlsYW5cIjtcbiAgICAgICAgLy8gRWlmZmVsIHdhcyB0aGVyZSBmaXJzdCBidXQgZWxpeGlyIHNlZW1zIG1vcmUgbGlrZWx5XG4gICAgICAgIC8vIGNhc2UgXCJlaWZmZWxcIjogICAgICAgICAgIHJldHVybiBcImVcIjtcbiAgICAgICAgY2FzZSBcImVsaXhpclwiOiAgICAgICAgICAgcmV0dXJuIFwiZVwiO1xuICAgICAgICBjYXNlIFwiZWxtXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJlbG1cIjtcbiAgICAgICAgY2FzZSBcImVybGFuZ1wiOiAgICAgICAgICAgcmV0dXJuIFwiZXJsXCI7XG4gICAgICAgIGNhc2UgXCJmI1wiOiAgICAgICAgICAgICAgIHJldHVybiBcImZzXCI7XG4gICAgICAgIGNhc2UgXCJmYWN0b3JcIjogICAgICAgICAgIHJldHVybiBcImZhY3RvclwiO1xuICAgICAgICBjYXNlIFwiZm9ydGhcIjogICAgICAgICAgICByZXR1cm4gXCJmdGhcIjtcbiAgICAgICAgY2FzZSBcImZvcnRyYW5cIjogICAgICAgICAgcmV0dXJuIFwiZjkwXCI7XG4gICAgICAgIGNhc2UgXCJnYXNcIjogICAgICAgICAgICAgIHJldHVybiBcImFzbVwiO1xuICAgICAgICBjYXNlIFwiZ29cIjogICAgICAgICAgICAgICByZXR1cm4gXCJnb1wiO1xuICAgICAgICAvLyBHRk06IENvZGVNaXJyb3IncyBnaXRodWItZmxhdm9yZWQgbWFya2Rvd25cbiAgICAgICAgY2FzZSBcImdmbVwiOiAgICAgICAgICAgICAgcmV0dXJuIFwibWRcIjtcbiAgICAgICAgY2FzZSBcImdyb292eVwiOiAgICAgICAgICAgcmV0dXJuIFwiZ3Jvb3Z5XCI7XG4gICAgICAgIGNhc2UgXCJoYW1sXCI6ICAgICAgICAgICAgIHJldHVybiBcImhhbWxcIjtcbiAgICAgICAgY2FzZSBcImhhbmRsZWJhcnNcIjogICAgICAgcmV0dXJuIFwiaGJzXCI7XG4gICAgICAgIGNhc2UgXCJoYXNrZWxsXCI6ICAgICAgICAgIHJldHVybiBcImhzXCI7XG4gICAgICAgIGNhc2UgXCJoYXhlXCI6ICAgICAgICAgICAgIHJldHVybiBcImh4XCI7XG4gICAgICAgIGNhc2UgXCJodG1sXCI6ICAgICAgICAgICAgIHJldHVybiBcImh0bWxcIjtcbiAgICAgICAgY2FzZSBcImh0bWxlbWJlZGRlZFwiOiAgICAgcmV0dXJuIFwiaHRtbFwiO1xuICAgICAgICBjYXNlIFwiaHRtbG1peGVkXCI6ICAgICAgICByZXR1cm4gXCJodG1sXCI7XG4gICAgICAgIGNhc2UgXCJpcHl0aG9uXCI6ICAgICAgICAgIHJldHVybiBcInB5XCI7XG4gICAgICAgIGNhc2UgXCJpcHl0aG9uZm1cIjogICAgICAgIHJldHVybiBcIm1kXCI7XG4gICAgICAgIGNhc2UgXCJqYXZhXCI6ICAgICAgICAgICAgIHJldHVybiBcImphdmFcIjtcbiAgICAgICAgY2FzZSBcImphdmFzY3JpcHRcIjogICAgICAgcmV0dXJuIFwianNcIjtcbiAgICAgICAgY2FzZSBcImppbmphMlwiOiAgICAgICAgICAgcmV0dXJuIFwiamluamFcIjtcbiAgICAgICAgY2FzZSBcImp1bGlhXCI6ICAgICAgICAgICAgcmV0dXJuIFwiamxcIjtcbiAgICAgICAgY2FzZSBcImpzeFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwianN4XCI7XG4gICAgICAgIGNhc2UgXCJrb3RsaW5cIjogICAgICAgICAgIHJldHVybiBcImt0XCI7XG4gICAgICAgIGNhc2UgXCJsYXRleFwiOiAgICAgICAgICAgIHJldHVybiBcImxhdGV4XCI7XG4gICAgICAgIGNhc2UgXCJsZXNzXCI6ICAgICAgICAgICAgIHJldHVybiBcImxlc3NcIjtcbiAgICAgICAgY2FzZSBcImx1YVwiOiAgICAgICAgICAgICAgcmV0dXJuIFwibHVhXCI7XG4gICAgICAgIGNhc2UgXCJtYXJrZG93blwiOiAgICAgICAgIHJldHVybiBcIm1kXCI7XG4gICAgICAgIGNhc2UgXCJtbGxpa2VcIjogICAgICAgICAgICByZXR1cm4gXCJtbFwiO1xuICAgICAgICBjYXNlIFwib2NhbWxcIjogICAgICAgICAgICByZXR1cm4gXCJtbFwiO1xuICAgICAgICBjYXNlIFwib2N0YXZlXCI6ICAgICAgICAgICByZXR1cm4gXCJtXCI7XG4gICAgICAgIGNhc2UgXCJwYXNjYWxcIjogICAgICAgICAgIHJldHVybiBcInBhc1wiO1xuICAgICAgICBjYXNlIFwicGVybFwiOiAgICAgICAgICAgICByZXR1cm4gXCJwbFwiO1xuICAgICAgICBjYXNlIFwicGhwXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJwaHBcIjtcbiAgICAgICAgY2FzZSBcInBvd2Vyc2hlbGxcIjogICAgICAgcmV0dXJuIFwicHMxXCI7XG4gICAgICAgIGNhc2UgXCJweXRob25cIjogICAgICAgICAgIHJldHVybiBcInB5XCI7XG4gICAgICAgIGNhc2UgXCJyXCI6ICAgICAgICAgICAgICAgIHJldHVybiBcInJcIjtcbiAgICAgICAgY2FzZSBcInJzdFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwicnN0XCI7XG4gICAgICAgIGNhc2UgXCJydWJ5XCI6ICAgICAgICAgICAgIHJldHVybiBcInJ1YnlcIjtcbiAgICAgICAgY2FzZSBcInJ1c3RcIjogICAgICAgICAgICAgcmV0dXJuIFwicnNcIjtcbiAgICAgICAgY2FzZSBcInNhc1wiOiAgICAgICAgICAgICAgcmV0dXJuIFwic2FzXCI7XG4gICAgICAgIGNhc2UgXCJzYXNzXCI6ICAgICAgICAgICAgIHJldHVybiBcInNhc3NcIjtcbiAgICAgICAgY2FzZSBcInNjYWxhXCI6ICAgICAgICAgICAgcmV0dXJuIFwic2NhbGFcIjtcbiAgICAgICAgY2FzZSBcInNjaGVtZVwiOiAgICAgICAgICAgcmV0dXJuIFwic2NtXCI7XG4gICAgICAgIGNhc2UgXCJzY3NzXCI6ICAgICAgICAgICAgIHJldHVybiBcInNjc3NcIjtcbiAgICAgICAgY2FzZSBcInNtYWxsdGFsa1wiOiAgICAgICAgcmV0dXJuIFwic3RcIjtcbiAgICAgICAgY2FzZSBcInNoZWxsXCI6ICAgICAgICAgICAgcmV0dXJuIFwic2hcIjtcbiAgICAgICAgY2FzZSBcInNxbFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwic3FsXCI7XG4gICAgICAgIGNhc2UgXCJzdGV4XCI6ICAgICAgICAgICAgIHJldHVybiBcImxhdGV4XCI7XG4gICAgICAgIGNhc2UgXCJzd2lmdFwiOiAgICAgICAgICAgIHJldHVybiBcInN3aWZ0XCI7XG4gICAgICAgIGNhc2UgXCJ0Y2xcIjogICAgICAgICAgICAgIHJldHVybiBcInRjbFwiO1xuICAgICAgICBjYXNlIFwidG9tbFwiOiAgICAgICAgICAgICByZXR1cm4gXCJ0b21sXCI7XG4gICAgICAgIGNhc2UgXCJ0d2lnXCI6ICAgICAgICAgICAgIHJldHVybiBcInR3aWdcIjtcbiAgICAgICAgY2FzZSBcInR5cGVzY3JpcHRcIjogICAgICAgcmV0dXJuIFwidHNcIjtcbiAgICAgICAgY2FzZSBcInZiXCI6ICAgICAgICAgICAgICAgcmV0dXJuIFwidmJcIjtcbiAgICAgICAgY2FzZSBcInZic2NyaXB0XCI6ICAgICAgICAgcmV0dXJuIFwidmJzXCI7XG4gICAgICAgIGNhc2UgXCJ2ZXJpbG9nXCI6ICAgICAgICAgIHJldHVybiBcInN2XCI7XG4gICAgICAgIGNhc2UgXCJ2aGRsXCI6ICAgICAgICAgICAgIHJldHVybiBcInZoZGxcIjtcbiAgICAgICAgY2FzZSBcInhtbFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwieG1sXCI7XG4gICAgICAgIGNhc2UgXCJ5YW1sXCI6ICAgICAgICAgICAgIHJldHVybiBcInlhbWxcIjtcbiAgICAgICAgY2FzZSBcIno4MFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwiejhhXCI7XG4gICAgfVxuICAgIHJldHVybiBcInR4dFwiO1xufVxuXG4vLyBNYWtlIHRzbGludCBoYXBweVxuY29uc3QgZm9udEZhbWlseSA9IFwiZm9udC1mYW1pbHlcIjtcblxuLy8gQ2FuJ3QgYmUgdGVzdGVkIGUyZSA6L1xuLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbmV4cG9ydCBmdW5jdGlvbiBwYXJzZVNpbmdsZUd1aWZvbnQoZ3VpZm9udDogc3RyaW5nLCBkZWZhdWx0czogYW55KSB7XG4gICAgY29uc3Qgb3B0aW9ucyA9IGd1aWZvbnQuc3BsaXQoXCI6XCIpO1xuICAgIGNvbnN0IHJlc3VsdCA9IE9iamVjdC5hc3NpZ24oe30sIGRlZmF1bHRzKTtcbiAgICBpZiAoL15bYS16QS1aMC05XSskLy50ZXN0KG9wdGlvbnNbMF0pKSB7XG4gICAgICAgIHJlc3VsdFtmb250RmFtaWx5XSA9IG9wdGlvbnNbMF07XG4gICAgfSBlbHNlIHtcbiAgICAgICAgcmVzdWx0W2ZvbnRGYW1pbHldID0gSlNPTi5zdHJpbmdpZnkob3B0aW9uc1swXSk7XG4gICAgfVxuICAgIGlmIChkZWZhdWx0c1tmb250RmFtaWx5XSkge1xuICAgICAgICByZXN1bHRbZm9udEZhbWlseV0gKz0gYCwgJHtkZWZhdWx0c1tmb250RmFtaWx5XX1gO1xuICAgIH1cbiAgICByZXR1cm4gb3B0aW9ucy5zbGljZSgxKS5yZWR1Y2UoKGFjYywgb3B0aW9uKSA9PiB7XG4gICAgICAgICAgICBzd2l0Y2ggKG9wdGlvblswXSkge1xuICAgICAgICAgICAgICAgIGNhc2UgXCJoXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtc2l6ZVwiXSA9IGAke29wdGlvbi5zbGljZSgxKX1wdGA7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJiXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtd2VpZ2h0XCJdID0gXCJib2xkXCI7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJpXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtc3R5bGVcIl0gPSBcIml0YWxpY1wiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwidVwiOlxuICAgICAgICAgICAgICAgICAgICBhY2NbXCJ0ZXh0LWRlY29yYXRpb25cIl0gPSBcInVuZGVybGluZVwiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwic1wiOlxuICAgICAgICAgICAgICAgICAgICBhY2NbXCJ0ZXh0LWRlY29yYXRpb25cIl0gPSBcImxpbmUtdGhyb3VnaFwiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwid1wiOiAvLyBDYW4ndCBzZXQgZm9udCB3aWR0aC4gV291bGQgaGF2ZSB0byBhZGp1c3QgY2VsbCB3aWR0aC5cbiAgICAgICAgICAgICAgICBjYXNlIFwiY1wiOiAvLyBDYW4ndCBzZXQgY2hhcmFjdGVyIHNldFxuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBhY2M7XG4gICAgICAgIH0sIHJlc3VsdCBhcyBhbnkpO1xufTtcblxuLy8gUGFyc2VzIGEgZ3VpZm9udCBkZWNsYXJhdGlvbiBhcyBkZXNjcmliZWQgaW4gYDpoIEUyNDRgXG4vLyBkZWZhdWx0czogZGVmYXVsdCB2YWx1ZSBmb3IgZWFjaCBvZi5cbi8vIENhbid0IGJlIHRlc3RlZCBlMmUgOi9cbi8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG5leHBvcnQgZnVuY3Rpb24gcGFyc2VHdWlmb250KGd1aWZvbnQ6IHN0cmluZywgZGVmYXVsdHM6IGFueSkge1xuICAgIGNvbnN0IGZvbnRzID0gZ3VpZm9udC5zcGxpdChcIixcIikucmV2ZXJzZSgpO1xuICAgIHJldHVybiBmb250cy5yZWR1Y2UoKGFjYywgY3VyKSA9PiBwYXJzZVNpbmdsZUd1aWZvbnQoY3VyLCBhY2MpLCBkZWZhdWx0cyk7XG59XG5cbi8vIENvbXB1dGVzIGEgdW5pcXVlIHNlbGVjdG9yIGZvciBpdHMgYXJndW1lbnQuXG5leHBvcnQgZnVuY3Rpb24gY29tcHV0ZVNlbGVjdG9yKGVsZW1lbnQ6IEhUTUxFbGVtZW50KSB7XG4gICAgZnVuY3Rpb24gdW5pcXVlU2VsZWN0b3IoZTogSFRNTEVsZW1lbnQpOiBzdHJpbmcge1xuICAgICAgICAvLyBPbmx5IG1hdGNoaW5nIGFscGhhbnVtZXJpYyBzZWxlY3RvcnMgYmVjYXVzZSBvdGhlcnMgY2hhcnMgbWlnaHQgaGF2ZSBzcGVjaWFsIG1lYW5pbmcgaW4gQ1NTXG4gICAgICAgIGlmIChlLmlkICYmIGUuaWQubWF0Y2goXCJeW2EtekEtWjAtOV8tXSskXCIpKSB7XG4gICAgICAgICAgICBjb25zdCBpZCA9IGUudGFnTmFtZSArIGBbaWQ9XCIke2UuaWR9XCJdYDtcbiAgICAgICAgICAgIGlmIChkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKGlkKS5sZW5ndGggPT09IDEpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgLy8gSWYgd2UgcmVhY2hlZCB0aGUgdG9wIG9mIHRoZSBkb2N1bWVudFxuICAgICAgICBpZiAoIWUucGFyZW50RWxlbWVudCkgeyByZXR1cm4gXCJIVE1MXCI7IH1cbiAgICAgICAgLy8gQ29tcHV0ZSB0aGUgcG9zaXRpb24gb2YgdGhlIGVsZW1lbnRcbiAgICAgICAgY29uc3QgaW5kZXggPVxuICAgICAgICAgICAgQXJyYXkuZnJvbShlLnBhcmVudEVsZW1lbnQuY2hpbGRyZW4pXG4gICAgICAgICAgICAgICAgLmZpbHRlcihjaGlsZCA9PiBjaGlsZC50YWdOYW1lID09PSBlLnRhZ05hbWUpXG4gICAgICAgICAgICAgICAgLmluZGV4T2YoZSkgKyAxO1xuICAgICAgICByZXR1cm4gYCR7dW5pcXVlU2VsZWN0b3IoZS5wYXJlbnRFbGVtZW50KX0gPiAke2UudGFnTmFtZX06bnRoLW9mLXR5cGUoJHtpbmRleH0pYDtcbiAgICB9XG4gICAgcmV0dXJuIHVuaXF1ZVNlbGVjdG9yKGVsZW1lbnQpO1xufVxuXG4vLyBUdXJucyBhIG51bWJlciBpbnRvIGl0cyBoYXNoKzYgbnVtYmVyIGhleGFkZWNpbWFsIHJlcHJlc2VudGF0aW9uLlxuZXhwb3J0IGZ1bmN0aW9uIHRvSGV4Q3NzKG46IG51bWJlcikge1xuICAgIGlmIChuID09PSB1bmRlZmluZWQpXG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgY29uc3Qgc3RyID0gbi50b1N0cmluZygxNik7XG4gICAgLy8gUGFkIHdpdGggbGVhZGluZyB6ZXJvc1xuICAgIHJldHVybiBcIiNcIiArIChuZXcgQXJyYXkoNiAtIHN0ci5sZW5ndGgpKS5maWxsKFwiMFwiKS5qb2luKFwiXCIpICsgc3RyO1xufVxuXG4iLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHR2YXIgY2FjaGVkTW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXTtcblx0aWYgKGNhY2hlZE1vZHVsZSAhPT0gdW5kZWZpbmVkKSB7XG5cdFx0cmV0dXJuIGNhY2hlZE1vZHVsZS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdLmNhbGwobW9kdWxlLmV4cG9ydHMsIG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuIiwiLy8gZGVmaW5lIGdldHRlciBmdW5jdGlvbnMgZm9yIGhhcm1vbnkgZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5kID0gKGV4cG9ydHMsIGRlZmluaXRpb24pID0+IHtcblx0Zm9yKHZhciBrZXkgaW4gZGVmaW5pdGlvbikge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhkZWZpbml0aW9uLCBrZXkpICYmICFfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZXhwb3J0cywga2V5KSkge1xuXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIGtleSwgeyBlbnVtZXJhYmxlOiB0cnVlLCBnZXQ6IGRlZmluaXRpb25ba2V5XSB9KTtcblx0XHR9XG5cdH1cbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5vID0gKG9iaiwgcHJvcCkgPT4gKE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChvYmosIHByb3ApKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsImltcG9ydCB7IEtleWRvd25IYW5kbGVyIH0gZnJvbSBcIi4vS2V5SGFuZGxlclwiO1xuaW1wb3J0IHsgY29uZlJlYWR5LCBnZXRHbG9iYWxDb25mLCBHbG9iYWxTZXR0aW5ncyB9IGZyb20gXCIuL3V0aWxzL2NvbmZpZ3VyYXRpb25cIjtcbmltcG9ydCB7IGdldFBhZ2VQcm94eSB9IGZyb20gXCIuL3BhZ2VcIjtcbmltcG9ydCB7IGlzQ2hyb21lIH0gZnJvbSBcIi4vdXRpbHMvdXRpbHNcIjtcbmltcG9ydCB7IHNldHVwSW5wdXQgfSBmcm9tIFwiLi9pbnB1dFwiO1xuXG5jb25zdCBjb25uZWN0aW9uUHJvbWlzZSA9IGJyb3dzZXIucnVudGltZS5zZW5kTWVzc2FnZSh7IGZ1bmNOYW1lOiBbXCJnZXROZW92aW1JbnN0YW5jZVwiXSB9KTtcbmNvbnN0IHBhZ2VMb2FkZWQgPSBuZXcgUHJvbWlzZSgocmVzb2x2ZSwgcmVqZWN0KSA9PiB7XG4gICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJsb2FkXCIsIHJlc29sdmUpO1xuICAgIHNldFRpbWVvdXQocmVqZWN0LCAxMDAwMClcbn0pO1xuXG5jbGFzcyBCcm93c2VyS2V5SGFuZGxlciBleHRlbmRzIEtleWRvd25IYW5kbGVyIHtcblxuICAgIGNvbnN0cnVjdG9yKHByaXZhdGUga2V5SGFuZGxlcjogSFRNTEVsZW1lbnQsIHNldHRpbmdzOiBHbG9iYWxTZXR0aW5ncykge1xuICAgICAgICBzdXBlcihrZXlIYW5kbGVyLCBzZXR0aW5ncyk7XG5cbiAgICAgICAgY29uc3QgYWNjZXB0SW5wdXQgPSAoKGV2dDogYW55KSA9PiB7XG4gICAgICAgICAgICB0aGlzLmVtaXQoXCJpbnB1dFwiLCBldnQudGFyZ2V0LnZhbHVlKTtcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xuICAgICAgICAgICAgZXZ0LnN0b3BJbW1lZGlhdGVQcm9wYWdhdGlvbigpO1xuICAgICAgICB9KS5iaW5kKHRoaXMpO1xuXG4gICAgICAgIHRoaXMua2V5SGFuZGxlci5hZGRFdmVudExpc3RlbmVyKFwiaW5wdXRcIiwgKGV2dDogYW55KSA9PiB7XG4gICAgICAgICAgICBpZiAoZXZ0LmlzVHJ1c3RlZCAmJiAhZXZ0LmlzQ29tcG9zaW5nKSB7XG4gICAgICAgICAgICAgICAgYWNjZXB0SW5wdXQoZXZ0KTtcbiAgICAgICAgICAgICAgICBldnQudGFyZ2V0LmlubmVyVGV4dCA9IFwiXCI7XG4gICAgICAgICAgICAgICAgZXZ0LnRhcmdldC52YWx1ZSA9IFwiXCI7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0pO1xuXG4gICAgICAgIC8vIE9uIEZpcmVmb3gsIFBpbnlpbiBpbnB1dCBtZXRob2QgZm9yIGEgc2luZ2xlIGNoaW5lc2UgY2hhcmFjdGVyIHdpbGxcbiAgICAgICAgLy8gcmVzdWx0IGluIHRoZSBmb2xsb3dpbmcgc2VxdWVuY2Ugb2YgZXZlbnRzOlxuICAgICAgICAvLyAtIGNvbXBvc2l0aW9uc3RhcnRcbiAgICAgICAgLy8gLSBpbnB1dCAoY2hhcmFjdGVyKVxuICAgICAgICAvLyAtIGNvbXBvc2l0aW9uZW5kXG4gICAgICAgIC8vIC0gaW5wdXQgKHJlc3VsdClcbiAgICAgICAgLy8gQnV0IG9uIENocm9tZSwgd2UnbGwgZ2V0IHRoaXMgb3JkZXI6XG4gICAgICAgIC8vIC0gY29tcG9zaXRpb25zdGFydFxuICAgICAgICAvLyAtIGlucHV0IChjaGFyYWN0ZXIpXG4gICAgICAgIC8vIC0gaW5wdXQgKHJlc3VsdClcbiAgICAgICAgLy8gLSBjb21wb3NpdGlvbmVuZFxuICAgICAgICAvLyBTbyBDaHJvbWUncyBpbnB1dCBldmVudCB3aWxsIHN0aWxsIGhhdmUgaXRzIGlzQ29tcG9zaW5nIGZsYWcgc2V0IHRvXG4gICAgICAgIC8vIHRydWUhIFRoaXMgbWVhbnMgdGhhdCB3ZSBuZWVkIHRvIGFkZCBhIGNocm9tZS1zcGVjaWZpYyBldmVudFxuICAgICAgICAvLyBsaXN0ZW5lciBvbiBjb21wb3NpdGlvbmVuZCB0byBkbyB3aGF0IGhhcHBlbnMgb24gaW5wdXQgZXZlbnRzIGZvclxuICAgICAgICAvLyBGaXJlZm94LlxuICAgICAgICAvLyBEb24ndCBpbnN0cnVtZW50IHRoaXMgYnJhbmNoIGFzIGNvdmVyYWdlIGlzIG9ubHkgZ2VuZXJhdGVkIG9uXG4gICAgICAgIC8vIEZpcmVmb3guXG4gICAgICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgICAgIGlmIChpc0Nocm9tZSgpKSB7XG4gICAgICAgICAgICB0aGlzLmtleUhhbmRsZXIuYWRkRXZlbnRMaXN0ZW5lcihcImNvbXBvc2l0aW9uZW5kXCIsIChlOiBDb21wb3NpdGlvbkV2ZW50KSA9PiB7XG4gICAgICAgICAgICAgICAgYWNjZXB0SW5wdXQoZSk7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgIH1cblxuICAgIG1vdmVUbyh4OiBudW1iZXIsIHk6IG51bWJlcikge1xuICAgICAgICB0aGlzLmtleUhhbmRsZXIuc3R5bGUubGVmdCA9IGAke3h9cHhgO1xuICAgICAgICB0aGlzLmtleUhhbmRsZXIuc3R5bGUudG9wID0gYCR7eX1weGA7XG4gICAgfVxufVxuXG5leHBvcnQgY29uc3QgaXNSZWFkeSA9IGJyb3dzZXJcbiAgICAucnVudGltZVxuICAgIC5zZW5kTWVzc2FnZSh7IGZ1bmNOYW1lOiBbXCJwdWJsaXNoRnJhbWVJZFwiXSB9KVxuICAgIC50aGVuKGFzeW5jIChmcmFtZUlkOiBudW1iZXIpID0+IHtcbiAgICAgICAgYXdhaXQgY29uZlJlYWR5O1xuICAgICAgICBhd2FpdCBwYWdlTG9hZGVkO1xuICAgICAgICByZXR1cm4gc2V0dXBJbnB1dChcbiAgICAgICAgICAgIGdldFBhZ2VQcm94eShmcmFtZUlkKSxcbiAgICAgICAgICAgIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKFwiY2FudmFzXCIpIGFzIEhUTUxDYW52YXNFbGVtZW50LFxuICAgICAgICAgICAgbmV3IEJyb3dzZXJLZXlIYW5kbGVyKGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKFwia2V5aGFuZGxlclwiKSwgZ2V0R2xvYmFsQ29uZigpKSxcbiAgICAgICAgICAgIGNvbm5lY3Rpb25Qcm9taXNlKTtcbiAgICB9KTtcbiJdLCJuYW1lcyI6W10sInNvdXJjZVJvb3QiOiIifQ==