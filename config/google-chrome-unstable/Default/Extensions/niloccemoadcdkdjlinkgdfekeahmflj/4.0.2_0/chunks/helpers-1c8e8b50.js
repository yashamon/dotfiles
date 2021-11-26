import { g as getSetting } from './actions-c28cfaee.js';

function isSystemPage(tab) {
  return tab.active && isSystemLink(tab.url);
}
function isSystemLink(link) {
  return link.startsWith('chrome://') || link.startsWith('chrome-extension://') || link.startsWith('chrome-search://');
}
async function getAccessToken() {
  return await getSetting('access_token');
}
function checkDuplicate(list, tagValue) {
  return list.filter(tag => tag.name === tagValue).length;
}
function closeLoginPage() {
  chrome.tabs.query({
    url: '*://getpocket.com/extension_login_success*'
  }, tabs => {
    chrome.tabs.remove(tabs.map(tab => tab.id));
  });
}
function deriveItemData(item) {
  return {
    itemId: item === null || item === void 0 ? void 0 : item.item_id,
    title: displayTitle(item),
    thumbnail: displayThumbnail(item),
    publisher: displayPublisher(item)
  };
}
/** TITLE
 * @param {object} feedItem An unreliable item returned from a v3 feed endpoint
 * @returns {string} The most appropriate title to show
 */

function displayTitle(item) {
  return (item === null || item === void 0 ? void 0 : item.title) || (item === null || item === void 0 ? void 0 : item.resolved_title) || (item === null || item === void 0 ? void 0 : item.given_title) || (item === null || item === void 0 ? void 0 : item.display_url) || displayPublisher(item) || null;
}
/** PUBLISHER
 * @param {object} feedItem An unreliable item returned from a v3 feed endpoint
 * @returns {string} The best text to display as the publisher of this item
 */

function displayPublisher(item) {
  var _item$domain_metadata;

  const urlToUse = (item === null || item === void 0 ? void 0 : item.given_url) || (item === null || item === void 0 ? void 0 : item.resolved_url);
  const derivedDomain = domainForUrl(urlToUse);
  return (item === null || item === void 0 ? void 0 : (_item$domain_metadata = item.domain_metadata) === null || _item$domain_metadata === void 0 ? void 0 : _item$domain_metadata.name) || (item === null || item === void 0 ? void 0 : item.domain) || derivedDomain || null;
}
/**
 * DOMAIN FOR URL
 * Get the base domain for a given url
 * @param {url} url Url to get domain from
 * @return {string} parsed domain
 */

function domainForUrl(url) {
  if (!url) return false;
  const match = url.match(/^(?:https?:\/\/)?(?:[^@\n]+@)?(?:www\.)?([^:/\n?=]+)/im);
  return match[1];
}
/** THUMBNAIL
 * @param {object} feedItem An unreliable item returned from a v3 feed endpoint
 * @returns {string:url} The most appropriate image to show as a thumbnail
 */

function displayThumbnail(item) {
  var _item$image, _item$images, _item$images$Object$k;

  return (item === null || item === void 0 ? void 0 : item.top_image_url) || (item === null || item === void 0 ? void 0 : (_item$image = item.image) === null || _item$image === void 0 ? void 0 : _item$image.src) || (item === null || item === void 0 ? void 0 : (_item$images = item.images) === null || _item$images === void 0 ? void 0 : (_item$images$Object$k = _item$images[Object.keys(item.images)[0]]) === null || _item$images$Object$k === void 0 ? void 0 : _item$images$Object$k.src) || null;
}
/**
 * Helper function to figure out what the CSS class name should be based on the
 * mode name that maps to the current OS color mode.
 * @return  {String}  Formatted CSS class name
 */

function getOSModeClass() {
  if (!window.matchMedia) return 'light';
  const isDarkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
  const isLightMode = window.matchMedia('(prefers-color-scheme: light)').matches;
  const isNotSpecified = window.matchMedia('(prefers-color-scheme: no-preference)').matches;
  const hasNoSupport = !isDarkMode && !isLightMode && !isNotSpecified;
  let mode;

  if (isLightMode) {
    mode = 'light';
  }

  if (isDarkMode) {
    mode = 'dark';
  } // fallback if no system setting


  if (isNotSpecified || hasNoSupport) {
    mode = 'light';
  }

  return mode;
}

export { isSystemLink as a, getOSModeClass as b, closeLoginPage as c, deriveItemData as d, checkDuplicate as e, getAccessToken as g, isSystemPage as i };
