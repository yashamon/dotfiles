/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

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
/*!***************************!*\
  !*** ./src/background.ts ***!
  \***************************/
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "preloadedInstance": () => (/* binding */ preloadedInstance)
/* harmony export */ });
/* harmony import */ var _utils_configuration__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./utils/configuration */ "./src/utils/configuration.ts");
/* harmony import */ var _utils_utils__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./utils/utils */ "./src/utils/utils.ts");
/* provided dependency */ var browser = __webpack_require__(/*! webextension-polyfill */ "./node_modules/webextension-polyfill/dist/browser-polyfill.js");
/**
 * Browser extensions have multiple processes. This is the entry point for the
 * [background process](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Anatomy_of_a_WebExtension#Background_scripts).
 * Our background process has multiple tasks:
 * - Keep track of per-tab values with its setTabValue/getTabValue functions
 * - Set the [browserActions](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/browserAction)'s icon.
 * - Keep track of error messages/warnings that should are displayed in the
 *   browserAction.
 * - Update settings when the user changes their vimrc.
 * - Start new neovim instances when asked by a content script.
 * - Provide an RPC mechanism that enables calling background APIs from the
 *   browserAction/content script.
 *
 * The background process mostly acts as a slave for the browserAction and
 * content scripts. It rarely acts on its own.
 */


let preloadedInstance;
// We can't use the sessions.setTabValue/getTabValue apis firefox has because
// chrome doesn't support them. Instead, we create a map of tabid => {} kept in
// the background. This has the disadvantage of not surviving browser restarts,
// but's it's cross platform.
const tabValues = new Map();
function setTabValue(tabid, item, value) {
    let obj = tabValues.get(tabid);
    if (obj === undefined) {
        obj = { "disabled": false };
        tabValues.set(tabid, obj);
    }
    obj[item] = value;
}
function getTabValue(tabid, item) {
    const obj = tabValues.get(tabid);
    if (obj === undefined) {
        return undefined;
    }
    return obj[item];
}
async function updateIcon(tabid) {
    let name = "normal";
    if (tabid === undefined) {
        tabid = (await browser.tabs.query({ active: true, currentWindow: true }))[0].id;
    }
    if (getTabValue(tabid, "disabled") === true) {
        name = "disabled";
    }
    else if (error !== "") {
        name = "error";
    }
    else if (warning !== "") {
        name = "notification";
    }
    // Can't test on the bird of thunder
    /* istanbul ignore next */
    if ((0,_utils_utils__WEBPACK_IMPORTED_MODULE_1__.isThunderbird)()) {
        return Promise.resolve();
    }
    return (0,_utils_utils__WEBPACK_IMPORTED_MODULE_1__.getIconImageData)(name).then((imageData) => browser.browserAction.setIcon({ imageData }));
}
// Os is win/mac/linux/androis/cros. We only use it to add information to error
// messages on windows.
let os = "";
browser.runtime.getPlatformInfo().then((plat) => os = plat.os);
// Last error message
let error = "";
// Simple getter for easy RPC calls. Can't be tested as requires opening
// browserAction.
/* istanbul ignore next */
function getError() {
    return error;
}
function registerErrors(nvim, reject) {
    error = "";
    const timeout = setTimeout(() => {
        nvim.timedOut = true;
        error = "Neovim is not responding.";
        updateIcon();
        nvim.disconnect();
        reject(error);
    }, 10000);
    nvim.onDisconnect.addListener(async (p) => {
        clearTimeout(timeout);
        updateIcon();
        // Unfortunately this error handling can't be tested as it requires
        // side-effects on the OS.
        /* istanbul ignore next */
        if (p.error) {
            const errstr = p.error.toString();
            if (errstr.match(/no such native application/i)) {
                error = "Native manifest not found. Please run `:call firenvim#install(0)` in neovim.";
            }
            else if (errstr.match(/an unexpected error occurred/i)) {
                error = "The script supposed to start neovim couldn't be found."
                    + " Please run `:call firenvim#install(0)` in neovim";
                if (os === "win") {
                    error += " or try running the scripts in %LOCALAPPDATA%\\firenvim\\";
                }
                error += ".";
            }
            else if (errstr.match(/Native application tried to send a message of/)) {
                error = "Unexpected output. Run `nvim --headless` and ensure it prints nothing.";
            }
            else {
                error = errstr;
            }
            updateIcon();
            reject(p.error);
        }
        else if (!nvim.replied && !nvim.timedOut) {
            error = "Neovim died without answering.";
            updateIcon();
            reject(error);
        }
    });
    return timeout;
}
// Last warning message
let warning = "";
/* istanbul ignore next */
function getWarning() {
    return warning;
}
let nvimPluginVersion = "";
async function checkVersion(nvimVersion) {
    nvimPluginVersion = nvimVersion;
    const manifest = browser.runtime.getManifest();
    warning = "";
    // Can't be tested as it would require side effects on the OS.
    /* istanbul ignore next */
    if (manifest.version !== nvimVersion) {
        warning = `Neovim plugin version (${nvimVersion}) and browser addon `
            + `version (${manifest.version}) do not match.`;
    }
    updateIcon();
}
// Function called in order to fill out default settings. Called from updateSettings.
function applySettings(settings) {
    function makeDefaults(obj, name, value) {
        if (obj[name] === undefined) {
            obj[name] = value;
        }
    }
    function makeDefaultLocalSetting(sett, site, obj) {
        makeDefaults(sett.localSettings, site, {});
        for (const key of Object.keys(obj)) {
            makeDefaults(sett.localSettings[site], key, obj[key]);
        }
    }
    if (settings === undefined) {
        settings = {};
    }
    makeDefaults(settings, "globalSettings", {});
    // "<KEY>": "default" | "noop"
    // #103: When using the browser's command API to allow sending `<C-w>` to
    // firenvim, whether the default action should be performed if no neovim
    // frame is focused.
    makeDefaults(settings.globalSettings, "<C-n>", "default");
    makeDefaults(settings.globalSettings, "<C-t>", "default");
    makeDefaults(settings.globalSettings, "<C-w>", "default");
    // Note: <CS-*> are currently disabled because of
    // https://github.com/neovim/neovim/issues/12037
    // Note: <CS-n> doesn't match the default behavior on firefox because this
    // would require the sessions API. Instead, Firefox's behavior matches
    // Chrome's.
    makeDefaults(settings.globalSettings, "<CS-n>", "default");
    // Note: <CS-t> is there for completeness sake's but can't be emulated in
    // Chrome and Firefox because this would require the sessions API.
    makeDefaults(settings.globalSettings, "<CS-t>", "default");
    makeDefaults(settings.globalSettings, "<CS-w>", "default");
    // #717: allow passing keys to the browser
    makeDefaults(settings.globalSettings, "ignoreKeys", {});
    // #1050: cursor sometimes covered by command line
    makeDefaults(settings.globalSettings, "cmdlineTimeout", 3000);
    // "alt": "all" | "alphanum"
    // #202: Only register alt key on alphanums to let swedish osx users type
    //       special chars
    // Only tested on OSX, where we don't pull coverage reports, so don't
    // instrument function.
    /* istanbul ignore next */
    if (os === "mac") {
        makeDefaults(settings.globalSettings, "alt", "alphanum");
    }
    else {
        makeDefaults(settings.globalSettings, "alt", "all");
    }
    makeDefaults(settings, "localSettings", {});
    makeDefaultLocalSetting(settings, ".*", {
        // "cmdline": "neovim" | "firenvim"
        // #168: Use an external commandline to preserve space
        cmdline: "firenvim",
        content: "text",
        priority: 0,
        renderer: "canvas",
        selector: 'textarea:not([readonly]), div[role="textbox"]',
        // "takeover": "always" | "once" | "empty" | "nonempty" | "never"
        // #265: On "once", don't automatically bring back after :q'ing it
        takeover: "always",
        filename: "{hostname%32}_{pathname%32}_{selector%32}_{timestamp%32}.{extension}",
    });
    makeDefaultLocalSetting(settings, "about:blank\\?compose", {
        cmdline: "firenvim",
        content: "text",
        priority: 1,
        renderer: "canvas",
        selector: 'body',
        takeover: "always",
        filename: "mail_{timestamp%32}.eml",
    });
    return browser.storage.local.set(settings);
}
function updateSettings() {
    const tmp = preloadedInstance;
    preloadedInstance = createNewInstance();
    tmp.then(nvim => nvim.kill());
    // It's ok to return the preloadedInstance as a promise because
    // settings are only applied when the preloadedInstance has returned a
    // port+settings object anyway.
    return preloadedInstance;
}
function createNewInstance() {
    return new Promise((resolve, reject) => {
        const random = new Uint32Array(8);
        window.crypto.getRandomValues(random);
        const password = Array.from(random).join("");
        const nvim = browser.runtime.connectNative("firenvim");
        const errorTimeout = registerErrors(nvim, reject);
        nvim.onMessage.addListener((resp) => {
            nvim.replied = true;
            clearTimeout(errorTimeout);
            checkVersion(resp.version);
            applySettings(resp.settings).finally(() => {
                resolve({
                    kill: () => nvim.disconnect(),
                    password,
                    port: resp.port,
                });
            });
        });
        nvim.postMessage({
            newInstance: true,
            password,
        });
    });
}
// Creating this first instance serves two purposes: make creating new neovim
// frames fast and also initialize settings the first time Firenvim is enabled
// in a browser.
preloadedInstance = createNewInstance();
async function toggleDisabled() {
    const tabid = (await browser.tabs.query({ active: true, currentWindow: true }))[0].id;
    const disabled = !getTabValue(tabid, "disabled");
    setTabValue(tabid, "disabled", disabled);
    updateIcon(tabid);
    return browser.tabs.sendMessage(tabid, { args: [disabled], funcName: ["setDisabled"] });
}
async function acceptCommand(command) {
    const tab = (await browser.tabs.query({ active: true, currentWindow: true }))[0];
    let p;
    switch (command) {
        case "nvimify":
            p = browser.tabs.sendMessage(tab.id, { args: [], funcName: ["forceNvimify"] });
            break;
        case "send_C-n":
            p = browser.tabs.sendMessage(tab.id, { args: ["<C-n>"], funcName: ["sendKey"] });
            if ((0,_utils_configuration__WEBPACK_IMPORTED_MODULE_0__.getGlobalConf)()["<C-n>"] === "default") {
                p = p.catch(() => browser.windows.create());
            }
            break;
        case "send_C-t":
            p = browser.tabs.sendMessage(tab.id, { args: ["<C-t>"], funcName: ["sendKey"] });
            if ((0,_utils_configuration__WEBPACK_IMPORTED_MODULE_0__.getGlobalConf)()["<C-t>"] === "default") {
                p = p.catch(() => browser.tabs.create({ "windowId": tab.windowId }));
            }
            break;
        case "send_C-w":
            p = browser.tabs.sendMessage(tab.id, { args: ["<C-w>"], funcName: ["sendKey"] });
            if ((0,_utils_configuration__WEBPACK_IMPORTED_MODULE_0__.getGlobalConf)()["<C-w>"] === "default") {
                p = p.catch(() => browser.tabs.remove(tab.id));
            }
            break;
        case "send_CS-n":
            p = browser.tabs.sendMessage(tab.id, { args: ["<CS-n>"], funcName: ["sendKey"] });
            if ((0,_utils_configuration__WEBPACK_IMPORTED_MODULE_0__.getGlobalConf)()["<CS-n>"] === "default") {
                p = p.catch(() => browser.windows.create({ "incognito": true }));
            }
            break;
        case "send_CS-t":
            // <CS-t> can't be emulated without the sessions API.
            p = browser.tabs.sendMessage(tab.id, { args: ["<CS-t>"], funcName: ["sendKey"] });
            break;
        case "send_CS-w":
            p = browser.tabs.sendMessage(tab.id, { args: ["<CS-w>"], funcName: ["sendKey"] });
            if ((0,_utils_configuration__WEBPACK_IMPORTED_MODULE_0__.getGlobalConf)()["<CS-w>"] === "default") {
                p = p.catch(() => browser.windows.remove(tab.windowId));
            }
            break;
        case "toggle_firenvim":
            p = toggleDisabled();
            break;
    }
    return p;
}
Object.assign(window, {
    acceptCommand,
    // We need to stick the browser polyfill in `window` if we want the `exec`
    // call to be able to find it on Chrome
    browser,
    closeOwnTab: (sender) => browser.tabs.remove(sender.tab.id),
    exec: (_, args) => args.funcName.reduce((acc, cur) => acc[cur], window)(...(args.args)),
    getError,
    getNeovimInstance: () => {
        const result = preloadedInstance;
        preloadedInstance = createNewInstance();
        // Destructuring result to remove kill() from it
        return result.then(({ password, port }) => ({ password, port }));
    },
    getNvimPluginVersion: () => nvimPluginVersion,
    getOwnFrameId: (sender) => sender.frameId,
    getOwnComposeDetails: (sender) => browser.compose.getComposeDetails(sender.tab.id),
    getTab: (sender) => sender.tab,
    getTabValue: (sender, args) => getTabValue(sender.tab.id, args[0]),
    getTabValueFor: (_, args) => getTabValue(args[0], args[1]),
    getWarning,
    messageFrame: (sender, args) => browser.tabs.sendMessage(sender.tab.id, args.message, { frameId: args.frameId }),
    messagePage: (sender, args) => browser.tabs.sendMessage(sender.tab.id, args),
    publishFrameId: (sender) => {
        browser.tabs.sendMessage(sender.tab.id, {
            args: [sender.frameId],
            funcName: ["registerNewFrameId"],
        });
        return sender.frameId;
    },
    setTabValue: (sender, args) => setTabValue(sender.tab.id, args[0], args[1]),
    thunderbirdSend: (sender) => {
        return browser.compose.sendMessage(sender.tab.id, { mode: 'default' });
    },
    toggleDisabled: () => toggleDisabled(),
    updateSettings: () => updateSettings(),
});
browser.runtime.onMessage.addListener(async (request, sender, _sendResponse) => {
    const fn = request.funcName.reduce((acc, cur) => acc[cur], window);
    // Can't be tested as there's no way to force an incorrect content request.
    /* istanbul ignore next */
    if (!fn) {
        throw new Error(`Error: unhandled content request: ${JSON.stringify(request)}.`);
    }
    return fn(sender, request.args !== undefined ? request.args : []);
});
browser.tabs.onActivated.addListener(tab => {
    updateIcon(tab.tabId);
});
browser.windows.onFocusChanged.addListener(async (windowId) => {
    const tabs = await browser.tabs.query({ active: true, windowId });
    if (tabs.length >= 1) {
        updateIcon(tabs[0].id);
    }
});
updateIcon();
// browser.commmands doesn't exist in thunderbird. Else branch can't be covered
// so don't instrument the if.
/* istanbul ignore next */
if (!(0,_utils_utils__WEBPACK_IMPORTED_MODULE_1__.isThunderbird)()) {
    browser.commands.onCommand.addListener(acceptCommand);
    browser.runtime.onMessageExternal.addListener(async (request, sender, _sendResponse) => {
        const resp = await acceptCommand(request.command);
        _sendResponse(resp);
    });
}
async function updateIfPossible() {
    const tabs = await browser.tabs.query({});
    const messages = tabs.map(tab => browser
        .tabs
        .sendMessage(tab.id, {
        args: [],
        funcName: ["getActiveInstanceCount"],
    }, { frameId: 0 })
        .catch(() => 0));
    const instances = await (Promise.all(messages));
    // Can't be covered as reload() would destroy websockets and thus coverage
    // data.
    /* istanbul ignore next */
    if (instances.find(n => n > 0) === undefined) {
        browser.runtime.reload();
    }
    else {
        setTimeout(updateIfPossible, 1000 * 60 * 10);
    }
}
window.updateIfPossible = updateIfPossible;
browser.runtime.onUpdateAvailable.addListener(updateIfPossible);
// Can't test on the bird of thunder
/* istanbul ignore next */
if ((0,_utils_utils__WEBPACK_IMPORTED_MODULE_1__.isThunderbird)()) {
    browser.compose.onBeforeSend.addListener(async (tab, details) => {
        const lines = (await browser.tabs.sendMessage(tab.id, { args: [], funcName: ["get_buf_content"] }));
        // No need to remove the canvas when working with plaintext,
        // thunderbird will do that for us.
        if (details.isPlainText) {
            // Firenvim has to cancel the beforeinput event on the compose
            // window's documentElement in order to prevent the canvas from
            // being destroyed. However, thunderbird has a bug where cancelling
            // this event will prevent onBeforeSend from setting the compose
            // window's content when editing plaintext emails.
            // We work around this by telling the compose script to temporarily
            // stop cancelling events.
            await browser.tabs.sendMessage(tab.id, { args: [], funcName: ["pause_keyhandler"] });
            return { cancel: false, details: { plainTextBody: lines.join("\n") } };
        }
        const doc = document.createElement("html");
        const bod = document.createElement("body");
        doc.appendChild(bod);
        // Turn `>` into appropriate blockquote elements.
        let previousQuoteLevel = 0;
        let parent = bod;
        for (const l of lines) {
            let currentQuoteLevel = 0;
            // Count number of ">" symbols
            let i = 0;
            while (l[i] === " " || l[i] === ">") {
                if (l[i] === ">") {
                    currentQuoteLevel += 1;
                }
                i += 1;
            }
            const line = l.slice(i);
            if (currentQuoteLevel > previousQuoteLevel) {
                for (let i = previousQuoteLevel; i < currentQuoteLevel; ++i) {
                    const block = document.createElement("blockquote");
                    block.setAttribute("type", "cite");
                    parent.appendChild(block);
                    parent = block;
                }
            }
            else if (currentQuoteLevel < previousQuoteLevel) {
                for (let i = previousQuoteLevel; i > currentQuoteLevel; --i) {
                    parent = parent.parentElement;
                }
            }
            parent.appendChild(document.createTextNode(line));
            parent.appendChild(document.createElement("br"));
            previousQuoteLevel = currentQuoteLevel;
        }
        return { cancel: false, details: { body: doc.outerHTML } };
    });
    // In thunderbird, register the script to be loaded in the compose window
    browser.composeScripts.register({
        js: [{ file: "compose.js" }],
    });
}

})();

