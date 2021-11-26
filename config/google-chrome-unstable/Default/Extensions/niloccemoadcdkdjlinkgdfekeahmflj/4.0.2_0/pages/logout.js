import { t as sendMessage, L as LOGGED_OUT_OF_POCKET } from '../chunks/actions-c28cfaee.js';

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', setLogoutLoaded);
} else {
  setLogoutLoaded();
}

function setLogoutLoaded() {
  setTimeout(function () {
    sendMessage({
      type: LOGGED_OUT_OF_POCKET
    });
  }, 500);
}
