import { s as setDefaultIcon, O as OPEN_OPTIONS, a as OPEN_POCKET, C as COLOR_MODE_CHANGE, S as SEND_TAG_ERROR, T as TAGS_SYNC, R as RESAVE_ITEM, b as REMOVE_ITEM, L as LOGGED_OUT_OF_POCKET, U as USER_LOG_IN, A as AUTH_CODE_RECEIVED, g as getSetting, c as SAVE_TO_POCKET_REQUEST, d as SAVE_TO_POCKET_SUCCESS, e as SAVE_TO_POCKET_FAILURE, f as REMOVE_ITEM_REQUEST, h as setToolbarIcon, i as TAG_SYNC_REQUEST, j as UPDATE_TAG_ERROR, k as setSettings, l as UPDATE_ITEM_PREVIEW, m as UPDATE_STORED_TAGS, n as SUGGESTED_TAGS_SUCCESS, o as REMOVE_ITEM_SUCCESS, p as REMOVE_ITEM_FAILURE, q as TAG_SYNC_SUCCESS, r as TAG_SYNC_FAILURE } from '../../chunks/actions-c28cfaee.js';
import { i as isSystemPage, a as isSystemLink, c as closeLoginPage, g as getAccessToken, d as deriveItemData } from '../../chunks/helpers-1c8e8b50.js';
import { A as API_URL, L as LOGOUT_URL, a as AUTH_URL, P as POCKET_LIST, b as POCKET_HOME, C as CONSUMER_KEY } from '../../chunks/constants-38b5bdc0.js';
import { a as arrayHasValues } from '../../chunks/utilities-04706bf0.js';

/**
 *  base64.ts
 *
 *  Licensed under the BSD 3-Clause License.
 *    http://opensource.org/licenses/BSD-3-Clause
 *
 *  References:
 *    http://en.wikipedia.org/wiki/Base64
 *
 * @author Dan Kogai (https://github.com/dankogai)
 */
const version = '3.7.2';
/**
 * @deprecated use lowercase `version`.
 */
const VERSION = version;
const _hasatob = typeof atob === 'function';
const _hasbtoa = typeof btoa === 'function';
const _hasBuffer = typeof Buffer === 'function';
const _TD = typeof TextDecoder === 'function' ? new TextDecoder() : undefined;
const _TE = typeof TextEncoder === 'function' ? new TextEncoder() : undefined;
const b64ch = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
const b64chs = Array.prototype.slice.call(b64ch);
const b64tab = ((a) => {
    let tab = {};
    a.forEach((c, i) => tab[c] = i);
    return tab;
})(b64chs);
const b64re = /^(?:[A-Za-z\d+\/]{4})*?(?:[A-Za-z\d+\/]{2}(?:==)?|[A-Za-z\d+\/]{3}=?)?$/;
const _fromCC = String.fromCharCode.bind(String);
const _U8Afrom = typeof Uint8Array.from === 'function'
    ? Uint8Array.from.bind(Uint8Array)
    : (it, fn = (x) => x) => new Uint8Array(Array.prototype.slice.call(it, 0).map(fn));
const _mkUriSafe = (src) => src
    .replace(/=/g, '').replace(/[+\/]/g, (m0) => m0 == '+' ? '-' : '_');
const _tidyB64 = (s) => s.replace(/[^A-Za-z0-9\+\/]/g, '');
/**
 * polyfill version of `btoa`
 */
const btoaPolyfill = (bin) => {
    // console.log('polyfilled');
    let u32, c0, c1, c2, asc = '';
    const pad = bin.length % 3;
    for (let i = 0; i < bin.length;) {
        if ((c0 = bin.charCodeAt(i++)) > 255 ||
            (c1 = bin.charCodeAt(i++)) > 255 ||
            (c2 = bin.charCodeAt(i++)) > 255)
            throw new TypeError('invalid character found');
        u32 = (c0 << 16) | (c1 << 8) | c2;
        asc += b64chs[u32 >> 18 & 63]
            + b64chs[u32 >> 12 & 63]
            + b64chs[u32 >> 6 & 63]
            + b64chs[u32 & 63];
    }
    return pad ? asc.slice(0, pad - 3) + "===".substring(pad) : asc;
};
/**
 * does what `window.btoa` of web browsers do.
 * @param {String} bin binary string
 * @returns {string} Base64-encoded string
 */
const _btoa = _hasbtoa ? (bin) => btoa(bin)
    : _hasBuffer ? (bin) => Buffer.from(bin, 'binary').toString('base64')
        : btoaPolyfill;
const _fromUint8Array = _hasBuffer
    ? (u8a) => Buffer.from(u8a).toString('base64')
    : (u8a) => {
        // cf. https://stackoverflow.com/questions/12710001/how-to-convert-uint8-array-to-base64-encoded-string/12713326#12713326
        const maxargs = 0x1000;
        let strs = [];
        for (let i = 0, l = u8a.length; i < l; i += maxargs) {
            strs.push(_fromCC.apply(null, u8a.subarray(i, i + maxargs)));
        }
        return _btoa(strs.join(''));
    };
/**
 * converts a Uint8Array to a Base64 string.
 * @param {boolean} [urlsafe] URL-and-filename-safe a la RFC4648 §5
 * @returns {string} Base64 string
 */
