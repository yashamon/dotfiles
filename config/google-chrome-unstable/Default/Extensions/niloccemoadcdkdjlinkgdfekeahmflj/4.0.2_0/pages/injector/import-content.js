(function () {

  const importPath = /*@__PURE__*/JSON.parse('"pages/injector/content.js"');
  import(chrome.runtime.getURL(importPath));
})();