/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmFja2dyb3VuZC5qcyIsIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7O0FBQUE7O0FBRUEsT0FBTzs7QUFFUDtBQUNBLE1BQU0sSUFBMEM7QUFDaEQsSUFBSSxpQ0FBZ0MsQ0FBQyxNQUFRLENBQUMsb0NBQUUsT0FBTztBQUFBO0FBQUE7QUFBQSxrR0FBQztBQUN4RCxJQUFJLEtBQUssWUFRTjtBQUNILENBQUM7QUFDRDs7QUFFQSxzQ0FBc0M7O0FBRXRDOztBQUVBO0FBQ0E7QUFDQTtBQUNBOztBQUVBLGFBQWEsT0FBTywwQ0FBMEMsT0FBTztBQUNyRTtBQUNBLHdTQUF3UztBQUN4UztBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsYUFBYTtBQUNiO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0EsYUFBYTtBQUNiO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBO0FBQ0EsYUFBYTtBQUNiO0FBQ0E7QUFDQTtBQUNBLGFBQWE7QUFDYjtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBLFdBQVc7QUFDWDtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLFVBQVU7QUFDM0I7QUFDQTtBQUNBO0FBQ0E7OztBQUdBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLEdBQUc7QUFDcEIsbUJBQW1CLFNBQVM7QUFDNUI7OztBQUdBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxpQkFBaUIsUUFBUTtBQUN6QjtBQUNBO0FBQ0EsaUJBQWlCLFVBQVU7QUFDM0I7QUFDQSxpQkFBaUIsVUFBVTtBQUMzQjtBQUNBLGlCQUFpQixRQUFRO0FBQ3pCO0FBQ0EsaUJBQWlCLFNBQVM7QUFDMUI7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxtQkFBbUI7QUFDbkI7QUFDQTs7O0FBR0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxZQUFZO0FBQ1o7QUFDQSxZQUFZO0FBQ1o7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQSxpQkFBaUIsUUFBUTtBQUN6QjtBQUNBLGlCQUFpQixRQUFRO0FBQ3pCO0FBQ0EsaUJBQWlCLFNBQVM7QUFDMUI7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLFNBQVM7QUFDMUI7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLFNBQVM7QUFDMUI7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxtQkFBbUI7QUFDbkI7QUFDQTs7O0FBR0E7QUFDQTtBQUNBO0FBQ0EsaURBQWlELGtCQUFrQixFQUFFLHNDQUFzQyxNQUFNLEtBQUssVUFBVSxZQUFZO0FBQzVJOztBQUVBO0FBQ0EsZ0RBQWdELGtCQUFrQixFQUFFLHNDQUFzQyxNQUFNLEtBQUssVUFBVSxZQUFZO0FBQzNJOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGlCQUFpQjtBQUNqQixnQkFBZ0I7QUFDaEIsZ0NBQWdDLE1BQU07QUFDdEMsdUNBQXVDO0FBQ3ZDOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsY0FBYztBQUNkO0FBQ0E7QUFDQSxjQUFjO0FBQ2Q7QUFDQTtBQUNBO0FBQ0EsZUFBZTtBQUNmO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxpQkFBaUIsUUFBUTtBQUN6QjtBQUNBLGlCQUFpQixVQUFVO0FBQzNCO0FBQ0E7QUFDQSxpQkFBaUIsVUFBVTtBQUMzQjtBQUNBO0FBQ0E7QUFDQSxtQkFBbUI7QUFDbkI7QUFDQTtBQUNBOzs7QUFHQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQUVBLFNBQVM7QUFDVDs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsaUJBQWlCLFFBQVE7QUFDekI7QUFDQTtBQUNBLGlCQUFpQixRQUFRLGNBQWM7QUFDdkM7QUFDQTtBQUNBO0FBQ0EsNkRBQTZELGdCQUFnQjtBQUM3RTtBQUNBLGlCQUFpQixRQUFRLGNBQWM7QUFDdkM7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGlCQUFpQjtBQUNqQjtBQUNBLG1CQUFtQjtBQUNuQjs7QUFFQSwrQ0FBK0MsZUFBZTtBQUM5RDtBQUNBO0FBQ0E7QUFDQTtBQUNBLFdBQVc7O0FBRVg7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBOztBQUVBOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLGdCQUFnQjtBQUNoQjtBQUNBO0FBQ0E7QUFDQTtBQUNBLGdCQUFnQjtBQUNoQjtBQUNBO0FBQ0E7QUFDQTtBQUNBLGNBQWM7QUFDZDtBQUNBO0FBQ0E7QUFDQTtBQUNBLGNBQWM7QUFDZDtBQUNBO0FBQ0EsY0FBYztBQUNkO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBLGlCQUFpQjs7QUFFakI7QUFDQTtBQUNBOztBQUVBLGVBQWU7QUFDZjtBQUNBOztBQUVBO0FBQ0E7QUFDQSxXQUFXOztBQUVYO0FBQ0E7QUFDQTtBQUNBLGNBQWM7QUFDZDtBQUNBOztBQUVBO0FBQ0EsV0FBVzs7QUFFWDtBQUNBO0FBQ0EsV0FBVzs7QUFFWDtBQUNBO0FBQ0E7O0FBRUEsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxpQkFBaUIsb0NBQW9DO0FBQ3JEO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsbUJBQW1CO0FBQ25COzs7QUFHQTtBQUNBO0FBQ0E7QUFDQSxTQUFTOztBQUVUO0FBQ0E7QUFDQSxTQUFTOztBQUVUO0FBQ0E7QUFDQTs7QUFFQSxPQUFPOztBQUVQO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLG1CQUFtQixRQUFRO0FBQzNCO0FBQ0E7OztBQUdBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1g7QUFDQTtBQUNBLE9BQU8sR0FBRzs7QUFFVjtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsbUJBQW1CLEdBQUc7QUFDdEI7QUFDQSxtQkFBbUIsUUFBUTtBQUMzQjtBQUNBLG1CQUFtQixhQUFhO0FBQ2hDO0FBQ0E7QUFDQSxxQkFBcUI7QUFDckI7QUFDQTtBQUNBOzs7QUFHQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FBRUE7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYOztBQUVBO0FBQ0E7QUFDQSxZQUFZO0FBQ1o7QUFDQTs7QUFFQSwwRUFBMEU7QUFDMUU7QUFDQTs7QUFFQTtBQUNBO0FBQ0EsWUFBWTtBQUNaO0FBQ0E7QUFDQTs7O0FBR0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxhQUFhO0FBQ2I7QUFDQTtBQUNBOztBQUVBO0FBQ0E7QUFDQSxnQkFBZ0I7QUFDaEI7QUFDQTs7QUFFQTtBQUNBO0FBQ0E7QUFDQSxlQUFlO0FBQ2YsYUFBYTtBQUNiO0FBQ0E7QUFDQSxhQUFhO0FBQ2IsYUFBYTtBQUNiO0FBQ0E7OztBQUdBO0FBQ0E7QUFDQSxZQUFZO0FBQ1o7QUFDQSxZQUFZOzs7QUFHWjtBQUNBO0FBQ0EsT0FBTzs7QUFFUDtBQUNBO0FBQ0E7QUFDQSxPQUFPO0FBQ1A7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsWUFBWTtBQUNaO0FBQ0E7QUFDQSxVQUFVO0FBQ1Y7QUFDQTtBQUNBO0FBQ0EsVUFBVTtBQUNWO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0EsK0NBQStDLGtCQUFrQixFQUFFLHNDQUFzQyxNQUFNLEtBQUssVUFBVSxZQUFZO0FBQzFJOztBQUVBO0FBQ0EsOENBQThDLGtCQUFrQixFQUFFLHNDQUFzQyxNQUFNLEtBQUssVUFBVSxZQUFZO0FBQ3pJOztBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7O0FBRUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxXQUFXO0FBQ1gsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0EsV0FBVztBQUNYO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBLFNBQVM7QUFDVDtBQUNBO0FBQ0EsU0FBUztBQUNUO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFFQTtBQUNBO0FBQ0EsTUFBTTtBQUNOOzs7QUFHQTtBQUNBLElBQUk7QUFDSixxQkFBcUIsT0FBTztBQUM1QjtBQUNBLENBQUM7QUFDRDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUNqdENBLElBQUksSUFBSSxHQUFZLFNBQW9CLENBQUM7QUFFbEMsTUFBTSxTQUFTLEdBQUcsSUFBSSxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUU7SUFDM0MsT0FBTyxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLENBQUMsR0FBUSxFQUFFLEVBQUU7UUFDMUMsSUFBSSxHQUFHLEdBQUcsQ0FBQztRQUNYLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNsQixDQUFDLENBQUMsQ0FBQztBQUNQLENBQUMsQ0FBQyxDQUFDO0FBRUgsT0FBTyxDQUFDLE9BQU8sQ0FBQyxTQUFTLENBQUMsV0FBVyxDQUFDLENBQUMsT0FBWSxFQUFFLEVBQUU7SUFDbkQsTUFBTTtTQUNELE9BQU8sQ0FBQyxPQUFPLENBQUM7U0FDaEIsT0FBTyxDQUFDLENBQUMsQ0FBQyxHQUFHLEVBQUUsS0FBSyxDQUF1QixFQUFFLEVBQUUsQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLEdBQUcsRUFBRTtRQUNqRSxJQUFJLENBQUMsR0FBRyxDQUFDLEdBQUcsS0FBSyxDQUFDLFFBQVEsQ0FBQztJQUMvQixDQUFDLENBQUMsQ0FBQyxDQUFDO0FBQ1osQ0FBQyxDQUFDLENBQUM7QUFFSSxTQUFTLGFBQWE7SUFDekIsc0JBQXNCO0lBQ3RCLDBCQUEwQjtJQUMxQixJQUFJLElBQUksS0FBSyxTQUFTLEVBQUU7UUFDcEIsTUFBTSxJQUFJLEtBQUssQ0FBQyw4Q0FBOEMsQ0FBQyxDQUFDO0tBQ25FO0lBQ0QsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDO0FBQy9CLENBQUM7QUFFTSxTQUFTLE9BQU87SUFDbkIsT0FBTyxhQUFhLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQztBQUNqRCxDQUFDO0FBRU0sU0FBUyxhQUFhLENBQUMsR0FBVztJQUNyQyxNQUFNLGFBQWEsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDO0lBQ3pDLFNBQVMsR0FBRyxDQUFDLEdBQVc7UUFDcEIsSUFBSSxHQUFHLEtBQUssU0FBUyxFQUFFO1lBQ25CLE9BQU8sQ0FBQyxDQUFDO1NBQ1o7UUFDRCxPQUFPLEdBQUcsQ0FBQztJQUNmLENBQUM7SUFDRCxzQkFBc0I7SUFDdEIsMEJBQTBCO0lBQzFCLElBQUksYUFBYSxLQUFLLFNBQVMsRUFBRTtRQUM3QixNQUFNLElBQUksS0FBSyxDQUFDLHlMQUF5TCxDQUFDLENBQUM7S0FDOU07SUFDRCxPQUFPLEtBQUssQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxhQUFhLENBQUMsQ0FBQztTQUMzQyxNQUFNLENBQUMsQ0FBQyxDQUFDLEdBQUcsRUFBRSxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsQ0FBQyxJQUFJLE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztTQUNqRCxJQUFJLENBQUMsQ0FBQyxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUMsUUFBUSxDQUFDLEdBQUcsR0FBRyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDO1NBQzdELE1BQU0sQ0FBQyxDQUFDLEdBQUcsRUFBRSxDQUFDLENBQUMsRUFBRSxHQUFHLENBQUMsRUFBRSxFQUFFLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxHQUFHLEVBQUUsR0FBRyxDQUFDLEVBQUUsRUFBaUIsQ0FBQyxDQUFDO0FBQy9FLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FDOUZELElBQUksT0FBZ0IsQ0FBQztBQUVyQixzQ0FBc0M7QUFDdEMsMEJBQTBCO0FBQzFCLElBQUssT0FBZSxDQUFDLGNBQWMsS0FBSyxTQUFTLElBQUksUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLEtBQUsscUJBQXFCLEVBQUU7SUFDbkcsT0FBTyxHQUFHLGFBQWEsQ0FBQztJQUM1QixvRUFBb0U7Q0FDbkU7S0FBTSxJQUFJLE1BQU0sQ0FBQyxRQUFRLENBQUMsUUFBUSxLQUFLLGdCQUFnQixFQUFFO0lBQ3RELE9BQU8sR0FBRyxTQUFTLENBQUM7Q0FDdkI7S0FBTSxJQUFJLE1BQU0sQ0FBQyxRQUFRLENBQUMsUUFBUSxLQUFLLG1CQUFtQixFQUFFO0lBQ3pELE9BQU8sR0FBRyxRQUFRLENBQUM7Q0FDdEI7QUFFRCxvQ0FBb0M7QUFDN0IsU0FBUyxRQUFRO0lBQ3BCLDhCQUE4QjtJQUM5QiwwQkFBMEI7SUFDMUIsSUFBSSxPQUFPLEtBQUssU0FBUyxFQUFFO1FBQ3ZCLE1BQU0sS0FBSyxDQUFDLGtDQUFrQyxDQUFDLENBQUM7S0FDbkQ7SUFDRCxPQUFPLE9BQU8sS0FBSyxRQUFRLENBQUM7QUFDaEMsQ0FBQztBQUNNLFNBQVMsYUFBYTtJQUN6Qiw4QkFBOEI7SUFDOUIsMEJBQTBCO0lBQzFCLElBQUksT0FBTyxLQUFLLFNBQVMsRUFBRTtRQUN2QixNQUFNLEtBQUssQ0FBQyx1Q0FBdUMsQ0FBQyxDQUFDO0tBQ3hEO0lBQ0QsT0FBTyxPQUFPLEtBQUssYUFBYSxDQUFDO0FBQ3JDLENBQUM7QUFFRCx5RUFBeUU7QUFDekUsOEVBQThFO0FBQzlFLGVBQWU7QUFDUixTQUFTLGFBQWEsQ0FBQyxJQUFZO0lBQ3RDLE9BQU8sSUFBSSxPQUFPLENBQUMsQ0FBQyxPQUFPLEVBQUUsTUFBTSxFQUFFLEVBQUU7UUFDbkMsTUFBTSxNQUFNLEdBQUcsUUFBUSxDQUFDLGFBQWEsQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUNoRCxNQUFNLE9BQU8sR0FBRyxDQUFDLElBQUksR0FBRyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDLE1BQU0sRUFBRSxDQUFDO1FBQy9FLE1BQU0sQ0FBQyxTQUFTLEdBQUc7OztpQ0FHTSxJQUFJOzs7Ozs7Ozs7Ozs7YUFZeEIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDO1FBQ2hDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUUsQ0FBQyxFQUFFLE1BQU0sRUFBTyxFQUFFLEVBQUU7WUFDakQsTUFBTSxDQUFDLFVBQVUsQ0FBQyxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDdEMsSUFBSSxNQUFNLENBQUMsT0FBTyxFQUFFO2dCQUNoQixPQUFPLE9BQU8sQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLENBQUM7YUFDakM7WUFDRCxPQUFPLE1BQU0sQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDakMsQ0FBQyxFQUFFLEVBQUUsSUFBSSxFQUFFLElBQUksRUFBRSxDQUFDLENBQUM7UUFDbkIsUUFBUSxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDdEMsQ0FBQyxDQUFDLENBQUM7QUFDUCxDQUFDO0FBRUQsOEVBQThFO0FBQzlFLFFBQVE7QUFDUixNQUFNLE9BQU8sR0FBRyxjQUFjLENBQUM7QUFDL0IsTUFBTSxlQUFlLEdBQUc7SUFDcEIsUUFBUSxFQUFFLENBQUMsR0FBc0IsRUFBRSxFQUFFO1FBQ2pDLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxHQUFHLENBQUMsTUFBTSxFQUFFLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDcEMsMEJBQTBCO1lBQzFCLElBQUksR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsS0FBSyxDQUFDLEVBQUU7Z0JBQ2xCLFNBQVM7YUFDWjtZQUNELE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsR0FBRyxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7WUFDaEUsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLElBQUksQ0FBQztZQUNkLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDO1lBQ2xCLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDO1NBQ3JCO0lBQ0wsQ0FBQztJQUNELEtBQUssRUFBRSxDQUFDLEdBQXNCLEVBQUUsRUFBRTtRQUM5QixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDLE1BQU0sRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3BDLDhCQUE4QjtZQUM5QixJQUFJLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUNsQixHQUFHLENBQUMsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDO2dCQUNiLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDO2FBQ3BCO1NBQ0o7SUFDTCxDQUFDO0lBQ0QsTUFBTSxFQUFFLENBQUMsQ0FBQyxJQUF1QixFQUFFLEVBQUUsQ0FBRSxTQUFtQixDQUFDO0lBQzNELFlBQVksRUFBRSxDQUFDLEdBQXNCLEVBQUUsRUFBRTtRQUNyQyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDLE1BQU0sRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3BDLGlDQUFpQztZQUNqQyxJQUFJLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUNsQixHQUFHLENBQUMsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDO2dCQUNiLEdBQUcsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQUcsR0FBRyxDQUFDO2dCQUNqQixHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLEdBQUcsQ0FBQzthQUNwQjtTQUNKO0lBQ0wsQ0FBQztDQUNKLENBQUM7QUFJRiw2RUFBNkU7QUFDN0UsdUVBQXVFO0FBQ2hFLFNBQVMsZ0JBQWdCLENBQUMsSUFBYyxFQUFFLEtBQUssR0FBRyxFQUFFLEVBQUUsTUFBTSxHQUFHLEVBQUU7SUFDcEUsTUFBTSxNQUFNLEdBQUcsUUFBUSxDQUFDLGFBQWEsQ0FBQyxRQUFRLENBQXNCLENBQUM7SUFDckUsTUFBTSxHQUFHLEdBQUcsTUFBTSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNwQyxNQUFNLEdBQUcsR0FBRyxJQUFJLEtBQUssQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLENBQUM7SUFDckMsTUFBTSxNQUFNLEdBQUcsSUFBSSxPQUFPLENBQUMsQ0FBQyxPQUFPLEVBQUUsRUFBRSxDQUFDLEdBQUcsQ0FBQyxnQkFBZ0IsQ0FBQyxNQUFNLEVBQUUsR0FBRyxFQUFFO1FBQ3RFLEdBQUcsQ0FBQyxTQUFTLENBQUMsR0FBRyxFQUFFLENBQUMsRUFBRSxDQUFDLEVBQUUsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ3hDLE1BQU0sRUFBRSxHQUFHLEdBQUcsQ0FBQyxZQUFZLENBQUMsQ0FBQyxFQUFFLENBQUMsRUFBRSxLQUFLLEVBQUUsTUFBTSxDQUFDLENBQUM7UUFDakQsZUFBZSxDQUFDLElBQUksQ0FBQyxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUMvQixPQUFPLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDaEIsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNKLEdBQUcsQ0FBQyxHQUFHLEdBQUcsT0FBTyxDQUFDO0lBQ2xCLE9BQU8sTUFBTSxDQUFDO0FBQ2xCLENBQUM7QUFFRCwyRUFBMkU7QUFDM0UsbUNBQW1DO0FBQzVCLFNBQVMsVUFBVSxDQUFDLFlBQW9CLEVBQUUsR0FBVyxFQUFFLEVBQVUsRUFBRSxRQUFnQjtJQUN0RixJQUFJLFNBQWlELENBQUM7SUFDdEQsSUFBSTtRQUNBLFNBQVMsR0FBRyxJQUFJLEdBQUcsQ0FBQyxHQUFHLENBQUMsQ0FBQztLQUM1QjtJQUFDLE9BQU8sQ0FBQyxFQUFFO1FBQ1IsNkRBQTZEO1FBQzdELDBCQUEwQjtRQUMxQixTQUFTLEdBQUcsRUFBRSxRQUFRLEVBQUUsYUFBYSxFQUFFLFFBQVEsRUFBRSxNQUFNLEVBQUUsQ0FBQztLQUM3RDtJQUVELE1BQU0sUUFBUSxHQUFHLENBQUMsQ0FBUyxFQUFFLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxDQUFDLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBRTNFLE1BQU0sTUFBTSxHQUFHLENBQUMsT0FBZSxFQUFFLEVBQUU7UUFDL0IsTUFBTSxVQUFVLEdBQUcsT0FBTyxDQUFDLEtBQUssQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN4QyxNQUFNLENBQUMsTUFBTSxFQUFFLE1BQU0sQ0FBQyxHQUFHLFVBQVUsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDL0MsSUFBSSxLQUFLLEdBQUcsRUFBRSxDQUFDO1FBQ2YsUUFBUSxNQUFNLEVBQUU7WUFDWixLQUFLLFVBQVU7Z0JBQUUsS0FBSyxHQUFHLFNBQVMsQ0FBQyxRQUFRLENBQUM7Z0JBQUMsTUFBTTtZQUNuRCxLQUFLLFVBQVU7Z0JBQUUsS0FBSyxHQUFHLFFBQVEsQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQUMsTUFBTTtZQUM3RCxLQUFLLFVBQVU7Z0JBQUUsS0FBSyxHQUFHLFFBQVEsQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLGVBQWUsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDO2dCQUFDLE1BQU07WUFDMUUsS0FBSyxXQUFXO2dCQUFFLEtBQUssR0FBRyxRQUFRLENBQUMsQ0FBQyxJQUFJLElBQUksRUFBRSxDQUFDLENBQUMsV0FBVyxFQUFFLENBQUMsQ0FBQztnQkFBQyxNQUFNO1lBQ3RFLEtBQUssV0FBVztnQkFBRSxLQUFLLEdBQUcsb0JBQW9CLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQUMsTUFBTTtZQUNoRSxPQUFPLENBQUMsQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLGtDQUFrQyxPQUFPLEVBQUUsQ0FBQyxDQUFDO1NBQ3ZFO1FBQ0QsT0FBTyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDaEMsQ0FBQyxDQUFDO0lBRUYsSUFBSSxNQUFNLEdBQUcsWUFBWSxDQUFDO0lBQzFCLE1BQU0sT0FBTyxHQUFHLFlBQVksQ0FBQyxLQUFLLENBQUMsVUFBVSxDQUFDLENBQUM7SUFDL0MsSUFBSSxPQUFPLEtBQUssSUFBSSxFQUFFO1FBQ2xCLEtBQUssTUFBTSxLQUFLLElBQUksT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsS0FBSyxTQUFTLENBQUMsRUFBRTtZQUN0RCxNQUFNLEdBQUcsTUFBTSxDQUFDLE9BQU8sQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7U0FDakQ7S0FDSjtJQUNELE9BQU8sTUFBTSxDQUFDO0FBQ2xCLENBQUM7QUFFRCw2RUFBNkU7QUFDdEUsU0FBUyxvQkFBb0IsQ0FBQyxRQUFnQjtJQUNqRCxJQUFJLFFBQVEsS0FBSyxTQUFTLElBQUksUUFBUSxLQUFLLElBQUksRUFBRTtRQUM3QyxRQUFRLEdBQUcsRUFBRSxDQUFDO0tBQ2pCO0lBQ0QsTUFBTSxJQUFJLEdBQUcsUUFBUSxDQUFDLFdBQVcsRUFBRSxDQUFDO0lBQ3BDLDBCQUEwQjtJQUMxQixRQUFRLElBQUksRUFBRTtRQUNWLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxXQUFXLENBQUMsQ0FBUSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEdBQUcsQ0FBQyxDQUFnQixPQUFPLEdBQUcsQ0FBQztRQUNwQyxLQUFLLElBQUksQ0FBQyxDQUFlLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLFFBQVEsQ0FBQztRQUN6QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sR0FBRyxDQUFDO1FBQ3BDLEtBQUssU0FBUyxDQUFDLENBQVUsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLFFBQVEsQ0FBQztRQUN6QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssY0FBYyxDQUFDLENBQUssT0FBTyxRQUFRLENBQUM7UUFDekMsS0FBSyxZQUFZLENBQUMsQ0FBTSxPQUFPLE1BQU0sQ0FBQztRQUN0QyxLQUFLLFNBQVMsQ0FBQyxDQUFVLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLEdBQUcsQ0FBQyxDQUFnQixPQUFPLEdBQUcsQ0FBQztRQUNwQyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxZQUFZLENBQUMsQ0FBTyxPQUFPLFlBQVksQ0FBQztRQUM3QyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxPQUFPLENBQUM7UUFDeEMsc0RBQXNEO1FBQ3RELHVDQUF1QztRQUN2QyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sR0FBRyxDQUFDO1FBQ3BDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLElBQUksQ0FBQyxDQUFlLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxRQUFRLENBQUM7UUFDekMsS0FBSyxPQUFPLENBQUMsQ0FBWSxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLFNBQVMsQ0FBQyxDQUFVLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxJQUFJLENBQUMsQ0FBZSxPQUFPLElBQUksQ0FBQztRQUNyQyw2Q0FBNkM7UUFDN0MsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sUUFBUSxDQUFDO1FBQ3pDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxZQUFZLENBQUMsQ0FBTyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLFNBQVMsQ0FBQyxDQUFVLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLGNBQWMsQ0FBQyxDQUFLLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssV0FBVyxDQUFDLENBQVEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxTQUFTLENBQUMsQ0FBVSxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFdBQVcsQ0FBQyxDQUFRLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxZQUFZLENBQUMsQ0FBTyxPQUFPLElBQUksQ0FBQztRQUNyQyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxPQUFPLENBQUM7UUFDeEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLEtBQUssQ0FBQyxDQUFjLE9BQU8sS0FBSyxDQUFDO1FBQ3RDLEtBQUssVUFBVSxDQUFDLENBQVMsT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxRQUFRLENBQUMsQ0FBWSxPQUFPLElBQUksQ0FBQztRQUN0QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxHQUFHLENBQUM7UUFDcEMsS0FBSyxRQUFRLENBQUMsQ0FBVyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxZQUFZLENBQUMsQ0FBTyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLFFBQVEsQ0FBQyxDQUFXLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssR0FBRyxDQUFDLENBQWdCLE9BQU8sR0FBRyxDQUFDO1FBQ3BDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssS0FBSyxDQUFDLENBQWMsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLE9BQU8sQ0FBQyxDQUFZLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLEtBQUssUUFBUSxDQUFDLENBQVcsT0FBTyxLQUFLLENBQUM7UUFDdEMsS0FBSyxNQUFNLENBQUMsQ0FBYSxPQUFPLE1BQU0sQ0FBQztRQUN2QyxLQUFLLFdBQVcsQ0FBQyxDQUFRLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxJQUFJLENBQUM7UUFDckMsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sT0FBTyxDQUFDO1FBQ3hDLEtBQUssT0FBTyxDQUFDLENBQVksT0FBTyxPQUFPLENBQUM7UUFDeEMsS0FBSyxLQUFLLENBQUMsQ0FBYyxPQUFPLEtBQUssQ0FBQztRQUN0QyxLQUFLLE1BQU0sQ0FBQyxDQUFhLE9BQU8sTUFBTSxDQUFDO1FBQ3ZDLEtBQUssTUFBTSxDQUFDLENBQWEsT0FBTyxNQUFNLENBQUM7UUFDdkMsS0FBSyxZQUFZLENBQUMsQ0FBTyxPQUFPLElBQUksQ0FBQztRQUNyQyxL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QUssQ0FBQztpQkFDbEI7YUFDSjtpQkFBTSxJQUFJLGlCQUFpQixHQUFHLGtCQUFrQixFQUFFO2dCQUMvQyxLQUFLLElBQUksQ0FBQyxHQUFHLGtCQUFrQixFQUFFLENBQUMsR0FBRyxpQkFBaUIsRUFBRSxFQUFFLENBQUMsRUFBRTtvQkFDekQsTUFBTSxHQUFHLE1BQU0sQ0FBQyxhQUFhLENBQUM7aUJBQ2pDO2FBQ0o7WUFFRCxNQUFNLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUNsRCxNQUFNLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUVqRCxrQkFBa0IsR0FBRyxpQkFBaUIsQ0FBQztTQUMxQztRQUNELE9BQU8sRUFBRSxNQUFNLEVBQUUsS0FBSyxFQUFFLE9BQU8sRUFBRSxFQUFFLElBQUksRUFBRSxHQUFHLENBQUMsU0FBUyxFQUFFLEVBQUUsQ0FBQztJQUMvRCxDQUFDLENBQUMsQ0FBQztJQUNILHlFQUF5RTtJQUN4RSxPQUFlLENBQUMsY0FBYyxDQUFDLFFBQVEsQ0FBQztRQUNyQyxFQUFFLEVBQUUsQ0FBQyxFQUFDLElBQUksRUFBRSxZQUFZLEVBQUMsQ0FBQztLQUM3QixDQUFDLENBQUM7Q0FDTiIsInNvdXJjZXMiOlsid2VicGFjazovL0ZpcmVudmltLy4vbm9kZV9tb2R1bGVzL3dlYmV4dGVuc2lvbi1wb2x5ZmlsbC9kaXN0L2Jyb3dzZXItcG9seWZpbGwuanMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vLi9zcmMvdXRpbHMvY29uZmlndXJhdGlvbi50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS8uL3NyYy91dGlscy91dGlscy50cyIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL3J1bnRpbWUvZGVmaW5lIHByb3BlcnR5IGdldHRlcnMiLCJ3ZWJwYWNrOi8vRmlyZW52aW0vd2VicGFjay9ydW50aW1lL2hhc093blByb3BlcnR5IHNob3J0aGFuZCIsIndlYnBhY2s6Ly9GaXJlbnZpbS93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL0ZpcmVudmltLy4vc3JjL2JhY2tncm91bmQudHMiXSwic291cmNlc0NvbnRlbnQiOlsiLyoqKiBJTVBPUlRTIEZST00gaW1wb3J0cy1sb2FkZXIgKioqL1xuXG5icm93c2VyID0gdW5kZWZpbmVkO1xuXG4oZnVuY3Rpb24gKGdsb2JhbCwgZmFjdG9yeSkge1xuICBpZiAodHlwZW9mIGRlZmluZSA9PT0gXCJmdW5jdGlvblwiICYmIGRlZmluZS5hbWQpIHtcbiAgICBkZWZpbmUoXCJ3ZWJleHRlbnNpb24tcG9seWZpbGxcIiwgW1wibW9kdWxlXCJdLCBmYWN0b3J5KTtcbiAgfSBlbHNlIGlmICh0eXBlb2YgZXhwb3J0cyAhPT0gXCJ1bmRlZmluZWRcIikge1xuICAgIGZhY3RvcnkobW9kdWxlKTtcbiAgfSBlbHNlIHtcbiAgICB2YXIgbW9kID0ge1xuICAgICAgZXhwb3J0czoge31cbiAgICB9O1xuICAgIGZhY3RvcnkobW9kKTtcbiAgICBnbG9iYWwuYnJvd3NlciA9IG1vZC5leHBvcnRzO1xuICB9XG59KSh0eXBlb2YgZ2xvYmFsVGhpcyAhPT0gXCJ1bmRlZmluZWRcIiA/IGdsb2JhbFRoaXMgOiB0eXBlb2Ygc2VsZiAhPT0gXCJ1bmRlZmluZWRcIiA/IHNlbGYgOiB0aGlzLCBmdW5jdGlvbiAobW9kdWxlKSB7XG4gIC8qIHdlYmV4dGVuc2lvbi1wb2x5ZmlsbCAtIHYwLjguMCAtIFR1ZSBBcHIgMjAgMjAyMSAxMToyNzozOCAqL1xuXG4gIC8qIC0qLSBNb2RlOiBpbmRlbnQtdGFicy1tb2RlOiBuaWw7IGpzLWluZGVudC1sZXZlbDogMiAtKi0gKi9cblxuICAvKiB2aW06IHNldCBzdHM9MiBzdz0yIGV0IHR3PTgwOiAqL1xuXG4gIC8qIFRoaXMgU291cmNlIENvZGUgRm9ybSBpcyBzdWJqZWN0IHRvIHRoZSB0ZXJtcyBvZiB0aGUgTW96aWxsYSBQdWJsaWNcbiAgICogTGljZW5zZSwgdi4gMi4wLiBJZiBhIGNvcHkgb2YgdGhlIE1QTCB3YXMgbm90IGRpc3RyaWJ1dGVkIHdpdGggdGhpc1xuICAgKiBmaWxlLCBZb3UgY2FuIG9idGFpbiBvbmUgYXQgaHR0cDovL21vemlsbGEub3JnL01QTC8yLjAvLiAqL1xuICBcInVzZSBzdHJpY3RcIjtcblxuICBpZiAodHlwZW9mIGJyb3dzZXIgPT09IFwidW5kZWZpbmVkXCIgfHwgT2JqZWN0LmdldFByb3RvdHlwZU9mKGJyb3dzZXIpICE9PSBPYmplY3QucHJvdG90eXBlKSB7XG4gICAgY29uc3QgQ0hST01FX1NFTkRfTUVTU0FHRV9DQUxMQkFDS19OT19SRVNQT05TRV9NRVNTQUdFID0gXCJUaGUgbWVzc2FnZSBwb3J0IGNsb3NlZCBiZWZvcmUgYSByZXNwb25zZSB3YXMgcmVjZWl2ZWQuXCI7XG4gICAgY29uc3QgU0VORF9SRVNQT05TRV9ERVBSRUNBVElPTl9XQVJOSU5HID0gXCJSZXR1cm5pbmcgYSBQcm9taXNlIGlzIHRoZSBwcmVmZXJyZWQgd2F5IHRvIHNlbmQgYSByZXBseSBmcm9tIGFuIG9uTWVzc2FnZS9vbk1lc3NhZ2VFeHRlcm5hbCBsaXN0ZW5lciwgYXMgdGhlIHNlbmRSZXNwb25zZSB3aWxsIGJlIHJlbW92ZWQgZnJvbSB0aGUgc3BlY3MgKFNlZSBodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9kb2NzL01vemlsbGEvQWRkLW9ucy9XZWJFeHRlbnNpb25zL0FQSS9ydW50aW1lL29uTWVzc2FnZSlcIjsgLy8gV3JhcHBpbmcgdGhlIGJ1bGsgb2YgdGhpcyBwb2x5ZmlsbCBpbiBhIG9uZS10aW1lLXVzZSBmdW5jdGlvbiBpcyBhIG1pbm9yXG4gICAgLy8gb3B0aW1pemF0aW9uIGZvciBGaXJlZm94LiBTaW5jZSBTcGlkZXJtb25rZXkgZG9lcyBub3QgZnVsbHkgcGFyc2UgdGhlXG4gICAgLy8gY29udGVudHMgb2YgYSBmdW5jdGlvbiB1bnRpbCB0aGUgZmlyc3QgdGltZSBpdCdzIGNhbGxlZCwgYW5kIHNpbmNlIGl0IHdpbGxcbiAgICAvLyBuZXZlciBhY3R1YWxseSBuZWVkIHRvIGJlIGNhbGxlZCwgdGhpcyBhbGxvd3MgdGhlIHBvbHlmaWxsIHRvIGJlIGluY2x1ZGVkXG4gICAgLy8gaW4gRmlyZWZveCBuZWFybHkgZm9yIGZyZWUuXG5cbiAgICBjb25zdCB3cmFwQVBJcyA9IGV4dGVuc2lvbkFQSXMgPT4ge1xuICAgICAgLy8gTk9URTogYXBpTWV0YWRhdGEgaXMgYXNzb2NpYXRlZCB0byB0aGUgY29udGVudCBvZiB0aGUgYXBpLW1ldGFkYXRhLmpzb24gZmlsZVxuICAgICAgLy8gYXQgYnVpbGQgdGltZSBieSByZXBsYWNpbmcgdGhlIGZvbGxvd2luZyBcImluY2x1ZGVcIiB3aXRoIHRoZSBjb250ZW50IG9mIHRoZVxuICAgICAgLy8gSlNPTiBmaWxlLlxuICAgICAgY29uc3QgYXBpTWV0YWRhdGEgPSB7XG4gICAgICAgIFwiYWxhcm1zXCI6IHtcbiAgICAgICAgICBcImNsZWFyXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY2xlYXJBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJib29rbWFya3NcIjoge1xuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Q2hpbGRyZW5cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRSZWNlbnRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRTdWJUcmVlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0VHJlZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcIm1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMlxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVUcmVlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VhcmNoXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiYnJvd3NlckFjdGlvblwiOiB7XG4gICAgICAgICAgXCJkaXNhYmxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZW5hYmxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QmFkZ2VCYWNrZ3JvdW5kQ29sb3JcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRCYWRnZVRleHRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwib3BlblBvcHVwXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0QmFkZ2VCYWNrZ3JvdW5kQ29sb3JcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRCYWRnZVRleHRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRJY29uXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0UG9wdXBcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRUaXRsZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcImJyb3dzaW5nRGF0YVwiOiB7XG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMlxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVDYWNoZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUNvb2tpZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVEb3dubG9hZHNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVGb3JtRGF0YVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUhpc3RvcnlcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVMb2NhbFN0b3JhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVQYXNzd29yZHNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVQbHVnaW5EYXRhXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0dGluZ3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJjb21tYW5kc1wiOiB7XG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJjb250ZXh0TWVudXNcIjoge1xuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlQWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiY29va2llc1wiOiB7XG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxDb29raWVTdG9yZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJkZXZ0b29sc1wiOiB7XG4gICAgICAgICAgXCJpbnNwZWN0ZWRXaW5kb3dcIjoge1xuICAgICAgICAgICAgXCJldmFsXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyLFxuICAgICAgICAgICAgICBcInNpbmdsZUNhbGxiYWNrQXJnXCI6IGZhbHNlXG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInBhbmVsc1wiOiB7XG4gICAgICAgICAgICBcImNyZWF0ZVwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAzLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMyxcbiAgICAgICAgICAgICAgXCJzaW5nbGVDYWxsYmFja0FyZ1wiOiB0cnVlXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJlbGVtZW50c1wiOiB7XG4gICAgICAgICAgICAgIFwiY3JlYXRlU2lkZWJhclBhbmVcIjoge1xuICAgICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiZG93bmxvYWRzXCI6IHtcbiAgICAgICAgICBcImNhbmNlbFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRvd25sb2FkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZXJhc2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRGaWxlSWNvblwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcIm9wZW5cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwiZmFsbGJhY2tUb05vQ2FsbGJhY2tcIjogdHJ1ZVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJwYXVzZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInJlbW92ZUZpbGVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZXN1bWVcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZWFyY2hcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzaG93XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiZXh0ZW5zaW9uXCI6IHtcbiAgICAgICAgICBcImlzQWxsb3dlZEZpbGVTY2hlbWVBY2Nlc3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJpc0FsbG93ZWRJbmNvZ25pdG9BY2Nlc3NcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJoaXN0b3J5XCI6IHtcbiAgICAgICAgICBcImFkZFVybFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRlbGV0ZUFsbFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImRlbGV0ZVJhbmdlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZGVsZXRlVXJsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0VmlzaXRzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VhcmNoXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiaTE4blwiOiB7XG4gICAgICAgICAgXCJkZXRlY3RMYW5ndWFnZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldEFjY2VwdExhbmd1YWdlc1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcImlkZW50aXR5XCI6IHtcbiAgICAgICAgICBcImxhdW5jaFdlYkF1dGhGbG93XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwiaWRsZVwiOiB7XG4gICAgICAgICAgXCJxdWVyeVN0YXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwibWFuYWdlbWVudFwiOiB7XG4gICAgICAgICAgXCJnZXRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRBbGxcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRTZWxmXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0RW5hYmxlZFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMixcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInVuaW5zdGFsbFNlbGZcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJub3RpZmljYXRpb25zXCI6IHtcbiAgICAgICAgICBcImNsZWFyXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0UGVybWlzc2lvbkxldmVsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwicGFnZUFjdGlvblwiOiB7XG4gICAgICAgICAgXCJnZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaGlkZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNldEljb25cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRQb3B1cFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNldFRpdGxlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDEsXG4gICAgICAgICAgICBcImZhbGxiYWNrVG9Ob0NhbGxiYWNrXCI6IHRydWVcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2hvd1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJmYWxsYmFja1RvTm9DYWxsYmFja1wiOiB0cnVlXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInBlcm1pc3Npb25zXCI6IHtcbiAgICAgICAgICBcImNvbnRhaW5zXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVxdWVzdFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInJ1bnRpbWVcIjoge1xuICAgICAgICAgIFwiZ2V0QmFja2dyb3VuZFBhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRQbGF0Zm9ybUluZm9cIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJvcGVuT3B0aW9uc1BhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJyZXF1ZXN0VXBkYXRlQ2hlY2tcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZW5kTWVzc2FnZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAzXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInNlbmROYXRpdmVNZXNzYWdlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0VW5pbnN0YWxsVVJMXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwic2Vzc2lvbnNcIjoge1xuICAgICAgICAgIFwiZ2V0RGV2aWNlc1wiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFJlY2VudGx5Q2xvc2VkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVzdG9yZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcInN0b3JhZ2VcIjoge1xuICAgICAgICAgIFwibG9jYWxcIjoge1xuICAgICAgICAgICAgXCJjbGVhclwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBcInNldFwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJtYW5hZ2VkXCI6IHtcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInN5bmNcIjoge1xuICAgICAgICAgICAgXCJjbGVhclwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJnZXRCeXRlc0luVXNlXCI6IHtcbiAgICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgXCJyZW1vdmVcIjoge1xuICAgICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBcInNldFwiOiB7XG4gICAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgXCJ0YWJzXCI6IHtcbiAgICAgICAgICBcImNhcHR1cmVWaXNpYmxlVGFiXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZGV0ZWN0TGFuZ3VhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJkaXNjYXJkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZHVwbGljYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZXhlY3V0ZVNjcmlwdFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldEN1cnJlbnRcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDAsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMFxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRab29tXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Wm9vbVNldHRpbmdzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ29CYWNrXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ29Gb3J3YXJkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaGlnaGxpZ2h0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiaW5zZXJ0Q1NTXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwibW92ZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMixcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAyXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcInF1ZXJ5XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVsb2FkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlQ1NTXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2VuZE1lc3NhZ2VcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDIsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogM1xuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJzZXRab29tXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwic2V0Wm9vbVNldHRpbmdzXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwidG9wU2l0ZXNcIjoge1xuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDBcbiAgICAgICAgICB9XG4gICAgICAgIH0sXG4gICAgICAgIFwid2ViTmF2aWdhdGlvblwiOiB7XG4gICAgICAgICAgXCJnZXRBbGxGcmFtZXNcIjoge1xuICAgICAgICAgICAgXCJtaW5BcmdzXCI6IDEsXG4gICAgICAgICAgICBcIm1heEFyZ3NcIjogMVxuICAgICAgICAgIH0sXG4gICAgICAgICAgXCJnZXRGcmFtZVwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMSxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcIndlYlJlcXVlc3RcIjoge1xuICAgICAgICAgIFwiaGFuZGxlckJlaGF2aW9yQ2hhbmdlZFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAwXG4gICAgICAgICAgfVxuICAgICAgICB9LFxuICAgICAgICBcIndpbmRvd3NcIjoge1xuICAgICAgICAgIFwiY3JlYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0XCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0QWxsXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwiZ2V0Q3VycmVudFwiOiB7XG4gICAgICAgICAgICBcIm1pbkFyZ3NcIjogMCxcbiAgICAgICAgICAgIFwibWF4QXJnc1wiOiAxXG4gICAgICAgICAgfSxcbiAgICAgICAgICBcImdldExhc3RGb2N1c2VkXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAwLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwicmVtb3ZlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAxLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDFcbiAgICAgICAgICB9LFxuICAgICAgICAgIFwidXBkYXRlXCI6IHtcbiAgICAgICAgICAgIFwibWluQXJnc1wiOiAyLFxuICAgICAgICAgICAgXCJtYXhBcmdzXCI6IDJcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH07XG5cbiAgICAgIGlmIChPYmplY3Qua2V5cyhhcGlNZXRhZGF0YSkubGVuZ3RoID09PSAwKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcImFwaS1tZXRhZGF0YS5qc29uIGhhcyBub3QgYmVlbiBpbmNsdWRlZCBpbiBicm93c2VyLXBvbHlmaWxsXCIpO1xuICAgICAgfVxuICAgICAgLyoqXG4gICAgICAgKiBBIFdlYWtNYXAgc3ViY2xhc3Mgd2hpY2ggY3JlYXRlcyBhbmQgc3RvcmVzIGEgdmFsdWUgZm9yIGFueSBrZXkgd2hpY2ggZG9lc1xuICAgICAgICogbm90IGV4aXN0IHdoZW4gYWNjZXNzZWQsIGJ1dCBiZWhhdmVzIGV4YWN0bHkgYXMgYW4gb3JkaW5hcnkgV2Vha01hcFxuICAgICAgICogb3RoZXJ3aXNlLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7ZnVuY3Rpb259IGNyZWF0ZUl0ZW1cbiAgICAgICAqICAgICAgICBBIGZ1bmN0aW9uIHdoaWNoIHdpbGwgYmUgY2FsbGVkIGluIG9yZGVyIHRvIGNyZWF0ZSB0aGUgdmFsdWUgZm9yIGFueVxuICAgICAgICogICAgICAgIGtleSB3aGljaCBkb2VzIG5vdCBleGlzdCwgdGhlIGZpcnN0IHRpbWUgaXQgaXMgYWNjZXNzZWQuIFRoZVxuICAgICAgICogICAgICAgIGZ1bmN0aW9uIHJlY2VpdmVzLCBhcyBpdHMgb25seSBhcmd1bWVudCwgdGhlIGtleSBiZWluZyBjcmVhdGVkLlxuICAgICAgICovXG5cblxuICAgICAgY2xhc3MgRGVmYXVsdFdlYWtNYXAgZXh0ZW5kcyBXZWFrTWFwIHtcbiAgICAgICAgY29uc3RydWN0b3IoY3JlYXRlSXRlbSwgaXRlbXMgPSB1bmRlZmluZWQpIHtcbiAgICAgICAgICBzdXBlcihpdGVtcyk7XG4gICAgICAgICAgdGhpcy5jcmVhdGVJdGVtID0gY3JlYXRlSXRlbTtcbiAgICAgICAgfVxuXG4gICAgICAgIGdldChrZXkpIHtcbiAgICAgICAgICBpZiAoIXRoaXMuaGFzKGtleSkpIHtcbiAgICAgICAgICAgIHRoaXMuc2V0KGtleSwgdGhpcy5jcmVhdGVJdGVtKGtleSkpO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHJldHVybiBzdXBlci5nZXQoa2V5KTtcbiAgICAgICAgfVxuXG4gICAgICB9XG4gICAgICAvKipcbiAgICAgICAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgZ2l2ZW4gb2JqZWN0IGlzIGFuIG9iamVjdCB3aXRoIGEgYHRoZW5gIG1ldGhvZCwgYW5kIGNhblxuICAgICAgICogdGhlcmVmb3JlIGJlIGFzc3VtZWQgdG8gYmVoYXZlIGFzIGEgUHJvbWlzZS5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0geyp9IHZhbHVlIFRoZSB2YWx1ZSB0byB0ZXN0LlxuICAgICAgICogQHJldHVybnMge2Jvb2xlYW59IFRydWUgaWYgdGhlIHZhbHVlIGlzIHRoZW5hYmxlLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3QgaXNUaGVuYWJsZSA9IHZhbHVlID0+IHtcbiAgICAgICAgcmV0dXJuIHZhbHVlICYmIHR5cGVvZiB2YWx1ZSA9PT0gXCJvYmplY3RcIiAmJiB0eXBlb2YgdmFsdWUudGhlbiA9PT0gXCJmdW5jdGlvblwiO1xuICAgICAgfTtcbiAgICAgIC8qKlxuICAgICAgICogQ3JlYXRlcyBhbmQgcmV0dXJucyBhIGZ1bmN0aW9uIHdoaWNoLCB3aGVuIGNhbGxlZCwgd2lsbCByZXNvbHZlIG9yIHJlamVjdFxuICAgICAgICogdGhlIGdpdmVuIHByb21pc2UgYmFzZWQgb24gaG93IGl0IGlzIGNhbGxlZDpcbiAgICAgICAqXG4gICAgICAgKiAtIElmLCB3aGVuIGNhbGxlZCwgYGNocm9tZS5ydW50aW1lLmxhc3RFcnJvcmAgY29udGFpbnMgYSBub24tbnVsbCBvYmplY3QsXG4gICAgICAgKiAgIHRoZSBwcm9taXNlIGlzIHJlamVjdGVkIHdpdGggdGhhdCB2YWx1ZS5cbiAgICAgICAqIC0gSWYgdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aXRoIGV4YWN0bHkgb25lIGFyZ3VtZW50LCB0aGUgcHJvbWlzZSBpc1xuICAgICAgICogICByZXNvbHZlZCB0byB0aGF0IHZhbHVlLlxuICAgICAgICogLSBPdGhlcndpc2UsIHRoZSBwcm9taXNlIGlzIHJlc29sdmVkIHRvIGFuIGFycmF5IGNvbnRhaW5pbmcgYWxsIG9mIHRoZVxuICAgICAgICogICBmdW5jdGlvbidzIGFyZ3VtZW50cy5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gcHJvbWlzZVxuICAgICAgICogICAgICAgIEFuIG9iamVjdCBjb250YWluaW5nIHRoZSByZXNvbHV0aW9uIGFuZCByZWplY3Rpb24gZnVuY3Rpb25zIG9mIGFcbiAgICAgICAqICAgICAgICBwcm9taXNlLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gcHJvbWlzZS5yZXNvbHZlXG4gICAgICAgKiAgICAgICAgVGhlIHByb21pc2UncyByZXNvbHV0aW9uIGZ1bmN0aW9uLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gcHJvbWlzZS5yZWplY3RcbiAgICAgICAqICAgICAgICBUaGUgcHJvbWlzZSdzIHJlamVjdGlvbiBmdW5jdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSBtZXRhZGF0YVxuICAgICAgICogICAgICAgIE1ldGFkYXRhIGFib3V0IHRoZSB3cmFwcGVkIG1ldGhvZCB3aGljaCBoYXMgY3JlYXRlZCB0aGUgY2FsbGJhY2suXG4gICAgICAgKiBAcGFyYW0ge2Jvb2xlYW59IG1ldGFkYXRhLnNpbmdsZUNhbGxiYWNrQXJnXG4gICAgICAgKiAgICAgICAgV2hldGhlciBvciBub3QgdGhlIHByb21pc2UgaXMgcmVzb2x2ZWQgd2l0aCBvbmx5IHRoZSBmaXJzdFxuICAgICAgICogICAgICAgIGFyZ3VtZW50IG9mIHRoZSBjYWxsYmFjaywgYWx0ZXJuYXRpdmVseSBhbiBhcnJheSBvZiBhbGwgdGhlXG4gICAgICAgKiAgICAgICAgY2FsbGJhY2sgYXJndW1lbnRzIGlzIHJlc29sdmVkLiBCeSBkZWZhdWx0LCBpZiB0aGUgY2FsbGJhY2tcbiAgICAgICAqICAgICAgICBmdW5jdGlvbiBpcyBpbnZva2VkIHdpdGggb25seSBhIHNpbmdsZSBhcmd1bWVudCwgdGhhdCB3aWxsIGJlXG4gICAgICAgKiAgICAgICAgcmVzb2x2ZWQgdG8gdGhlIHByb21pc2UsIHdoaWxlIGFsbCBhcmd1bWVudHMgd2lsbCBiZSByZXNvbHZlZCBhc1xuICAgICAgICogICAgICAgIGFuIGFycmF5IGlmIG11bHRpcGxlIGFyZSBnaXZlbi5cbiAgICAgICAqXG4gICAgICAgKiBAcmV0dXJucyB7ZnVuY3Rpb259XG4gICAgICAgKiAgICAgICAgVGhlIGdlbmVyYXRlZCBjYWxsYmFjayBmdW5jdGlvbi5cbiAgICAgICAqL1xuXG5cbiAgICAgIGNvbnN0IG1ha2VDYWxsYmFjayA9IChwcm9taXNlLCBtZXRhZGF0YSkgPT4ge1xuICAgICAgICByZXR1cm4gKC4uLmNhbGxiYWNrQXJncykgPT4ge1xuICAgICAgICAgIGlmIChleHRlbnNpb25BUElzLnJ1bnRpbWUubGFzdEVycm9yKSB7XG4gICAgICAgICAgICBwcm9taXNlLnJlamVjdChuZXcgRXJyb3IoZXh0ZW5zaW9uQVBJcy5ydW50aW1lLmxhc3RFcnJvci5tZXNzYWdlKSk7XG4gICAgICAgICAgfSBlbHNlIGlmIChtZXRhZGF0YS5zaW5nbGVDYWxsYmFja0FyZyB8fCBjYWxsYmFja0FyZ3MubGVuZ3RoIDw9IDEgJiYgbWV0YWRhdGEuc2luZ2xlQ2FsbGJhY2tBcmcgIT09IGZhbHNlKSB7XG4gICAgICAgICAgICBwcm9taXNlLnJlc29sdmUoY2FsbGJhY2tBcmdzWzBdKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgcHJvbWlzZS5yZXNvbHZlKGNhbGxiYWNrQXJncyk7XG4gICAgICAgICAgfVxuICAgICAgICB9O1xuICAgICAgfTtcblxuICAgICAgY29uc3QgcGx1cmFsaXplQXJndW1lbnRzID0gbnVtQXJncyA9PiBudW1BcmdzID09IDEgPyBcImFyZ3VtZW50XCIgOiBcImFyZ3VtZW50c1wiO1xuICAgICAgLyoqXG4gICAgICAgKiBDcmVhdGVzIGEgd3JhcHBlciBmdW5jdGlvbiBmb3IgYSBtZXRob2Qgd2l0aCB0aGUgZ2l2ZW4gbmFtZSBhbmQgbWV0YWRhdGEuXG4gICAgICAgKlxuICAgICAgICogQHBhcmFtIHtzdHJpbmd9IG5hbWVcbiAgICAgICAqICAgICAgICBUaGUgbmFtZSBvZiB0aGUgbWV0aG9kIHdoaWNoIGlzIGJlaW5nIHdyYXBwZWQuXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gbWV0YWRhdGFcbiAgICAgICAqICAgICAgICBNZXRhZGF0YSBhYm91dCB0aGUgbWV0aG9kIGJlaW5nIHdyYXBwZWQuXG4gICAgICAgKiBAcGFyYW0ge2ludGVnZXJ9IG1ldGFkYXRhLm1pbkFyZ3NcbiAgICAgICAqICAgICAgICBUaGUgbWluaW11bSBudW1iZXIgb2YgYXJndW1lbnRzIHdoaWNoIG11c3QgYmUgcGFzc2VkIHRvIHRoZVxuICAgICAgICogICAgICAgIGZ1bmN0aW9uLiBJZiBjYWxsZWQgd2l0aCBmZXdlciB0aGFuIHRoaXMgbnVtYmVyIG9mIGFyZ3VtZW50cywgdGhlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciB3aWxsIHJhaXNlIGFuIGV4Y2VwdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7aW50ZWdlcn0gbWV0YWRhdGEubWF4QXJnc1xuICAgICAgICogICAgICAgIFRoZSBtYXhpbXVtIG51bWJlciBvZiBhcmd1bWVudHMgd2hpY2ggbWF5IGJlIHBhc3NlZCB0byB0aGVcbiAgICAgICAqICAgICAgICBmdW5jdGlvbi4gSWYgY2FsbGVkIHdpdGggbW9yZSB0aGFuIHRoaXMgbnVtYmVyIG9mIGFyZ3VtZW50cywgdGhlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciB3aWxsIHJhaXNlIGFuIGV4Y2VwdGlvbi5cbiAgICAgICAqIEBwYXJhbSB7Ym9vbGVhbn0gbWV0YWRhdGEuc2luZ2xlQ2FsbGJhY2tBcmdcbiAgICAgICAqICAgICAgICBXaGV0aGVyIG9yIG5vdCB0aGUgcHJvbWlzZSBpcyByZXNvbHZlZCB3aXRoIG9ubHkgdGhlIGZpcnN0XG4gICAgICAgKiAgICAgICAgYXJndW1lbnQgb2YgdGhlIGNhbGxiYWNrLCBhbHRlcm5hdGl2ZWx5IGFuIGFycmF5IG9mIGFsbCB0aGVcbiAgICAgICAqICAgICAgICBjYWxsYmFjayBhcmd1bWVudHMgaXMgcmVzb2x2ZWQuIEJ5IGRlZmF1bHQsIGlmIHRoZSBjYWxsYmFja1xuICAgICAgICogICAgICAgIGZ1bmN0aW9uIGlzIGludm9rZWQgd2l0aCBvbmx5IGEgc2luZ2xlIGFyZ3VtZW50LCB0aGF0IHdpbGwgYmVcbiAgICAgICAqICAgICAgICByZXNvbHZlZCB0byB0aGUgcHJvbWlzZSwgd2hpbGUgYWxsIGFyZ3VtZW50cyB3aWxsIGJlIHJlc29sdmVkIGFzXG4gICAgICAgKiAgICAgICAgYW4gYXJyYXkgaWYgbXVsdGlwbGUgYXJlIGdpdmVuLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtmdW5jdGlvbihvYmplY3QsIC4uLiopfVxuICAgICAgICogICAgICAgVGhlIGdlbmVyYXRlZCB3cmFwcGVyIGZ1bmN0aW9uLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3Qgd3JhcEFzeW5jRnVuY3Rpb24gPSAobmFtZSwgbWV0YWRhdGEpID0+IHtcbiAgICAgICAgcmV0dXJuIGZ1bmN0aW9uIGFzeW5jRnVuY3Rpb25XcmFwcGVyKHRhcmdldCwgLi4uYXJncykge1xuICAgICAgICAgIGlmIChhcmdzLmxlbmd0aCA8IG1ldGFkYXRhLm1pbkFyZ3MpIHtcbiAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgRXhwZWN0ZWQgYXQgbGVhc3QgJHttZXRhZGF0YS5taW5BcmdzfSAke3BsdXJhbGl6ZUFyZ3VtZW50cyhtZXRhZGF0YS5taW5BcmdzKX0gZm9yICR7bmFtZX0oKSwgZ290ICR7YXJncy5sZW5ndGh9YCk7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgaWYgKGFyZ3MubGVuZ3RoID4gbWV0YWRhdGEubWF4QXJncykge1xuICAgICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBhdCBtb3N0ICR7bWV0YWRhdGEubWF4QXJnc30gJHtwbHVyYWxpemVBcmd1bWVudHMobWV0YWRhdGEubWF4QXJncyl9IGZvciAke25hbWV9KCksIGdvdCAke2FyZ3MubGVuZ3RofWApO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHJldHVybiBuZXcgUHJvbWlzZSgocmVzb2x2ZSwgcmVqZWN0KSA9PiB7XG4gICAgICAgICAgICBpZiAobWV0YWRhdGEuZmFsbGJhY2tUb05vQ2FsbGJhY2spIHtcbiAgICAgICAgICAgICAgLy8gVGhpcyBBUEkgbWV0aG9kIGhhcyBjdXJyZW50bHkgbm8gY2FsbGJhY2sgb24gQ2hyb21lLCBidXQgaXQgcmV0dXJuIGEgcHJvbWlzZSBvbiBGaXJlZm94LFxuICAgICAgICAgICAgICAvLyBhbmQgc28gdGhlIHBvbHlmaWxsIHdpbGwgdHJ5IHRvIGNhbGwgaXQgd2l0aCBhIGNhbGxiYWNrIGZpcnN0LCBhbmQgaXQgd2lsbCBmYWxsYmFja1xuICAgICAgICAgICAgICAvLyB0byBub3QgcGFzc2luZyB0aGUgY2FsbGJhY2sgaWYgdGhlIGZpcnN0IGNhbGwgZmFpbHMuXG4gICAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgdGFyZ2V0W25hbWVdKC4uLmFyZ3MsIG1ha2VDYWxsYmFjayh7XG4gICAgICAgICAgICAgICAgICByZXNvbHZlLFxuICAgICAgICAgICAgICAgICAgcmVqZWN0XG4gICAgICAgICAgICAgICAgfSwgbWV0YWRhdGEpKTtcbiAgICAgICAgICAgICAgfSBjYXRjaCAoY2JFcnJvcikge1xuICAgICAgICAgICAgICAgIGNvbnNvbGUud2FybihgJHtuYW1lfSBBUEkgbWV0aG9kIGRvZXNuJ3Qgc2VlbSB0byBzdXBwb3J0IHRoZSBjYWxsYmFjayBwYXJhbWV0ZXIsIGAgKyBcImZhbGxpbmcgYmFjayB0byBjYWxsIGl0IHdpdGhvdXQgYSBjYWxsYmFjazogXCIsIGNiRXJyb3IpO1xuICAgICAgICAgICAgICAgIHRhcmdldFtuYW1lXSguLi5hcmdzKTsgLy8gVXBkYXRlIHRoZSBBUEkgbWV0aG9kIG1ldGFkYXRhLCBzbyB0aGF0IHRoZSBuZXh0IEFQSSBjYWxscyB3aWxsIG5vdCB0cnkgdG9cbiAgICAgICAgICAgICAgICAvLyB1c2UgdGhlIHVuc3VwcG9ydGVkIGNhbGxiYWNrIGFueW1vcmUuXG5cbiAgICAgICAgICAgICAgICBtZXRhZGF0YS5mYWxsYmFja1RvTm9DYWxsYmFjayA9IGZhbHNlO1xuICAgICAgICAgICAgICAgIG1ldGFkYXRhLm5vQ2FsbGJhY2sgPSB0cnVlO1xuICAgICAgICAgICAgICAgIHJlc29sdmUoKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSBlbHNlIGlmIChtZXRhZGF0YS5ub0NhbGxiYWNrKSB7XG4gICAgICAgICAgICAgIHRhcmdldFtuYW1lXSguLi5hcmdzKTtcbiAgICAgICAgICAgICAgcmVzb2x2ZSgpO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgdGFyZ2V0W25hbWVdKC4uLmFyZ3MsIG1ha2VDYWxsYmFjayh7XG4gICAgICAgICAgICAgICAgcmVzb2x2ZSxcbiAgICAgICAgICAgICAgICByZWplY3RcbiAgICAgICAgICAgICAgfSwgbWV0YWRhdGEpKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9KTtcbiAgICAgICAgfTtcbiAgICAgIH07XG4gICAgICAvKipcbiAgICAgICAqIFdyYXBzIGFuIGV4aXN0aW5nIG1ldGhvZCBvZiB0aGUgdGFyZ2V0IG9iamVjdCwgc28gdGhhdCBjYWxscyB0byBpdCBhcmVcbiAgICAgICAqIGludGVyY2VwdGVkIGJ5IHRoZSBnaXZlbiB3cmFwcGVyIGZ1bmN0aW9uLiBUaGUgd3JhcHBlciBmdW5jdGlvbiByZWNlaXZlcyxcbiAgICAgICAqIGFzIGl0cyBmaXJzdCBhcmd1bWVudCwgdGhlIG9yaWdpbmFsIGB0YXJnZXRgIG9iamVjdCwgZm9sbG93ZWQgYnkgZWFjaCBvZlxuICAgICAgICogdGhlIGFyZ3VtZW50cyBwYXNzZWQgdG8gdGhlIG9yaWdpbmFsIG1ldGhvZC5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gdGFyZ2V0XG4gICAgICAgKiAgICAgICAgVGhlIG9yaWdpbmFsIHRhcmdldCBvYmplY3QgdGhhdCB0aGUgd3JhcHBlZCBtZXRob2QgYmVsb25ncyB0by5cbiAgICAgICAqIEBwYXJhbSB7ZnVuY3Rpb259IG1ldGhvZFxuICAgICAgICogICAgICAgIFRoZSBtZXRob2QgYmVpbmcgd3JhcHBlZC4gVGhpcyBpcyB1c2VkIGFzIHRoZSB0YXJnZXQgb2YgdGhlIFByb3h5XG4gICAgICAgKiAgICAgICAgb2JqZWN0IHdoaWNoIGlzIGNyZWF0ZWQgdG8gd3JhcCB0aGUgbWV0aG9kLlxuICAgICAgICogQHBhcmFtIHtmdW5jdGlvbn0gd3JhcHBlclxuICAgICAgICogICAgICAgIFRoZSB3cmFwcGVyIGZ1bmN0aW9uIHdoaWNoIGlzIGNhbGxlZCBpbiBwbGFjZSBvZiBhIGRpcmVjdCBpbnZvY2F0aW9uXG4gICAgICAgKiAgICAgICAgb2YgdGhlIHdyYXBwZWQgbWV0aG9kLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtQcm94eTxmdW5jdGlvbj59XG4gICAgICAgKiAgICAgICAgQSBQcm94eSBvYmplY3QgZm9yIHRoZSBnaXZlbiBtZXRob2QsIHdoaWNoIGludm9rZXMgdGhlIGdpdmVuIHdyYXBwZXJcbiAgICAgICAqICAgICAgICBtZXRob2QgaW4gaXRzIHBsYWNlLlxuICAgICAgICovXG5cblxuICAgICAgY29uc3Qgd3JhcE1ldGhvZCA9ICh0YXJnZXQsIG1ldGhvZCwgd3JhcHBlcikgPT4ge1xuICAgICAgICByZXR1cm4gbmV3IFByb3h5KG1ldGhvZCwge1xuICAgICAgICAgIGFwcGx5KHRhcmdldE1ldGhvZCwgdGhpc09iaiwgYXJncykge1xuICAgICAgICAgICAgcmV0dXJuIHdyYXBwZXIuY2FsbCh0aGlzT2JqLCB0YXJnZXQsIC4uLmFyZ3MpO1xuICAgICAgICAgIH1cblxuICAgICAgICB9KTtcbiAgICAgIH07XG5cbiAgICAgIGxldCBoYXNPd25Qcm9wZXJ0eSA9IEZ1bmN0aW9uLmNhbGwuYmluZChPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5KTtcbiAgICAgIC8qKlxuICAgICAgICogV3JhcHMgYW4gb2JqZWN0IGluIGEgUHJveHkgd2hpY2ggaW50ZXJjZXB0cyBhbmQgd3JhcHMgY2VydGFpbiBtZXRob2RzXG4gICAgICAgKiBiYXNlZCBvbiB0aGUgZ2l2ZW4gYHdyYXBwZXJzYCBhbmQgYG1ldGFkYXRhYCBvYmplY3RzLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSB0YXJnZXRcbiAgICAgICAqICAgICAgICBUaGUgdGFyZ2V0IG9iamVjdCB0byB3cmFwLlxuICAgICAgICpcbiAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSBbd3JhcHBlcnMgPSB7fV1cbiAgICAgICAqICAgICAgICBBbiBvYmplY3QgdHJlZSBjb250YWluaW5nIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBzcGVjaWFsIGNhc2VzLiBBbnlcbiAgICAgICAqICAgICAgICBmdW5jdGlvbiBwcmVzZW50IGluIHRoaXMgb2JqZWN0IHRyZWUgaXMgY2FsbGVkIGluIHBsYWNlIG9mIHRoZVxuICAgICAgICogICAgICAgIG1ldGhvZCBpbiB0aGUgc2FtZSBsb2NhdGlvbiBpbiB0aGUgYHRhcmdldGAgb2JqZWN0IHRyZWUuIFRoZXNlXG4gICAgICAgKiAgICAgICAgd3JhcHBlciBtZXRob2RzIGFyZSBpbnZva2VkIGFzIGRlc2NyaWJlZCBpbiB7QHNlZSB3cmFwTWV0aG9kfS5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge29iamVjdH0gW21ldGFkYXRhID0ge31dXG4gICAgICAgKiAgICAgICAgQW4gb2JqZWN0IHRyZWUgY29udGFpbmluZyBtZXRhZGF0YSB1c2VkIHRvIGF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVcbiAgICAgICAqICAgICAgICBQcm9taXNlLWJhc2VkIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBhc3luY2hyb25vdXMuIEFueSBmdW5jdGlvbiBpblxuICAgICAgICogICAgICAgIHRoZSBgdGFyZ2V0YCBvYmplY3QgdHJlZSB3aGljaCBoYXMgYSBjb3JyZXNwb25kaW5nIG1ldGFkYXRhIG9iamVjdFxuICAgICAgICogICAgICAgIGluIHRoZSBzYW1lIGxvY2F0aW9uIGluIHRoZSBgbWV0YWRhdGFgIHRyZWUgaXMgcmVwbGFjZWQgd2l0aCBhblxuICAgICAgICogICAgICAgIGF1dG9tYXRpY2FsbHktZ2VuZXJhdGVkIHdyYXBwZXIgZnVuY3Rpb24sIGFzIGRlc2NyaWJlZCBpblxuICAgICAgICogICAgICAgIHtAc2VlIHdyYXBBc3luY0Z1bmN0aW9ufVxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtQcm94eTxvYmplY3Q+fVxuICAgICAgICovXG5cbiAgICAgIGNvbnN0IHdyYXBPYmplY3QgPSAodGFyZ2V0LCB3cmFwcGVycyA9IHt9LCBtZXRhZGF0YSA9IHt9KSA9PiB7XG4gICAgICAgIGxldCBjYWNoZSA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gICAgICAgIGxldCBoYW5kbGVycyA9IHtcbiAgICAgICAgICBoYXMocHJveHlUYXJnZXQsIHByb3ApIHtcbiAgICAgICAgICAgIHJldHVybiBwcm9wIGluIHRhcmdldCB8fCBwcm9wIGluIGNhY2hlO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBnZXQocHJveHlUYXJnZXQsIHByb3AsIHJlY2VpdmVyKSB7XG4gICAgICAgICAgICBpZiAocHJvcCBpbiBjYWNoZSkge1xuICAgICAgICAgICAgICByZXR1cm4gY2FjaGVbcHJvcF07XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGlmICghKHByb3AgaW4gdGFyZ2V0KSkge1xuICAgICAgICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBsZXQgdmFsdWUgPSB0YXJnZXRbcHJvcF07XG5cbiAgICAgICAgICAgIGlmICh0eXBlb2YgdmFsdWUgPT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgICAgICAvLyBUaGlzIGlzIGEgbWV0aG9kIG9uIHRoZSB1bmRlcmx5aW5nIG9iamVjdC4gQ2hlY2sgaWYgd2UgbmVlZCB0byBkb1xuICAgICAgICAgICAgICAvLyBhbnkgd3JhcHBpbmcuXG4gICAgICAgICAgICAgIGlmICh0eXBlb2Ygd3JhcHBlcnNbcHJvcF0gPT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgICAgICAgIC8vIFdlIGhhdmUgYSBzcGVjaWFsLWNhc2Ugd3JhcHBlciBmb3IgdGhpcyBtZXRob2QuXG4gICAgICAgICAgICAgICAgdmFsdWUgPSB3cmFwTWV0aG9kKHRhcmdldCwgdGFyZ2V0W3Byb3BdLCB3cmFwcGVyc1twcm9wXSk7XG4gICAgICAgICAgICAgIH0gZWxzZSBpZiAoaGFzT3duUHJvcGVydHkobWV0YWRhdGEsIHByb3ApKSB7XG4gICAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhbiBhc3luYyBtZXRob2QgdGhhdCB3ZSBoYXZlIG1ldGFkYXRhIGZvci4gQ3JlYXRlIGFcbiAgICAgICAgICAgICAgICAvLyBQcm9taXNlIHdyYXBwZXIgZm9yIGl0LlxuICAgICAgICAgICAgICAgIGxldCB3cmFwcGVyID0gd3JhcEFzeW5jRnVuY3Rpb24ocHJvcCwgbWV0YWRhdGFbcHJvcF0pO1xuICAgICAgICAgICAgICAgIHZhbHVlID0gd3JhcE1ldGhvZCh0YXJnZXQsIHRhcmdldFtwcm9wXSwgd3JhcHBlcik7XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhIG1ldGhvZCB0aGF0IHdlIGRvbid0IGtub3cgb3IgY2FyZSBhYm91dC4gUmV0dXJuIHRoZVxuICAgICAgICAgICAgICAgIC8vIG9yaWdpbmFsIG1ldGhvZCwgYm91bmQgdG8gdGhlIHVuZGVybHlpbmcgb2JqZWN0LlxuICAgICAgICAgICAgICAgIHZhbHVlID0gdmFsdWUuYmluZCh0YXJnZXQpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9IGVsc2UgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gXCJvYmplY3RcIiAmJiB2YWx1ZSAhPT0gbnVsbCAmJiAoaGFzT3duUHJvcGVydHkod3JhcHBlcnMsIHByb3ApIHx8IGhhc093blByb3BlcnR5KG1ldGFkYXRhLCBwcm9wKSkpIHtcbiAgICAgICAgICAgICAgLy8gVGhpcyBpcyBhbiBvYmplY3QgdGhhdCB3ZSBuZWVkIHRvIGRvIHNvbWUgd3JhcHBpbmcgZm9yIHRoZSBjaGlsZHJlblxuICAgICAgICAgICAgICAvLyBvZi4gQ3JlYXRlIGEgc3ViLW9iamVjdCB3cmFwcGVyIGZvciBpdCB3aXRoIHRoZSBhcHByb3ByaWF0ZSBjaGlsZFxuICAgICAgICAgICAgICAvLyBtZXRhZGF0YS5cbiAgICAgICAgICAgICAgdmFsdWUgPSB3cmFwT2JqZWN0KHZhbHVlLCB3cmFwcGVyc1twcm9wXSwgbWV0YWRhdGFbcHJvcF0pO1xuICAgICAgICAgICAgfSBlbHNlIGlmIChoYXNPd25Qcm9wZXJ0eShtZXRhZGF0YSwgXCIqXCIpKSB7XG4gICAgICAgICAgICAgIC8vIFdyYXAgYWxsIHByb3BlcnRpZXMgaW4gKiBuYW1lc3BhY2UuXG4gICAgICAgICAgICAgIHZhbHVlID0gd3JhcE9iamVjdCh2YWx1ZSwgd3JhcHBlcnNbcHJvcF0sIG1ldGFkYXRhW1wiKlwiXSk7XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAvLyBXZSBkb24ndCBuZWVkIHRvIGRvIGFueSB3cmFwcGluZyBmb3IgdGhpcyBwcm9wZXJ0eSxcbiAgICAgICAgICAgICAgLy8gc28ganVzdCBmb3J3YXJkIGFsbCBhY2Nlc3MgdG8gdGhlIHVuZGVybHlpbmcgb2JqZWN0LlxuICAgICAgICAgICAgICBPYmplY3QuZGVmaW5lUHJvcGVydHkoY2FjaGUsIHByb3AsIHtcbiAgICAgICAgICAgICAgICBjb25maWd1cmFibGU6IHRydWUsXG4gICAgICAgICAgICAgICAgZW51bWVyYWJsZTogdHJ1ZSxcblxuICAgICAgICAgICAgICAgIGdldCgpIHtcbiAgICAgICAgICAgICAgICAgIHJldHVybiB0YXJnZXRbcHJvcF07XG4gICAgICAgICAgICAgICAgfSxcblxuICAgICAgICAgICAgICAgIHNldCh2YWx1ZSkge1xuICAgICAgICAgICAgICAgICAgdGFyZ2V0W3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgICByZXR1cm4gdmFsdWU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGNhY2hlW3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICByZXR1cm4gdmFsdWU7XG4gICAgICAgICAgfSxcblxuICAgICAgICAgIHNldChwcm94eVRhcmdldCwgcHJvcCwgdmFsdWUsIHJlY2VpdmVyKSB7XG4gICAgICAgICAgICBpZiAocHJvcCBpbiBjYWNoZSkge1xuICAgICAgICAgICAgICBjYWNoZVtwcm9wXSA9IHZhbHVlO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgdGFyZ2V0W3Byb3BdID0gdmFsdWU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHJldHVybiB0cnVlO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBkZWZpbmVQcm9wZXJ0eShwcm94eVRhcmdldCwgcHJvcCwgZGVzYykge1xuICAgICAgICAgICAgcmV0dXJuIFJlZmxlY3QuZGVmaW5lUHJvcGVydHkoY2FjaGUsIHByb3AsIGRlc2MpO1xuICAgICAgICAgIH0sXG5cbiAgICAgICAgICBkZWxldGVQcm9wZXJ0eShwcm94eVRhcmdldCwgcHJvcCkge1xuICAgICAgICAgICAgcmV0dXJuIFJlZmxlY3QuZGVsZXRlUHJvcGVydHkoY2FjaGUsIHByb3ApO1xuICAgICAgICAgIH1cblxuICAgICAgICB9OyAvLyBQZXIgY29udHJhY3Qgb2YgdGhlIFByb3h5IEFQSSwgdGhlIFwiZ2V0XCIgcHJveHkgaGFuZGxlciBtdXN0IHJldHVybiB0aGVcbiAgICAgICAgLy8gb3JpZ2luYWwgdmFsdWUgb2YgdGhlIHRhcmdldCBpZiB0aGF0IHZhbHVlIGlzIGRlY2xhcmVkIHJlYWQtb25seSBhbmRcbiAgICAgICAgLy8gbm9uLWNvbmZpZ3VyYWJsZS4gRm9yIHRoaXMgcmVhc29uLCB3ZSBjcmVhdGUgYW4gb2JqZWN0IHdpdGggdGhlXG4gICAgICAgIC8vIHByb3RvdHlwZSBzZXQgdG8gYHRhcmdldGAgaW5zdGVhZCBvZiB1c2luZyBgdGFyZ2V0YCBkaXJlY3RseS5cbiAgICAgICAgLy8gT3RoZXJ3aXNlIHdlIGNhbm5vdCByZXR1cm4gYSBjdXN0b20gb2JqZWN0IGZvciBBUElzIHRoYXRcbiAgICAgICAgLy8gYXJlIGRlY2xhcmVkIHJlYWQtb25seSBhbmQgbm9uLWNvbmZpZ3VyYWJsZSwgc3VjaCBhcyBgY2hyb21lLmRldnRvb2xzYC5cbiAgICAgICAgLy9cbiAgICAgICAgLy8gVGhlIHByb3h5IGhhbmRsZXJzIHRoZW1zZWx2ZXMgd2lsbCBzdGlsbCB1c2UgdGhlIG9yaWdpbmFsIGB0YXJnZXRgXG4gICAgICAgIC8vIGluc3RlYWQgb2YgdGhlIGBwcm94eVRhcmdldGAsIHNvIHRoYXQgdGhlIG1ldGhvZHMgYW5kIHByb3BlcnRpZXMgYXJlXG4gICAgICAgIC8vIGRlcmVmZXJlbmNlZCB2aWEgdGhlIG9yaWdpbmFsIHRhcmdldHMuXG5cbiAgICAgICAgbGV0IHByb3h5VGFyZ2V0ID0gT2JqZWN0LmNyZWF0ZSh0YXJnZXQpO1xuICAgICAgICByZXR1cm4gbmV3IFByb3h5KHByb3h5VGFyZ2V0LCBoYW5kbGVycyk7XG4gICAgICB9O1xuICAgICAgLyoqXG4gICAgICAgKiBDcmVhdGVzIGEgc2V0IG9mIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBhbiBldmVudCBvYmplY3QsIHdoaWNoIGhhbmRsZXNcbiAgICAgICAqIHdyYXBwaW5nIG9mIGxpc3RlbmVyIGZ1bmN0aW9ucyB0aGF0IHRob3NlIG1lc3NhZ2VzIGFyZSBwYXNzZWQuXG4gICAgICAgKlxuICAgICAgICogQSBzaW5nbGUgd3JhcHBlciBpcyBjcmVhdGVkIGZvciBlYWNoIGxpc3RlbmVyIGZ1bmN0aW9uLCBhbmQgc3RvcmVkIGluIGFcbiAgICAgICAqIG1hcC4gU3Vic2VxdWVudCBjYWxscyB0byBgYWRkTGlzdGVuZXJgLCBgaGFzTGlzdGVuZXJgLCBvciBgcmVtb3ZlTGlzdGVuZXJgXG4gICAgICAgKiByZXRyaWV2ZSB0aGUgb3JpZ2luYWwgd3JhcHBlciwgc28gdGhhdCAgYXR0ZW1wdHMgdG8gcmVtb3ZlIGFcbiAgICAgICAqIHByZXZpb3VzbHktYWRkZWQgbGlzdGVuZXIgd29yayBhcyBleHBlY3RlZC5cbiAgICAgICAqXG4gICAgICAgKiBAcGFyYW0ge0RlZmF1bHRXZWFrTWFwPGZ1bmN0aW9uLCBmdW5jdGlvbj59IHdyYXBwZXJNYXBcbiAgICAgICAqICAgICAgICBBIERlZmF1bHRXZWFrTWFwIG9iamVjdCB3aGljaCB3aWxsIGNyZWF0ZSB0aGUgYXBwcm9wcmlhdGUgd3JhcHBlclxuICAgICAgICogICAgICAgIGZvciBhIGdpdmVuIGxpc3RlbmVyIGZ1bmN0aW9uIHdoZW4gb25lIGRvZXMgbm90IGV4aXN0LCBhbmQgcmV0cmlldmVcbiAgICAgICAqICAgICAgICBhbiBleGlzdGluZyBvbmUgd2hlbiBpdCBkb2VzLlxuICAgICAgICpcbiAgICAgICAqIEByZXR1cm5zIHtvYmplY3R9XG4gICAgICAgKi9cblxuXG4gICAgICBjb25zdCB3cmFwRXZlbnQgPSB3cmFwcGVyTWFwID0+ICh7XG4gICAgICAgIGFkZExpc3RlbmVyKHRhcmdldCwgbGlzdGVuZXIsIC4uLmFyZ3MpIHtcbiAgICAgICAgICB0YXJnZXQuYWRkTGlzdGVuZXIod3JhcHBlck1hcC5nZXQobGlzdGVuZXIpLCAuLi5hcmdzKTtcbiAgICAgICAgfSxcblxuICAgICAgICBoYXNMaXN0ZW5lcih0YXJnZXQsIGxpc3RlbmVyKSB7XG4gICAgICAgICAgcmV0dXJuIHRhcmdldC5oYXNMaXN0ZW5lcih3cmFwcGVyTWFwLmdldChsaXN0ZW5lcikpO1xuICAgICAgICB9LFxuXG4gICAgICAgIHJlbW92ZUxpc3RlbmVyKHRhcmdldCwgbGlzdGVuZXIpIHtcbiAgICAgICAgICB0YXJnZXQucmVtb3ZlTGlzdGVuZXIod3JhcHBlck1hcC5nZXQobGlzdGVuZXIpKTtcbiAgICAgICAgfVxuXG4gICAgICB9KTtcblxuICAgICAgY29uc3Qgb25SZXF1ZXN0RmluaXNoZWRXcmFwcGVycyA9IG5ldyBEZWZhdWx0V2Vha01hcChsaXN0ZW5lciA9PiB7XG4gICAgICAgIGlmICh0eXBlb2YgbGlzdGVuZXIgIT09IFwiZnVuY3Rpb25cIikge1xuICAgICAgICAgIHJldHVybiBsaXN0ZW5lcjtcbiAgICAgICAgfVxuICAgICAgICAvKipcbiAgICAgICAgICogV3JhcHMgYW4gb25SZXF1ZXN0RmluaXNoZWQgbGlzdGVuZXIgZnVuY3Rpb24gc28gdGhhdCBpdCB3aWxsIHJldHVybiBhXG4gICAgICAgICAqIGBnZXRDb250ZW50KClgIHByb3BlcnR5IHdoaWNoIHJldHVybnMgYSBgUHJvbWlzZWAgcmF0aGVyIHRoYW4gdXNpbmcgYVxuICAgICAgICAgKiBjYWxsYmFjayBBUEkuXG4gICAgICAgICAqXG4gICAgICAgICAqIEBwYXJhbSB7b2JqZWN0fSByZXFcbiAgICAgICAgICogICAgICAgIFRoZSBIQVIgZW50cnkgb2JqZWN0IHJlcHJlc2VudGluZyB0aGUgbmV0d29yayByZXF1ZXN0LlxuICAgICAgICAgKi9cblxuXG4gICAgICAgIHJldHVybiBmdW5jdGlvbiBvblJlcXVlc3RGaW5pc2hlZChyZXEpIHtcbiAgICAgICAgICBjb25zdCB3cmFwcGVkUmVxID0gd3JhcE9iamVjdChyZXEsIHt9XG4gICAgICAgICAgLyogd3JhcHBlcnMgKi9cbiAgICAgICAgICAsIHtcbiAgICAgICAgICAgIGdldENvbnRlbnQ6IHtcbiAgICAgICAgICAgICAgbWluQXJnczogMCxcbiAgICAgICAgICAgICAgbWF4QXJnczogMFxuICAgICAgICAgICAgfVxuICAgICAgICAgIH0pO1xuICAgICAgICAgIGxpc3RlbmVyKHdyYXBwZWRSZXEpO1xuICAgICAgICB9O1xuICAgICAgfSk7IC8vIEtlZXAgdHJhY2sgaWYgdGhlIGRlcHJlY2F0aW9uIHdhcm5pbmcgaGFzIGJlZW4gbG9nZ2VkIGF0IGxlYXN0IG9uY2UuXG5cbiAgICAgIGxldCBsb2dnZWRTZW5kUmVzcG9uc2VEZXByZWNhdGlvbldhcm5pbmcgPSBmYWxzZTtcbiAgICAgIGNvbnN0IG9uTWVzc2FnZVdyYXBwZXJzID0gbmV3IERlZmF1bHRXZWFrTWFwKGxpc3RlbmVyID0+IHtcbiAgICAgICAgaWYgKHR5cGVvZiBsaXN0ZW5lciAhPT0gXCJmdW5jdGlvblwiKSB7XG4gICAgICAgICAgcmV0dXJuIGxpc3RlbmVyO1xuICAgICAgICB9XG4gICAgICAgIC8qKlxuICAgICAgICAgKiBXcmFwcyBhIG1lc3NhZ2UgbGlzdGVuZXIgZnVuY3Rpb24gc28gdGhhdCBpdCBtYXkgc2VuZCByZXNwb25zZXMgYmFzZWQgb25cbiAgICAgICAgICogaXRzIHJldHVybiB2YWx1ZSwgcmF0aGVyIHRoYW4gYnkgcmV0dXJuaW5nIGEgc2VudGluZWwgdmFsdWUgYW5kIGNhbGxpbmcgYVxuICAgICAgICAgKiBjYWxsYmFjay4gSWYgdGhlIGxpc3RlbmVyIGZ1bmN0aW9uIHJldHVybnMgYSBQcm9taXNlLCB0aGUgcmVzcG9uc2UgaXNcbiAgICAgICAgICogc2VudCB3aGVuIHRoZSBwcm9taXNlIGVpdGhlciByZXNvbHZlcyBvciByZWplY3RzLlxuICAgICAgICAgKlxuICAgICAgICAgKiBAcGFyYW0geyp9IG1lc3NhZ2VcbiAgICAgICAgICogICAgICAgIFRoZSBtZXNzYWdlIHNlbnQgYnkgdGhlIG90aGVyIGVuZCBvZiB0aGUgY2hhbm5lbC5cbiAgICAgICAgICogQHBhcmFtIHtvYmplY3R9IHNlbmRlclxuICAgICAgICAgKiAgICAgICAgRGV0YWlscyBhYm91dCB0aGUgc2VuZGVyIG9mIHRoZSBtZXNzYWdlLlxuICAgICAgICAgKiBAcGFyYW0ge2Z1bmN0aW9uKCopfSBzZW5kUmVzcG9uc2VcbiAgICAgICAgICogICAgICAgIEEgY2FsbGJhY2sgd2hpY2gsIHdoZW4gY2FsbGVkIHdpdGggYW4gYXJiaXRyYXJ5IGFyZ3VtZW50LCBzZW5kc1xuICAgICAgICAgKiAgICAgICAgdGhhdCB2YWx1ZSBhcyBhIHJlc3BvbnNlLlxuICAgICAgICAgKiBAcmV0dXJucyB7Ym9vbGVhbn1cbiAgICAgICAgICogICAgICAgIFRydWUgaWYgdGhlIHdyYXBwZWQgbGlzdGVuZXIgcmV0dXJuZWQgYSBQcm9taXNlLCB3aGljaCB3aWxsIGxhdGVyXG4gICAgICAgICAqICAgICAgICB5aWVsZCBhIHJlc3BvbnNlLiBGYWxzZSBvdGhlcndpc2UuXG4gICAgICAgICAqL1xuXG5cbiAgICAgICAgcmV0dXJuIGZ1bmN0aW9uIG9uTWVzc2FnZShtZXNzYWdlLCBzZW5kZXIsIHNlbmRSZXNwb25zZSkge1xuICAgICAgICAgIGxldCBkaWRDYWxsU2VuZFJlc3BvbnNlID0gZmFsc2U7XG4gICAgICAgICAgbGV0IHdyYXBwZWRTZW5kUmVzcG9uc2U7XG4gICAgICAgICAgbGV0IHNlbmRSZXNwb25zZVByb21pc2UgPSBuZXcgUHJvbWlzZShyZXNvbHZlID0+IHtcbiAgICAgICAgICAgIHdyYXBwZWRTZW5kUmVzcG9uc2UgPSBmdW5jdGlvbiAocmVzcG9uc2UpIHtcbiAgICAgICAgICAgICAgaWYgKCFsb2dnZWRTZW5kUmVzcG9uc2VEZXByZWNhdGlvbldhcm5pbmcpIHtcbiAgICAgICAgICAgICAgICBjb25zb2xlLndhcm4oU0VORF9SRVNQT05TRV9ERVBSRUNBVElPTl9XQVJOSU5HLCBuZXcgRXJyb3IoKS5zdGFjayk7XG4gICAgICAgICAgICAgICAgbG9nZ2VkU2VuZFJlc3BvbnNlRGVwcmVjYXRpb25XYXJuaW5nID0gdHJ1ZTtcbiAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIGRpZENhbGxTZW5kUmVzcG9uc2UgPSB0cnVlO1xuICAgICAgICAgICAgICByZXNvbHZlKHJlc3BvbnNlKTtcbiAgICAgICAgICAgIH07XG4gICAgICAgICAgfSk7XG4gICAgICAgICAgbGV0IHJlc3VsdDtcblxuICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICByZXN1bHQgPSBsaXN0ZW5lcihtZXNzYWdlLCBzZW5kZXIsIHdyYXBwZWRTZW5kUmVzcG9uc2UpO1xuICAgICAgICAgIH0gY2F0Y2ggKGVycikge1xuICAgICAgICAgICAgcmVzdWx0ID0gUHJvbWlzZS5yZWplY3QoZXJyKTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBjb25zdCBpc1Jlc3VsdFRoZW5hYmxlID0gcmVzdWx0ICE9PSB0cnVlICYmIGlzVGhlbmFibGUocmVzdWx0KTsgLy8gSWYgdGhlIGxpc3RlbmVyIGRpZG4ndCByZXR1cm5lZCB0cnVlIG9yIGEgUHJvbWlzZSwgb3IgY2FsbGVkXG4gICAgICAgICAgLy8gd3JhcHBlZFNlbmRSZXNwb25zZSBzeW5jaHJvbm91c2x5LCB3ZSBjYW4gZXhpdCBlYXJsaWVyXG4gICAgICAgICAgLy8gYmVjYXVzZSB0aGVyZSB3aWxsIGJlIG5vIHJlc3BvbnNlIHNlbnQgZnJvbSB0aGlzIGxpc3RlbmVyLlxuXG4gICAgICAgICAgaWYgKHJlc3VsdCAhPT0gdHJ1ZSAmJiAhaXNSZXN1bHRUaGVuYWJsZSAmJiAhZGlkQ2FsbFNlbmRSZXNwb25zZSkge1xuICAgICAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgICAgIH0gLy8gQSBzbWFsbCBoZWxwZXIgdG8gc2VuZCB0aGUgbWVzc2FnZSBpZiB0aGUgcHJvbWlzZSByZXNvbHZlc1xuICAgICAgICAgIC8vIGFuZCBhbiBlcnJvciBpZiB0aGUgcHJvbWlzZSByZWplY3RzIChhIHdyYXBwZWQgc2VuZE1lc3NhZ2UgaGFzXG4gICAgICAgICAgLy8gdG8gdHJhbnNsYXRlIHRoZSBtZXNzYWdlIGludG8gYSByZXNvbHZlZCBwcm9taXNlIG9yIGEgcmVqZWN0ZWRcbiAgICAgICAgICAvLyBwcm9taXNlKS5cblxuXG4gICAgICAgICAgY29uc3Qgc2VuZFByb21pc2VkUmVzdWx0ID0gcHJvbWlzZSA9PiB7XG4gICAgICAgICAgICBwcm9taXNlLnRoZW4obXNnID0+IHtcbiAgICAgICAgICAgICAgLy8gc2VuZCB0aGUgbWVzc2FnZSB2YWx1ZS5cbiAgICAgICAgICAgICAgc2VuZFJlc3BvbnNlKG1zZyk7XG4gICAgICAgICAgICB9LCBlcnJvciA9PiB7XG4gICAgICAgICAgICAgIC8vIFNlbmQgYSBKU09OIHJlcHJlc2VudGF0aW9uIG9mIHRoZSBlcnJvciBpZiB0aGUgcmVqZWN0ZWQgdmFsdWVcbiAgICAgICAgICAgICAgLy8gaXMgYW4gaW5zdGFuY2Ugb2YgZXJyb3IsIG9yIHRoZSBvYmplY3QgaXRzZWxmIG90aGVyd2lzZS5cbiAgICAgICAgICAgICAgbGV0IG1lc3NhZ2U7XG5cbiAgICAgICAgICAgICAgaWYgKGVycm9yICYmIChlcnJvciBpbnN0YW5jZW9mIEVycm9yIHx8IHR5cGVvZiBlcnJvci5tZXNzYWdlID09PSBcInN0cmluZ1wiKSkge1xuICAgICAgICAgICAgICAgIG1lc3NhZ2UgPSBlcnJvci5tZXNzYWdlO1xuICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIG1lc3NhZ2UgPSBcIkFuIHVuZXhwZWN0ZWQgZXJyb3Igb2NjdXJyZWRcIjtcbiAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgIHNlbmRSZXNwb25zZSh7XG4gICAgICAgICAgICAgICAgX19tb3pXZWJFeHRlbnNpb25Qb2x5ZmlsbFJlamVjdF9fOiB0cnVlLFxuICAgICAgICAgICAgICAgIG1lc3NhZ2VcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9KS5jYXRjaChlcnIgPT4ge1xuICAgICAgICAgICAgICAvLyBQcmludCBhbiBlcnJvciBvbiB0aGUgY29uc29sZSBpZiB1bmFibGUgdG8gc2VuZCB0aGUgcmVzcG9uc2UuXG4gICAgICAgICAgICAgIGNvbnNvbGUuZXJyb3IoXCJGYWlsZWQgdG8gc2VuZCBvbk1lc3NhZ2UgcmVqZWN0ZWQgcmVwbHlcIiwgZXJyKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH07IC8vIElmIHRoZSBsaXN0ZW5lciByZXR1cm5lZCBhIFByb21pc2UsIHNlbmQgdGhlIHJlc29sdmVkIHZhbHVlIGFzIGFcbiAgICAgICAgICAvLyByZXN1bHQsIG90aGVyd2lzZSB3YWl0IHRoZSBwcm9taXNlIHJlbGF0ZWQgdG8gdGhlIHdyYXBwZWRTZW5kUmVzcG9uc2VcbiAgICAgICAgICAvLyBjYWxsYmFjayB0byByZXNvbHZlIGFuZCBzZW5kIGl0IGFzIGEgcmVzcG9uc2UuXG5cblxuICAgICAgICAgIGlmIChpc1Jlc3VsdFRoZW5hYmxlKSB7XG4gICAgICAgICAgICBzZW5kUHJvbWlzZWRSZXN1bHQocmVzdWx0KTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgc2VuZFByb21pc2VkUmVzdWx0KHNlbmRSZXNwb25zZVByb21pc2UpO1xuICAgICAgICAgIH0gLy8gTGV0IENocm9tZSBrbm93IHRoYXQgdGhlIGxpc3RlbmVyIGlzIHJlcGx5aW5nLlxuXG5cbiAgICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgICAgfTtcbiAgICAgIH0pO1xuXG4gICAgICBjb25zdCB3cmFwcGVkU2VuZE1lc3NhZ2VDYWxsYmFjayA9ICh7XG4gICAgICAgIHJlamVjdCxcbiAgICAgICAgcmVzb2x2ZVxuICAgICAgfSwgcmVwbHkpID0+IHtcbiAgICAgICAgaWYgKGV4dGVuc2lvbkFQSXMucnVudGltZS5sYXN0RXJyb3IpIHtcbiAgICAgICAgICAvLyBEZXRlY3Qgd2hlbiBub25lIG9mIHRoZSBsaXN0ZW5lcnMgcmVwbGllZCB0byB0aGUgc2VuZE1lc3NhZ2UgY2FsbCBhbmQgcmVzb2x2ZVxuICAgICAgICAgIC8vIHRoZSBwcm9taXNlIHRvIHVuZGVmaW5lZCBhcyBpbiBGaXJlZm94LlxuICAgICAgICAgIC8vIFNlZSBodHRwczovL2dpdGh1Yi5jb20vbW96aWxsYS93ZWJleHRlbnNpb24tcG9seWZpbGwvaXNzdWVzLzEzMFxuICAgICAgICAgIGlmIChleHRlbnNpb25BUElzLnJ1bnRpbWUubGFzdEVycm9yLm1lc3NhZ2UgPT09IENIUk9NRV9TRU5EX01FU1NBR0VfQ0FMTEJBQ0tfTk9fUkVTUE9OU0VfTUVTU0FHRSkge1xuICAgICAgICAgICAgcmVzb2x2ZSgpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICByZWplY3QobmV3IEVycm9yKGV4dGVuc2lvbkFQSXMucnVudGltZS5sYXN0RXJyb3IubWVzc2FnZSkpO1xuICAgICAgICAgIH1cbiAgICAgICAgfSBlbHNlIGlmIChyZXBseSAmJiByZXBseS5fX21veldlYkV4dGVuc2lvblBvbHlmaWxsUmVqZWN0X18pIHtcbiAgICAgICAgICAvLyBDb252ZXJ0IGJhY2sgdGhlIEpTT04gcmVwcmVzZW50YXRpb24gb2YgdGhlIGVycm9yIGludG9cbiAgICAgICAgICAvLyBhbiBFcnJvciBpbnN0YW5jZS5cbiAgICAgICAgICByZWplY3QobmV3IEVycm9yKHJlcGx5Lm1lc3NhZ2UpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXNvbHZlKHJlcGx5KTtcbiAgICAgICAgfVxuICAgICAgfTtcblxuICAgICAgY29uc3Qgd3JhcHBlZFNlbmRNZXNzYWdlID0gKG5hbWUsIG1ldGFkYXRhLCBhcGlOYW1lc3BhY2VPYmosIC4uLmFyZ3MpID0+IHtcbiAgICAgICAgaWYgKGFyZ3MubGVuZ3RoIDwgbWV0YWRhdGEubWluQXJncykge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgRXhwZWN0ZWQgYXQgbGVhc3QgJHttZXRhZGF0YS5taW5BcmdzfSAke3BsdXJhbGl6ZUFyZ3VtZW50cyhtZXRhZGF0YS5taW5BcmdzKX0gZm9yICR7bmFtZX0oKSwgZ290ICR7YXJncy5sZW5ndGh9YCk7XG4gICAgICAgIH1cblxuICAgICAgICBpZiAoYXJncy5sZW5ndGggPiBtZXRhZGF0YS5tYXhBcmdzKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBhdCBtb3N0ICR7bWV0YWRhdGEubWF4QXJnc30gJHtwbHVyYWxpemVBcmd1bWVudHMobWV0YWRhdGEubWF4QXJncyl9IGZvciAke25hbWV9KCksIGdvdCAke2FyZ3MubGVuZ3RofWApO1xuICAgICAgICB9XG5cbiAgICAgICAgcmV0dXJuIG5ldyBQcm9taXNlKChyZXNvbHZlLCByZWplY3QpID0+IHtcbiAgICAgICAgICBjb25zdCB3cmFwcGVkQ2IgPSB3cmFwcGVkU2VuZE1lc3NhZ2VDYWxsYmFjay5iaW5kKG51bGwsIHtcbiAgICAgICAgICAgIHJlc29sdmUsXG4gICAgICAgICAgICByZWplY3RcbiAgICAgICAgICB9KTtcbiAgICAgICAgICBhcmdzLnB1c2god3JhcHBlZENiKTtcbiAgICAgICAgICBhcGlOYW1lc3BhY2VPYmouc2VuZE1lc3NhZ2UoLi4uYXJncyk7XG4gICAgICAgIH0pO1xuICAgICAgfTtcblxuICAgICAgY29uc3Qgc3RhdGljV3JhcHBlcnMgPSB7XG4gICAgICAgIGRldnRvb2xzOiB7XG4gICAgICAgICAgbmV0d29yazoge1xuICAgICAgICAgICAgb25SZXF1ZXN0RmluaXNoZWQ6IHdyYXBFdmVudChvblJlcXVlc3RGaW5pc2hlZFdyYXBwZXJzKVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgICAgcnVudGltZToge1xuICAgICAgICAgIG9uTWVzc2FnZTogd3JhcEV2ZW50KG9uTWVzc2FnZVdyYXBwZXJzKSxcbiAgICAgICAgICBvbk1lc3NhZ2VFeHRlcm5hbDogd3JhcEV2ZW50KG9uTWVzc2FnZVdyYXBwZXJzKSxcbiAgICAgICAgICBzZW5kTWVzc2FnZTogd3JhcHBlZFNlbmRNZXNzYWdlLmJpbmQobnVsbCwgXCJzZW5kTWVzc2FnZVwiLCB7XG4gICAgICAgICAgICBtaW5BcmdzOiAxLFxuICAgICAgICAgICAgbWF4QXJnczogM1xuICAgICAgICAgIH0pXG4gICAgICAgIH0sXG4gICAgICAgIHRhYnM6IHtcbiAgICAgICAgICBzZW5kTWVzc2FnZTogd3JhcHBlZFNlbmRNZXNzYWdlLmJpbmQobnVsbCwgXCJzZW5kTWVzc2FnZVwiLCB7XG4gICAgICAgICAgICBtaW5BcmdzOiAyLFxuICAgICAgICAgICAgbWF4QXJnczogM1xuICAgICAgICAgIH0pXG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgICBjb25zdCBzZXR0aW5nTWV0YWRhdGEgPSB7XG4gICAgICAgIGNsZWFyOiB7XG4gICAgICAgICAgbWluQXJnczogMSxcbiAgICAgICAgICBtYXhBcmdzOiAxXG4gICAgICAgIH0sXG4gICAgICAgIGdldDoge1xuICAgICAgICAgIG1pbkFyZ3M6IDEsXG4gICAgICAgICAgbWF4QXJnczogMVxuICAgICAgICB9LFxuICAgICAgICBzZXQ6IHtcbiAgICAgICAgICBtaW5BcmdzOiAxLFxuICAgICAgICAgIG1heEFyZ3M6IDFcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICAgIGFwaU1ldGFkYXRhLnByaXZhY3kgPSB7XG4gICAgICAgIG5ldHdvcms6IHtcbiAgICAgICAgICBcIipcIjogc2V0dGluZ01ldGFkYXRhXG4gICAgICAgIH0sXG4gICAgICAgIHNlcnZpY2VzOiB7XG4gICAgICAgICAgXCIqXCI6IHNldHRpbmdNZXRhZGF0YVxuICAgICAgICB9LFxuICAgICAgICB3ZWJzaXRlczoge1xuICAgICAgICAgIFwiKlwiOiBzZXR0aW5nTWV0YWRhdGFcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICAgIHJldHVybiB3cmFwT2JqZWN0KGV4dGVuc2lvbkFQSXMsIHN0YXRpY1dyYXBwZXJzLCBhcGlNZXRhZGF0YSk7XG4gICAgfTtcblxuICAgIGlmICh0eXBlb2YgY2hyb21lICE9IFwib2JqZWN0XCIgfHwgIWNocm9tZSB8fCAhY2hyb21lLnJ1bnRpbWUgfHwgIWNocm9tZS5ydW50aW1lLmlkKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoXCJUaGlzIHNjcmlwdCBzaG91bGQgb25seSBiZSBsb2FkZWQgaW4gYSBicm93c2VyIGV4dGVuc2lvbi5cIik7XG4gICAgfSAvLyBUaGUgYnVpbGQgcHJvY2VzcyBhZGRzIGEgVU1EIHdyYXBwZXIgYXJvdW5kIHRoaXMgZmlsZSwgd2hpY2ggbWFrZXMgdGhlXG4gICAgLy8gYG1vZHVsZWAgdmFyaWFibGUgYXZhaWxhYmxlLlxuXG5cbiAgICBtb2R1bGUuZXhwb3J0cyA9IHdyYXBBUElzKGNocm9tZSk7XG4gIH0gZWxzZSB7XG4gICAgbW9kdWxlLmV4cG9ydHMgPSBicm93c2VyO1xuICB9XG59KTtcbi8vIyBzb3VyY2VNYXBwaW5nVVJMPWJyb3dzZXItcG9seWZpbGwuanMubWFwXG4iLCIvLyBUaGVzZSBtb2RlcyBhcmUgZGVmaW5lZCBpbiBodHRwczovL2dpdGh1Yi5jb20vbmVvdmltL25lb3ZpbS9ibG9iL21hc3Rlci9zcmMvbnZpbS9jdXJzb3Jfc2hhcGUuY1xuZXhwb3J0IHR5cGUgTnZpbU1vZGUgPSBcImFsbFwiXG4gIHwgXCJub3JtYWxcIlxuICB8IFwidmlzdWFsXCJcbiAgfCBcImluc2VydFwiXG4gIHwgXCJyZXBsYWNlXCJcbiAgfCBcImNtZGxpbmVfbm9ybWFsXCJcbiAgfCBcImNtZGxpbmVfaW5zZXJ0XCJcbiAgfCBcImNtZGxpbmVfcmVwbGFjZVwiXG4gIHwgXCJvcGVyYXRvclwiXG4gIHwgXCJ2aXN1YWxfc2VsZWN0XCJcbiAgfCBcImNtZGxpbmVfaG92ZXJcIlxuICB8IFwic3RhdHVzbGluZV9ob3ZlclwiXG4gIHwgXCJzdGF0dXNsaW5lX2RyYWdcIlxuICB8IFwidnNlcF9ob3ZlclwiXG4gIHwgXCJ2c2VwX2RyYWdcIlxuICB8IFwibW9yZVwiXG4gIHwgXCJtb3JlX2xhc3RsaW5lXCJcbiAgfCBcInNob3dtYXRjaFwiO1xuXG5leHBvcnQgaW50ZXJmYWNlIElTaXRlQ29uZmlnIHtcbiAgICBjbWRsaW5lOiBcIm5lb3ZpbVwiIHwgXCJmaXJlbnZpbVwiO1xuICAgIGNvbnRlbnQ6IFwiaHRtbFwiIHwgXCJ0ZXh0XCI7XG4gICAgcHJpb3JpdHk6IG51bWJlcjtcbiAgICByZW5kZXJlcjogXCJodG1sXCIgfCBcImNhbnZhc1wiO1xuICAgIHNlbGVjdG9yOiBzdHJpbmc7XG4gICAgdGFrZW92ZXI6IFwiYWx3YXlzXCIgfCBcIm9uY2VcIiB8IFwiZW1wdHlcIiB8IFwibm9uZW1wdHlcIiB8IFwibmV2ZXJcIjtcbiAgICBmaWxlbmFtZTogc3RyaW5nO1xufVxuXG5leHBvcnQgdHlwZSBHbG9iYWxTZXR0aW5ncyA9IHtcbiAgYWx0OiBcImFscGhhbnVtXCIgfCBcImFsbFwiLFxuICBcIjxDLW4+XCI6IFwiZGVmYXVsdFwiIHwgXCJub29wXCIsXG4gIFwiPEMtdD5cIjogXCJkZWZhdWx0XCIgfCBcIm5vb3BcIixcbiAgXCI8Qy13PlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiLFxuICBcIjxDUy1uPlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiLFxuICBcIjxDUy10PlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiLFxuICBcIjxDUy13PlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiLFxuICBpZ25vcmVLZXlzOiB7IFtrZXkgaW4gTnZpbU1vZGVdOiBzdHJpbmdbXSB9LFxuICBjbWRsaW5lVGltZW91dDogbnVtYmVyLFxufVxuXG5leHBvcnQgaW50ZXJmYWNlIElDb25maWcge1xuICAgIGdsb2JhbFNldHRpbmdzOiBHbG9iYWxTZXR0aW5ncztcbiAgICBsb2NhbFNldHRpbmdzOiB7IFtrZXk6IHN0cmluZ106IElTaXRlQ29uZmlnIH07XG59XG5cbmxldCBjb25mOiBJQ29uZmlnID0gdW5kZWZpbmVkIGFzIElDb25maWc7XG5cbmV4cG9ydCBjb25zdCBjb25mUmVhZHkgPSBuZXcgUHJvbWlzZShyZXNvbHZlID0+IHtcbiAgICBicm93c2VyLnN0b3JhZ2UubG9jYWwuZ2V0KCkudGhlbigob2JqOiBhbnkpID0+IHtcbiAgICAgICAgY29uZiA9IG9iajtcbiAgICAgICAgcmVzb2x2ZSh0cnVlKTtcbiAgICB9KTtcbn0pO1xuXG5icm93c2VyLnN0b3JhZ2Uub25DaGFuZ2VkLmFkZExpc3RlbmVyKChjaGFuZ2VzOiBhbnkpID0+IHtcbiAgICBPYmplY3RcbiAgICAgICAgLmVudHJpZXMoY2hhbmdlcylcbiAgICAgICAgLmZvckVhY2goKFtrZXksIHZhbHVlXTogW2tleW9mIElDb25maWcsIGFueV0pID0+IGNvbmZSZWFkeS50aGVuKCgpID0+IHtcbiAgICAgICAgICAgIGNvbmZba2V5XSA9IHZhbHVlLm5ld1ZhbHVlO1xuICAgICAgICB9KSk7XG59KTtcblxuZXhwb3J0IGZ1bmN0aW9uIGdldEdsb2JhbENvbmYoKSB7XG4gICAgLy8gQ2FuJ3QgYmUgdGVzdGVkIGZvclxuICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgaWYgKGNvbmYgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXCJnZXRHbG9iYWxDb25mIGNhbGxlZCBiZWZvcmUgY29uZmlnIHdhcyByZWFkeVwiKTtcbiAgICB9XG4gICAgcmV0dXJuIGNvbmYuZ2xvYmFsU2V0dGluZ3M7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDb25mKCkge1xuICAgIHJldHVybiBnZXRDb25mRm9yVXJsKGRvY3VtZW50LmxvY2F0aW9uLmhyZWYpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q29uZkZvclVybCh1cmw6IHN0cmluZyk6IElTaXRlQ29uZmlnIHtcbiAgICBjb25zdCBsb2NhbFNldHRpbmdzID0gY29uZi5sb2NhbFNldHRpbmdzO1xuICAgIGZ1bmN0aW9uIG9yMSh2YWw6IG51bWJlcikge1xuICAgICAgICBpZiAodmFsID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICAgIHJldHVybiAxO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiB2YWw7XG4gICAgfVxuICAgIC8vIENhbid0IGJlIHRlc3RlZCBmb3JcbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChsb2NhbFNldHRpbmdzID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFwiRXJyb3I6IHlvdXIgc2V0dGluZ3MgYXJlIHVuZGVmaW5lZC4gVHJ5IHJlbG9hZGluZyB0aGUgcGFnZS4gSWYgdGhpcyBlcnJvciBwZXJzaXN0cywgdHJ5IHRoZSB0cm91Ymxlc2hvb3RpbmcgZ3VpZGU6IGh0dHBzOi8vZ2l0aHViLmNvbS9nbGFjYW1icmUvZmlyZW52aW0vYmxvYi9tYXN0ZXIvVFJPVUJMRVNIT09USU5HLm1kXCIpO1xuICAgIH1cbiAgICByZXR1cm4gQXJyYXkuZnJvbShPYmplY3QuZW50cmllcyhsb2NhbFNldHRpbmdzKSlcbiAgICAgICAgLmZpbHRlcigoW3BhdCwgX10pID0+IChuZXcgUmVnRXhwKHBhdCkpLnRlc3QodXJsKSlcbiAgICAgICAgLnNvcnQoKGUxLCBlMikgPT4gKG9yMShlMVsxXS5wcmlvcml0eSkgLSBvcjEoZTJbMV0ucHJpb3JpdHkpKSlcbiAgICAgICAgLnJlZHVjZSgoYWNjLCBbXywgY3VyXSkgPT4gT2JqZWN0LmFzc2lnbihhY2MsIGN1ciksIHt9IGFzIElTaXRlQ29uZmlnKTtcbn1cbiIsImxldCBjdXJIb3N0IDogc3RyaW5nO1xuXG4vLyBDYW4ndCBnZXQgY292ZXJhZ2UgZm9yIHRodW5kZXJiaXJkLlxuLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbmlmICgoYnJvd3NlciBhcyBhbnkpLmNvbXBvc2VTY3JpcHRzICE9PSB1bmRlZmluZWQgfHwgZG9jdW1lbnQubG9jYXRpb24uaHJlZiA9PT0gXCJhYm91dDpibGFuaz9jb21wb3NlXCIpIHtcbiAgICBjdXJIb3N0ID0gXCJ0aHVuZGVyYmlyZFwiO1xuLy8gQ2hyb21lIGRvZXNuJ3QgaGF2ZSBhIFwiYnJvd3NlclwiIG9iamVjdCwgaW5zdGVhZCBpdCB1c2VzIFwiY2hyb21lXCIuXG59IGVsc2UgaWYgKHdpbmRvdy5sb2NhdGlvbi5wcm90b2NvbCA9PT0gXCJtb3otZXh0ZW5zaW9uOlwiKSB7XG4gICAgY3VySG9zdCA9IFwiZmlyZWZveFwiO1xufSBlbHNlIGlmICh3aW5kb3cubG9jYXRpb24ucHJvdG9jb2wgPT09IFwiY2hyb21lLWV4dGVuc2lvbjpcIikge1xuICAgIGN1ckhvc3QgPSBcImNocm9tZVwiO1xufVxuXG4vLyBPbmx5IHVzYWJsZSBpbiBiYWNrZ3JvdW5kIHNjcmlwdCFcbmV4cG9ydCBmdW5jdGlvbiBpc0Nocm9tZSgpIHtcbiAgICAvLyBDYW4ndCBjb3ZlciBlcnJvciBjb25kaXRpb25cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChjdXJIb3N0ID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhyb3cgRXJyb3IoXCJVc2VkIGlzQ2hyb21lIGluIGNvbnRlbnQgc2NyaXB0IVwiKTtcbiAgICB9XG4gICAgcmV0dXJuIGN1ckhvc3QgPT09IFwiY2hyb21lXCI7XG59XG5leHBvcnQgZnVuY3Rpb24gaXNUaHVuZGVyYmlyZCgpIHtcbiAgICAvLyBDYW4ndCBjb3ZlciBlcnJvciBjb25kaXRpb25cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChjdXJIb3N0ID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhyb3cgRXJyb3IoXCJVc2VkIGlzVGh1bmRlcmJpcmQgaW4gY29udGVudCBzY3JpcHQhXCIpO1xuICAgIH1cbiAgICByZXR1cm4gY3VySG9zdCA9PT0gXCJ0aHVuZGVyYmlyZFwiO1xufVxuXG4vLyBSdW5zIENPREUgaW4gdGhlIHBhZ2UncyBjb250ZXh0IGJ5IHNldHRpbmcgdXAgYSBjdXN0b20gZXZlbnQgbGlzdGVuZXIsXG4vLyBlbWJlZGRpbmcgYSBzY3JpcHQgZWxlbWVudCB0aGF0IHJ1bnMgdGhlIHBpZWNlIG9mIGNvZGUgYW5kIGVtaXRzIGl0cyByZXN1bHRcbi8vIGFzIGFuIGV2ZW50LlxuZXhwb3J0IGZ1bmN0aW9uIGV4ZWN1dGVJblBhZ2UoY29kZTogc3RyaW5nKTogUHJvbWlzZTxhbnk+IHtcbiAgICByZXR1cm4gbmV3IFByb21pc2UoKHJlc29sdmUsIHJlamVjdCkgPT4ge1xuICAgICAgICBjb25zdCBzY3JpcHQgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwic2NyaXB0XCIpO1xuICAgICAgICBjb25zdCBldmVudElkID0gKG5ldyBVUkwoYnJvd3Nlci5ydW50aW1lLmdldFVSTChcIlwiKSkpLmhvc3RuYW1lICsgTWF0aC5yYW5kb20oKTtcbiAgICAgICAgc2NyaXB0LmlubmVySFRNTCA9IGAoYXN5bmMgKGV2SWQpID0+IHtcbiAgICAgICAgICAgIHRyeSB7XG4gICAgICAgICAgICAgICAgbGV0IHJlc3VsdDtcbiAgICAgICAgICAgICAgICByZXN1bHQgPSBhd2FpdCAke2NvZGV9O1xuICAgICAgICAgICAgICAgIHdpbmRvdy5kaXNwYXRjaEV2ZW50KG5ldyBDdXN0b21FdmVudChldklkLCB7XG4gICAgICAgICAgICAgICAgICAgIGRldGFpbDoge1xuICAgICAgICAgICAgICAgICAgICAgICAgc3VjY2VzczogdHJ1ZSxcbiAgICAgICAgICAgICAgICAgICAgICAgIHJlc3VsdCxcbiAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgICAgICAgICB3aW5kb3cuZGlzcGF0Y2hFdmVudChuZXcgQ3VzdG9tRXZlbnQoZXZJZCwge1xuICAgICAgICAgICAgICAgICAgICBkZXRhaWw6IHsgc3VjY2VzczogZmFsc2UsIHJlYXNvbjogZSB9LFxuICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfSkoJHtKU09OLnN0cmluZ2lmeShldmVudElkKX0pYDtcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoZXZlbnRJZCwgKHsgZGV0YWlsIH06IGFueSkgPT4ge1xuICAgICAgICAgICAgc2NyaXB0LnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoc2NyaXB0KTtcbiAgICAgICAgICAgIGlmIChkZXRhaWwuc3VjY2Vzcykge1xuICAgICAgICAgICAgICAgIHJldHVybiByZXNvbHZlKGRldGFpbC5yZXN1bHQpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmV0dXJuIHJlamVjdChkZXRhaWwucmVhc29uKTtcbiAgICAgICAgfSwgeyBvbmNlOiB0cnVlIH0pO1xuICAgICAgICBkb2N1bWVudC5oZWFkLmFwcGVuZENoaWxkKHNjcmlwdCk7XG4gICAgfSk7XG59XG5cbi8vIFZhcmlvdXMgZmlsdGVycyB0aGF0IGFyZSB1c2VkIHRvIGNoYW5nZSB0aGUgYXBwZWFyYW5jZSBvZiB0aGUgQnJvd3NlckFjdGlvblxuLy8gaWNvbi5cbmNvbnN0IHN2Z3BhdGggPSBcImZpcmVudmltLnN2Z1wiO1xuY29uc3QgdHJhbnNmb3JtYXRpb25zID0ge1xuICAgIGRpc2FibGVkOiAoaW1nOiBVaW50OENsYW1wZWRBcnJheSkgPT4ge1xuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGltZy5sZW5ndGg7IGkgKz0gNCkge1xuICAgICAgICAgICAgLy8gU2tpcCB0cmFuc3BhcmVudCBwaXhlbHNcbiAgICAgICAgICAgIGlmIChpbWdbaSArIDNdID09PSAwKSB7XG4gICAgICAgICAgICAgICAgY29udGludWU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBjb25zdCBtZWFuID0gTWF0aC5mbG9vcigoaW1nW2ldICsgaW1nW2kgKyAxXSArIGltZ1tpICsgMl0pIC8gMyk7XG4gICAgICAgICAgICBpbWdbaV0gPSBtZWFuO1xuICAgICAgICAgICAgaW1nW2kgKyAxXSA9IG1lYW47XG4gICAgICAgICAgICBpbWdbaSArIDJdID0gbWVhbjtcbiAgICAgICAgfVxuICAgIH0sXG4gICAgZXJyb3I6IChpbWc6IFVpbnQ4Q2xhbXBlZEFycmF5KSA9PiB7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgaW1nLmxlbmd0aDsgaSArPSA0KSB7XG4gICAgICAgICAgICAvLyBUdXJuIHRyYW5zcGFyZW50IHBpeGVscyByZWRcbiAgICAgICAgICAgIGlmIChpbWdbaSArIDNdID09PSAwKSB7XG4gICAgICAgICAgICAgICAgaW1nW2ldID0gMjU1O1xuICAgICAgICAgICAgICAgIGltZ1tpICsgM10gPSAyNTU7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9LFxuICAgIG5vcm1hbDogKChfaW1nOiBVaW50OENsYW1wZWRBcnJheSkgPT4gKHVuZGVmaW5lZCBhcyBuZXZlcikpLFxuICAgIG5vdGlmaWNhdGlvbjogKGltZzogVWludDhDbGFtcGVkQXJyYXkpID0+IHtcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBpbWcubGVuZ3RoOyBpICs9IDQpIHtcbiAgICAgICAgICAgIC8vIFR1cm4gdHJhbnNwYXJlbnQgcGl4ZWxzIHllbGxvd1xuICAgICAgICAgICAgaWYgKGltZ1tpICsgM10gPT09IDApIHtcbiAgICAgICAgICAgICAgICBpbWdbaV0gPSAyNTU7XG4gICAgICAgICAgICAgICAgaW1nW2kgKyAxXSA9IDI1NTtcbiAgICAgICAgICAgICAgICBpbWdbaSArIDNdID0gMjU1O1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfSxcbn07XG5cbmV4cG9ydCB0eXBlIEljb25LaW5kID0ga2V5b2YgdHlwZW9mIHRyYW5zZm9ybWF0aW9ucztcblxuLy8gVGFrZXMgYW4gaWNvbiBraW5kIGFuZCBkaW1lbnNpb25zIGFzIHBhcmFtZXRlciwgZHJhd3MgdGhhdCB0byBhIGNhbnZhcyBhbmRcbi8vIHJldHVybnMgYSBwcm9taXNlIHRoYXQgd2lsbCBiZSByZXNvbHZlZCB3aXRoIHRoZSBjYW52YXMnIGltYWdlIGRhdGEuXG5leHBvcnQgZnVuY3Rpb24gZ2V0SWNvbkltYWdlRGF0YShraW5kOiBJY29uS2luZCwgd2lkdGggPSAzMiwgaGVpZ2h0ID0gMzIpIHtcbiAgICBjb25zdCBjYW52YXMgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwiY2FudmFzXCIpIGFzIEhUTUxDYW52YXNFbGVtZW50O1xuICAgIGNvbnN0IGN0eCA9IGNhbnZhcy5nZXRDb250ZXh0KFwiMmRcIik7XG4gICAgY29uc3QgaW1nID0gbmV3IEltYWdlKHdpZHRoLCBoZWlnaHQpO1xuICAgIGNvbnN0IHJlc3VsdCA9IG5ldyBQcm9taXNlKChyZXNvbHZlKSA9PiBpbWcuYWRkRXZlbnRMaXN0ZW5lcihcImxvYWRcIiwgKCkgPT4ge1xuICAgICAgICBjdHguZHJhd0ltYWdlKGltZywgMCwgMCwgd2lkdGgsIGhlaWdodCk7XG4gICAgICAgIGNvbnN0IGlkID0gY3R4LmdldEltYWdlRGF0YSgwLCAwLCB3aWR0aCwgaGVpZ2h0KTtcbiAgICAgICAgdHJhbnNmb3JtYXRpb25zW2tpbmRdKGlkLmRhdGEpO1xuICAgICAgICByZXNvbHZlKGlkKTtcbiAgICB9KSk7XG4gICAgaW1nLnNyYyA9IHN2Z3BhdGg7XG4gICAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLy8gR2l2ZW4gYSB1cmwgYW5kIGEgc2VsZWN0b3IsIHRyaWVzIHRvIGNvbXB1dGUgYSBuYW1lIHRoYXQgd2lsbCBiZSB1bmlxdWUsXG4vLyBzaG9ydCBhbmQgcmVhZGFibGUgZm9yIHRoZSB1c2VyLlxuZXhwb3J0IGZ1bmN0aW9uIHRvRmlsZU5hbWUoZm9ybWF0U3RyaW5nOiBzdHJpbmcsIHVybDogc3RyaW5nLCBpZDogc3RyaW5nLCBsYW5ndWFnZTogc3RyaW5nKSB7XG4gICAgbGV0IHBhcnNlZFVSTDogeyBob3N0bmFtZTogc3RyaW5nLCBwYXRobmFtZTogc3RyaW5nIH07XG4gICAgdHJ5IHtcbiAgICAgICAgcGFyc2VkVVJMID0gbmV3IFVSTCh1cmwpO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgLy8gT25seSBoYXBwZW5zIHdpdGggdGh1bmRlcmJpcmQsIHdoZXJlIHdlIGNhbid0IGdldCBjb3ZlcmFnZVxuICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICBwYXJzZWRVUkwgPSB7IGhvc3RuYW1lOiAndGh1bmRlcmJpcmQnLCBwYXRobmFtZTogJ21haWwnIH07XG4gICAgfVxuXG4gICAgY29uc3Qgc2FuaXRpemUgPSAoczogc3RyaW5nKSA9PiAocy5tYXRjaCgvW2EtekEtWjAtOV0rL2cpIHx8IFtdKS5qb2luKFwiLVwiKTtcblxuICAgIGNvbnN0IGV4cGFuZCA9IChwYXR0ZXJuOiBzdHJpbmcpID0+IHtcbiAgICAgICAgY29uc3Qgbm9CcmFja2V0cyA9IHBhdHRlcm4uc2xpY2UoMSwgLTEpO1xuICAgICAgICBjb25zdCBbc3ltYm9sLCBsZW5ndGhdID0gbm9CcmFja2V0cy5zcGxpdChcIiVcIik7XG4gICAgICAgIGxldCB2YWx1ZSA9IFwiXCI7XG4gICAgICAgIHN3aXRjaCAoc3ltYm9sKSB7XG4gICAgICAgICAgICBjYXNlIFwiaG9zdG5hbWVcIjogdmFsdWUgPSBwYXJzZWRVUkwuaG9zdG5hbWU7IGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBcInBhdGhuYW1lXCI6IHZhbHVlID0gc2FuaXRpemUocGFyc2VkVVJMLnBhdGhuYW1lKTsgYnJlYWs7XG4gICAgICAgICAgICBjYXNlIFwic2VsZWN0b3JcIjogdmFsdWUgPSBzYW5pdGl6ZShpZC5yZXBsYWNlKC86bnRoLW9mLXR5cGUvZywgXCJcIikpOyBicmVhaztcbiAgICAgICAgICAgIGNhc2UgXCJ0aW1lc3RhbXBcIjogdmFsdWUgPSBzYW5pdGl6ZSgobmV3IERhdGUoKSkudG9JU09TdHJpbmcoKSk7IGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBcImV4dGVuc2lvblwiOiB2YWx1ZSA9IGxhbmd1YWdlVG9FeHRlbnNpb25zKGxhbmd1YWdlKTsgYnJlYWs7XG4gICAgICAgICAgICBkZWZhdWx0OiBjb25zb2xlLmVycm9yKGBVbnJlY29nbml6ZWQgZmlsZW5hbWUgcGF0dGVybjogJHtwYXR0ZXJufWApO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiB2YWx1ZS5zbGljZSgtbGVuZ3RoKTtcbiAgICB9O1xuXG4gICAgbGV0IHJlc3VsdCA9IGZvcm1hdFN0cmluZztcbiAgICBjb25zdCBtYXRjaGVzID0gZm9ybWF0U3RyaW5nLm1hdGNoKC97W159XSp9L2cpO1xuICAgIGlmIChtYXRjaGVzICE9PSBudWxsKSB7XG4gICAgICAgIGZvciAoY29uc3QgbWF0Y2ggb2YgbWF0Y2hlcy5maWx0ZXIocyA9PiBzICE9PSB1bmRlZmluZWQpKSB7XG4gICAgICAgICAgICByZXN1bHQgPSByZXN1bHQucmVwbGFjZShtYXRjaCwgZXhwYW5kKG1hdGNoKSk7XG4gICAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLy8gR2l2ZW4gYSBsYW5ndWFnZSBuYW1lLCByZXR1cm5zIGEgZmlsZW5hbWUgZXh0ZW5zaW9uLiBDYW4gcmV0dXJuIHVuZGVmaW5lZC5cbmV4cG9ydCBmdW5jdGlvbiBsYW5ndWFnZVRvRXh0ZW5zaW9ucyhsYW5ndWFnZTogc3RyaW5nKSB7XG4gICAgaWYgKGxhbmd1YWdlID09PSB1bmRlZmluZWQgfHwgbGFuZ3VhZ2UgPT09IG51bGwpIHtcbiAgICAgICAgbGFuZ3VhZ2UgPSBcIlwiO1xuICAgIH1cbiAgICBjb25zdCBsYW5nID0gbGFuZ3VhZ2UudG9Mb3dlckNhc2UoKTtcbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIHN3aXRjaCAobGFuZykge1xuICAgICAgICBjYXNlIFwiYXBsXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJhcGxcIjtcbiAgICAgICAgY2FzZSBcImJyYWluZnVja1wiOiAgICAgICAgcmV0dXJuIFwiYmZcIjtcbiAgICAgICAgY2FzZSBcImNcIjogICAgICAgICAgICAgICAgcmV0dXJuIFwiY1wiO1xuICAgICAgICBjYXNlIFwiYyNcIjogICAgICAgICAgICAgICByZXR1cm4gXCJjc1wiO1xuICAgICAgICBjYXNlIFwiYysrXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJjcHBcIjtcbiAgICAgICAgY2FzZSBcImNleWxvblwiOiAgICAgICAgICAgcmV0dXJuIFwiY2V5bG9uXCI7XG4gICAgICAgIGNhc2UgXCJjbGlrZVwiOiAgICAgICAgICAgIHJldHVybiBcImNcIjtcbiAgICAgICAgY2FzZSBcImNsb2p1cmVcIjogICAgICAgICAgcmV0dXJuIFwiY2xqXCI7XG4gICAgICAgIGNhc2UgXCJjbWFrZVwiOiAgICAgICAgICAgIHJldHVybiBcIi5jbWFrZVwiO1xuICAgICAgICBjYXNlIFwiY29ib2xcIjogICAgICAgICAgICByZXR1cm4gXCJjYmxcIjtcbiAgICAgICAgY2FzZSBcImNvZmZlZXNjcmlwdFwiOiAgICAgcmV0dXJuIFwiY29mZmVlXCI7XG4gICAgICAgIGNhc2UgXCJjb21tb25saXNwXCI6ICAgICAgcmV0dXJuIFwibGlzcFwiO1xuICAgICAgICBjYXNlIFwiY3J5c3RhbFwiOiAgICAgICAgICByZXR1cm4gXCJjclwiO1xuICAgICAgICBjYXNlIFwiY3NzXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJjc3NcIjtcbiAgICAgICAgY2FzZSBcImN5dGhvblwiOiAgICAgICAgICAgcmV0dXJuIFwicHlcIjtcbiAgICAgICAgY2FzZSBcImRcIjogICAgICAgICAgICAgICAgcmV0dXJuIFwiZFwiO1xuICAgICAgICBjYXNlIFwiZGFydFwiOiAgICAgICAgICAgICByZXR1cm4gXCJkYXJ0XCI7XG4gICAgICAgIGNhc2UgXCJkaWZmXCI6ICAgICAgICAgICAgIHJldHVybiBcImRpZmZcIjtcbiAgICAgICAgY2FzZSBcImRvY2tlcmZpbGVcIjogICAgICAgcmV0dXJuIFwiZG9ja2VyZmlsZVwiO1xuICAgICAgICBjYXNlIFwiZHRkXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJkdGRcIjtcbiAgICAgICAgY2FzZSBcImR5bGFuXCI6ICAgICAgICAgICAgcmV0dXJuIFwiZHlsYW5cIjtcbiAgICAgICAgLy8gRWlmZmVsIHdhcyB0aGVyZSBmaXJzdCBidXQgZWxpeGlyIHNlZW1zIG1vcmUgbGlrZWx5XG4gICAgICAgIC8vIGNhc2UgXCJlaWZmZWxcIjogICAgICAgICAgIHJldHVybiBcImVcIjtcbiAgICAgICAgY2FzZSBcImVsaXhpclwiOiAgICAgICAgICAgcmV0dXJuIFwiZVwiO1xuICAgICAgICBjYXNlIFwiZWxtXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJlbG1cIjtcbiAgICAgICAgY2FzZSBcImVybGFuZ1wiOiAgICAgICAgICAgcmV0dXJuIFwiZXJsXCI7XG4gICAgICAgIGNhc2UgXCJmI1wiOiAgICAgICAgICAgICAgIHJldHVybiBcImZzXCI7XG4gICAgICAgIGNhc2UgXCJmYWN0b3JcIjogICAgICAgICAgIHJldHVybiBcImZhY3RvclwiO1xuICAgICAgICBjYXNlIFwiZm9ydGhcIjogICAgICAgICAgICByZXR1cm4gXCJmdGhcIjtcbiAgICAgICAgY2FzZSBcImZvcnRyYW5cIjogICAgICAgICAgcmV0dXJuIFwiZjkwXCI7XG4gICAgICAgIGNhc2UgXCJnYXNcIjogICAgICAgICAgICAgIHJldHVybiBcImFzbVwiO1xuICAgICAgICBjYXNlIFwiZ29cIjogICAgICAgICAgICAgICByZXR1cm4gXCJnb1wiO1xuICAgICAgICAvLyBHRk06IENvZGVNaXJyb3IncyBnaXRodWItZmxhdm9yZWQgbWFya2Rvd25cbiAgICAgICAgY2FzZSBcImdmbVwiOiAgICAgICAgICAgICAgcmV0dXJuIFwibWRcIjtcbiAgICAgICAgY2FzZSBcImdyb292eVwiOiAgICAgICAgICAgcmV0dXJuIFwiZ3Jvb3Z5XCI7XG4gICAgICAgIGNhc2UgXCJoYW1sXCI6ICAgICAgICAgICAgIHJldHVybiBcImhhbWxcIjtcbiAgICAgICAgY2FzZSBcImhhbmRsZWJhcnNcIjogICAgICAgcmV0dXJuIFwiaGJzXCI7XG4gICAgICAgIGNhc2UgXCJoYXNrZWxsXCI6ICAgICAgICAgIHJldHVybiBcImhzXCI7XG4gICAgICAgIGNhc2UgXCJoYXhlXCI6ICAgICAgICAgICAgIHJldHVybiBcImh4XCI7XG4gICAgICAgIGNhc2UgXCJodG1sXCI6ICAgICAgICAgICAgIHJldHVybiBcImh0bWxcIjtcbiAgICAgICAgY2FzZSBcImh0bWxlbWJlZGRlZFwiOiAgICAgcmV0dXJuIFwiaHRtbFwiO1xuICAgICAgICBjYXNlIFwiaHRtbG1peGVkXCI6ICAgICAgICByZXR1cm4gXCJodG1sXCI7XG4gICAgICAgIGNhc2UgXCJpcHl0aG9uXCI6ICAgICAgICAgIHJldHVybiBcInB5XCI7XG4gICAgICAgIGNhc2UgXCJpcHl0aG9uZm1cIjogICAgICAgIHJldHVybiBcIm1kXCI7XG4gICAgICAgIGNhc2UgXCJqYXZhXCI6ICAgICAgICAgICAgIHJldHVybiBcImphdmFcIjtcbiAgICAgICAgY2FzZSBcImphdmFzY3JpcHRcIjogICAgICAgcmV0dXJuIFwianNcIjtcbiAgICAgICAgY2FzZSBcImppbmphMlwiOiAgICAgICAgICAgcmV0dXJuIFwiamluamFcIjtcbiAgICAgICAgY2FzZSBcImp1bGlhXCI6ICAgICAgICAgICAgcmV0dXJuIFwiamxcIjtcbiAgICAgICAgY2FzZSBcImpzeFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwianN4XCI7XG4gICAgICAgIGNhc2UgXCJrb3RsaW5cIjogICAgICAgICAgIHJldHVybiBcImt0XCI7XG4gICAgICAgIGNhc2UgXCJsYXRleFwiOiAgICAgICAgICAgIHJldHVybiBcImxhdGV4XCI7XG4gICAgICAgIGNhc2UgXCJsZXNzXCI6ICAgICAgICAgICAgIHJldHVybiBcImxlc3NcIjtcbiAgICAgICAgY2FzZSBcImx1YVwiOiAgICAgICAgICAgICAgcmV0dXJuIFwibHVhXCI7XG4gICAgICAgIGNhc2UgXCJtYXJrZG93blwiOiAgICAgICAgIHJldHVybiBcIm1kXCI7XG4gICAgICAgIGNhc2UgXCJtbGxpa2VcIjogICAgICAgICAgICByZXR1cm4gXCJtbFwiO1xuICAgICAgICBjYXNlIFwib2NhbWxcIjogICAgICAgICAgICByZXR1cm4gXCJtbFwiO1xuICAgICAgICBjYXNlIFwib2N0YXZlXCI6ICAgICAgICAgICByZXR1cm4gXCJtXCI7XG4gICAgICAgIGNhc2UgXCJwYXNjYWxcIjogICAgICAgICAgIHJldHVybiBcInBhc1wiO1xuICAgICAgICBjYXNlIFwicGVybFwiOiAgICAgICAgICAgICByZXR1cm4gXCJwbFwiO1xuICAgICAgICBjYXNlIFwicGhwXCI6ICAgICAgICAgICAgICByZXR1cm4gXCJwaHBcIjtcbiAgICAgICAgY2FzZSBcInBvd2Vyc2hlbGxcIjogICAgICAgcmV0dXJuIFwicHMxXCI7XG4gICAgICAgIGNhc2UgXCJweXRob25cIjogICAgICAgICAgIHJldHVybiBcInB5XCI7XG4gICAgICAgIGNhc2UgXCJyXCI6ICAgICAgICAgICAgICAgIHJldHVybiBcInJcIjtcbiAgICAgICAgY2FzZSBcInJzdFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwicnN0XCI7XG4gICAgICAgIGNhc2UgXCJydWJ5XCI6ICAgICAgICAgICAgIHJldHVybiBcInJ1YnlcIjtcbiAgICAgICAgY2FzZSBcInJ1c3RcIjogICAgICAgICAgICAgcmV0dXJuIFwicnNcIjtcbiAgICAgICAgY2FzZSBcInNhc1wiOiAgICAgICAgICAgICAgcmV0dXJuIFwic2FzXCI7XG4gICAgICAgIGNhc2UgXCJzYXNzXCI6ICAgICAgICAgICAgIHJldHVybiBcInNhc3NcIjtcbiAgICAgICAgY2FzZSBcInNjYWxhXCI6ICAgICAgICAgICAgcmV0dXJuIFwic2NhbGFcIjtcbiAgICAgICAgY2FzZSBcInNjaGVtZVwiOiAgICAgICAgICAgcmV0dXJuIFwic2NtXCI7XG4gICAgICAgIGNhc2UgXCJzY3NzXCI6ICAgICAgICAgICAgIHJldHVybiBcInNjc3NcIjtcbiAgICAgICAgY2FzZSBcInNtYWxsdGFsa1wiOiAgICAgICAgcmV0dXJuIFwic3RcIjtcbiAgICAgICAgY2FzZSBcInNoZWxsXCI6ICAgICAgICAgICAgcmV0dXJuIFwic2hcIjtcbiAgICAgICAgY2FzZSBcInNxbFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwic3FsXCI7XG4gICAgICAgIGNhc2UgXCJzdGV4XCI6ICAgICAgICAgICAgIHJldHVybiBcImxhdGV4XCI7XG4gICAgICAgIGNhc2UgXCJzd2lmdFwiOiAgICAgICAgICAgIHJldHVybiBcInN3aWZ0XCI7XG4gICAgICAgIGNhc2UgXCJ0Y2xcIjogICAgICAgICAgICAgIHJldHVybiBcInRjbFwiO1xuICAgICAgICBjYXNlIFwidG9tbFwiOiAgICAgICAgICAgICByZXR1cm4gXCJ0b21sXCI7XG4gICAgICAgIGNhc2UgXCJ0d2lnXCI6ICAgICAgICAgICAgIHJldHVybiBcInR3aWdcIjtcbiAgICAgICAgY2FzZSBcInR5cGVzY3JpcHRcIjogICAgICAgcmV0dXJuIFwidHNcIjtcbiAgICAgICAgY2FzZSBcInZiXCI6ICAgICAgICAgICAgICAgcmV0dXJuIFwidmJcIjtcbiAgICAgICAgY2FzZSBcInZic2NyaXB0XCI6ICAgICAgICAgcmV0dXJuIFwidmJzXCI7XG4gICAgICAgIGNhc2UgXCJ2ZXJpbG9nXCI6ICAgICAgICAgIHJldHVybiBcInN2XCI7XG4gICAgICAgIGNhc2UgXCJ2aGRsXCI6ICAgICAgICAgICAgIHJldHVybiBcInZoZGxcIjtcbiAgICAgICAgY2FzZSBcInhtbFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwieG1sXCI7XG4gICAgICAgIGNhc2UgXCJ5YW1sXCI6ICAgICAgICAgICAgIHJldHVybiBcInlhbWxcIjtcbiAgICAgICAgY2FzZSBcIno4MFwiOiAgICAgICAgICAgICAgcmV0dXJuIFwiejhhXCI7XG4gICAgfVxuICAgIHJldHVybiBcInR4dFwiO1xufVxuXG4vLyBNYWtlIHRzbGludCBoYXBweVxuY29uc3QgZm9udEZhbWlseSA9IFwiZm9udC1mYW1pbHlcIjtcblxuLy8gQ2FuJ3QgYmUgdGVzdGVkIGUyZSA6L1xuLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbmV4cG9ydCBmdW5jdGlvbiBwYXJzZVNpbmdsZUd1aWZvbnQoZ3VpZm9udDogc3RyaW5nLCBkZWZhdWx0czogYW55KSB7XG4gICAgY29uc3Qgb3B0aW9ucyA9IGd1aWZvbnQuc3BsaXQoXCI6XCIpO1xuICAgIGNvbnN0IHJlc3VsdCA9IE9iamVjdC5hc3NpZ24oe30sIGRlZmF1bHRzKTtcbiAgICBpZiAoL15bYS16QS1aMC05XSskLy50ZXN0KG9wdGlvbnNbMF0pKSB7XG4gICAgICAgIHJlc3VsdFtmb250RmFtaWx5XSA9IG9wdGlvbnNbMF07XG4gICAgfSBlbHNlIHtcbiAgICAgICAgcmVzdWx0W2ZvbnRGYW1pbHldID0gSlNPTi5zdHJpbmdpZnkob3B0aW9uc1swXSk7XG4gICAgfVxuICAgIGlmIChkZWZhdWx0c1tmb250RmFtaWx5XSkge1xuICAgICAgICByZXN1bHRbZm9udEZhbWlseV0gKz0gYCwgJHtkZWZhdWx0c1tmb250RmFtaWx5XX1gO1xuICAgIH1cbiAgICByZXR1cm4gb3B0aW9ucy5zbGljZSgxKS5yZWR1Y2UoKGFjYywgb3B0aW9uKSA9PiB7XG4gICAgICAgICAgICBzd2l0Y2ggKG9wdGlvblswXSkge1xuICAgICAgICAgICAgICAgIGNhc2UgXCJoXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtc2l6ZVwiXSA9IGAke29wdGlvbi5zbGljZSgxKX1wdGA7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJiXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtd2VpZ2h0XCJdID0gXCJib2xkXCI7XG4gICAgICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICAgIGNhc2UgXCJpXCI6XG4gICAgICAgICAgICAgICAgICAgIGFjY1tcImZvbnQtc3R5bGVcIl0gPSBcIml0YWxpY1wiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwidVwiOlxuICAgICAgICAgICAgICAgICAgICBhY2NbXCJ0ZXh0LWRlY29yYXRpb25cIl0gPSBcInVuZGVybGluZVwiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwic1wiOlxuICAgICAgICAgICAgICAgICAgICBhY2NbXCJ0ZXh0LWRlY29yYXRpb25cIl0gPSBcImxpbmUtdGhyb3VnaFwiO1xuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICBjYXNlIFwid1wiOiAvLyBDYW4ndCBzZXQgZm9udCB3aWR0aC4gV291bGQgaGF2ZSB0byBhZGp1c3QgY2VsbCB3aWR0aC5cbiAgICAgICAgICAgICAgICBjYXNlIFwiY1wiOiAvLyBDYW4ndCBzZXQgY2hhcmFjdGVyIHNldFxuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBhY2M7XG4gICAgICAgIH0sIHJlc3VsdCBhcyBhbnkpO1xufTtcblxuLy8gUGFyc2VzIGEgZ3VpZm9udCBkZWNsYXJhdGlvbiBhcyBkZXNjcmliZWQgaW4gYDpoIEUyNDRgXG4vLyBkZWZhdWx0czogZGVmYXVsdCB2YWx1ZSBmb3IgZWFjaCBvZi5cbi8vIENhbid0IGJlIHRlc3RlZCBlMmUgOi9cbi8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG5leHBvcnQgZnVuY3Rpb24gcGFyc2VHdWlmb250KGd1aWZvbnQ6IHN0cmluZywgZGVmYXVsdHM6IGFueSkge1xuICAgIGNvbnN0IGZvbnRzID0gZ3VpZm9udC5zcGxpdChcIixcIikucmV2ZXJzZSgpO1xuICAgIHJldHVybiBmb250cy5yZWR1Y2UoKGFjYywgY3VyKSA9PiBwYXJzZVNpbmdsZUd1aWZvbnQoY3VyLCBhY2MpLCBkZWZhdWx0cyk7XG59XG5cbi8vIENvbXB1dGVzIGEgdW5pcXVlIHNlbGVjdG9yIGZvciBpdHMgYXJndW1lbnQuXG5leHBvcnQgZnVuY3Rpb24gY29tcHV0ZVNlbGVjdG9yKGVsZW1lbnQ6IEhUTUxFbGVtZW50KSB7XG4gICAgZnVuY3Rpb24gdW5pcXVlU2VsZWN0b3IoZTogSFRNTEVsZW1lbnQpOiBzdHJpbmcge1xuICAgICAgICAvLyBPbmx5IG1hdGNoaW5nIGFscGhhbnVtZXJpYyBzZWxlY3RvcnMgYmVjYXVzZSBvdGhlcnMgY2hhcnMgbWlnaHQgaGF2ZSBzcGVjaWFsIG1lYW5pbmcgaW4gQ1NTXG4gICAgICAgIGlmIChlLmlkICYmIGUuaWQubWF0Y2goXCJeW2EtekEtWjAtOV8tXSskXCIpKSB7XG4gICAgICAgICAgICBjb25zdCBpZCA9IGUudGFnTmFtZSArIGBbaWQ9XCIke2UuaWR9XCJdYDtcbiAgICAgICAgICAgIGlmIChkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKGlkKS5sZW5ndGggPT09IDEpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gaWQ7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgLy8gSWYgd2UgcmVhY2hlZCB0aGUgdG9wIG9mIHRoZSBkb2N1bWVudFxuICAgICAgICBpZiAoIWUucGFyZW50RWxlbWVudCkgeyByZXR1cm4gXCJIVE1MXCI7IH1cbiAgICAgICAgLy8gQ29tcHV0ZSB0aGUgcG9zaXRpb24gb2YgdGhlIGVsZW1lbnRcbiAgICAgICAgY29uc3QgaW5kZXggPVxuICAgICAgICAgICAgQXJyYXkuZnJvbShlLnBhcmVudEVsZW1lbnQuY2hpbGRyZW4pXG4gICAgICAgICAgICAgICAgLmZpbHRlcihjaGlsZCA9PiBjaGlsZC50YWdOYW1lID09PSBlLnRhZ05hbWUpXG4gICAgICAgICAgICAgICAgLmluZGV4T2YoZSkgKyAxO1xuICAgICAgICByZXR1cm4gYCR7dW5pcXVlU2VsZWN0b3IoZS5wYXJlbnRFbGVtZW50KX0gPiAke2UudGFnTmFtZX06bnRoLW9mLXR5cGUoJHtpbmRleH0pYDtcbiAgICB9XG4gICAgcmV0dXJuIHVuaXF1ZVNlbGVjdG9yKGVsZW1lbnQpO1xufVxuXG4vLyBUdXJucyBhIG51bWJlciBpbnRvIGl0cyBoYXNoKzYgbnVtYmVyIGhleGFkZWNpbWFsIHJlcHJlc2VudGF0aW9uLlxuZXhwb3J0IGZ1bmN0aW9uIHRvSGV4Q3NzKG46IG51bWJlcikge1xuICAgIGlmIChuID09PSB1bmRlZmluZWQpXG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgY29uc3Qgc3RyID0gbi50b1N0cmluZygxNik7XG4gICAgLy8gUGFkIHdpdGggbGVhZGluZyB6ZXJvc1xuICAgIHJldHVybiBcIiNcIiArIChuZXcgQXJyYXkoNiAtIHN0ci5sZW5ndGgpKS5maWxsKFwiMFwiKS5qb2luKFwiXCIpICsgc3RyO1xufVxuXG4iLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHR2YXIgY2FjaGVkTW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXTtcblx0aWYgKGNhY2hlZE1vZHVsZSAhPT0gdW5kZWZpbmVkKSB7XG5cdFx0cmV0dXJuIGNhY2hlZE1vZHVsZS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdLmNhbGwobW9kdWxlLmV4cG9ydHMsIG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuIiwiLy8gZGVmaW5lIGdldHRlciBmdW5jdGlvbnMgZm9yIGhhcm1vbnkgZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5kID0gKGV4cG9ydHMsIGRlZmluaXRpb24pID0+IHtcblx0Zm9yKHZhciBrZXkgaW4gZGVmaW5pdGlvbikge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhkZWZpbml0aW9uLCBrZXkpICYmICFfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZXhwb3J0cywga2V5KSkge1xuXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIGtleSwgeyBlbnVtZXJhYmxlOiB0cnVlLCBnZXQ6IGRlZmluaXRpb25ba2V5XSB9KTtcblx0XHR9XG5cdH1cbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5vID0gKG9iaiwgcHJvcCkgPT4gKE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChvYmosIHByb3ApKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsIi8qKlxuICogQnJvd3NlciBleHRlbnNpb25zIGhhdmUgbXVsdGlwbGUgcHJvY2Vzc2VzLiBUaGlzIGlzIHRoZSBlbnRyeSBwb2ludCBmb3IgdGhlXG4gKiBbYmFja2dyb3VuZCBwcm9jZXNzXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL01vemlsbGEvQWRkLW9ucy9XZWJFeHRlbnNpb25zL0FuYXRvbXlfb2ZfYV9XZWJFeHRlbnNpb24jQmFja2dyb3VuZF9zY3JpcHRzKS5cbiAqIE91ciBiYWNrZ3JvdW5kIHByb2Nlc3MgaGFzIG11bHRpcGxlIHRhc2tzOlxuICogLSBLZWVwIHRyYWNrIG9mIHBlci10YWIgdmFsdWVzIHdpdGggaXRzIHNldFRhYlZhbHVlL2dldFRhYlZhbHVlIGZ1bmN0aW9uc1xuICogLSBTZXQgdGhlIFticm93c2VyQWN0aW9uc10oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9Nb3ppbGxhL0FkZC1vbnMvV2ViRXh0ZW5zaW9ucy9BUEkvYnJvd3NlckFjdGlvbikncyBpY29uLlxuICogLSBLZWVwIHRyYWNrIG9mIGVycm9yIG1lc3NhZ2VzL3dhcm5pbmdzIHRoYXQgc2hvdWxkIGFyZSBkaXNwbGF5ZWQgaW4gdGhlXG4gKiAgIGJyb3dzZXJBY3Rpb24uXG4gKiAtIFVwZGF0ZSBzZXR0aW5ncyB3aGVuIHRoZSB1c2VyIGNoYW5nZXMgdGhlaXIgdmltcmMuXG4gKiAtIFN0YXJ0IG5ldyBuZW92aW0gaW5zdGFuY2VzIHdoZW4gYXNrZWQgYnkgYSBjb250ZW50IHNjcmlwdC5cbiAqIC0gUHJvdmlkZSBhbiBSUEMgbWVjaGFuaXNtIHRoYXQgZW5hYmxlcyBjYWxsaW5nIGJhY2tncm91bmQgQVBJcyBmcm9tIHRoZVxuICogICBicm93c2VyQWN0aW9uL2NvbnRlbnQgc2NyaXB0LlxuICpcbiAqIFRoZSBiYWNrZ3JvdW5kIHByb2Nlc3MgbW9zdGx5IGFjdHMgYXMgYSBzbGF2ZSBmb3IgdGhlIGJyb3dzZXJBY3Rpb24gYW5kXG4gKiBjb250ZW50IHNjcmlwdHMuIEl0IHJhcmVseSBhY3RzIG9uIGl0cyBvd24uXG4gKi9cbmltcG9ydCB7IGdldEdsb2JhbENvbmYsIElTaXRlQ29uZmlnIH0gZnJvbSBcIi4vdXRpbHMvY29uZmlndXJhdGlvblwiO1xuaW1wb3J0IHsgZ2V0SWNvbkltYWdlRGF0YSwgSWNvbktpbmQsIGlzVGh1bmRlcmJpcmQgfSBmcm9tIFwiLi91dGlscy91dGlsc1wiO1xuXG5leHBvcnQgbGV0IHByZWxvYWRlZEluc3RhbmNlOiBQcm9taXNlPGFueT47XG5cbnR5cGUgdGFiSWQgPSBudW1iZXI7XG50eXBlIHRhYlN0b3JhZ2UgPSB7XG4gICAgZGlzYWJsZWQ6IGJvb2xlYW4sXG59O1xuLy8gV2UgY2FuJ3QgdXNlIHRoZSBzZXNzaW9ucy5zZXRUYWJWYWx1ZS9nZXRUYWJWYWx1ZSBhcGlzIGZpcmVmb3ggaGFzIGJlY2F1c2Vcbi8vIGNocm9tZSBkb2Vzbid0IHN1cHBvcnQgdGhlbS4gSW5zdGVhZCwgd2UgY3JlYXRlIGEgbWFwIG9mIHRhYmlkID0+IHt9IGtlcHQgaW5cbi8vIHRoZSBiYWNrZ3JvdW5kLiBUaGlzIGhhcyB0aGUgZGlzYWR2YW50YWdlIG9mIG5vdCBzdXJ2aXZpbmcgYnJvd3NlciByZXN0YXJ0cyxcbi8vIGJ1dCdzIGl0J3MgY3Jvc3MgcGxhdGZvcm0uXG5jb25zdCB0YWJWYWx1ZXMgPSBuZXcgTWFwPHRhYklkLCB0YWJTdG9yYWdlPigpO1xuZnVuY3Rpb24gc2V0VGFiVmFsdWUodGFiaWQ6IHRhYklkLCBpdGVtOiBrZXlvZiB0YWJTdG9yYWdlLCB2YWx1ZTogYW55KSB7XG4gICAgbGV0IG9iaiA9IHRhYlZhbHVlcy5nZXQodGFiaWQpO1xuICAgIGlmIChvYmogPT09IHVuZGVmaW5lZCkge1xuICAgICAgICBvYmogPSB7IFwiZGlzYWJsZWRcIjogZmFsc2UgfTtcbiAgICAgICAgdGFiVmFsdWVzLnNldCh0YWJpZCwgb2JqKTtcbiAgICB9XG4gICAgb2JqW2l0ZW1dID0gdmFsdWU7XG59XG5mdW5jdGlvbiBnZXRUYWJWYWx1ZSh0YWJpZDogdGFiSWQsIGl0ZW06IGtleW9mIHRhYlN0b3JhZ2UpIHtcbiAgICBjb25zdCBvYmogPSB0YWJWYWx1ZXMuZ2V0KHRhYmlkKTtcbiAgICBpZiAob2JqID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gICAgcmV0dXJuIG9ialtpdGVtXTtcbn1cblxuYXN5bmMgZnVuY3Rpb24gdXBkYXRlSWNvbih0YWJpZD86IG51bWJlcikge1xuICAgIGxldCBuYW1lOiBJY29uS2luZCA9IFwibm9ybWFsXCI7XG4gICAgaWYgKHRhYmlkID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGFiaWQgPSAoYXdhaXQgYnJvd3Nlci50YWJzLnF1ZXJ5KHsgYWN0aXZlOiB0cnVlLCBjdXJyZW50V2luZG93OiB0cnVlIH0pKVswXS5pZDtcbiAgICB9XG4gICAgaWYgKGdldFRhYlZhbHVlKHRhYmlkLCBcImRpc2FibGVkXCIpID09PSB0cnVlKSB7XG4gICAgICAgIG5hbWUgPSBcImRpc2FibGVkXCI7XG4gICAgfSBlbHNlIGlmIChlcnJvciAhPT0gXCJcIikge1xuICAgICAgICBuYW1lID0gXCJlcnJvclwiO1xuICAgIH0gZWxzZSBpZiAod2FybmluZyAhPT0gXCJcIikge1xuICAgICAgICBuYW1lID0gXCJub3RpZmljYXRpb25cIjtcbiAgICB9XG4gICAgLy8gQ2FuJ3QgdGVzdCBvbiB0aGUgYmlyZCBvZiB0aHVuZGVyXG4gICAgLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbiAgICBpZiAoaXNUaHVuZGVyYmlyZCgpKSB7XG4gICAgICAgIHJldHVybiBQcm9taXNlLnJlc29sdmUoKTtcbiAgICB9XG4gICAgcmV0dXJuIGdldEljb25JbWFnZURhdGEobmFtZSkudGhlbigoaW1hZ2VEYXRhOiBhbnkpID0+IGJyb3dzZXIuYnJvd3NlckFjdGlvbi5zZXRJY29uKHsgaW1hZ2VEYXRhIH0pKTtcbn1cblxuLy8gT3MgaXMgd2luL21hYy9saW51eC9hbmRyb2lzL2Nyb3MuIFdlIG9ubHkgdXNlIGl0IHRvIGFkZCBpbmZvcm1hdGlvbiB0byBlcnJvclxuLy8gbWVzc2FnZXMgb24gd2luZG93cy5cbmxldCBvcyA9IFwiXCI7XG5icm93c2VyLnJ1bnRpbWUuZ2V0UGxhdGZvcm1JbmZvKCkudGhlbigocGxhdDogYW55KSA9PiBvcyA9IHBsYXQub3MpO1xuXG4vLyBMYXN0IGVycm9yIG1lc3NhZ2VcbmxldCBlcnJvciA9IFwiXCI7XG5cbi8vIFNpbXBsZSBnZXR0ZXIgZm9yIGVhc3kgUlBDIGNhbGxzLiBDYW4ndCBiZSB0ZXN0ZWQgYXMgcmVxdWlyZXMgb3BlbmluZ1xuLy8gYnJvd3NlckFjdGlvbi5cbi8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG5mdW5jdGlvbiBnZXRFcnJvcigpIHtcbiAgICByZXR1cm4gZXJyb3I7XG59XG5cbmZ1bmN0aW9uIHJlZ2lzdGVyRXJyb3JzKG52aW06IGFueSwgcmVqZWN0OiBhbnkpIHtcbiAgICBlcnJvciA9IFwiXCI7XG4gICAgY29uc3QgdGltZW91dCA9IHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgICBudmltLnRpbWVkT3V0ID0gdHJ1ZTtcbiAgICAgICAgZXJyb3IgPSBcIk5lb3ZpbSBpcyBub3QgcmVzcG9uZGluZy5cIjtcbiAgICAgICAgdXBkYXRlSWNvbigpO1xuICAgICAgICBudmltLmRpc2Nvbm5lY3QoKTtcbiAgICAgICAgcmVqZWN0KGVycm9yKTtcbiAgICB9LCAxMDAwMCk7XG4gICAgbnZpbS5vbkRpc2Nvbm5lY3QuYWRkTGlzdGVuZXIoYXN5bmMgKHA6IGFueSkgPT4ge1xuICAgICAgICBjbGVhclRpbWVvdXQodGltZW91dCk7XG4gICAgICAgIHVwZGF0ZUljb24oKTtcbiAgICAgICAgLy8gVW5mb3J0dW5hdGVseSB0aGlzIGVycm9yIGhhbmRsaW5nIGNhbid0IGJlIHRlc3RlZCBhcyBpdCByZXF1aXJlc1xuICAgICAgICAvLyBzaWRlLWVmZmVjdHMgb24gdGhlIE9TLlxuICAgICAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgICAgICBpZiAocC5lcnJvcikge1xuICAgICAgICAgICAgY29uc3QgZXJyc3RyID0gcC5lcnJvci50b1N0cmluZygpO1xuICAgICAgICAgICAgaWYgKGVycnN0ci5tYXRjaCgvbm8gc3VjaCBuYXRpdmUgYXBwbGljYXRpb24vaSkpIHtcbiAgICAgICAgICAgICAgICBlcnJvciA9IFwiTmF0aXZlIG1hbmlmZXN0IG5vdCBmb3VuZC4gUGxlYXNlIHJ1biBgOmNhbGwgZmlyZW52aW0jaW5zdGFsbCgwKWAgaW4gbmVvdmltLlwiO1xuICAgICAgICAgICAgfSBlbHNlIGlmIChlcnJzdHIubWF0Y2goL2FuIHVuZXhwZWN0ZWQgZXJyb3Igb2NjdXJyZWQvaSkpIHtcbiAgICAgICAgICAgICAgICBlcnJvciA9IFwiVGhlIHNjcmlwdCBzdXBwb3NlZCB0byBzdGFydCBuZW92aW0gY291bGRuJ3QgYmUgZm91bmQuXCJcbiAgICAgICAgICAgICAgICAgICAgKyBcIiBQbGVhc2UgcnVuIGA6Y2FsbCBmaXJlbnZpbSNpbnN0YWxsKDApYCBpbiBuZW92aW1cIjtcbiAgICAgICAgICAgICAgICBpZiAob3MgPT09IFwid2luXCIpIHtcbiAgICAgICAgICAgICAgICAgICAgZXJyb3IgKz0gXCIgb3IgdHJ5IHJ1bm5pbmcgdGhlIHNjcmlwdHMgaW4gJUxPQ0FMQVBQREFUQSVcXFxcZmlyZW52aW1cXFxcXCI7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGVycm9yICs9IFwiLlwiO1xuICAgICAgICAgICAgfSBlbHNlIGlmIChlcnJzdHIubWF0Y2goL05hdGl2ZSBhcHBsaWNhdGlvbiB0cmllZCB0byBzZW5kIGEgbWVzc2FnZSBvZi8pKSB7XG4gICAgICAgICAgICAgICAgZXJyb3IgPSBcIlVuZXhwZWN0ZWQgb3V0cHV0LiBSdW4gYG52aW0gLS1oZWFkbGVzc2AgYW5kIGVuc3VyZSBpdCBwcmludHMgbm90aGluZy5cIjtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgZXJyb3IgPSBlcnJzdHI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICB1cGRhdGVJY29uKCk7XG4gICAgICAgICAgICByZWplY3QocC5lcnJvcik7XG4gICAgICAgIH0gZWxzZSBpZiAoIW52aW0ucmVwbGllZCAmJiAhbnZpbS50aW1lZE91dCkge1xuICAgICAgICAgICAgZXJyb3IgPSBcIk5lb3ZpbSBkaWVkIHdpdGhvdXQgYW5zd2VyaW5nLlwiO1xuICAgICAgICAgICAgdXBkYXRlSWNvbigpO1xuICAgICAgICAgICAgcmVqZWN0KGVycm9yKTtcbiAgICAgICAgfVxuICAgIH0pO1xuICAgIHJldHVybiB0aW1lb3V0O1xufVxuXG4vLyBMYXN0IHdhcm5pbmcgbWVzc2FnZVxubGV0IHdhcm5pbmcgPSBcIlwiO1xuLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbmZ1bmN0aW9uIGdldFdhcm5pbmcoKSB7XG4gICAgcmV0dXJuIHdhcm5pbmc7XG59XG5sZXQgbnZpbVBsdWdpblZlcnNpb24gPSBcIlwiO1xuYXN5bmMgZnVuY3Rpb24gY2hlY2tWZXJzaW9uKG52aW1WZXJzaW9uOiBzdHJpbmcpIHtcbiAgICBudmltUGx1Z2luVmVyc2lvbiA9IG52aW1WZXJzaW9uO1xuICAgIGNvbnN0IG1hbmlmZXN0ID0gYnJvd3Nlci5ydW50aW1lLmdldE1hbmlmZXN0KCk7XG4gICAgd2FybmluZyA9IFwiXCI7XG4gICAgLy8gQ2FuJ3QgYmUgdGVzdGVkIGFzIGl0IHdvdWxkIHJlcXVpcmUgc2lkZSBlZmZlY3RzIG9uIHRoZSBPUy5cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmIChtYW5pZmVzdC52ZXJzaW9uICE9PSBudmltVmVyc2lvbikge1xuICAgICAgICB3YXJuaW5nID0gYE5lb3ZpbSBwbHVnaW4gdmVyc2lvbiAoJHtudmltVmVyc2lvbn0pIGFuZCBicm93c2VyIGFkZG9uIGBcbiAgICAgICAgICAgICsgYHZlcnNpb24gKCR7bWFuaWZlc3QudmVyc2lvbn0pIGRvIG5vdCBtYXRjaC5gO1xuICAgIH1cbiAgICB1cGRhdGVJY29uKCk7XG59XG5cbi8vIEZ1bmN0aW9uIGNhbGxlZCBpbiBvcmRlciB0byBmaWxsIG91dCBkZWZhdWx0IHNldHRpbmdzLiBDYWxsZWQgZnJvbSB1cGRhdGVTZXR0aW5ncy5cbmZ1bmN0aW9uIGFwcGx5U2V0dGluZ3Moc2V0dGluZ3M6IGFueSkge1xuICAgIGZ1bmN0aW9uIG1ha2VEZWZhdWx0cyhvYmo6IHsgW2tleTogc3RyaW5nXTogYW55IH0sIG5hbWU6IHN0cmluZywgdmFsdWU6IGFueSkge1xuICAgICAgICBpZiAob2JqW25hbWVdID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICAgIG9ialtuYW1lXSA9IHZhbHVlO1xuICAgICAgICB9XG4gICAgfVxuICAgIGZ1bmN0aW9uIG1ha2VEZWZhdWx0TG9jYWxTZXR0aW5nKHNldHQ6IHsgbG9jYWxTZXR0aW5nczogeyBba2V5OiBzdHJpbmddOiBhbnkgfSB9LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpdGU6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmo6IElTaXRlQ29uZmlnKSB7XG4gICAgICAgIG1ha2VEZWZhdWx0cyhzZXR0LmxvY2FsU2V0dGluZ3MsIHNpdGUsIHt9KTtcbiAgICAgICAgZm9yIChjb25zdCBrZXkgb2YgKE9iamVjdC5rZXlzKG9iaikgYXMgKGtleW9mIHR5cGVvZiBvYmopW10pKSB7XG4gICAgICAgICAgICBtYWtlRGVmYXVsdHMoc2V0dC5sb2NhbFNldHRpbmdzW3NpdGVdLCBrZXksIG9ialtrZXldKTtcbiAgICAgICAgfVxuICAgIH1cbiAgICBpZiAoc2V0dGluZ3MgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICBzZXR0aW5ncyA9IHt9O1xuICAgIH1cblxuICAgIG1ha2VEZWZhdWx0cyhzZXR0aW5ncywgXCJnbG9iYWxTZXR0aW5nc1wiLCB7fSk7XG4gICAgLy8gXCI8S0VZPlwiOiBcImRlZmF1bHRcIiB8IFwibm9vcFwiXG4gICAgLy8gIzEwMzogV2hlbiB1c2luZyB0aGUgYnJvd3NlcidzIGNvbW1hbmQgQVBJIHRvIGFsbG93IHNlbmRpbmcgYDxDLXc+YCB0b1xuICAgIC8vIGZpcmVudmltLCB3aGV0aGVyIHRoZSBkZWZhdWx0IGFjdGlvbiBzaG91bGQgYmUgcGVyZm9ybWVkIGlmIG5vIG5lb3ZpbVxuICAgIC8vIGZyYW1lIGlzIGZvY3VzZWQuXG4gICAgbWFrZURlZmF1bHRzKHNldHRpbmdzLmdsb2JhbFNldHRpbmdzLCBcIjxDLW4+XCIsIFwiZGVmYXVsdFwiKTtcbiAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiPEMtdD5cIiwgXCJkZWZhdWx0XCIpO1xuICAgIG1ha2VEZWZhdWx0cyhzZXR0aW5ncy5nbG9iYWxTZXR0aW5ncywgXCI8Qy13PlwiLCBcImRlZmF1bHRcIik7XG4gICAgLy8gTm90ZTogPENTLSo+IGFyZSBjdXJyZW50bHkgZGlzYWJsZWQgYmVjYXVzZSBvZlxuICAgIC8vIGh0dHBzOi8vZ2l0aHViLmNvbS9uZW92aW0vbmVvdmltL2lzc3Vlcy8xMjAzN1xuICAgIC8vIE5vdGU6IDxDUy1uPiBkb2Vzbid0IG1hdGNoIHRoZSBkZWZhdWx0IGJlaGF2aW9yIG9uIGZpcmVmb3ggYmVjYXVzZSB0aGlzXG4gICAgLy8gd291bGQgcmVxdWlyZSB0aGUgc2Vzc2lvbnMgQVBJLiBJbnN0ZWFkLCBGaXJlZm94J3MgYmVoYXZpb3IgbWF0Y2hlc1xuICAgIC8vIENocm9tZSdzLlxuICAgIG1ha2VEZWZhdWx0cyhzZXR0aW5ncy5nbG9iYWxTZXR0aW5ncywgXCI8Q1Mtbj5cIiwgXCJkZWZhdWx0XCIpO1xuICAgIC8vIE5vdGU6IDxDUy10PiBpcyB0aGVyZSBmb3IgY29tcGxldGVuZXNzIHNha2UncyBidXQgY2FuJ3QgYmUgZW11bGF0ZWQgaW5cbiAgICAvLyBDaHJvbWUgYW5kIEZpcmVmb3ggYmVjYXVzZSB0aGlzIHdvdWxkIHJlcXVpcmUgdGhlIHNlc3Npb25zIEFQSS5cbiAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiPENTLXQ+XCIsIFwiZGVmYXVsdFwiKTtcbiAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiPENTLXc+XCIsIFwiZGVmYXVsdFwiKTtcbiAgICAvLyAjNzE3OiBhbGxvdyBwYXNzaW5nIGtleXMgdG8gdGhlIGJyb3dzZXJcbiAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiaWdub3JlS2V5c1wiLCB7fSk7XG4gICAgLy8gIzEwNTA6IGN1cnNvciBzb21ldGltZXMgY292ZXJlZCBieSBjb21tYW5kIGxpbmVcbiAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiY21kbGluZVRpbWVvdXRcIiwgMzAwMCk7XG5cbiAgICAvLyBcImFsdFwiOiBcImFsbFwiIHwgXCJhbHBoYW51bVwiXG4gICAgLy8gIzIwMjogT25seSByZWdpc3RlciBhbHQga2V5IG9uIGFscGhhbnVtcyB0byBsZXQgc3dlZGlzaCBvc3ggdXNlcnMgdHlwZVxuICAgIC8vICAgICAgIHNwZWNpYWwgY2hhcnNcbiAgICAvLyBPbmx5IHRlc3RlZCBvbiBPU1gsIHdoZXJlIHdlIGRvbid0IHB1bGwgY292ZXJhZ2UgcmVwb3J0cywgc28gZG9uJ3RcbiAgICAvLyBpbnN0cnVtZW50IGZ1bmN0aW9uLlxuICAgIC8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG4gICAgaWYgKG9zID09PSBcIm1hY1wiKSB7XG4gICAgICAgIG1ha2VEZWZhdWx0cyhzZXR0aW5ncy5nbG9iYWxTZXR0aW5ncywgXCJhbHRcIiwgXCJhbHBoYW51bVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgICBtYWtlRGVmYXVsdHMoc2V0dGluZ3MuZ2xvYmFsU2V0dGluZ3MsIFwiYWx0XCIsIFwiYWxsXCIpO1xuICAgIH1cblxuICAgIG1ha2VEZWZhdWx0cyhzZXR0aW5ncywgXCJsb2NhbFNldHRpbmdzXCIsIHt9KTtcbiAgICBtYWtlRGVmYXVsdExvY2FsU2V0dGluZyhzZXR0aW5ncywgXCIuKlwiLCB7XG4gICAgICAgIC8vIFwiY21kbGluZVwiOiBcIm5lb3ZpbVwiIHwgXCJmaXJlbnZpbVwiXG4gICAgICAgIC8vICMxNjg6IFVzZSBhbiBleHRlcm5hbCBjb21tYW5kbGluZSB0byBwcmVzZXJ2ZSBzcGFjZVxuICAgICAgICBjbWRsaW5lOiBcImZpcmVudmltXCIsXG4gICAgICAgIGNvbnRlbnQ6IFwidGV4dFwiLFxuICAgICAgICBwcmlvcml0eTogMCxcbiAgICAgICAgcmVuZGVyZXI6IFwiY2FudmFzXCIsXG4gICAgICAgIHNlbGVjdG9yOiAndGV4dGFyZWE6bm90KFtyZWFkb25seV0pLCBkaXZbcm9sZT1cInRleHRib3hcIl0nLFxuICAgICAgICAvLyBcInRha2VvdmVyXCI6IFwiYWx3YXlzXCIgfCBcIm9uY2VcIiB8IFwiZW1wdHlcIiB8IFwibm9uZW1wdHlcIiB8IFwibmV2ZXJcIlxuICAgICAgICAvLyAjMjY1OiBPbiBcIm9uY2VcIiwgZG9uJ3QgYXV0b21hdGljYWxseSBicmluZyBiYWNrIGFmdGVyIDpxJ2luZyBpdFxuICAgICAgICB0YWtlb3ZlcjogXCJhbHdheXNcIixcbiAgICAgICAgZmlsZW5hbWU6IFwie2hvc3RuYW1lJTMyfV97cGF0aG5hbWUlMzJ9X3tzZWxlY3RvciUzMn1fe3RpbWVzdGFtcCUzMn0ue2V4dGVuc2lvbn1cIixcbiAgICB9KTtcbiAgICBtYWtlRGVmYXVsdExvY2FsU2V0dGluZyhzZXR0aW5ncywgXCJhYm91dDpibGFua1xcXFw/Y29tcG9zZVwiLCB7XG4gICAgICAgIGNtZGxpbmU6IFwiZmlyZW52aW1cIixcbiAgICAgICAgY29udGVudDogXCJ0ZXh0XCIsXG4gICAgICAgIHByaW9yaXR5OiAxLFxuICAgICAgICByZW5kZXJlcjogXCJjYW52YXNcIixcbiAgICAgICAgc2VsZWN0b3I6ICdib2R5JyxcbiAgICAgICAgdGFrZW92ZXI6IFwiYWx3YXlzXCIsXG4gICAgICAgIGZpbGVuYW1lOiBcIm1haWxfe3RpbWVzdGFtcCUzMn0uZW1sXCIsXG4gICAgfSk7XG4gICAgcmV0dXJuIGJyb3dzZXIuc3RvcmFnZS5sb2NhbC5zZXQoc2V0dGluZ3MpO1xufVxuXG5mdW5jdGlvbiB1cGRhdGVTZXR0aW5ncygpIHtcbiAgICBjb25zdCB0bXAgPSBwcmVsb2FkZWRJbnN0YW5jZTtcbiAgICBwcmVsb2FkZWRJbnN0YW5jZSA9IGNyZWF0ZU5ld0luc3RhbmNlKCk7XG4gICAgdG1wLnRoZW4obnZpbSA9PiBudmltLmtpbGwoKSk7XG4gICAgLy8gSXQncyBvayB0byByZXR1cm4gdGhlIHByZWxvYWRlZEluc3RhbmNlIGFzIGEgcHJvbWlzZSBiZWNhdXNlXG4gICAgLy8gc2V0dGluZ3MgYXJlIG9ubHkgYXBwbGllZCB3aGVuIHRoZSBwcmVsb2FkZWRJbnN0YW5jZSBoYXMgcmV0dXJuZWQgYVxuICAgIC8vIHBvcnQrc2V0dGluZ3Mgb2JqZWN0IGFueXdheS5cbiAgICByZXR1cm4gcHJlbG9hZGVkSW5zdGFuY2U7XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZU5ld0luc3RhbmNlKCkge1xuICAgIHJldHVybiBuZXcgUHJvbWlzZSgocmVzb2x2ZSwgcmVqZWN0KSA9PiB7XG4gICAgICAgIGNvbnN0IHJhbmRvbSA9IG5ldyBVaW50MzJBcnJheSg4KTtcbiAgICAgICAgd2luZG93LmNyeXB0by5nZXRSYW5kb21WYWx1ZXMocmFuZG9tKTtcbiAgICAgICAgY29uc3QgcGFzc3dvcmQgPSBBcnJheS5mcm9tKHJhbmRvbSkuam9pbihcIlwiKTtcblxuICAgICAgICBjb25zdCBudmltID0gYnJvd3Nlci5ydW50aW1lLmNvbm5lY3ROYXRpdmUoXCJmaXJlbnZpbVwiKTtcbiAgICAgICAgY29uc3QgZXJyb3JUaW1lb3V0ID0gcmVnaXN0ZXJFcnJvcnMobnZpbSwgcmVqZWN0KTtcbiAgICAgICAgbnZpbS5vbk1lc3NhZ2UuYWRkTGlzdGVuZXIoKHJlc3A6IGFueSkgPT4ge1xuICAgICAgICAgICAgKG52aW0gYXMgYW55KS5yZXBsaWVkID0gdHJ1ZTtcbiAgICAgICAgICAgIGNsZWFyVGltZW91dChlcnJvclRpbWVvdXQpO1xuICAgICAgICAgICAgY2hlY2tWZXJzaW9uKHJlc3AudmVyc2lvbik7XG4gICAgICAgICAgICBhcHBseVNldHRpbmdzKHJlc3Auc2V0dGluZ3MpLmZpbmFsbHkoKCkgPT4ge1xuICAgICAgICAgICAgICAgIHJlc29sdmUoe1xuICAgICAgICAgICAgICAgICAgICBraWxsOiAoKSA9PiBudmltLmRpc2Nvbm5lY3QoKSxcbiAgICAgICAgICAgICAgICAgICAgcGFzc3dvcmQsXG4gICAgICAgICAgICAgICAgICAgIHBvcnQ6IHJlc3AucG9ydCxcbiAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICB9KTtcbiAgICAgICAgbnZpbS5wb3N0TWVzc2FnZSh7XG4gICAgICAgICAgICBuZXdJbnN0YW5jZTogdHJ1ZSxcbiAgICAgICAgICAgIHBhc3N3b3JkLFxuICAgICAgICB9KTtcbiAgICB9KTtcbn1cblxuLy8gQ3JlYXRpbmcgdGhpcyBmaXJzdCBpbnN0YW5jZSBzZXJ2ZXMgdHdvIHB1cnBvc2VzOiBtYWtlIGNyZWF0aW5nIG5ldyBuZW92aW1cbi8vIGZyYW1lcyBmYXN0IGFuZCBhbHNvIGluaXRpYWxpemUgc2V0dGluZ3MgdGhlIGZpcnN0IHRpbWUgRmlyZW52aW0gaXMgZW5hYmxlZFxuLy8gaW4gYSBicm93c2VyLlxucHJlbG9hZGVkSW5zdGFuY2UgPSBjcmVhdGVOZXdJbnN0YW5jZSgpO1xuXG5hc3luYyBmdW5jdGlvbiB0b2dnbGVEaXNhYmxlZCgpIHtcbiAgICBjb25zdCB0YWJpZCA9IChhd2FpdCBicm93c2VyLnRhYnMucXVlcnkoeyBhY3RpdmU6IHRydWUsIGN1cnJlbnRXaW5kb3c6IHRydWUgfSkpWzBdLmlkO1xuICAgIGNvbnN0IGRpc2FibGVkID0gIWdldFRhYlZhbHVlKHRhYmlkLCBcImRpc2FibGVkXCIpO1xuICAgIHNldFRhYlZhbHVlKHRhYmlkLCBcImRpc2FibGVkXCIsIGRpc2FibGVkKTtcbiAgICB1cGRhdGVJY29uKHRhYmlkKTtcbiAgICByZXR1cm4gYnJvd3Nlci50YWJzLnNlbmRNZXNzYWdlKHRhYmlkLCB7IGFyZ3M6IFtkaXNhYmxlZF0sIGZ1bmNOYW1lOiBbXCJzZXREaXNhYmxlZFwiXSB9KTtcbn1cblxuYXN5bmMgZnVuY3Rpb24gYWNjZXB0Q29tbWFuZCAoY29tbWFuZDogc3RyaW5nKSB7XG4gICAgY29uc3QgdGFiID0gKGF3YWl0IGJyb3dzZXIudGFicy5xdWVyeSh7IGFjdGl2ZTogdHJ1ZSwgY3VycmVudFdpbmRvdzogdHJ1ZSB9KSlbMF07XG4gICAgbGV0IHA7XG4gICAgc3dpdGNoIChjb21tYW5kKSB7XG4gICAgICAgIGNhc2UgXCJudmltaWZ5XCI6XG4gICAgICAgICAgICBwID0gYnJvd3Nlci50YWJzLnNlbmRNZXNzYWdlKFxuICAgICAgICAgICAgICAgIHRhYi5pZCxcbiAgICAgICAgICAgICAgICB7IGFyZ3M6IFtdLCBmdW5jTmFtZTogW1wiZm9yY2VOdmltaWZ5XCJdIH0sXG4gICAgICAgICk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlIFwic2VuZF9DLW5cIjpcbiAgICAgICAgICAgIHAgPSBicm93c2VyLnRhYnMuc2VuZE1lc3NhZ2UoXG4gICAgICAgICAgICAgICAgdGFiLmlkLFxuICAgICAgICAgICAgICAgIHsgYXJnczogW1wiPEMtbj5cIl0sIGZ1bmNOYW1lOiBbXCJzZW5kS2V5XCJdIH0sXG4gICAgICAgICk7XG4gICAgICAgIGlmIChnZXRHbG9iYWxDb25mKClbXCI8Qy1uPlwiXSA9PT0gXCJkZWZhdWx0XCIpIHtcbiAgICAgICAgICAgIHAgPSBwLmNhdGNoKCgpID0+IGJyb3dzZXIud2luZG93cy5jcmVhdGUoKSk7XG4gICAgICAgIH1cbiAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgXCJzZW5kX0MtdFwiOlxuICAgICAgICAgICAgcCA9IGJyb3dzZXIudGFicy5zZW5kTWVzc2FnZShcbiAgICAgICAgICAgICAgICB0YWIuaWQsXG4gICAgICAgICAgICAgICAgeyBhcmdzOiBbXCI8Qy10PlwiXSwgZnVuY05hbWU6IFtcInNlbmRLZXlcIl0gfSxcbiAgICAgICAgKTtcbiAgICAgICAgaWYgKGdldEdsb2JhbENvbmYoKVtcIjxDLXQ+XCJdID09PSBcImRlZmF1bHRcIikge1xuICAgICAgICAgICAgcCA9IHAuY2F0Y2goKCkgPT4gYnJvd3Nlci50YWJzLmNyZWF0ZSh7IFwid2luZG93SWRcIjogdGFiLndpbmRvd0lkIH0pKTtcbiAgICAgICAgfVxuICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBcInNlbmRfQy13XCI6XG4gICAgICAgICAgICBwID0gYnJvd3Nlci50YWJzLnNlbmRNZXNzYWdlKFxuICAgICAgICAgICAgICAgIHRhYi5pZCxcbiAgICAgICAgICAgICAgICB7IGFyZ3M6IFtcIjxDLXc+XCJdLCBmdW5jTmFtZTogW1wic2VuZEtleVwiXSB9LFxuICAgICAgICApO1xuICAgICAgICBpZiAoZ2V0R2xvYmFsQ29uZigpW1wiPEMtdz5cIl0gPT09IFwiZGVmYXVsdFwiKSB7XG4gICAgICAgICAgICBwID0gcC5jYXRjaCgoKSA9PiBicm93c2VyLnRhYnMucmVtb3ZlKHRhYi5pZCkpO1xuICAgICAgICB9XG4gICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlIFwic2VuZF9DUy1uXCI6XG4gICAgICAgICAgICBwID0gYnJvd3Nlci50YWJzLnNlbmRNZXNzYWdlKFxuICAgICAgICAgICAgICAgIHRhYi5pZCxcbiAgICAgICAgICAgICAgICB7IGFyZ3M6IFtcIjxDUy1uPlwiXSwgZnVuY05hbWU6IFtcInNlbmRLZXlcIl0gfSxcbiAgICAgICAgKTtcbiAgICAgICAgaWYgKGdldEdsb2JhbENvbmYoKVtcIjxDUy1uPlwiXSA9PT0gXCJkZWZhdWx0XCIpIHtcbiAgICAgICAgICAgIHAgPSBwLmNhdGNoKCgpID0+IGJyb3dzZXIud2luZG93cy5jcmVhdGUoeyBcImluY29nbml0b1wiOiB0cnVlIH0pKTtcbiAgICAgICAgfVxuICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBcInNlbmRfQ1MtdFwiOlxuICAgICAgICAgICAgLy8gPENTLXQ+IGNhbid0IGJlIGVtdWxhdGVkIHdpdGhvdXQgdGhlIHNlc3Npb25zIEFQSS5cbiAgICAgICAgICAgIHAgPSBicm93c2VyLnRhYnMuc2VuZE1lc3NhZ2UoXG4gICAgICAgICAgICAgICAgdGFiLmlkLFxuICAgICAgICAgICAgICAgIHsgYXJnczogW1wiPENTLXQ+XCJdLCBmdW5jTmFtZTogW1wic2VuZEtleVwiXSB9LFxuICAgICAgICApO1xuICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBcInNlbmRfQ1Mtd1wiOlxuICAgICAgICAgICAgcCA9IGJyb3dzZXIudGFicy5zZW5kTWVzc2FnZShcbiAgICAgICAgICAgICAgICB0YWIuaWQsXG4gICAgICAgICAgICAgICAgeyBhcmdzOiBbXCI8Q1Mtdz5cIl0sIGZ1bmNOYW1lOiBbXCJzZW5kS2V5XCJdIH0sXG4gICAgICAgICk7XG4gICAgICAgIGlmIChnZXRHbG9iYWxDb25mKClbXCI8Q1Mtdz5cIl0gPT09IFwiZGVmYXVsdFwiKSB7XG4gICAgICAgICAgICBwID0gcC5jYXRjaCgoKSA9PiBicm93c2VyLndpbmRvd3MucmVtb3ZlKHRhYi53aW5kb3dJZCkpO1xuICAgICAgICB9XG4gICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlIFwidG9nZ2xlX2ZpcmVudmltXCI6XG4gICAgICAgICAgICBwID0gdG9nZ2xlRGlzYWJsZWQoKTtcbiAgICAgICAgYnJlYWs7XG4gICAgfVxuICAgIHJldHVybiBwO1xufVxuXG5PYmplY3QuYXNzaWduKHdpbmRvdywge1xuICAgIGFjY2VwdENvbW1hbmQsXG4gICAgLy8gV2UgbmVlZCB0byBzdGljayB0aGUgYnJvd3NlciBwb2x5ZmlsbCBpbiBgd2luZG93YCBpZiB3ZSB3YW50IHRoZSBgZXhlY2BcbiAgICAvLyBjYWxsIHRvIGJlIGFibGUgdG8gZmluZCBpdCBvbiBDaHJvbWVcbiAgICBicm93c2VyLFxuICAgIGNsb3NlT3duVGFiOiAoc2VuZGVyOiBhbnkpID0+IGJyb3dzZXIudGFicy5yZW1vdmUoc2VuZGVyLnRhYi5pZCksXG4gICAgZXhlYzogKF86IGFueSwgYXJnczogYW55KSA9PiBhcmdzLmZ1bmNOYW1lLnJlZHVjZSgoYWNjOiBhbnksIGN1cjogc3RyaW5nKSA9PiBhY2NbY3VyXSwgd2luZG93KSguLi4oYXJncy5hcmdzKSksXG4gICAgZ2V0RXJyb3IsXG4gICAgZ2V0TmVvdmltSW5zdGFuY2U6ICgpID0+IHtcbiAgICAgICAgY29uc3QgcmVzdWx0ID0gcHJlbG9hZGVkSW5zdGFuY2U7XG4gICAgICAgIHByZWxvYWRlZEluc3RhbmNlID0gY3JlYXRlTmV3SW5zdGFuY2UoKTtcbiAgICAgICAgLy8gRGVzdHJ1Y3R1cmluZyByZXN1bHQgdG8gcmVtb3ZlIGtpbGwoKSBmcm9tIGl0XG4gICAgICAgIHJldHVybiByZXN1bHQudGhlbigoeyBwYXNzd29yZCwgcG9ydCB9KSA9PiAoeyBwYXNzd29yZCwgcG9ydCB9KSk7XG4gICAgfSxcbiAgICBnZXROdmltUGx1Z2luVmVyc2lvbjogKCkgPT4gbnZpbVBsdWdpblZlcnNpb24sXG4gICAgZ2V0T3duRnJhbWVJZDogKHNlbmRlcjogYW55KSA9PiBzZW5kZXIuZnJhbWVJZCxcbiAgICBnZXRPd25Db21wb3NlRGV0YWlsczogKHNlbmRlcjogYW55KSA9PiAoYnJvd3NlciBhcyBhbnkpLmNvbXBvc2UuZ2V0Q29tcG9zZURldGFpbHMoc2VuZGVyLnRhYi5pZCksXG4gICAgZ2V0VGFiOiAoc2VuZGVyOiBhbnkpID0+IHNlbmRlci50YWIsXG4gICAgZ2V0VGFiVmFsdWU6IChzZW5kZXI6IGFueSwgYXJnczogYW55KSA9PiBnZXRUYWJWYWx1ZShzZW5kZXIudGFiLmlkLCBhcmdzWzBdKSxcbiAgICBnZXRUYWJWYWx1ZUZvcjogKF86IGFueSwgYXJnczogYW55KSA9PiBnZXRUYWJWYWx1ZShhcmdzWzBdLCBhcmdzWzFdKSxcbiAgICBnZXRXYXJuaW5nLFxuICAgIG1lc3NhZ2VGcmFtZTogKHNlbmRlcjogYW55LCBhcmdzOiBhbnkpID0+IGJyb3dzZXIudGFicy5zZW5kTWVzc2FnZShzZW5kZXIudGFiLmlkLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhcmdzLm1lc3NhZ2UsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHsgZnJhbWVJZDogYXJncy5mcmFtZUlkIH0pLFxuICAgIG1lc3NhZ2VQYWdlOiAoc2VuZGVyOiBhbnksIGFyZ3M6IGFueSkgPT4gYnJvd3Nlci50YWJzLnNlbmRNZXNzYWdlKHNlbmRlci50YWIuaWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXJncyksXG4gICAgcHVibGlzaEZyYW1lSWQ6IChzZW5kZXI6IGFueSkgPT4ge1xuICAgICAgICBicm93c2VyLnRhYnMuc2VuZE1lc3NhZ2Uoc2VuZGVyLnRhYi5pZCwge1xuICAgICAgICAgICAgYXJnczogW3NlbmRlci5mcmFtZUlkXSxcbiAgICAgICAgICAgIGZ1bmNOYW1lOiBbXCJyZWdpc3Rlck5ld0ZyYW1lSWRcIl0sXG4gICAgICAgIH0pO1xuICAgICAgICByZXR1cm4gc2VuZGVyLmZyYW1lSWQ7XG4gICAgfSxcbiAgICBzZXRUYWJWYWx1ZTogKHNlbmRlcjogYW55LCBhcmdzOiBhbnkpID0+IHNldFRhYlZhbHVlKHNlbmRlci50YWIuaWQsIGFyZ3NbMF0sIGFyZ3NbMV0pLFxuICAgIHRodW5kZXJiaXJkU2VuZDogKHNlbmRlcjogYW55KSA9PiB7XG4gICAgICAgIHJldHVybiAoYnJvd3NlciBhcyBhbnkpLmNvbXBvc2Uuc2VuZE1lc3NhZ2Uoc2VuZGVyLnRhYi5pZCwgeyBtb2RlOiAnZGVmYXVsdCcgfSk7XG4gICAgfSxcbiAgICB0b2dnbGVEaXNhYmxlZDogKCkgPT4gdG9nZ2xlRGlzYWJsZWQoKSxcbiAgICB1cGRhdGVTZXR0aW5nczogKCkgPT4gdXBkYXRlU2V0dGluZ3MoKSxcbn0gYXMgYW55KTtcblxuYnJvd3Nlci5ydW50aW1lLm9uTWVzc2FnZS5hZGRMaXN0ZW5lcihhc3luYyAocmVxdWVzdDogYW55LCBzZW5kZXI6IGFueSwgX3NlbmRSZXNwb25zZTogYW55KSA9PiB7XG4gICAgY29uc3QgZm4gPSByZXF1ZXN0LmZ1bmNOYW1lLnJlZHVjZSgoYWNjOiBhbnksIGN1cjogc3RyaW5nKSA9PiBhY2NbY3VyXSwgd2luZG93KTtcbiAgICAvLyBDYW4ndCBiZSB0ZXN0ZWQgYXMgdGhlcmUncyBubyB3YXkgdG8gZm9yY2UgYW4gaW5jb3JyZWN0IGNvbnRlbnQgcmVxdWVzdC5cbiAgICAvKiBpc3RhbmJ1bCBpZ25vcmUgbmV4dCAqL1xuICAgIGlmICghZm4pIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFcnJvcjogdW5oYW5kbGVkIGNvbnRlbnQgcmVxdWVzdDogJHtKU09OLnN0cmluZ2lmeShyZXF1ZXN0KX0uYCk7XG4gICAgfVxuICAgIHJldHVybiBmbihzZW5kZXIsIHJlcXVlc3QuYXJncyAhPT0gdW5kZWZpbmVkID8gcmVxdWVzdC5hcmdzIDogW10pO1xufSk7XG5cbmJyb3dzZXIudGFicy5vbkFjdGl2YXRlZC5hZGRMaXN0ZW5lcih0YWIgPT4ge1xuICAgIHVwZGF0ZUljb24odGFiLnRhYklkKTtcbn0pO1xuYnJvd3Nlci53aW5kb3dzLm9uRm9jdXNDaGFuZ2VkLmFkZExpc3RlbmVyKGFzeW5jICh3aW5kb3dJZDogbnVtYmVyKSA9PiB7XG4gICAgY29uc3QgdGFicyA9IGF3YWl0IGJyb3dzZXIudGFicy5xdWVyeSh7IGFjdGl2ZTogdHJ1ZSwgd2luZG93SWQgfSk7XG4gICAgaWYgKHRhYnMubGVuZ3RoID49IDEpIHtcbiAgICAgICAgdXBkYXRlSWNvbih0YWJzWzBdLmlkKTtcbiAgICB9XG59KTtcblxudXBkYXRlSWNvbigpO1xuXG4vLyBicm93c2VyLmNvbW1tYW5kcyBkb2Vzbid0IGV4aXN0IGluIHRodW5kZXJiaXJkLiBFbHNlIGJyYW5jaCBjYW4ndCBiZSBjb3ZlcmVkXG4vLyBzbyBkb24ndCBpbnN0cnVtZW50IHRoZSBpZi5cbi8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG5pZiAoIWlzVGh1bmRlcmJpcmQoKSkge1xuICAgIGJyb3dzZXIuY29tbWFuZHMub25Db21tYW5kLmFkZExpc3RlbmVyKGFjY2VwdENvbW1hbmQpO1xuICAgIGJyb3dzZXIucnVudGltZS5vbk1lc3NhZ2VFeHRlcm5hbC5hZGRMaXN0ZW5lcihhc3luYyAocmVxdWVzdDogYW55LCBzZW5kZXI6IGFueSwgX3NlbmRSZXNwb25zZTogYW55KSA9PiB7XG4gICAgICAgIGNvbnN0IHJlc3AgPSBhd2FpdCBhY2NlcHRDb21tYW5kKHJlcXVlc3QuY29tbWFuZCk7XG4gICAgICAgIF9zZW5kUmVzcG9uc2UocmVzcCk7XG4gICAgfSk7XG59XG5cbmFzeW5jIGZ1bmN0aW9uIHVwZGF0ZUlmUG9zc2libGUoKSB7XG4gICAgY29uc3QgdGFicyA9IGF3YWl0IGJyb3dzZXIudGFicy5xdWVyeSh7fSk7XG4gICAgY29uc3QgbWVzc2FnZXMgPSB0YWJzLm1hcCh0YWIgPT4gYnJvd3NlclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC50YWJzXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnNlbmRNZXNzYWdlKHRhYi5pZCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXJnczogW10sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jTmFtZTogW1wiZ2V0QWN0aXZlSW5zdGFuY2VDb3VudFwiXSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeyBmcmFtZUlkOiAwIH0pXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmNhdGNoKCgpID0+IDApKTtcbiAgICBjb25zdCBpbnN0YW5jZXMgPSBhd2FpdCAoUHJvbWlzZS5hbGwobWVzc2FnZXMpKTtcbiAgICAvLyBDYW4ndCBiZSBjb3ZlcmVkIGFzIHJlbG9hZCgpIHdvdWxkIGRlc3Ryb3kgd2Vic29ja2V0cyBhbmQgdGh1cyBjb3ZlcmFnZVxuICAgIC8vIGRhdGEuXG4gICAgLyogaXN0YW5idWwgaWdub3JlIG5leHQgKi9cbiAgICBpZiAoaW5zdGFuY2VzLmZpbmQobiA9PiBuID4gMCkgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICBicm93c2VyLnJ1bnRpbWUucmVsb2FkKCk7XG4gICAgfSBlbHNlIHtcbiAgICAgICAgc2V0VGltZW91dCh1cGRhdGVJZlBvc3NpYmxlLCAxMDAwICogNjAgKiAxMCk7XG4gICAgfVxufVxuKHdpbmRvdyBhcyBhbnkpLnVwZGF0ZUlmUG9zc2libGUgPSB1cGRhdGVJZlBvc3NpYmxlO1xuYnJvd3Nlci5ydW50aW1lLm9uVXBkYXRlQXZhaWxhYmxlLmFkZExpc3RlbmVyKHVwZGF0ZUlmUG9zc2libGUpO1xuXG4vLyBDYW4ndCB0ZXN0IG9uIHRoZSBiaXJkIG9mIHRodW5kZXJcbi8qIGlzdGFuYnVsIGlnbm9yZSBuZXh0ICovXG5pZiAoaXNUaHVuZGVyYmlyZCgpKSB7XG4gICAgKGJyb3dzZXIgYXMgYW55KS5jb21wb3NlLm9uQmVmb3JlU2VuZC5hZGRMaXN0ZW5lcihhc3luYyAodGFiOiBhbnksIGRldGFpbHM6IGFueSkgPT4ge1xuICAgICAgICBjb25zdCBsaW5lcyA9IChhd2FpdCBicm93c2VyLnRhYnMuc2VuZE1lc3NhZ2UodGFiLmlkLCB7IGFyZ3M6IFtdLCBmdW5jTmFtZTogW1wiZ2V0X2J1Zl9jb250ZW50XCJdIH0pKSBhcyBzdHJpbmdbXTtcbiAgICAgICAgLy8gTm8gbmVlZCB0byByZW1vdmUgdGhlIGNhbnZhcyB3aGVuIHdvcmtpbmcgd2l0aCBwbGFpbnRleHQsXG4gICAgICAgIC8vIHRodW5kZXJiaXJkIHdpbGwgZG8gdGhhdCBmb3IgdXMuXG4gICAgICAgIGlmIChkZXRhaWxzLmlzUGxhaW5UZXh0KSB7XG4gICAgICAgICAgICAvLyBGaXJlbnZpbSBoYXMgdG8gY2FuY2VsIHRoZSBiZWZvcmVpbnB1dCBldmVudCBvbiB0aGUgY29tcG9zZVxuICAgICAgICAgICAgLy8gd2luZG93J3MgZG9jdW1lbnRFbGVtZW50IGluIG9yZGVyIHRvIHByZXZlbnQgdGhlIGNhbnZhcyBmcm9tXG4gICAgICAgICAgICAvLyBiZWluZyBkZXN0cm95ZWQuIEhvd2V2ZXIsIHRodW5kZXJiaXJkIGhhcyBhIGJ1ZyB3aGVyZSBjYW5jZWxsaW5nXG4gICAgICAgICAgICAvLyB0aGlzIGV2ZW50IHdpbGwgcHJldmVudCBvbkJlZm9yZVNlbmQgZnJvbSBzZXR0aW5nIHRoZSBjb21wb3NlXG4gICAgICAgICAgICAvLyB3aW5kb3cncyBjb250ZW50IHdoZW4gZWRpdGluZyBwbGFpbnRleHQgZW1haWxzLlxuICAgICAgICAgICAgLy8gV2Ugd29yayBhcm91bmQgdGhpcyBieSB0ZWxsaW5nIHRoZSBjb21wb3NlIHNjcmlwdCB0byB0ZW1wb3JhcmlseVxuICAgICAgICAgICAgLy8gc3RvcCBjYW5jZWxsaW5nIGV2ZW50cy5cbiAgICAgICAgICAgIGF3YWl0IGJyb3dzZXIudGFicy5zZW5kTWVzc2FnZSh0YWIuaWQsIHsgYXJnczogW10sIGZ1bmNOYW1lOiBbXCJwYXVzZV9rZXloYW5kbGVyXCJdIH0pO1xuICAgICAgICAgICAgcmV0dXJuIHsgY2FuY2VsOiBmYWxzZSwgZGV0YWlsczogeyBwbGFpblRleHRCb2R5OiBsaW5lcy5qb2luKFwiXFxuXCIpIH0gfTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGRvYyA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoXCJodG1sXCIpO1xuICAgICAgICBjb25zdCBib2QgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwiYm9keVwiKTtcbiAgICAgICAgZG9jLmFwcGVuZENoaWxkKGJvZCk7XG5cbiAgICAgICAgLy8gVHVybiBgPmAgaW50byBhcHByb3ByaWF0ZSBibG9ja3F1b3RlIGVsZW1lbnRzLlxuICAgICAgICBsZXQgcHJldmlvdXNRdW90ZUxldmVsID0gMDtcbiAgICAgICAgbGV0IHBhcmVudCA6IEhUTUxFbGVtZW50ID0gYm9kO1xuICAgICAgICBmb3IgKGNvbnN0IGwgb2YgbGluZXMpIHtcbiAgICAgICAgICAgIGxldCBjdXJyZW50UXVvdGVMZXZlbCA9IDA7XG5cbiAgICAgICAgICAgIC8vIENvdW50IG51bWJlciBvZiBcIj5cIiBzeW1ib2xzXG4gICAgICAgICAgICBsZXQgaSA9IDA7XG4gICAgICAgICAgICB3aGlsZSAobFtpXSA9PT0gXCIgXCIgfHwgbFtpXSA9PT0gXCI+XCIpIHtcbiAgICAgICAgICAgICAgICBpZiAobFtpXSA9PT0gXCI+XCIpIHtcbiAgICAgICAgICAgICAgICAgICAgY3VycmVudFF1b3RlTGV2ZWwgKz0gMTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgaSArPSAxO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBjb25zdCBsaW5lID0gbC5zbGljZShpKTtcblxuICAgICAgICAgICAgaWYgKGN1cnJlbnRRdW90ZUxldmVsID4gcHJldmlvdXNRdW90ZUxldmVsKSB7XG4gICAgICAgICAgICAgICAgZm9yIChsZXQgaSA9IHByZXZpb3VzUXVvdGVMZXZlbDsgaSA8IGN1cnJlbnRRdW90ZUxldmVsOyArK2kpIHtcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgYmxvY2sgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwiYmxvY2txdW90ZVwiKTtcbiAgICAgICAgICAgICAgICAgICAgYmxvY2suc2V0QXR0cmlidXRlKFwidHlwZVwiLCBcImNpdGVcIik7XG4gICAgICAgICAgICAgICAgICAgIHBhcmVudC5hcHBlbmRDaGlsZChibG9jayk7XG4gICAgICAgICAgICAgICAgICAgIHBhcmVudCA9IGJsb2NrO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH0gZWxzZSBpZiAoY3VycmVudFF1b3RlTGV2ZWwgPCBwcmV2aW91c1F1b3RlTGV2ZWwpIHtcbiAgICAgICAgICAgICAgICBmb3IgKGxldCBpID0gcHJldmlvdXNRdW90ZUxldmVsOyBpID4gY3VycmVudFF1b3RlTGV2ZWw7IC0taSkge1xuICAgICAgICAgICAgICAgICAgICBwYXJlbnQgPSBwYXJlbnQucGFyZW50RWxlbWVudDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHBhcmVudC5hcHBlbmRDaGlsZChkb2N1bWVudC5jcmVhdGVUZXh0Tm9kZShsaW5lKSk7XG4gICAgICAgICAgICBwYXJlbnQuYXBwZW5kQ2hpbGQoZG9jdW1lbnQuY3JlYXRlRWxlbWVudChcImJyXCIpKTtcblxuICAgICAgICAgICAgcHJldmlvdXNRdW90ZUxldmVsID0gY3VycmVudFF1b3RlTGV2ZWw7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIHsgY2FuY2VsOiBmYWxzZSwgZGV0YWlsczogeyBib2R5OiBkb2Mub3V0ZXJIVE1MIH0gfTtcbiAgICB9KTtcbiAgICAvLyBJbiB0aHVuZGVyYmlyZCwgcmVnaXN0ZXIgdGhlIHNjcmlwdCB0byBiZSBsb2FkZWQgaW4gdGhlIGNvbXBvc2Ugd2luZG93XG4gICAgKGJyb3dzZXIgYXMgYW55KS5jb21wb3NlU2NyaXB0cy5yZWdpc3Rlcih7XG4gICAgICAgIGpzOiBbe2ZpbGU6IFwiY29tcG9zZS5qc1wifV0sXG4gICAgfSk7XG59XG4iXSwibmFtZXMiOltdLCJzb3VyY2VSb290IjoiIn0=