const fromUint8Array = (u8a, urlsafe = false) => urlsafe ? _mkUriSafe(_fromUint8Array(u8a)) : _fromUint8Array(u8a);
// This trick is found broken https://github.com/dankogai/js-base64/issues/130
// const utob = (src: string) => unescape(encodeURIComponent(src));
// reverting good old fationed regexp
const cb_utob = (c) => {
    if (c.length < 2) {
        var cc = c.charCodeAt(0);
        return cc < 0x80 ? c
            : cc < 0x800 ? (_fromCC(0xc0 | (cc >>> 6))
                + _fromCC(0x80 | (cc & 0x3f)))
                : (_fromCC(0xe0 | ((cc >>> 12) & 0x0f))
                    + _fromCC(0x80 | ((cc >>> 6) & 0x3f))
                    + _fromCC(0x80 | (cc & 0x3f)));
    }
    else {
        var cc = 0x10000
            + (c.charCodeAt(0) - 0xD800) * 0x400
            + (c.charCodeAt(1) - 0xDC00);
        return (_fromCC(0xf0 | ((cc >>> 18) & 0x07))
            + _fromCC(0x80 | ((cc >>> 12) & 0x3f))
            + _fromCC(0x80 | ((cc >>> 6) & 0x3f))
            + _fromCC(0x80 | (cc & 0x3f)));
    }
};
const re_utob = /[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g;
/**
 * @deprecated should have been internal use only.
 * @param {string} src UTF-8 string
 * @returns {string} UTF-16 string
 */
const utob = (u) => u.replace(re_utob, cb_utob);
//
const _encode = _hasBuffer
    ? (s) => Buffer.from(s, 'utf8').toString('base64')
    : _TE
        ? (s) => _fromUint8Array(_TE.encode(s))
        : (s) => _btoa(utob(s));
/**
 * converts a UTF-8-encoded string to a Base64 string.
 * @param {boolean} [urlsafe] if `true` make the result URL-safe
 * @returns {string} Base64 string
 */
const encode = (src, urlsafe = false) => urlsafe
    ? _mkUriSafe(_encode(src))
    : _encode(src);
/**
 * converts a UTF-8-encoded string to URL-safe Base64 RFC4648 §5.
 * @returns {string} Base64 string
 */
const encodeURI = (src) => encode(src, true);
// This trick is found broken https://github.com/dankogai/js-base64/issues/130
// const btou = (src: string) => decodeURIComponent(escape(src));
// reverting good old fationed regexp
const re_btou = /[\xC0-\xDF][\x80-\xBF]|[\xE0-\xEF][\x80-\xBF]{2}|[\xF0-\xF7][\x80-\xBF]{3}/g;
const cb_btou = (cccc) => {
    switch (cccc.length) {
        case 4:
            var cp = ((0x07 & cccc.charCodeAt(0)) << 18)
                | ((0x3f & cccc.charCodeAt(1)) << 12)
                | ((0x3f & cccc.charCodeAt(2)) << 6)
                | (0x3f & cccc.charCodeAt(3)), offset = cp - 0x10000;
            return (_fromCC((offset >>> 10) + 0xD800)
                + _fromCC((offset & 0x3FF) + 0xDC00));
        case 3:
            return _fromCC(((0x0f & cccc.charCodeAt(0)) << 12)
                | ((0x3f & cccc.charCodeAt(1)) << 6)
                | (0x3f & cccc.charCodeAt(2)));
        default:
            return _fromCC(((0x1f & cccc.charCodeAt(0)) << 6)
                | (0x3f & cccc.charCodeAt(1)));
    }
};
/**
 * @deprecated should have been internal use only.
 * @param {string} src UTF-16 string
 * @returns {string} UTF-8 string
 */
const btou = (b) => b.replace(re_btou, cb_btou);
/**
 * polyfill version of `atob`
 */
const atobPolyfill = (asc) => {
    // console.log('polyfilled');
    asc = asc.replace(/\s+/g, '');
    if (!b64re.test(asc))
        throw new TypeError('malformed base64.');
    asc += '=='.slice(2 - (asc.length & 3));
    let u24, bin = '', r1, r2;
    for (let i = 0; i < asc.length;) {
        u24 = b64tab[asc.charAt(i++)] << 18
            | b64tab[asc.charAt(i++)] << 12
            | (r1 = b64tab[asc.charAt(i++)]) << 6
            | (r2 = b64tab[asc.charAt(i++)]);
        bin += r1 === 64 ? _fromCC(u24 >> 16 & 255)
            : r2 === 64 ? _fromCC(u24 >> 16 & 255, u24 >> 8 & 255)
                : _fromCC(u24 >> 16 & 255, u24 >> 8 & 255, u24 & 255);
    }
    return bin;
};
/**
 * does what `window.atob` of web browsers do.
 * @param {String} asc Base64-encoded string
 * @returns {string} binary string
 */
const _atob = _hasatob ? (asc) => atob(_tidyB64(asc))
    : _hasBuffer ? (asc) => Buffer.from(asc, 'base64').toString('binary')
        : atobPolyfill;
//
const _toUint8Array = _hasBuffer
    ? (a) => _U8Afrom(Buffer.from(a, 'base64'))
    : (a) => _U8Afrom(_atob(a), c => c.charCodeAt(0));
/**
 * converts a Base64 string to a Uint8Array.
 */
const toUint8Array = (a) => _toUint8Array(_unURI(a));
//
const _decode = _hasBuffer
    ? (a) => Buffer.from(a, 'base64').toString('utf8')
    : _TD
        ? (a) => _TD.decode(_toUint8Array(a))
        : (a) => btou(_atob(a));
const _unURI = (a) => _tidyB64(a.replace(/[-_]/g, (m0) => m0 == '-' ? '+' : '/'));
/**
 * converts a Base64 string to a UTF-8 string.
 * @param {String} src Base64 string.  Both normal and URL-safe are supported
 * @returns {string} UTF-8 string
 */
const decode = (src) => _decode(_unURI(src));
/**
 * check if a value is a valid Base64 string
 * @param {String} src a value to check
  */
const isValid = (src) => {
    if (typeof src !== 'string')
        return false;
    const s = src.replace(/\s+/g, '').replace(/={0,2}$/, '');
    return !/[^\s0-9a-zA-Z\+/]/.test(s) || !/[^\s0-9a-zA-Z\-_]/.test(s);
};
//
const _noEnum = (v) => {
    return {
        value: v, enumerable: false, writable: true, configurable: true
    };
};
/**
 * extend String.prototype with relevant methods
 */
const extendString = function () {
    const _add = (name, body) => Object.defineProperty(String.prototype, name, _noEnum(body));
    _add('fromBase64', function () { return decode(this); });
    _add('toBase64', function (urlsafe) { return encode(this, urlsafe); });
    _add('toBase64URI', function () { return encode(this, true); });
    _add('toBase64URL', function () { return encode(this, true); });
    _add('toUint8Array', function () { return toUint8Array(this); });
};
/**
 * extend Uint8Array.prototype with relevant methods
 */
const extendUint8Array = function () {
    const _add = (name, body) => Object.defineProperty(Uint8Array.prototype, name, _noEnum(body));
    _add('toBase64', function (urlsafe) { return fromUint8Array(this, urlsafe); });
    _add('toBase64URI', function () { return fromUint8Array(this, true); });
    _add('toBase64URL', function () { return fromUint8Array(this, true); });
};
/**
 * extend Builtin prototypes with relevant methods
 */
const extendBuiltins = () => {
    extendString();
    extendUint8Array();
};
const gBase64 = {
    version: version,
    VERSION: VERSION,
    atob: _atob,
    atobPolyfill: atobPolyfill,
    btoa: _btoa,
    btoaPolyfill: btoaPolyfill,
    fromBase64: decode,
    toBase64: encode,
    encode: encode,
    encodeURI: encodeURI,
    encodeURL: encodeURI,
    utob: utob,
    btou: btou,
    decode: decode,
    isValid: isValid,
    fromUint8Array: fromUint8Array,
    toUint8Array: toUint8Array,
    extendString: extendString,
    extendUint8Array: extendUint8Array,
    extendBuiltins: extendBuiltins,
};

/* Helper Functions
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function request(options, skipAuth) {
  if (!skipAuth) options.data.access_token = await getAccessToken();
  options.data.consumer_key = CONSUMER_KEY;
  const headers = new Headers({
    'X-Accept': 'application/json',
    'Content-Type': 'application/json'
  });
  const serverAuth = await getSetting('base_server_auth');

  if (serverAuth) {
    headers.append('Authorization', 'Basic ' + gBase64.encode(serverAuth));
  }

  const fetchSettings = {
    method: 'POST',
    headers: headers,
    body: JSON.stringify(options.data)
  };
  return fetch(API_URL + options.path, fetchSettings).then(handleErrors).then(response => response.json());
}

function handleErrors(response) {
  if (!response.ok) {
    const e = new Error('Request Error');
    e.name = response.status === 401 ? 'Auth' : 'Generic';
    throw e;
  }

  return response;
}

/* API CALLS - Should return promises
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function saveToPocket(saveObject) {
  return request({
    path: 'send/',
    data: {
      actions: [{
        action: 'add',
        url: saveObject.url,
        title: saveObject.title,
        ...saveObject.actionInfo,
        ...saveObject.additionalParams
      }]
    }
  }).then(response => {
    return response ? {
      saveObject,
      status: 'ok',
      response: response.action_results[0]
    } : undefined;
  });
}

/* API CALLS - Should return promises
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function getOnSaveTags(url) {
  return request({
    path: 'suggested_tags/',
    data: {
      url,
      version: 2
    }
  }).then(response => response);
}
function syncItemTags(id, tags, actionInfo) {
  return request({
    path: 'send/',
    data: {
      actions: [{
        action: 'tags_replace',
        item_id: id,
        tags,
        ...actionInfo
      }]
    }
  }).then(response => {
    return response ? {
      status: 'ok',
      response: response.action_results[0]
    } : undefined;
  });
}
function fetchStoredTags(since) {
  return request({
    path: 'get/',
    data: {
      tags: 1,
      taglist: 1,
      forcetaglist: 1,
      account: 1,
      since: since ? since : 0
    }
  }).then(response => response);
}

/* API CALLS - Should return promises
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function removeItem(itemId) {
  return request({
    path: 'send/',
    data: {
      actions: [{
        action: 'delete',
        item_id: itemId,
        type: 'page'
      }]
    }
  }).then(response => {
    return response ? {
      status: 'ok',
      response: response.action_results[0]
    } : undefined;
  });
}

/* API CALLS - Should return promises
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function authorize(response, userCookies) {
  return request({
    path: 'oauth/authorize/',
    data: {
      guid: response.guid,
      token: userCookies.token,
      user_id: userCookies.userId,
      account: '1',
      grant_type: 'extension'
    }
  }, true);
}

function getGuid() {
  return new Promise((resolve, reject) => {
    return Promise.all([getExtensionGuid(), getSiteGuid()]).then(resolvedValues => {
      if (arrayHasValues(resolvedValues).length) {
        // Extension Guid
        if (resolvedValues[0]) resolve({
          source: 'extension',
          guid: resolvedValues[0]
        }); // Site Guid

        if (resolvedValues[1]) resolve({
          source: 'site',
          guid: resolvedValues[1].value
        });
      } else {
        // Server Guid
        getServerGuid().then(data => resolve({
          source: 'server',
          guid: data.guid
        })).catch(err => reject(err));
      }
    }).catch(err => reject(err));
  });
}
function getServerGuid() {
  return request({
    path: 'guid',
    data: {
      abt: 1
    }
  });
}
function getExtensionGuid() {
  return new Promise(resolve => resolve(getSetting('guid')));
}
async function getSiteGuid() {
  const cookies = await chrome.cookies.get({
    url: 'https://getpocket.com/',
    name: 'sess_guid'
  });
  return cookies;
}

/* On successful save
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function saveSuccess(tabId, payload) {
  // Update toolbar icon
  const {
    resolved_url,
    given_url,
    isLink
  } = payload; // fetch image and title from above

  const url = resolved_url || given_url; //eslint-disable-line

  if (!isLink) setToolbarIcon(tabId, true); // Get item preview

  getItemPreview(tabId, payload); // Get list of users tags for typeahead

  getStoredTags(tabId); // Premium: Request suggested tags

  getTagSuggestions(url, tabId);
}
/* Derive item preview from save response
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function getItemPreview(tabId, payload) {
  const item = await deriveItemData(payload);
  chrome.tabs.sendMessage(tabId, {
    action: UPDATE_ITEM_PREVIEW,
    payload: {
      item
    }
  });
}
/* Get stored tags
–––––––––––––––––––––––––––––––––––––––––––––––––– */


async function getStoredTags(tabId) {
  // Check for server tags
  const fetchedSince = (await getSetting('tags_fetched_timestamp')) || 0;
  const fetchTags = await fetchStoredTags(fetchedSince);
  const fetchedTags = fetchTags ? fetchTags.tags || [] : [];
  const tagsFromSettings = await getSetting('tags_stored');
  const parsedTags = tagsFromSettings ? JSON.parse(tagsFromSettings) : [];
  const tags_stored = [...new Set([].concat(...parsedTags, ...fetchedTags))];
  const tags = JSON.stringify(tags_stored);
  setSettings({
    tags_stored: tags,
    tags_fetched_timestamp: Date.now()
  });
  chrome.tabs.sendMessage(tabId, {
    action: UPDATE_STORED_TAGS,
    payload: {
      tags: tags_stored
    }
  });
}
/* Get suggested tags for premium users
–––––––––––––––––––––––––––––––––––––––––––––––––– */


async function getTagSuggestions(url, tabId) {
  const premiumStatus = await getSetting('premium_status');
  if (premiumStatus !== '1') return;
  const response = await getOnSaveTags(url);
  const suggestedTags = response ? response.suggested_tags.map(tag => tag.tag) : [];

  if (response) {
    chrome.tabs.sendMessage(tabId, {
      action: SUGGESTED_TAGS_SUCCESS,
      payload: {
        suggestedTags
      }
    });
  }
}

var extension_description$e = {
	message: "Pocket-Erweiterung für Chrome – Die beste Methode zum Speichern von Artikeln, Videos und vielem mehr"
};
var heading_idle$e = {
	message: ""
};
var heading_saving$e = {
	message: "Speichern..."
};
var heading_saved$e = {
	message: "In Pocket gespeichert"
};
var heading_save_failed$e = {
	message: "Da ist etwas schiefgegangen."
};
var heading_removing$e = {
	message: "Wird entfernt ..."
};
var heading_removed$e = {
	message: "Entfernt"
};
var heading_remove_failed$e = {
	message: "Da ist etwas schiefgegangen."
};
var heading_tags_saving$e = {
	message: "Tags werden gespeichert …"
};
var heading_tags_saved$e = {
	message: "Tags gespeichert"
};
var heading_tags_failed$e = {
	message: "Da ist etwas schiefgegangen."
};
var heading_tags_error$e = {
	message: "Tags sind auf 25 Zeichen begrenzt."
};
var buttons_remove$e = {
	message: "Entfernen"
};
var buttons_mylist$e = {
	message: "Meine Liste"
};
var buttons_save$e = {
	message: "Speichern"
};
var context_menu_open_list$e = {
	message: "Deine Pocket-Liste öffnen"
};
var context_menu_discover_more$e = {
	message: "Entdecke noch mehr interessante Inhalte auf Pocket"
};
var context_menu_log_in$e = {
	message: "Einloggen"
};
var context_menu_log_out$e = {
	message: "Ausloggen"
};
var context_menu_save$e = {
	message: "In Pocket speichern"
};
var tagging_add_tags$e = {
	message: "Tags hinzufügen"
};
var options_header$e = {
	message: "Erweiterung zum Speichern in Pocket"
};
var options_login_title$e = {
	message: "Eingeloggt als"
};
var options_log_out$e = {
	message: "Ausloggen"
};
var options_log_in$e = {
	message: "Einloggen"
};
var options_shortcut_title$e = {
	message: "Tastenkombination"
};
var options_shortcut_record$e = {
	message: "Neue Tastenkombination festlegen"
};
var options_theme_title$e = {
	message: "Modus"
};
var options_theme_light$e = {
	message: "Hell"
};
var options_theme_dark$e = {
	message: "Dunkel"
};
var options_theme_system$e = {
	message: "Systemeinstellung verwenden"
};
var options_app_title$e = {
	message: "Die mobile Pocket-App"
};
var options_app_apple$e = {
	message: "Im Apple App Store herunterladen"
};
var options_app_google$e = {
	message: "In Google Play herunterladen"
};
var options_need_help$e = {
	message: "Du brauchst Hilfe?"
};
var options_email_us$e = {
	message: "Schreibe uns eine E-Mail"
};
var options_follow$e = {
	message: "Jetzt Pocket folgen"
};
var options_family$e = {
	message: "Pocket gehört zur Mozilla-Produktfamilie."
};
var options_privacy$e = {
	message: "Datenschutzrichtlinie"
};
var options_terms$e = {
	message: "AGB"
};
var de = {
	extension_description: extension_description$e,
	heading_idle: heading_idle$e,
	heading_saving: heading_saving$e,
	heading_saved: heading_saved$e,
	heading_save_failed: heading_save_failed$e,
	heading_removing: heading_removing$e,
	heading_removed: heading_removed$e,
	heading_remove_failed: heading_remove_failed$e,
	heading_tags_saving: heading_tags_saving$e,
	heading_tags_saved: heading_tags_saved$e,
	heading_tags_failed: heading_tags_failed$e,
	heading_tags_error: heading_tags_error$e,
	buttons_remove: buttons_remove$e,
	buttons_mylist: buttons_mylist$e,
	buttons_save: buttons_save$e,
	context_menu_open_list: context_menu_open_list$e,
	context_menu_discover_more: context_menu_discover_more$e,
	context_menu_log_in: context_menu_log_in$e,
	context_menu_log_out: context_menu_log_out$e,
	context_menu_save: context_menu_save$e,
	tagging_add_tags: tagging_add_tags$e,
	options_header: options_header$e,
	options_login_title: options_login_title$e,
	options_log_out: options_log_out$e,
	options_log_in: options_log_in$e,
	options_shortcut_title: options_shortcut_title$e,
	options_shortcut_record: options_shortcut_record$e,
	options_theme_title: options_theme_title$e,
	options_theme_light: options_theme_light$e,
	options_theme_dark: options_theme_dark$e,
	options_theme_system: options_theme_system$e,
	options_app_title: options_app_title$e,
	options_app_apple: options_app_apple$e,
	options_app_google: options_app_google$e,
	options_need_help: options_need_help$e,
	options_email_us: options_email_us$e,
	options_follow: options_follow$e,
	options_family: options_family$e,
	options_privacy: options_privacy$e,
	options_terms: options_terms$e
};

var extension_description$d = {
	message: "The easiest, fastest way to capture articles, videos, and more."
};
var heading_idle$d = {
	message: ""
};
var heading_saving$d = {
	message: "Saving..."
};
var heading_saved$d = {
	message: "Saved to Pocket"
};
var heading_save_failed$d = {
	message: "Something went wrong!"
};
var heading_removing$d = {
	message: "Removing..."
};
var heading_removed$d = {
	message: "Removed"
};
var heading_remove_failed$d = {
	message: "Something went wrong!"
};
var heading_tags_saving$d = {
	message: "Saving tags..."
};
var heading_tags_saved$d = {
	message: "Tags saved"
};
var heading_tags_failed$d = {
	message: "Something went wrong!"
};
var heading_tags_error$d = {
	message: "Tags are limited to 25 characters"
};
var buttons_remove$d = {
	message: "Remove"
};
var buttons_mylist$d = {
	message: "My List"
};
var buttons_save$d = {
	message: "Save"
};
var context_menu_open_list$d = {
	message: "Open Your Pocket List"
};
var context_menu_discover_more$d = {
	message: "Discover more at Pocket"
};
var context_menu_log_in$d = {
	message: "Log In"
};
var context_menu_log_out$d = {
	message: "Log Out"
};
var context_menu_save$d = {
	message: "Save To Pocket"
};
var tagging_add_tags$d = {
	message: "Add Tags"
};
var options_header$d = {
	message: "Save to Pocket extension"
};
var options_login_title$d = {
	message: "Logged in as"
};
var options_log_out$d = {
	message: "Log out"
};
var options_log_in$d = {
	message: "Log in"
};
var options_shortcut_title$d = {
	message: "Keyboard Shortcut"
};
var options_shortcut_record$d = {
	message: "Record a new shortcut"
};
var options_theme_title$d = {
	message: "Theme"
};
var options_theme_light$d = {
	message: "Light"
};
var options_theme_dark$d = {
	message: "Dark"
};
var options_theme_system$d = {
	message: "Use System Setting"
};
var options_app_title$d = {
	message: "Pocket’s Mobile App"
};
var options_app_apple$d = {
	message: "Download on the Apple App Store"
};
var options_app_google$d = {
	message: "Get it on Google Play"
};
var options_need_help$d = {
	message: "Need Help?"
};
var options_email_us$d = {
	message: "Email Us"
};
var options_follow$d = {
	message: "Follow Pocket"
};
var options_family$d = {
	message: "Pocket is part of the Mozilla family of products."
};
var options_privacy$d = {
	message: "Privacy policy"
};
var options_terms$d = {
	message: "Terms of service"
};
var en = {
	extension_description: extension_description$d,
	heading_idle: heading_idle$d,
	heading_saving: heading_saving$d,
	heading_saved: heading_saved$d,
	heading_save_failed: heading_save_failed$d,
	heading_removing: heading_removing$d,
	heading_removed: heading_removed$d,
	heading_remove_failed: heading_remove_failed$d,
	heading_tags_saving: heading_tags_saving$d,
	heading_tags_saved: heading_tags_saved$d,
	heading_tags_failed: heading_tags_failed$d,
	heading_tags_error: heading_tags_error$d,
	buttons_remove: buttons_remove$d,
	buttons_mylist: buttons_mylist$d,
	buttons_save: buttons_save$d,
	context_menu_open_list: context_menu_open_list$d,
	context_menu_discover_more: context_menu_discover_more$d,
	context_menu_log_in: context_menu_log_in$d,
	context_menu_log_out: context_menu_log_out$d,
	context_menu_save: context_menu_save$d,
	tagging_add_tags: tagging_add_tags$d,
	options_header: options_header$d,
	options_login_title: options_login_title$d,
	options_log_out: options_log_out$d,
	options_log_in: options_log_in$d,
	options_shortcut_title: options_shortcut_title$d,
	options_shortcut_record: options_shortcut_record$d,
	options_theme_title: options_theme_title$d,
	options_theme_light: options_theme_light$d,
	options_theme_dark: options_theme_dark$d,
	options_theme_system: options_theme_system$d,
	options_app_title: options_app_title$d,
	options_app_apple: options_app_apple$d,
	options_app_google: options_app_google$d,
	options_need_help: options_need_help$d,
	options_email_us: options_email_us$d,
	options_follow: options_follow$d,
	options_family: options_family$d,
	options_privacy: options_privacy$d,
	options_terms: options_terms$d
};

var extension_description$c = {
	message: "La forma más fácil y rápida de capturar artículos, vídeos y mucho más."
};
var heading_idle$c = {
	message: ""
};
var heading_saving$c = {
	message: "Guardando…"
};
var heading_saved$c = {
	message: "Guardado en Pocket"
};
var heading_save_failed$c = {
	message: "¡Parece que algo ha ido mal!"
};
var heading_removing$c = {
	message: "Eliminando..."
};
var heading_removed$c = {
	message: "Eliminado"
};
var heading_remove_failed$c = {
	message: "¡Parece que algo ha ido mal!"
};
var heading_tags_saving$c = {
	message: "Guardando etiquetas..."
};
var heading_tags_saved$c = {
	message: "Etiquetas guardadas"
};
var heading_tags_failed$c = {
	message: "¡Parece que algo ha ido mal!"
};
var heading_tags_error$c = {
	message: "La longitud máxima de una etiqueta es 25 caracteres."
};
var buttons_remove$c = {
	message: "Eliminar"
};
var buttons_mylist$c = {
	message: "Mi lista"
};
var buttons_save$c = {
	message: "Guardar"
};
var context_menu_open_list$c = {
	message: "Abre tu lista de Pocket"
};
var context_menu_discover_more$c = {
	message: "Descubre más en Pocket"
};
var context_menu_log_in$c = {
	message: "Iniciar sesión"
};
var context_menu_log_out$c = {
	message: "Cerrar sesión"
};
var context_menu_save$c = {
	message: "Guardar en Pocket"
};
var tagging_add_tags$c = {
	message: "Añadir etiquetas"
};
var options_header$c = {
	message: "Extensión Guardar en Pocket"
};
var options_login_title$c = {
	message: "Has iniciado sesión como"
};
var options_log_out$c = {
	message: "Cerrar sesión"
};
var options_log_in$c = {
	message: "Iniciar sesión"
};
var options_shortcut_title$c = {
	message: "Atajo de teclado"
};
var options_shortcut_record$c = {
	message: "Grabar un nuevo atajo"
};
var options_theme_title$c = {
	message: "Tema"
};
var options_theme_light$c = {
	message: "Claro"
};
var options_theme_dark$c = {
	message: "Oscuro"
};
var options_theme_system$c = {
	message: "Usar configuración del sistema"
};
var options_app_title$c = {
	message: "Aplicación móvil de Pocket"
};
var options_app_apple$c = {
	message: "Descargar en la App Store de Apple"
};
var options_app_google$c = {
	message: "Consíguela en Google Play"
};
var options_need_help$c = {
	message: "¿Necesitas ayuda?"
};
var options_email_us$c = {
	message: "Envíanos un correo"
};
var options_follow$c = {
	message: "Seguir a Pocket"
};
var options_family$c = {
	message: "Pocket es parte de la familia de productos de Mozilla."
};
var options_privacy$c = {
	message: "Política de privacidad"
};
var options_terms$c = {
	message: "Condiciones de servicio"
};
var es = {
	extension_description: extension_description$c,
	heading_idle: heading_idle$c,
	heading_saving: heading_saving$c,
	heading_saved: heading_saved$c,
	heading_save_failed: heading_save_failed$c,
	heading_removing: heading_removing$c,
	heading_removed: heading_removed$c,
	heading_remove_failed: heading_remove_failed$c,
	heading_tags_saving: heading_tags_saving$c,
	heading_tags_saved: heading_tags_saved$c,
	heading_tags_failed: heading_tags_failed$c,
	heading_tags_error: heading_tags_error$c,
	buttons_remove: buttons_remove$c,
	buttons_mylist: buttons_mylist$c,
	buttons_save: buttons_save$c,
	context_menu_open_list: context_menu_open_list$c,
	context_menu_discover_more: context_menu_discover_more$c,
	context_menu_log_in: context_menu_log_in$c,
	context_menu_log_out: context_menu_log_out$c,
	context_menu_save: context_menu_save$c,
	tagging_add_tags: tagging_add_tags$c,
	options_header: options_header$c,
	options_login_title: options_login_title$c,
	options_log_out: options_log_out$c,
	options_log_in: options_log_in$c,
	options_shortcut_title: options_shortcut_title$c,
	options_shortcut_record: options_shortcut_record$c,
	options_theme_title: options_theme_title$c,
	options_theme_light: options_theme_light$c,
	options_theme_dark: options_theme_dark$c,
	options_theme_system: options_theme_system$c,
	options_app_title: options_app_title$c,
	options_app_apple: options_app_apple$c,
	options_app_google: options_app_google$c,
	options_need_help: options_need_help$c,
	options_email_us: options_email_us$c,
	options_follow: options_follow$c,
	options_family: options_family$c,
	options_privacy: options_privacy$c,
	options_terms: options_terms$c
};

var extension_description$b = {
	message: "La forma más fácil y rápida de capturar artículos, videos y más."
};
var heading_idle$b = {
	message: ""
};
var heading_saving$b = {
	message: "Guardando..."
};
var heading_saved$b = {
	message: "Guardado en Pocket"
};
var heading_save_failed$b = {
	message: "¡Se produjo un error!"
};
var heading_removing$b = {
	message: "Eliminando..."
};
var heading_removed$b = {
	message: "Eliminado"
};
var heading_remove_failed$b = {
	message: "¡Se produjo un error!"
};
var heading_tags_saving$b = {
	message: "Guardando etiquetas..."
};
var heading_tags_saved$b = {
	message: "Etiquetas guardadas"
};
var heading_tags_failed$b = {
	message: "¡Se produjo un error!"
};
var heading_tags_error$b = {
	message: "Las etiquetas se limitan a 25 caracteres"
};
var buttons_remove$b = {
	message: "Eliminar"
};
var buttons_mylist$b = {
	message: "Mi Lista"
};
var buttons_save$b = {
	message: "Guardar"
};
var context_menu_open_list$b = {
	message: "Abre tu lista de Pocket"
};
var context_menu_discover_more$b = {
	message: "Descubre más en Pocket"
};
var context_menu_log_in$b = {
	message: "Iniciar sesión"
};
var context_menu_log_out$b = {
	message: "Finalizar sesión"
};
var context_menu_save$b = {
	message: "Guardar en Pocket"
};
var tagging_add_tags$b = {
	message: "Agregar Etiquetas"
};
var options_header$b = {
	message: "Extensión para guardar en Pocket"
};
var options_login_title$b = {
	message: "Iniciaste sesión como"
};
var options_log_out$b = {
	message: "Cerrar sesión"
};
var options_log_in$b = {
	message: "Iniciar sesión"
};
var options_shortcut_title$b = {
	message: "Atajo de teclado"
};
var options_shortcut_record$b = {
	message: "Registra un nuevo atajo"
};
var options_theme_title$b = {
	message: "Tema"
};
var options_theme_light$b = {
	message: "Claro"
};
var options_theme_dark$b = {
	message: "Oscuro"
};
var options_theme_system$b = {
	message: "Usar configuración del sistema"
};
var options_app_title$b = {
	message: "Aplicación móvil de Pocket"
};
var options_app_apple$b = {
	message: "Descargar en el App Store de Apple"
};
var options_app_google$b = {
	message: "Obtenerlo en Google Play"
};
var options_need_help$b = {
	message: "¿Necesitas ayuda?"
};
var options_email_us$b = {
	message: "Envíanos un email"
};
var options_follow$b = {
	message: "Seguir a Pocket"
};
var options_family$b = {
	message: "Pocket forma parte de la familia de productos Mozilla."
};
var options_privacy$b = {
	message: "Política de privacidad"
};
var options_terms$b = {
	message: "Términos del Servicio"
};
var es_419 = {
	extension_description: extension_description$b,
	heading_idle: heading_idle$b,
	heading_saving: heading_saving$b,
	heading_saved: heading_saved$b,
	heading_save_failed: heading_save_failed$b,
	heading_removing: heading_removing$b,
	heading_removed: heading_removed$b,
	heading_remove_failed: heading_remove_failed$b,
	heading_tags_saving: heading_tags_saving$b,
	heading_tags_saved: heading_tags_saved$b,
	heading_tags_failed: heading_tags_failed$b,
	heading_tags_error: heading_tags_error$b,
	buttons_remove: buttons_remove$b,
	buttons_mylist: buttons_mylist$b,
	buttons_save: buttons_save$b,
	context_menu_open_list: context_menu_open_list$b,
	context_menu_discover_more: context_menu_discover_more$b,
	context_menu_log_in: context_menu_log_in$b,
	context_menu_log_out: context_menu_log_out$b,
	context_menu_save: context_menu_save$b,
	tagging_add_tags: tagging_add_tags$b,
	options_header: options_header$b,
	options_login_title: options_login_title$b,
	options_log_out: options_log_out$b,
	options_log_in: options_log_in$b,
	options_shortcut_title: options_shortcut_title$b,
	options_shortcut_record: options_shortcut_record$b,
	options_theme_title: options_theme_title$b,
	options_theme_light: options_theme_light$b,
	options_theme_dark: options_theme_dark$b,
	options_theme_system: options_theme_system$b,
	options_app_title: options_app_title$b,
	options_app_apple: options_app_apple$b,
	options_app_google: options_app_google$b,
	options_need_help: options_need_help$b,
	options_email_us: options_email_us$b,
	options_follow: options_follow$b,
	options_family: options_family$b,
	options_privacy: options_privacy$b,
	options_terms: options_terms$b
};

var extension_description$a = {
	message: "Le moyen le plus facile et le plus rapide de sauvegarder des articles, des vidéos et bien plus encore."
};
var heading_idle$a = {
	message: ""
};
var heading_saving$a = {
	message: "Sauvegarde..."
};
var heading_saved$a = {
	message: "Sauvegardé dans Pocket"
};
var heading_save_failed$a = {
	message: "Un problème est survenu !"
};
var heading_removing$a = {
	message: "Suppression en cours..."
};
var heading_removed$a = {
	message: "Suppression effectuée"
};
var heading_remove_failed$a = {
	message: "Un problème est survenu !"
};
var heading_tags_saving$a = {
	message: "Sauvegarde des labels..."
};
var heading_tags_saved$a = {
	message: "Labels sauvegardés"
};
var heading_tags_failed$a = {
	message: "Un problème est survenu !"
};
var heading_tags_error$a = {
	message: "Les labels sont limités à 25 caractères"
};
var buttons_remove$a = {
	message: "Supprimer"
};
var buttons_mylist$a = {
	message: "Ma liste"
};
var buttons_save$a = {
	message: "Sauvegarder"
};
var context_menu_open_list$a = {
	message: "Ouvrez votre liste Pocket"
};
var context_menu_discover_more$a = {
	message: "Découvrez-en plus sur Pocket"
};
var context_menu_log_in$a = {
	message: "Se connecter"
};
var context_menu_log_out$a = {
	message: "Déconnexion"
};
var context_menu_save$a = {
	message: "Sauvegarder dans Pocket"
};
var tagging_add_tags$a = {
	message: "Ajouter des labels"
};
var options_header$a = {
	message: "Extension Sauvegarder dans Pocket"
};
var options_login_title$a = {
	message: "Connecté(e) en tant que"
};
var options_log_out$a = {
	message: "Déconnexion"
};
var options_log_in$a = {
	message: "Se connecter"
};
var options_shortcut_title$a = {
	message: "Raccourci clavier"
};
var options_shortcut_record$a = {
	message: "Enregistrer un nouveau raccourci"
};
var options_theme_title$a = {
	message: "Thème"
};
var options_theme_light$a = {
	message: "Clair"
};
var options_theme_dark$a = {
	message: "Foncé"
};
var options_theme_system$a = {
	message: "Utiliser le paramètre système"
};
var options_app_title$a = {
	message: "Application mobile de Pocket"
};
var options_app_apple$a = {
	message: "Télécharger sur l'Apple Store"
};
var options_app_google$a = {
	message: "Télécharger sur Google Play"
};
var options_need_help$a = {
	message: "Besoin d'aide ?"
};
var options_email_us$a = {
	message: "Nous écrire"
};
var options_follow$a = {
	message: "Suivez Pocket"
};
var options_family$a = {
	message: "Pocket fait partie de la famille de produits Mozilla."
};
var options_privacy$a = {
	message: "Politique de confidentialité"
};
var options_terms$a = {
	message: "Conditions générales d'utilisation"
};
var fr = {
	extension_description: extension_description$a,
	heading_idle: heading_idle$a,
	heading_saving: heading_saving$a,
	heading_saved: heading_saved$a,
	heading_save_failed: heading_save_failed$a,
	heading_removing: heading_removing$a,
	heading_removed: heading_removed$a,
	heading_remove_failed: heading_remove_failed$a,
	heading_tags_saving: heading_tags_saving$a,
	heading_tags_saved: heading_tags_saved$a,
	heading_tags_failed: heading_tags_failed$a,
	heading_tags_error: heading_tags_error$a,
	buttons_remove: buttons_remove$a,
	buttons_mylist: buttons_mylist$a,
	buttons_save: buttons_save$a,
	context_menu_open_list: context_menu_open_list$a,
	context_menu_discover_more: context_menu_discover_more$a,
	context_menu_log_in: context_menu_log_in$a,
	context_menu_log_out: context_menu_log_out$a,
	context_menu_save: context_menu_save$a,
	tagging_add_tags: tagging_add_tags$a,
	options_header: options_header$a,
	options_login_title: options_login_title$a,
	options_log_out: options_log_out$a,
	options_log_in: options_log_in$a,
	options_shortcut_title: options_shortcut_title$a,
	options_shortcut_record: options_shortcut_record$a,
	options_theme_title: options_theme_title$a,
	options_theme_light: options_theme_light$a,
	options_theme_dark: options_theme_dark$a,
	options_theme_system: options_theme_system$a,
	options_app_title: options_app_title$a,
	options_app_apple: options_app_apple$a,
	options_app_google: options_app_google$a,
	options_need_help: options_need_help$a,
	options_email_us: options_email_us$a,
	options_follow: options_follow$a,
	options_family: options_family$a,
	options_privacy: options_privacy$a,
	options_terms: options_terms$a
};

var extension_description$9 = {
	message: "Il modo più semplice e veloce per raccogliere articoli, video e molto altro."
};
var heading_idle$9 = {
	message: ""
};
var heading_saving$9 = {
	message: "Salvataggio..."
};
var heading_saved$9 = {
	message: "Salvato in Pocket"
};
var heading_save_failed$9 = {
	message: "Qualcosa non ha funzionato."
};
var heading_removing$9 = {
	message: "Rimozione in corso…"
};
var heading_removed$9 = {
	message: "Rimosso"
};
var heading_remove_failed$9 = {
	message: "Qualcosa non ha funzionato."
};
var heading_tags_saving$9 = {
	message: "Salvataggio tag in corso..."
};
var heading_tags_saved$9 = {
	message: "Tag salvati"
};
var heading_tags_failed$9 = {
	message: "Qualcosa non ha funzionato."
};
var heading_tags_error$9 = {
	message: "I tag hanno un limite di 25 caratteri"
};
var buttons_remove$9 = {
	message: "Elimina"
};
var buttons_mylist$9 = {
	message: "Il mio elenco"
};
var buttons_save$9 = {
	message: "Salva"
};
var context_menu_open_list$9 = {
	message: "Apri il tuo elenco Pocket"
};
var context_menu_discover_more$9 = {
	message: "Scopri di più con Pocket"
};
var context_menu_log_in$9 = {
	message: "Accedi"
};
var context_menu_log_out$9 = {
	message: "Esci"
};
var context_menu_save$9 = {
	message: "Salva in Pocket"
};
var tagging_add_tags$9 = {
	message: "Aggiungi tag"
};
var options_header$9 = {
	message: "Estensione Salva in Pocket"
};
var options_login_title$9 = {
	message: "Accesso eseguito come"
};
var options_log_out$9 = {
	message: "Esci"
};
var options_log_in$9 = {
	message: "Accedi"
};
var options_shortcut_title$9 = {
	message: "Scelta rapida da tastiera"
};
var options_shortcut_record$9 = {
	message: "Memorizza un nuovo tasto di scelta rapida"
};
var options_theme_title$9 = {
	message: "Tema"
};
var options_theme_light$9 = {
	message: "Chiaro"
};
var options_theme_dark$9 = {
	message: "Scuro"
};
var options_theme_system$9 = {
	message: "Usa impostazione di sistema"
};
var options_app_title$9 = {
	message: "App per dispositivi mobili Pocket"
};
var options_app_apple$9 = {
	message: "Scarica dall'App Store di Apple"
};
var options_app_google$9 = {
	message: "Scaricalo da Google Play"
};
var options_need_help$9 = {
	message: "Hai bisogno di aiuto?"
};
var options_email_us$9 = {
	message: "Scrivi un'email"
};
var options_follow$9 = {
	message: "Segui Pocket"
};
var options_family$9 = {
	message: "Pocket fa parte della famiglia di prodotti Mozilla."
};
var options_privacy$9 = {
	message: "Tutela della privacy"
};
var options_terms$9 = {
	message: "Condizioni d'uso"
};
var it = {
	extension_description: extension_description$9,
	heading_idle: heading_idle$9,
	heading_saving: heading_saving$9,
	heading_saved: heading_saved$9,
	heading_save_failed: heading_save_failed$9,
	heading_removing: heading_removing$9,
	heading_removed: heading_removed$9,
	heading_remove_failed: heading_remove_failed$9,
	heading_tags_saving: heading_tags_saving$9,
	heading_tags_saved: heading_tags_saved$9,
	heading_tags_failed: heading_tags_failed$9,
	heading_tags_error: heading_tags_error$9,
	buttons_remove: buttons_remove$9,
	buttons_mylist: buttons_mylist$9,
	buttons_save: buttons_save$9,
	context_menu_open_list: context_menu_open_list$9,
	context_menu_discover_more: context_menu_discover_more$9,
	context_menu_log_in: context_menu_log_in$9,
	context_menu_log_out: context_menu_log_out$9,
	context_menu_save: context_menu_save$9,
	tagging_add_tags: tagging_add_tags$9,
	options_header: options_header$9,
	options_login_title: options_login_title$9,
	options_log_out: options_log_out$9,
	options_log_in: options_log_in$9,
	options_shortcut_title: options_shortcut_title$9,
	options_shortcut_record: options_shortcut_record$9,
	options_theme_title: options_theme_title$9,
	options_theme_light: options_theme_light$9,
	options_theme_dark: options_theme_dark$9,
	options_theme_system: options_theme_system$9,
	options_app_title: options_app_title$9,
	options_app_apple: options_app_apple$9,
	options_app_google: options_app_google$9,
	options_need_help: options_need_help$9,
	options_email_us: options_email_us$9,
	options_follow: options_follow$9,
	options_family: options_family$9,
	options_privacy: options_privacy$9,
	options_terms: options_terms$9
};

var extension_description$8 = {
	message: "記事、ビデオなどをキャプチャする最も速く簡単な方法です。"
};
var heading_idle$8 = {
	message: ""
};
var heading_saving$8 = {
	message: "保存中..."
};
var heading_saved$8 = {
	message: "Pocket に保存済み"
};
var heading_save_failed$8 = {
	message: "エラーが発生したようです。"
};
var heading_removing$8 = {
	message: "削除しています..."
};
var heading_removed$8 = {
	message: "削除されました"
};
var heading_remove_failed$8 = {
	message: "エラーが発生したようです。"
};
var heading_tags_saving$8 = {
	message: "タグを保存しています..."
};
var heading_tags_saved$8 = {
	message: "タグが保存されました"
};
var heading_tags_failed$8 = {
	message: "エラーが発生したようです。"
};
var heading_tags_error$8 = {
	message: "タグは最大25文字となっています"
};
var buttons_remove$8 = {
	message: "削除"
};
var buttons_mylist$8 = {
	message: "マイリスト"
};
var buttons_save$8 = {
	message: "保存"
};
var context_menu_open_list$8 = {
	message: "Pocket リストを開く"
};
var context_menu_discover_more$8 = {
	message: "Pocket で他のコンテンツを発見"
};
var context_menu_log_in$8 = {
	message: "ログイン"
};
var context_menu_log_out$8 = {
	message: "ログアウト"
};
var context_menu_save$8 = {
	message: "Pocket に保存"
};
var tagging_add_tags$8 = {
	message: "タグを追加"
};
var options_header$8 = {
	message: "「Pocket に保存」拡張機能"
};
var options_login_title$8 = {
	message: "次のユーザー名でログイン中："
};
var options_log_out$8 = {
	message: "ログアウト"
};
var options_log_in$8 = {
	message: "ログイン"
};
var options_shortcut_title$8 = {
	message: "キーボードショートカット"
};
var options_shortcut_record$8 = {
	message: "新しいショートカットを記録"
};
var options_theme_title$8 = {
	message: "テーマ"
};
var options_theme_light$8 = {
	message: "ライト"
};
var options_theme_dark$8 = {
	message: "ダーク"
};
var options_theme_system$8 = {
	message: "システム設定を使用する"
};
var options_app_title$8 = {
	message: "Pocket モバイルアプリ"
};
var options_app_apple$8 = {
	message: "Apple App Store でダウンロード"
};
var options_app_google$8 = {
	message: "Google Playからダウンロード"
};
var options_need_help$8 = {
	message: "お困りですか？"
};
var options_email_us$8 = {
	message: "メールでお問い合わせ"
};
var options_follow$8 = {
	message: "Pocket をフォロー"
};
var options_family$8 = {
	message: "Pocket は Mozilla 製品ファミリーの一部です。"
};
var options_privacy$8 = {
	message: "プライバシーポリシー"
};
var options_terms$8 = {
	message: "サービス利用規約"
};
var ja = {
	extension_description: extension_description$8,
	heading_idle: heading_idle$8,
	heading_saving: heading_saving$8,
	heading_saved: heading_saved$8,
	heading_save_failed: heading_save_failed$8,
	heading_removing: heading_removing$8,
	heading_removed: heading_removed$8,
	heading_remove_failed: heading_remove_failed$8,
	heading_tags_saving: heading_tags_saving$8,
	heading_tags_saved: heading_tags_saved$8,
	heading_tags_failed: heading_tags_failed$8,
	heading_tags_error: heading_tags_error$8,
	buttons_remove: buttons_remove$8,
	buttons_mylist: buttons_mylist$8,
	buttons_save: buttons_save$8,
	context_menu_open_list: context_menu_open_list$8,
	context_menu_discover_more: context_menu_discover_more$8,
	context_menu_log_in: context_menu_log_in$8,
	context_menu_log_out: context_menu_log_out$8,
	context_menu_save: context_menu_save$8,
	tagging_add_tags: tagging_add_tags$8,
	options_header: options_header$8,
	options_login_title: options_login_title$8,
	options_log_out: options_log_out$8,
	options_log_in: options_log_in$8,
	options_shortcut_title: options_shortcut_title$8,
	options_shortcut_record: options_shortcut_record$8,
	options_theme_title: options_theme_title$8,
	options_theme_light: options_theme_light$8,
	options_theme_dark: options_theme_dark$8,
	options_theme_system: options_theme_system$8,
	options_app_title: options_app_title$8,
	options_app_apple: options_app_apple$8,
	options_app_google: options_app_google$8,
	options_need_help: options_need_help$8,
	options_email_us: options_email_us$8,
	options_follow: options_follow$8,
	options_family: options_family$8,
	options_privacy: options_privacy$8,
	options_terms: options_terms$8
};

var extension_description$7 = {
	message: "아티클, 동영상 등을 캡처하는 가장 쉽고 가장 빠른 방법."
};
var heading_idle$7 = {
	message: ""
};
var heading_saving$7 = {
	message: "저장 중..."
};
var heading_saved$7 = {
	message: "Pocket에 저장됨"
};
var heading_save_failed$7 = {
	message: "문제가 발생했습니다!"
};
var heading_removing$7 = {
	message: "제거 중..."
};
var heading_removed$7 = {
	message: "제거됨"
};
var heading_remove_failed$7 = {
	message: "문제가 발생했습니다!"
};
var heading_tags_saving$7 = {
	message: "태그 저장 중..."
};
var heading_tags_saved$7 = {
	message: "태그 저장됨"
};
var heading_tags_failed$7 = {
	message: "문제가 발생했습니다!"
};
var heading_tags_error$7 = {
	message: "태그는 25자로 제한됩니다."
};
var buttons_remove$7 = {
	message: "제거하기"
};
var buttons_mylist$7 = {
	message: "내 목록"
};
var buttons_save$7 = {
	message: "저장"
};
var context_menu_open_list$7 = {
	message: "Pocket 목록 열기"
};
var context_menu_discover_more$7 = {
	message: "Pocket에서 더 찾기"
};
var context_menu_log_in$7 = {
	message: "로그인"
};
var context_menu_log_out$7 = {
	message: "로그아웃"
};
var context_menu_save$7 = {
	message: "Pocket에 저장"
};
var tagging_add_tags$7 = {
	message: "태그 추가"
};
var options_header$7 = {
	message: "Pocket 확장에 저장"
};
var options_login_title$7 = {
	message: "다음 이름으로 로그인됨"
};
var options_log_out$7 = {
	message: "로그아웃"
};
var options_log_in$7 = {
	message: "로그인"
};
var options_shortcut_title$7 = {
	message: "키보드 바로 가기"
};
var options_shortcut_record$7 = {
	message: "새 바로 가기 기록"
};
var options_theme_title$7 = {
	message: "테마"
};
var options_theme_light$7 = {
	message: "밝게"
};
var options_theme_dark$7 = {
	message: "어둡게"
};
var options_theme_system$7 = {
	message: "시스템 설정 사용"
};
var options_app_title$7 = {
	message: "Pocket 모바일 앱"
};
var options_app_apple$7 = {
	message: "Apple App Store에서 다운로드"
};
var options_app_google$7 = {
	message: "Google Play에서 다운로드"
};
var options_need_help$7 = {
	message: "도움이 필요하십니까?"
};
var options_email_us$7 = {
	message: "이메일 보내기"
};
var options_follow$7 = {
	message: "Pocket 팔로우"
};
var options_family$7 = {
	message: "Pocket은 Mozilla 제품군의 일부입니다."
};
var options_privacy$7 = {
	message: "개인정보 보호정책"
};
var options_terms$7 = {
	message: "서비스 약관"
};
var ko = {
	extension_description: extension_description$7,
	heading_idle: heading_idle$7,
	heading_saving: heading_saving$7,
	heading_saved: heading_saved$7,
	heading_save_failed: heading_save_failed$7,
	heading_removing: heading_removing$7,
	heading_removed: heading_removed$7,
	heading_remove_failed: heading_remove_failed$7,
	heading_tags_saving: heading_tags_saving$7,
	heading_tags_saved: heading_tags_saved$7,
	heading_tags_failed: heading_tags_failed$7,
	heading_tags_error: heading_tags_error$7,
	buttons_remove: buttons_remove$7,
	buttons_mylist: buttons_mylist$7,
	buttons_save: buttons_save$7,
	context_menu_open_list: context_menu_open_list$7,
	context_menu_discover_more: context_menu_discover_more$7,
	context_menu_log_in: context_menu_log_in$7,
	context_menu_log_out: context_menu_log_out$7,
	context_menu_save: context_menu_save$7,
	tagging_add_tags: tagging_add_tags$7,
	options_header: options_header$7,
	options_login_title: options_login_title$7,
	options_log_out: options_log_out$7,
	options_log_in: options_log_in$7,
	options_shortcut_title: options_shortcut_title$7,
	options_shortcut_record: options_shortcut_record$7,
	options_theme_title: options_theme_title$7,
	options_theme_light: options_theme_light$7,
	options_theme_dark: options_theme_dark$7,
	options_theme_system: options_theme_system$7,
	options_app_title: options_app_title$7,
	options_app_apple: options_app_apple$7,
	options_app_google: options_app_google$7,
	options_need_help: options_need_help$7,
	options_email_us: options_email_us$7,
	options_follow: options_follow$7,
	options_family: options_family$7,
	options_privacy: options_privacy$7,
	options_terms: options_terms$7
};

var extension_description$6 = {
	message: "De gemakkelijkste en snelste manier om artikelen, video's en meer op te slaan."
};
var heading_idle$6 = {
	message: ""
};
var heading_saving$6 = {
	message: "Opslaan..."
};
var heading_saved$6 = {
	message: "Opgeslagen naar Pocket"
};
var heading_save_failed$6 = {
	message: "Er is iets misgegaan!"
};
var heading_removing$6 = {
	message: "Verwijderen..."
};
var heading_removed$6 = {
	message: "Verwijderd"
};
var heading_remove_failed$6 = {
	message: "Er is iets misgegaan!"
};
var heading_tags_saving$6 = {
	message: "Tags opslaan..."
};
var heading_tags_saved$6 = {
	message: "Tags opgeslagen"
};
var heading_tags_failed$6 = {
	message: "Er is iets misgegaan!"
};
var heading_tags_error$6 = {
	message: "Tags zijn beperkt tot 25 tekens"
};
var buttons_remove$6 = {
	message: "Verwijderen"
};
var buttons_mylist$6 = {
	message: "Mijn lijst"
};
var buttons_save$6 = {
	message: "Opslaan"
};
var context_menu_open_list$6 = {
	message: "Pocket-lijst openen"
};
var context_menu_discover_more$6 = {
	message: "Ontdek meer op Pocket"
};
var context_menu_log_in$6 = {
	message: "Inloggen"
};
var context_menu_log_out$6 = {
	message: "Uitloggen"
};
var context_menu_save$6 = {
	message: "Opslaan naar Pocket"
};
var tagging_add_tags$6 = {
	message: "Tags toevoegen"
};
var options_header$6 = {
	message: "Extensie Naar Pocket opslaan"
};
var options_login_title$6 = {
	message: "Ingelogd als"
};
var options_log_out$6 = {
	message: "Afmelden"
};
var options_log_in$6 = {
	message: "Inloggen"
};
var options_shortcut_title$6 = {
	message: "Sneltoets"
};
var options_shortcut_record$6 = {
	message: "Een nieuwe snelkoppeling vastleggen"
};
var options_theme_title$6 = {
	message: "Thema"
};
var options_theme_light$6 = {
	message: "Licht"
};
var options_theme_dark$6 = {
	message: "Donker"
};
var options_theme_system$6 = {
	message: "Systeeminstelling gebruiken"
};
var options_app_title$6 = {
	message: "Mobiele Pocket-app"
};
var options_app_apple$6 = {
	message: "Downloaden in de appstore van Apple"
};
var options_app_google$6 = {
	message: "Downloaden via Google Play"
};
var options_need_help$6 = {
	message: "Hulp nodig?"
};
var options_email_us$6 = {
	message: "Mail ons"
};
var options_follow$6 = {
	message: "Volg Pocket"
};
var options_family$6 = {
	message: "Pocket maakt deel uit van de Mozilla-productfamilie."
};
var options_privacy$6 = {
	message: "Privacybeleid"
};
var options_terms$6 = {
	message: "Gebruiksvoorwaarden"
};
var nl = {
	extension_description: extension_description$6,
	heading_idle: heading_idle$6,
	heading_saving: heading_saving$6,
	heading_saved: heading_saved$6,
	heading_save_failed: heading_save_failed$6,
	heading_removing: heading_removing$6,
	heading_removed: heading_removed$6,
	heading_remove_failed: heading_remove_failed$6,
	heading_tags_saving: heading_tags_saving$6,
	heading_tags_saved: heading_tags_saved$6,
	heading_tags_failed: heading_tags_failed$6,
	heading_tags_error: heading_tags_error$6,
	buttons_remove: buttons_remove$6,
	buttons_mylist: buttons_mylist$6,
	buttons_save: buttons_save$6,
	context_menu_open_list: context_menu_open_list$6,
	context_menu_discover_more: context_menu_discover_more$6,
	context_menu_log_in: context_menu_log_in$6,
	context_menu_log_out: context_menu_log_out$6,
	context_menu_save: context_menu_save$6,
	tagging_add_tags: tagging_add_tags$6,
	options_header: options_header$6,
	options_login_title: options_login_title$6,
	options_log_out: options_log_out$6,
	options_log_in: options_log_in$6,
	options_shortcut_title: options_shortcut_title$6,
	options_shortcut_record: options_shortcut_record$6,
	options_theme_title: options_theme_title$6,
	options_theme_light: options_theme_light$6,
	options_theme_dark: options_theme_dark$6,
	options_theme_system: options_theme_system$6,
	options_app_title: options_app_title$6,
	options_app_apple: options_app_apple$6,
	options_app_google: options_app_google$6,
	options_need_help: options_need_help$6,
	options_email_us: options_email_us$6,
	options_follow: options_follow$6,
	options_family: options_family$6,
	options_privacy: options_privacy$6,
	options_terms: options_terms$6
};

var extension_description$5 = {
	message: "Najłatwiejsza i najszybsza metoda zapisywania artykułów, filmów i innych treści."
};
var heading_idle$5 = {
	message: ""
};
var heading_saving$5 = {
	message: "Zapisywanie..."
};
var heading_saved$5 = {
	message: "Zapisano w aplikacji Pocket"
};
var heading_save_failed$5 = {
	message: "Wystąpił problem."
};
var heading_removing$5 = {
	message: "Usuwanie..."
};
var heading_removed$5 = {
	message: "Usunięto"
};
var heading_remove_failed$5 = {
	message: "Wystąpił problem."
};
var heading_tags_saving$5 = {
	message: "Zapisywanie tagów..."
};
var heading_tags_saved$5 = {
	message: "Zapisano tagi"
};
var heading_tags_failed$5 = {
	message: "Wystąpił problem."
};
var heading_tags_error$5 = {
	message: "Tagi mogą mieć maksymalnie 25 znaków"
};
var buttons_remove$5 = {
	message: "Usuń"
};
var buttons_mylist$5 = {
	message: "Moja lista"
};
var buttons_save$5 = {
	message: "Zapisz"
};
var context_menu_open_list$5 = {
	message: "Otwórz swoją listę Pocket"
};
var context_menu_discover_more$5 = {
	message: "Odkryj więcej w Pocket"
};
var context_menu_log_in$5 = {
	message: "Zaloguj się"
};
var context_menu_log_out$5 = {
	message: "Wyloguj się"
};
var context_menu_save$5 = {
	message: "Zapisz w aplikacji Pocket"
};
var tagging_add_tags$5 = {
	message: "Dodaj tagi"
};
var options_header$5 = {
	message: "Rozszerzenie Zapisz do Pocket"
};
var options_login_title$5 = {
	message: "Zalogowano jako"
};
var options_log_out$5 = {
	message: "Wyloguj się"
};
var options_log_in$5 = {
	message: "Zaloguj się"
};
var options_shortcut_title$5 = {
	message: "Skrót klawiaturowy"
};
var options_shortcut_record$5 = {
	message: "Zarejestruj nowy skrót"
};
var options_theme_title$5 = {
	message: "Motyw"
};
var options_theme_light$5 = {
	message: "Jasny"
};
var options_theme_dark$5 = {
	message: "Ciemny"
};
var options_theme_system$5 = {
	message: "Użyj ustawienia systemowego"
};
var options_app_title$5 = {
	message: "Aplikacja mobilna Pocket"
};
var options_app_apple$5 = {
	message: "Pobierz z serwisu Apple App Store"
};
var options_app_google$5 = {
	message: "Pobierz z serwisu Google Play"
};
var options_need_help$5 = {
	message: "Potrzebna pomoc?"
};
var options_email_us$5 = {
	message: "Napisz do nas wiadomość e-mail"
};
var options_follow$5 = {
	message: "Obserwuj Pocket"
};
var options_family$5 = {
	message: "Pocket należy do rodziny produktów Mozilla."
};
var options_privacy$5 = {
	message: "Zasady ochrony prywatności"
};
var options_terms$5 = {
	message: "Warunki użytkowania usługi"
};
var pl = {
	extension_description: extension_description$5,
	heading_idle: heading_idle$5,
	heading_saving: heading_saving$5,
	heading_saved: heading_saved$5,
	heading_save_failed: heading_save_failed$5,
	heading_removing: heading_removing$5,
	heading_removed: heading_removed$5,
	heading_remove_failed: heading_remove_failed$5,
	heading_tags_saving: heading_tags_saving$5,
	heading_tags_saved: heading_tags_saved$5,
	heading_tags_failed: heading_tags_failed$5,
	heading_tags_error: heading_tags_error$5,
	buttons_remove: buttons_remove$5,
	buttons_mylist: buttons_mylist$5,
	buttons_save: buttons_save$5,
	context_menu_open_list: context_menu_open_list$5,
	context_menu_discover_more: context_menu_discover_more$5,
	context_menu_log_in: context_menu_log_in$5,
	context_menu_log_out: context_menu_log_out$5,
	context_menu_save: context_menu_save$5,
	tagging_add_tags: tagging_add_tags$5,
	options_header: options_header$5,
	options_login_title: options_login_title$5,
	options_log_out: options_log_out$5,
	options_log_in: options_log_in$5,
	options_shortcut_title: options_shortcut_title$5,
	options_shortcut_record: options_shortcut_record$5,
	options_theme_title: options_theme_title$5,
	options_theme_light: options_theme_light$5,
	options_theme_dark: options_theme_dark$5,
	options_theme_system: options_theme_system$5,
	options_app_title: options_app_title$5,
	options_app_apple: options_app_apple$5,
	options_app_google: options_app_google$5,
	options_need_help: options_need_help$5,
	options_email_us: options_email_us$5,
	options_follow: options_follow$5,
	options_family: options_family$5,
	options_privacy: options_privacy$5,
	options_terms: options_terms$5
};

var extension_description$4 = {
	message: "A maneira mais fácil e rápida de salvar artigos, vídeos e muito mais."
};
var heading_idle$4 = {
	message: ""
};
var heading_saving$4 = {
	message: "Salvando…"
};
var heading_saved$4 = {
	message: "Salvo no Pocket"
};
var heading_save_failed$4 = {
	message: "Ocorreu um erro!"
};
var heading_removing$4 = {
	message: "Removendo..."
};
var heading_removed$4 = {
	message: "Removido"
};
var heading_remove_failed$4 = {
	message: "Ocorreu um erro!"
};
var heading_tags_saving$4 = {
	message: "Salvando tags..."
};
var heading_tags_saved$4 = {
	message: "Tags salvas"
};
var heading_tags_failed$4 = {
	message: "Ocorreu um erro!"
};
var heading_tags_error$4 = {
	message: "As tags têm um limite de 25 caracteres"
};
var buttons_remove$4 = {
	message: "Remover"
};
var buttons_mylist$4 = {
	message: "Minha Lista"
};
var buttons_save$4 = {
	message: "Salvar"
};
var context_menu_open_list$4 = {
	message: "Abra sua lista do Pocket"
};
var context_menu_discover_more$4 = {
	message: "Descubra mais no Pocket"
};
var context_menu_log_in$4 = {
	message: "Entrar"
};
var context_menu_log_out$4 = {
	message: "Sair"
};
var context_menu_save$4 = {
	message: "Salvar no Pocket"
};
var tagging_add_tags$4 = {
	message: "Adicionar tags"
};
var options_header$4 = {
	message: "Extensão Salvar no Pocket"
};
var options_login_title$4 = {
	message: "Conectado como"
};
var options_log_out$4 = {
	message: "Sair"
};
var options_log_in$4 = {
	message: "Entrar"
};
var options_shortcut_title$4 = {
	message: "Atalho do teclado"
};
var options_shortcut_record$4 = {
	message: "Gravar um novo atalho"
};
var options_theme_title$4 = {
	message: "Tema"
};
var options_theme_light$4 = {
	message: "Claro"
};
var options_theme_dark$4 = {
	message: "Escuro"
};
var options_theme_system$4 = {
	message: "Usar a configuração do sistema"
};
var options_app_title$4 = {
	message: "Aplicativo móvel do Pocket"
};
var options_app_apple$4 = {
	message: "Baixe o aplicativo na App Store da Apple"
};
var options_app_google$4 = {
	message: "Baixar no Google Play"
};
var options_need_help$4 = {
	message: "Precisa de ajuda?"
};
var options_email_us$4 = {
	message: "Envie-nos um e-mail"
};
var options_follow$4 = {
	message: "Siga o Pocket"
};
var options_family$4 = {
	message: "O Pocket faz parte da linha de produtos da Mozilla."
};
var options_privacy$4 = {
	message: "Política de privacidade"
};
var options_terms$4 = {
	message: "Termos de serviço"
};
var pt_BR = {
	extension_description: extension_description$4,
	heading_idle: heading_idle$4,
	heading_saving: heading_saving$4,
	heading_saved: heading_saved$4,
	heading_save_failed: heading_save_failed$4,
	heading_removing: heading_removing$4,
	heading_removed: heading_removed$4,
	heading_remove_failed: heading_remove_failed$4,
	heading_tags_saving: heading_tags_saving$4,
	heading_tags_saved: heading_tags_saved$4,
	heading_tags_failed: heading_tags_failed$4,
	heading_tags_error: heading_tags_error$4,
	buttons_remove: buttons_remove$4,
	buttons_mylist: buttons_mylist$4,
	buttons_save: buttons_save$4,
	context_menu_open_list: context_menu_open_list$4,
	context_menu_discover_more: context_menu_discover_more$4,
	context_menu_log_in: context_menu_log_in$4,
	context_menu_log_out: context_menu_log_out$4,
	context_menu_save: context_menu_save$4,
	tagging_add_tags: tagging_add_tags$4,
	options_header: options_header$4,
	options_login_title: options_login_title$4,
	options_log_out: options_log_out$4,
	options_log_in: options_log_in$4,
	options_shortcut_title: options_shortcut_title$4,
	options_shortcut_record: options_shortcut_record$4,
	options_theme_title: options_theme_title$4,
	options_theme_light: options_theme_light$4,
	options_theme_dark: options_theme_dark$4,
	options_theme_system: options_theme_system$4,
	options_app_title: options_app_title$4,
	options_app_apple: options_app_apple$4,
	options_app_google: options_app_google$4,
	options_need_help: options_need_help$4,
	options_email_us: options_email_us$4,
	options_follow: options_follow$4,
	options_family: options_family$4,
	options_privacy: options_privacy$4,
	options_terms: options_terms$4
};

var extension_description$3 = {
	message: "A forma mais fácil e rápida de capturar artigos, vídeos e muito mais."
};
var heading_idle$3 = {
	message: ""
};
var heading_saving$3 = {
	message: "A guardar…"
};
var heading_saved$3 = {
	message: "Guardado no Pocket"
};
var heading_save_failed$3 = {
	message: "Algo correu mal!"
};
var heading_removing$3 = {
	message: "A remover..."
};
var heading_removed$3 = {
	message: "Removido"
};
var heading_remove_failed$3 = {
	message: "Algo correu mal!"
};
var heading_tags_saving$3 = {
	message: "A guardar etiquetas..."
};
var heading_tags_saved$3 = {
	message: "Etiquetas guardadas"
};
var heading_tags_failed$3 = {
	message: "Algo correu mal!"
};
var heading_tags_error$3 = {
	message: "As etiquetas têm um limite de 25 caracteres"
};
var buttons_remove$3 = {
	message: "Remover"
};
var buttons_mylist$3 = {
	message: "A Minha Lista"
};
var buttons_save$3 = {
	message: "Guardar"
};
var context_menu_open_list$3 = {
	message: "Abrir a sua Lista do Pocket"
};
var context_menu_discover_more$3 = {
	message: "Descubra mais no Pocket"
};
var context_menu_log_in$3 = {
	message: "Entrar"
};
var context_menu_log_out$3 = {
	message: "Sair"
};
var context_menu_save$3 = {
	message: "Guardar no Pocket"
};
var tagging_add_tags$3 = {
	message: "Adicionar Etiquetas"
};
var options_header$3 = {
	message: "Guardar na extensão do Pocket"
};
var options_login_title$3 = {
	message: "Sessão iniciada como"
};
var options_log_out$3 = {
	message: "Terminar sessão"
};
var options_log_in$3 = {
	message: "Iniciar sessão"
};
var options_shortcut_title$3 = {
	message: "Atalhos de teclado"
};
var options_shortcut_record$3 = {
	message: "Gravar um atalho novo"
};
var options_theme_title$3 = {
	message: "Tema"
};
var options_theme_light$3 = {
	message: "Claro"
};
var options_theme_dark$3 = {
	message: "Escuro"
};
var options_theme_system$3 = {
	message: "Usar a definição do sistema"
};
var options_app_title$3 = {
	message: "Aplicação móvel do Pocket"
};
var options_app_apple$3 = {
	message: "Transferir na Apple App Store"
};
var options_app_google$3 = {
	message: "Obtenha a app no Google Play"
};
var options_need_help$3 = {
	message: "Precisa de Ajuda?"
};
var options_email_us$3 = {
	message: "Envie-nos um e-mail"
};
var options_follow$3 = {
	message: "Seguir o Pocket"
};
var options_family$3 = {
	message: "O Pocket faz parte da família de produtos Mozilla."
};
var options_privacy$3 = {
	message: "Política de privacidade"
};
var options_terms$3 = {
	message: "Condições do serviço"
};
var pt_PT = {
	extension_description: extension_description$3,
	heading_idle: heading_idle$3,
	heading_saving: heading_saving$3,
	heading_saved: heading_saved$3,
	heading_save_failed: heading_save_failed$3,
	heading_removing: heading_removing$3,
	heading_removed: heading_removed$3,
	heading_remove_failed: heading_remove_failed$3,
	heading_tags_saving: heading_tags_saving$3,
	heading_tags_saved: heading_tags_saved$3,
	heading_tags_failed: heading_tags_failed$3,
	heading_tags_error: heading_tags_error$3,
	buttons_remove: buttons_remove$3,
	buttons_mylist: buttons_mylist$3,
	buttons_save: buttons_save$3,
	context_menu_open_list: context_menu_open_list$3,
	context_menu_discover_more: context_menu_discover_more$3,
	context_menu_log_in: context_menu_log_in$3,
	context_menu_log_out: context_menu_log_out$3,
	context_menu_save: context_menu_save$3,
	tagging_add_tags: tagging_add_tags$3,
	options_header: options_header$3,
	options_login_title: options_login_title$3,
	options_log_out: options_log_out$3,
	options_log_in: options_log_in$3,
	options_shortcut_title: options_shortcut_title$3,
	options_shortcut_record: options_shortcut_record$3,
	options_theme_title: options_theme_title$3,
	options_theme_light: options_theme_light$3,
	options_theme_dark: options_theme_dark$3,
	options_theme_system: options_theme_system$3,
	options_app_title: options_app_title$3,
	options_app_apple: options_app_apple$3,
	options_app_google: options_app_google$3,
	options_need_help: options_need_help$3,
	options_email_us: options_email_us$3,
	options_follow: options_follow$3,
	options_family: options_family$3,
	options_privacy: options_privacy$3,
	options_terms: options_terms$3
};

var extension_description$2 = {
	message: "Самый просто способ сохранения статей, видео и других материалов."
};
var heading_idle$2 = {
	message: ""
};
var heading_saving$2 = {
	message: "Сохранение..."
};
var heading_saved$2 = {
	message: "Сохранено в Pocket"
};
var heading_save_failed$2 = {
	message: "К сожалению, что-то пошло не так!"
};
var heading_removing$2 = {
	message: "Удаление..."
};
var heading_removed$2 = {
	message: "Удалено"
};
var heading_remove_failed$2 = {
	message: "К сожалению, что-то пошло не так!"
};
var heading_tags_saving$2 = {
	message: "Сохранение тегов..."
};
var heading_tags_saved$2 = {
	message: "Теги сохранены"
};
var heading_tags_failed$2 = {
	message: "К сожалению, что-то пошло не так!"
};
var heading_tags_error$2 = {
	message: "Длина тега ограничена 25 символами"
};
var buttons_remove$2 = {
	message: "Удалить"
};
var buttons_mylist$2 = {
	message: "Мой список"
};
var buttons_save$2 = {
	message: "Сохранить"
};
var context_menu_open_list$2 = {
	message: "Откройте свой список Pocket"
};
var context_menu_discover_more$2 = {
	message: "Откройте больше с Pocket"
};
var context_menu_log_in$2 = {
	message: "Вход"
};
var context_menu_log_out$2 = {
	message: "Выйти"
};
var context_menu_save$2 = {
	message: "Сохранить в Pocket"
};
var tagging_add_tags$2 = {
	message: "Добавить теги"
};
var options_header$2 = {
	message: "Расширение \"Сохранить в Pocket\""
};
var options_login_title$2 = {
	message: "Вы вошли как"
};
var options_log_out$2 = {
	message: "Выйти"
};
var options_log_in$2 = {
	message: "Войти"
};
var options_shortcut_title$2 = {
	message: "Сочетание клавиш"
};
var options_shortcut_record$2 = {
	message: "Задать новое сочетание клавиш"
};
var options_theme_title$2 = {
	message: "Тема"
};
var options_theme_light$2 = {
	message: "Светлый"
};
var options_theme_dark$2 = {
	message: "Темный"
};
var options_theme_system$2 = {
	message: "Использовать системные настройки"
};
var options_app_title$2 = {
	message: "Мобильное приложение Pocket"
};
var options_app_apple$2 = {
	message: "Скачать в Apple App Store"
};
var options_app_google$2 = {
	message: "Загрузить из Google Play"
};
var options_need_help$2 = {
	message: "Нужна помощь?"
};
var options_email_us$2 = {
	message: "Пишите нам"
};
var options_follow$2 = {
	message: "Следите за Pocket"
};
var options_family$2 = {
	message: "Pocket входит в семейство продуктов Mozilla."
};
var options_privacy$2 = {
	message: "Политика конфиденциальности"
};
var options_terms$2 = {
	message: "Условия использования"
};
var ru = {
	extension_description: extension_description$2,
	heading_idle: heading_idle$2,
	heading_saving: heading_saving$2,
	heading_saved: heading_saved$2,
	heading_save_failed: heading_save_failed$2,
	heading_removing: heading_removing$2,
	heading_removed: heading_removed$2,
	heading_remove_failed: heading_remove_failed$2,
	heading_tags_saving: heading_tags_saving$2,
	heading_tags_saved: heading_tags_saved$2,
	heading_tags_failed: heading_tags_failed$2,
	heading_tags_error: heading_tags_error$2,
	buttons_remove: buttons_remove$2,
	buttons_mylist: buttons_mylist$2,
	buttons_save: buttons_save$2,
	context_menu_open_list: context_menu_open_list$2,
	context_menu_discover_more: context_menu_discover_more$2,
	context_menu_log_in: context_menu_log_in$2,
	context_menu_log_out: context_menu_log_out$2,
	context_menu_save: context_menu_save$2,
	tagging_add_tags: tagging_add_tags$2,
	options_header: options_header$2,
	options_login_title: options_login_title$2,
	options_log_out: options_log_out$2,
	options_log_in: options_log_in$2,
	options_shortcut_title: options_shortcut_title$2,
	options_shortcut_record: options_shortcut_record$2,
	options_theme_title: options_theme_title$2,
	options_theme_light: options_theme_light$2,
	options_theme_dark: options_theme_dark$2,
	options_theme_system: options_theme_system$2,
	options_app_title: options_app_title$2,
	options_app_apple: options_app_apple$2,
	options_app_google: options_app_google$2,
	options_need_help: options_need_help$2,
	options_email_us: options_email_us$2,
	options_follow: options_follow$2,
	options_family: options_family$2,
	options_privacy: options_privacy$2,
	options_terms: options_terms$2
};

var extension_description$1 = {
	message: "捕获文章、视频等内容的最轻松、快捷方式。"
};
var heading_idle$1 = {
	message: ""
};
var heading_saving$1 = {
	message: "保存..."
};
var heading_saved$1 = {
	message: "已保存到 Pocket"
};
var heading_save_failed$1 = {
	message: "出错了！"
};
var heading_removing$1 = {
	message: "正在删除..."
};
var heading_removed$1 = {
	message: "已删除"
};
var heading_remove_failed$1 = {
	message: "出错了！"
};
var heading_tags_saving$1 = {
	message: "正在保存标记……"
};
var heading_tags_saved$1 = {
	message: "标记已保存"
};
var heading_tags_failed$1 = {
	message: "出错了！"
};
var heading_tags_error$1 = {
	message: "标记限于 25 个字符"
};
var buttons_remove$1 = {
	message: "删除"
};
var buttons_mylist$1 = {
	message: "我的列表"
};
var buttons_save$1 = {
	message: "保存"
};
var context_menu_open_list$1 = {
	message: "打开您的 Pocket 列表"
};
var context_menu_discover_more$1 = {
	message: "在 Pocket 发现更多内容"
};
var context_menu_log_in$1 = {
	message: "登录"
};
var context_menu_log_out$1 = {
	message: "注销"
};
var context_menu_save$1 = {
	message: "保存到 Pocket"
};
var tagging_add_tags$1 = {
	message: "添加标记"
};
var options_header$1 = {
	message: "保存到 Pocket 扩展件"
};
var options_login_title$1 = {
	message: "登录为"
};
var options_log_out$1 = {
	message: "注销"
};
var options_log_in$1 = {
	message: "登录"
};
var options_shortcut_title$1 = {
	message: "键盘快捷键"
};
var options_shortcut_record$1 = {
	message: "记录新的快捷键"
};
var options_theme_title$1 = {
	message: "主题"
};
var options_theme_light$1 = {
	message: "浅色"
};
var options_theme_dark$1 = {
	message: "深色"
};
var options_theme_system$1 = {
	message: "使用系统设置"
};
var options_app_title$1 = {
	message: "Pocket 的移动应用"
};
var options_app_apple$1 = {
	message: "从 Apple App Store 下载"
};
var options_app_google$1 = {
	message: "从 Google Play 获取"
};
var options_need_help$1 = {
	message: "需要帮助？"
};
var options_email_us$1 = {
	message: "电邮我们"
};
var options_follow$1 = {
	message: "关注 Pocket"
};
var options_family$1 = {
	message: "Pocket 是 Mozilla 系列产品的一部分。"
};
var options_privacy$1 = {
	message: "隐私政策"
};
var options_terms$1 = {
	message: "服务条款"
};
var zh_CN = {
	extension_description: extension_description$1,
	heading_idle: heading_idle$1,
	heading_saving: heading_saving$1,
	heading_saved: heading_saved$1,
	heading_save_failed: heading_save_failed$1,
	heading_removing: heading_removing$1,
	heading_removed: heading_removed$1,
	heading_remove_failed: heading_remove_failed$1,
	heading_tags_saving: heading_tags_saving$1,
	heading_tags_saved: heading_tags_saved$1,
	heading_tags_failed: heading_tags_failed$1,
	heading_tags_error: heading_tags_error$1,
	buttons_remove: buttons_remove$1,
	buttons_mylist: buttons_mylist$1,
	buttons_save: buttons_save$1,
	context_menu_open_list: context_menu_open_list$1,
	context_menu_discover_more: context_menu_discover_more$1,
	context_menu_log_in: context_menu_log_in$1,
	context_menu_log_out: context_menu_log_out$1,
	context_menu_save: context_menu_save$1,
	tagging_add_tags: tagging_add_tags$1,
	options_header: options_header$1,
	options_login_title: options_login_title$1,
	options_log_out: options_log_out$1,
	options_log_in: options_log_in$1,
	options_shortcut_title: options_shortcut_title$1,
	options_shortcut_record: options_shortcut_record$1,
	options_theme_title: options_theme_title$1,
	options_theme_light: options_theme_light$1,
	options_theme_dark: options_theme_dark$1,
	options_theme_system: options_theme_system$1,
	options_app_title: options_app_title$1,
	options_app_apple: options_app_apple$1,
	options_app_google: options_app_google$1,
	options_need_help: options_need_help$1,
	options_email_us: options_email_us$1,
	options_follow: options_follow$1,
	options_family: options_family$1,
	options_privacy: options_privacy$1,
	options_terms: options_terms$1
};

var extension_description = {
	message: "擷取文章、短片等内容的最簡捷方法。"
};
var heading_idle = {
	message: ""
};
var heading_saving = {
	message: "正在儲存..."
};
var heading_saved = {
	message: "已儲存到 Pocket"
};
var heading_save_failed = {
	message: "出了點問題！"
};
var heading_removing = {
	message: "移除中..."
};
var heading_removed = {
	message: "已移除"
};
var heading_remove_failed = {
	message: "出了點問題！"
};
var heading_tags_saving = {
	message: "正在儲存標籤……"
};
var heading_tags_saved = {
	message: "標籤已儲存"
};
var heading_tags_failed = {
	message: "出了點問題！"
};
var heading_tags_error = {
	message: "標籤長度限於 25 個字元"
};
var buttons_remove = {
	message: "移除"
};
var buttons_mylist = {
	message: "我的清單"
};
var buttons_save = {
	message: "儲存"
};
var context_menu_open_list = {
	message: "開啟您的 Pocket 清單"
};
var context_menu_discover_more = {
	message: "在 Pocket 上發掘更多內容"
};
var context_menu_log_in = {
	message: "登入"
};
var context_menu_log_out = {
	message: "登出"
};
var context_menu_save = {
	message: "儲存到 Pocket"
};
var tagging_add_tags = {
	message: "新增標籤"
};
var options_header = {
	message: "儲存到 Pocket 擴充功能"
};
var options_login_title = {
	message: "已登入為"
};
var options_log_out = {
	message: "登出"
};
var options_log_in = {
	message: "登入"
};
var options_shortcut_title = {
	message: "鍵盤快速鍵"
};
var options_shortcut_record = {
	message: "記錄新捷徑"
};
var options_theme_title = {
	message: "主題"
};
var options_theme_light = {
	message: "淺色"
};
var options_theme_dark = {
	message: "暗色調"
};
var options_theme_system = {
	message: "使用系統設定"
};
var options_app_title = {
	message: "Pocket 的行動應用程式"
};
var options_app_apple = {
	message: "在 Apple App Store 下載"
};
var options_app_google = {
	message: "在 Google Play 取得"
};
var options_need_help = {
	message: "需要幫助？"
};
var options_email_us = {
	message: "電郵我們"
};
var options_follow = {
	message: "關注 Pocket"
};
var options_family = {
	message: "Pocket 屬於 Mozilla 系列產品之一。"
};
var options_privacy = {
	message: "隱私政策"
};
var options_terms = {
	message: "服務條款"
};
var zh_TW = {
	extension_description: extension_description,
	heading_idle: heading_idle,
	heading_saving: heading_saving,
	heading_saved: heading_saved,
	heading_save_failed: heading_save_failed,
	heading_removing: heading_removing,
	heading_removed: heading_removed,
	heading_remove_failed: heading_remove_failed,
	heading_tags_saving: heading_tags_saving,
	heading_tags_saved: heading_tags_saved,
	heading_tags_failed: heading_tags_failed,
	heading_tags_error: heading_tags_error,
	buttons_remove: buttons_remove,
	buttons_mylist: buttons_mylist,
	buttons_save: buttons_save,
	context_menu_open_list: context_menu_open_list,
	context_menu_discover_more: context_menu_discover_more,
	context_menu_log_in: context_menu_log_in,
	context_menu_log_out: context_menu_log_out,
	context_menu_save: context_menu_save,
	tagging_add_tags: tagging_add_tags,
	options_header: options_header,
	options_login_title: options_login_title,
	options_log_out: options_log_out,
	options_log_in: options_log_in,
	options_shortcut_title: options_shortcut_title,
	options_shortcut_record: options_shortcut_record,
	options_theme_title: options_theme_title,
	options_theme_light: options_theme_light,
	options_theme_dark: options_theme_dark,
	options_theme_system: options_theme_system,
	options_app_title: options_app_title,
	options_app_apple: options_app_apple,
	options_app_google: options_app_google,
	options_need_help: options_need_help,
	options_email_us: options_email_us,
	options_follow: options_follow,
	options_family: options_family,
	options_privacy: options_privacy,
	options_terms: options_terms
};

function getCurrentLanguageCode() {
  var language = navigator.languages ? navigator.languages[0] : navigator.language || navigator.userLanguage;
  language = typeof language !== 'undefined' ? language.toLowerCase() : 'en';
  if (language.indexOf('en') === 0) return 'en'; // English

  if (language.indexOf('de') === 0) return 'de'; // German

  if (language.indexOf('fr') === 0) return 'fr'; // French

  if (language.indexOf('it') === 0) return 'it'; // Italian

  if (language.indexOf('es_419') === 0) return 'es_419'; // Spanish (Latin America and Caribbean)

  if (language.indexOf('es') === 0) return 'es'; // Spanish

  if (language.indexOf('ja') === 0) return 'ja'; // Japanese

  if (language.indexOf('ru') === 0) return 'ru'; // Russian

  if (language.indexOf('ko') === 0) return 'ko'; // Korean

  if (language.indexOf('nl') === 0) return 'nl'; // Dutch

  if (language.indexOf('pl') === 0) return 'pl'; // Polish

  if (language.indexOf('pt_BR') === 0) return 'pt_BR'; // Portuguese Brazil

  if (language.indexOf('pt_PT') === 0) return 'pt_PT'; // Portuguese Portugal

  if (language.indexOf('zh_CN') === 0) return 'zh_CN'; // Chinese Simplified

  if (language.indexOf('zh_TW') === 0) return 'zh_TW'; // Chinese Traditional

  return 'en'; // Default is English
}

function localizedStrings() {
  const localizedCopy = {
    de,
    en,
    es,
    es_419,
    fr,
    it,
    ja,
    ko,
    nl,
    pl,
    pt_BR,
    pt_PT,
    ru,
    zh_CN,
    zh_TW
  };
  const currentLanguage = getCurrentLanguageCode();
  return localizedCopy[currentLanguage] || localizedCopy['en'];
}

const currentStrings = localizedStrings();
function localize(string) {
  var _currentStrings$strin;

  return (_currentStrings$strin = currentStrings[string]) === null || _currentStrings$strin === void 0 ? void 0 : _currentStrings$strin.message;
}

var postAuthSave = null;
/* Browser Action - Toolbar Icon Clicked
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function browserAction(tab) {
  if (isSystemPage(tab)) return openPocketHome(); // open list on non-standard pages

  const {
    id: tabId,
    title,
    url: pageUrl
  } = tab;
  save({
    pageUrl,
    title,
    tabId
  });
}
/* Context Clicks - Right/Option Click Menus
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function contextClick(info, tab) {
  const {
    menuItemId,
    linkUrl,
    pageUrl
  } = info;
  const {
    id: tabId,
    title
  } = tab;
  if (menuItemId === 'toolbarContextClickHome') return openPocketHome();
  if (menuItemId === 'toolbarContextClickList') return openPocketList();
  if (menuItemId === 'toolbarContextClickLogOut') return logOut();
  if (menuItemId === 'toolbarContextClickLogIn') return logIn(); // Open list on non-standard pages/links

  if (isSystemLink(linkUrl || pageUrl)) return openPocketHome();
  return save({
    linkUrl,
    pageUrl,
    title,
    tabId
  });
}
/* Saving
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function save({
  linkUrl,
  pageUrl,
  title,
  tabId
}) {
  // Are we authed?
  const access_token = await getSetting('access_token');
  if (!access_token) return logIn({
    linkUrl,
    pageUrl,
    title,
    tabId
  }); // send message that we are requesting a save

  chrome.tabs.sendMessage(tabId, {
    action: SAVE_TO_POCKET_REQUEST
  });
  const url = linkUrl || pageUrl;

  try {
    const {
      response: payload
    } = await saveToPocket({
      url,
      title,
      tabId
    }); // send a message with the response

    const message = payload ? {
      action: SAVE_TO_POCKET_SUCCESS,
      payload
    } : {
      action: SAVE_TO_POCKET_FAILURE,
      payload
    };
    chrome.tabs.sendMessage(tabId, message);
    if (payload) saveSuccess(tabId, { ...payload,
      isLink: Boolean(linkUrl)
    });
  } catch (error) {
    // If it is an auth error let's redirect the user
    if (error.name === 'Auth') return logIn({
      linkUrl,
      pageUrl,
      title,
      tabId
    }); // Otherwise let's just show the error message

    const errorMessage = {
      action: SAVE_TO_POCKET_FAILURE
    };
    chrome.tabs.sendMessage(tabId, errorMessage);
  }
}
/* Remove item
–––––––––––––––––––––––––––––––––––––––––––––––––– */


async function removeItemAction(tab, payload) {
  const {
    id: tabId
  } = tab;
  const {
    itemId
  } = payload; // send message that we are attempting to sync tags

  chrome.tabs.sendMessage(tabId, {
    action: REMOVE_ITEM_REQUEST
  });
  const {
    response
  } = await removeItem(itemId);
  const message = response ? {
    action: REMOVE_ITEM_SUCCESS,
    payload
  } : {
    action: REMOVE_ITEM_FAILURE,
    payload
  };
  chrome.tabs.sendMessage(tabId, message);
  if (response) setToolbarIcon(tabId, false);
}
/* Add tags to item
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function tagsSyncAction(tab, payload) {
  const {
    id: tabId
  } = tab;
  const {
    item_id,
    tags,
    ...actionInfo
  } = payload; // send message that we are attempting to sync tags

  chrome.tabs.sendMessage(tabId, {
    action: TAG_SYNC_REQUEST
  });
  const {
    response
  } = await syncItemTags(item_id, tags, actionInfo);
  const message = response ? {
    action: TAG_SYNC_SUCCESS,
    payload
  } : {
    action: TAG_SYNC_FAILURE,
    payload
  };
  chrome.tabs.sendMessage(tabId, message);
}
/* Submit tags error
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function tagsErrorAction(tab, payload) {
  const {
    id: tabId
  } = tab;
  chrome.tabs.sendMessage(tabId, {
    action: UPDATE_TAG_ERROR,
    payload
  });
}
/* Authentication user
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function authCodeRecieved(tab, payload) {
  const guidResponse = await getGuid();
  const authResponse = await authorize(guidResponse, payload);
  const {
    access_token,
    account,
    username
  } = authResponse;
  const {
    premium_status
  } = account;
  setSettings({
    access_token,
    premium_status,
    username
  });
  closeLoginPage();
  setContextMenus();
  if (postAuthSave) save(postAuthSave);
  postAuthSave = null;
}
function logOut() {
  chrome.tabs.create({
    url: LOGOUT_URL
  });
}
function loggedOutOfPocket() {
  chrome.storage.local.clear();
  setContextMenus();
}
function logIn(saveObject) {
  postAuthSave = saveObject;
  chrome.tabs.create({
    url: AUTH_URL
  });
}
function openPocket() {
  chrome.tabs.create({
    url: POCKET_LIST
  });
}
function openPocketList() {
  chrome.tabs.create({
    url: POCKET_LIST
  });
}
function openPocketHome() {
  chrome.tabs.create({
    url: POCKET_HOME
  });
}
function openOptionsPage() {
  chrome.runtime.openOptionsPage();
}
/* Tab Changes
–––––––––––––––––––––––––––––––––––––––––––––––––– */

function tabUpdated(tabId, changeInfo) {
  if (changeInfo.status === 'loading' && changeInfo.url) {
    // if actively loading a new page, unset save state on icon
    setToolbarIcon(tabId, false);
  }
}
/* Theme Changes
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function setColorMode(tab, {
  theme
}) {
  await setSettings({
    theme
  });
}
/* Context Menus
–––––––––––––––––––––––––––––––––––––––––––––––––– */

async function setContextMenus() {
  chrome.contextMenus.removeAll(); // Page Context - Right click menu on page

  chrome.contextMenus.create({
    title: localize('context_menu_save'),
    id: 'pageContextClick',
    contexts: ['page', 'frame', 'editable', 'image', 'video', 'audio', 'link', 'selection'] // prettier-ignore

  }); // Browser Icon - Right click menu

  chrome.contextMenus.create({
    title: localize('context_menu_open_list'),
    id: 'toolbarContextClickList',
    contexts: ['action']
  });
  chrome.contextMenus.create({
    title: localize('context_menu_discover_more'),
    id: 'toolbarContextClickHome',
    contexts: ['action']
  }); // Log In or Out menu item depending on existence of access token

  const access_token = await getSetting('access_token');

  if (access_token) {
    chrome.contextMenus.create({
      title: localize('context_menu_log_out'),
      id: 'toolbarContextClickLogOut',
      contexts: ['action']
    });
  } else {
    chrome.contextMenus.create({
      title: localize('context_menu_log_in'),
      id: 'toolbarContextClickLogIn',
      contexts: ['action']
    });
  }
}

/* Initial Setup
–––––––––––––––––––––––––––––––––––––––––––––––––– */

chrome.runtime.onInstalled.addListener(function () {
  // Use SVG icons over the png for more control
  setDefaultIcon();
  setContextMenus();
});
/* Browser Action - Toolbar
–––––––––––––––––––––––––––––––––––––––––––––––––– */

chrome.action.onClicked.addListener(browserAction);
chrome.commands.onCommand.addListener((command, tab) => {
  if (command === 'save-to-pocket-action') browserAction(tab);
});
/* Context Menus Handling
–––––––––––––––––––––––––––––––––––––––––––––––––– */

chrome.contextMenus.onClicked.addListener(contextClick);
/* Tab Handling
–––––––––––––––––––––––––––––––––––––––––––––––––– */
// Update the icon to unsaved if we are change pages

chrome.tabs.onUpdated.addListener(tabUpdated);
chrome.runtime.onMessage.addListener(function (message, sender) {
  const {
    type,
    payload
  } = message;
  const {
    tab
  } = sender;
  console.groupCollapsed(`RECEIVE: ${type}`);
  console.log(message);
  console.groupEnd(`RECEIVE: ${type}`);

  switch (type) {
    case AUTH_CODE_RECEIVED:
      authCodeRecieved(tab, payload);
      return;

    case USER_LOG_IN:
      logIn(tab);
      return;

    case LOGGED_OUT_OF_POCKET:
      loggedOutOfPocket();
      return;

    case REMOVE_ITEM:
      removeItemAction(tab, payload);
      return;

    case RESAVE_ITEM:
      browserAction(tab);

    case TAGS_SYNC:
      tagsSyncAction(tab, payload);
      return;

    case SEND_TAG_ERROR:
      tagsErrorAction(tab, payload);
      return;

    case COLOR_MODE_CHANGE:
      setColorMode(tab, payload);
      return;

    case OPEN_POCKET:
      openPocket();
      return;

    case OPEN_OPTIONS:
      openOptionsPage();
      return;

    default:
      return;
  }
});
