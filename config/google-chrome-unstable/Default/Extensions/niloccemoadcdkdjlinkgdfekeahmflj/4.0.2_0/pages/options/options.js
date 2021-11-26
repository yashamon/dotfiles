import { g as getSetting, C as COLOR_MODE_CHANGE, u as openTabWithUrl } from '../../chunks/actions-c28cfaee.js';
import { b as getOSModeClass } from '../../chunks/helpers-1c8e8b50.js';
import { L as LOGOUT_URL, a as AUTH_URL, S as SET_SHORTCUTS } from '../../chunks/constants-38b5bdc0.js';
import { R as ReactDOM, a as React, r as react, c as cx$1, B as Button, F as FacebookIcon, T as TwitterIcon, I as InstagramIcon, d as PocketLogoIcon, e as radioStyles } from '../../chunks/globalStyles-22fbf6ab.js';

const logoStyle = "lduquv9";

const LogoLight = () => /*#__PURE__*/React.createElement("svg", {
  className: "light",
  width: "94",
  height: "24",
  viewBox: "0 0 94 24",
  fill: "none",
  xmlns: "http://www.w3.org/2000/svg"
}, /*#__PURE__*/React.createElement("g", {
  "clip-path": "url(#clip0)"
}, /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M13.119 5.71076H1.39568C0.634414 5.71076 0 6.27696 0 7.0154V11.2244C0 15.0396 3.24794 18.215 7.25729 18.215C11.2412 18.215 14.4639 15.0396 14.4639 11.2244V7.0154C14.4639 6.27696 13.8549 5.71076 13.119 5.71076Z",
  fill: "#EF4056"
}), /*#__PURE__*/React.createElement("path", {
  d: "M7.91699 14.0796L11.3681 10.9291C11.7233 10.5599 11.7233 9.94451 11.3681 9.55069C11.0128 9.20607 10.3785 9.15687 10.0232 9.55069L7.25729 12.0859L4.5422 9.55069C4.16149 9.15687 3.52708 9.20607 3.14651 9.55069C2.74052 9.94451 2.79123 10.5599 3.14651 10.9291L6.54687 14.0796C6.74987 14.2765 7.00358 14.3505 7.25729 14.3505C7.46029 14.3505 7.73942 14.2765 7.91699 14.0796Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M26.2123 16.6904C23.5987 16.6904 21.4164 14.549 21.4164 11.9399C21.4164 9.30607 23.5987 7.1154 26.2123 7.1154C28.8767 7.1154 31.0082 9.30607 31.0082 11.9399C31.0082 14.549 28.8767 16.6904 26.2123 16.6904ZM26.2376 5.58932C24.2584 5.58932 22.5075 6.67239 21.2641 8.12461L21.2134 6.40162C21.188 5.78623 20.8836 5.49093 20.4267 5.49093C19.9446 5.49093 19.6147 5.86009 19.6147 6.37696V23.164C19.6147 23.6563 19.97 24.0009 20.4522 24.0009C20.9597 24.0009 21.2641 23.6317 21.2641 23.1393V15.8043C22.5075 17.2319 24.2584 18.2166 26.2376 18.2166C29.841 18.2166 32.6831 15.4105 32.6831 11.9399C32.6831 8.46924 29.841 5.58932 26.2376 5.58932Z",
  fill: "#363636"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M40.6004 16.6888C37.9867 16.6888 35.8045 14.5474 35.8045 11.9383C35.8045 9.30446 37.9867 7.1138 40.6004 7.1138C43.2647 7.1138 45.3963 9.30446 45.3963 11.9383C45.3963 14.5474 43.2647 16.6888 40.6004 16.6888ZM40.6511 5.58772C36.9717 5.58772 34.1296 8.46763 34.1296 11.9383C34.1296 15.4089 36.9717 18.215 40.6511 18.215C44.1022 18.215 47.0964 15.4089 47.0964 11.9383C47.0964 8.46763 44.0767 5.58772 40.6511 5.58772Z",
  fill: "#363636"
}), /*#__PURE__*/React.createElement("path", {
  d: "M58.8958 14.695C59.0481 14.4981 59.3018 14.3259 59.5302 14.3259C59.9615 14.3259 60.2915 14.6212 60.2915 15.0643C60.2915 15.2612 60.1899 15.4827 60.0122 15.7042C59.0227 16.9842 57.1448 18.215 54.9627 18.215C51.4355 18.215 48.5427 15.3596 48.5427 11.9383C48.5427 8.46765 51.4355 5.66159 54.9627 5.66159C56.9926 5.66159 58.7437 6.49842 59.7839 7.95064C59.9362 8.17222 60.1138 8.44298 60.1138 8.71375C60.1138 9.08304 59.7332 9.3538 59.3527 9.3538C59.0734 9.3538 58.8451 9.18143 58.6928 9.00918C57.8301 7.99997 56.815 7.13847 54.9627 7.13847C52.4251 7.13847 50.2428 8.93532 50.2428 11.9383C50.2428 14.7442 52.4251 16.6888 54.9627 16.6888C56.6628 16.6888 58.1854 15.6058 58.8958 14.695Z",
  fill: "#363636"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M66.9866 11.3137L71.7109 7.18662C72.1422 6.81733 72.1929 6.2758 71.863 5.93131C71.5077 5.56202 70.9749 5.66054 70.5943 6.00503L64.1743 11.8472V0.934583C64.1743 0.368387 63.9206 -0.000900269 63.3877 -0.000900269C62.804 -0.000900269 62.5249 0.368387 62.5249 0.934583V17.3031C62.5249 17.8447 62.8548 18.2138 63.3877 18.2138C63.8697 18.2138 64.1743 17.8447 64.1743 17.3031V13.7707L65.8188 12.3339L71.0003 17.9184C71.3302 18.263 71.8883 18.3862 72.2436 18.0661C72.6496 17.6969 72.5229 17.2046 72.2183 16.86L66.9866 11.3137Z",
  fill: "#363636"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M74.6921 11.0521C75.0651 8.46855 77.0326 7.1138 79.2468 7.1138C81.6066 7.1138 83.256 9.0337 83.3575 11.0521H74.6921ZM79.2468 5.58772C75.6434 5.58772 72.9537 8.46763 72.9537 11.9383C72.9537 15.4089 75.6941 18.215 79.272 18.215C81.0484 18.215 82.774 17.5749 83.9158 16.4919C84.1695 16.2458 84.3725 15.975 84.3725 15.7042C84.3725 15.3104 84.1188 14.9904 83.6367 14.9904C83.383 14.9904 83.1291 15.0888 82.9261 15.2612C81.8604 16.1719 80.7693 16.6888 79.272 16.6888C76.9427 16.6888 74.8635 14.9689 74.6474 12.4058H83.7127C84.5755 12.4058 85.0578 11.9628 85.0578 11.249C85.0578 8.49216 82.571 5.58772 79.2468 5.58772Z",
  fill: "#363636"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M92.9752 15.828C92.7215 15.828 92.4677 15.9757 92.3155 16.0987C91.9603 16.3941 91.5288 16.6894 90.9198 16.6894C89.8794 16.6894 89.2959 16.0741 89.2959 14.6712V7.08989L92.5185 7.13922C92.9752 7.13922 93.2798 6.86845 93.2798 6.44997C93.2798 6.00682 92.9752 5.73619 92.5185 5.73619L89.2959 5.76072V3.22543C89.2959 2.73322 88.9406 2.3886 88.5093 2.3886C88.0525 2.3886 87.6718 2.73322 87.6718 3.22543V5.76072L86.3015 5.73619C85.8702 5.73619 85.5657 6.00682 85.5657 6.44997C85.5657 6.84379 85.8955 7.16375 86.3015 7.13922L87.6718 7.08989V14.7204C87.6718 17.108 89.1689 18.2156 90.8944 18.2156C91.9603 18.2156 92.7722 17.8218 93.3305 17.2557C93.5081 17.0587 93.6858 16.8371 93.6858 16.5418C93.6858 16.1233 93.4065 15.828 92.9752 15.828Z",
  fill: "#363636"
})), /*#__PURE__*/React.createElement("defs", null, /*#__PURE__*/React.createElement("clipPath", {
  id: "clip0"
}, /*#__PURE__*/React.createElement("rect", {
  width: "94",
  height: "24",
  fill: "white"
}))));

const LogoDark = () => /*#__PURE__*/React.createElement("svg", {
  className: "dark",
  width: "94",
  height: "24",
  viewBox: "0 0 94 24",
  fill: "none",
  xmlns: "http://www.w3.org/2000/svg"
}, /*#__PURE__*/React.createElement("g", {
  "clip-path": "url(#clip0)"
}, /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M13.119 5.71076H1.39568C0.634414 5.71076 0 6.27696 0 7.0154V11.2244C0 15.0396 3.24794 18.215 7.25729 18.215C11.2412 18.215 14.4639 15.0396 14.4639 11.2244V7.0154C14.4639 6.27696 13.8549 5.71076 13.119 5.71076Z",
  fill: "#EF4056"
}), /*#__PURE__*/React.createElement("path", {
  d: "M7.91699 14.0796L11.3681 10.9291C11.7233 10.5599 11.7233 9.94451 11.3681 9.55069C11.0128 9.20607 10.3785 9.15687 10.0232 9.55069L7.25729 12.0859L4.5422 9.55069C4.16149 9.15687 3.52708 9.20607 3.14651 9.55069C2.74052 9.94451 2.79123 10.5599 3.14651 10.9291L6.54687 14.0796C6.74987 14.2765 7.00358 14.3505 7.25729 14.3505C7.46029 14.3505 7.73942 14.2765 7.91699 14.0796Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M26.2123 16.6904C23.5987 16.6904 21.4164 14.549 21.4164 11.9399C21.4164 9.30607 23.5987 7.1154 26.2123 7.1154C28.8767 7.1154 31.0082 9.30607 31.0082 11.9399C31.0082 14.549 28.8767 16.6904 26.2123 16.6904ZM26.2376 5.58932C24.2584 5.58932 22.5075 6.67239 21.2641 8.12461L21.2134 6.40162C21.188 5.78623 20.8836 5.49093 20.4267 5.49093C19.9446 5.49093 19.6147 5.86009 19.6147 6.37696V23.164C19.6147 23.6563 19.97 24.0009 20.4522 24.0009C20.9597 24.0009 21.2641 23.6317 21.2641 23.1393V15.8043C22.5075 17.2319 24.2584 18.2166 26.2376 18.2166C29.841 18.2166 32.6831 15.4105 32.6831 11.9399C32.6831 8.46924 29.841 5.58932 26.2376 5.58932Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M40.6004 16.6888C37.9867 16.6888 35.8045 14.5474 35.8045 11.9383C35.8045 9.30446 37.9867 7.1138 40.6004 7.1138C43.2647 7.1138 45.3963 9.30446 45.3963 11.9383C45.3963 14.5474 43.2647 16.6888 40.6004 16.6888ZM40.6511 5.58772C36.9717 5.58772 34.1296 8.46763 34.1296 11.9383C34.1296 15.4089 36.9717 18.215 40.6511 18.215C44.1022 18.215 47.0964 15.4089 47.0964 11.9383C47.0964 8.46763 44.0767 5.58772 40.6511 5.58772Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  d: "M58.8958 14.695C59.0481 14.4981 59.3018 14.3259 59.5302 14.3259C59.9615 14.3259 60.2915 14.6212 60.2915 15.0643C60.2915 15.2612 60.1899 15.4827 60.0122 15.7042C59.0227 16.9842 57.1448 18.215 54.9627 18.215C51.4355 18.215 48.5427 15.3596 48.5427 11.9383C48.5427 8.46765 51.4355 5.66159 54.9627 5.66159C56.9926 5.66159 58.7437 6.49842 59.7839 7.95064C59.9362 8.17222 60.1138 8.44298 60.1138 8.71375C60.1138 9.08304 59.7332 9.3538 59.3527 9.3538C59.0734 9.3538 58.8451 9.18143 58.6928 9.00918C57.8301 7.99997 56.815 7.13847 54.9627 7.13847C52.4251 7.13847 50.2428 8.93532 50.2428 11.9383C50.2428 14.7442 52.4251 16.6888 54.9627 16.6888C56.6628 16.6888 58.1854 15.6058 58.8958 14.695Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M66.9866 11.3137L71.7109 7.18662C72.1422 6.81733 72.1929 6.2758 71.863 5.93131C71.5077 5.56202 70.9749 5.66054 70.5943 6.00503L64.1743 11.8472V0.934583C64.1743 0.368387 63.9206 -0.000900269 63.3877 -0.000900269C62.804 -0.000900269 62.5249 0.368387 62.5249 0.934583V17.3031C62.5249 17.8447 62.8548 18.2138 63.3877 18.2138C63.8697 18.2138 64.1743 17.8447 64.1743 17.3031V13.7707L65.8188 12.3339L71.0003 17.9184C71.3302 18.263 71.8883 18.3862 72.2436 18.0661C72.6496 17.6969 72.5229 17.2046 72.2183 16.86L66.9866 11.3137Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M74.6921 11.0521C75.0651 8.46855 77.0326 7.1138 79.2468 7.1138C81.6066 7.1138 83.256 9.0337 83.3575 11.0521H74.6921ZM79.2468 5.58772C75.6434 5.58772 72.9537 8.46763 72.9537 11.9383C72.9537 15.4089 75.6941 18.215 79.272 18.215C81.0484 18.215 82.774 17.5749 83.9158 16.4919C84.1695 16.2458 84.3725 15.975 84.3725 15.7042C84.3725 15.3104 84.1188 14.9904 83.6367 14.9904C83.383 14.9904 83.1291 15.0888 82.9261 15.2612C81.8604 16.1719 80.7693 16.6888 79.272 16.6888C76.9427 16.6888 74.8635 14.9689 74.6474 12.4058H83.7127C84.5755 12.4058 85.0578 11.9628 85.0578 11.249C85.0578 8.49216 82.571 5.58772 79.2468 5.58772Z",
  fill: "white"
}), /*#__PURE__*/React.createElement("path", {
  "fill-rule": "evenodd",
  "clip-rule": "evenodd",
  d: "M92.9752 15.828C92.7215 15.828 92.4677 15.9757 92.3155 16.0987C91.9603 16.3941 91.5288 16.6894 90.9198 16.6894C89.8794 16.6894 89.2959 16.0741 89.2959 14.6712V7.08989L92.5185 7.13922C92.9752 7.13922 93.2798 6.86845 93.2798 6.44997C93.2798 6.00682 92.9752 5.73619 92.5185 5.73619L89.2959 5.76072V3.22543C89.2959 2.73322 88.9406 2.3886 88.5093 2.3886C88.0525 2.3886 87.6718 2.73322 87.6718 3.22543V5.76072L86.3015 5.73619C85.8702 5.73619 85.5657 6.00682 85.5657 6.44997C85.5657 6.84379 85.8955 7.16375 86.3015 7.13922L87.6718 7.08989V14.7204C87.6718 17.108 89.1689 18.2156 90.8944 18.2156C91.9603 18.2156 92.7722 17.8218 93.3305 17.2557C93.5081 17.0587 93.6858 16.8371 93.6858 16.5418C93.6858 16.1233 93.4065 15.828 92.9752 15.828Z",
  fill: "white"
})), /*#__PURE__*/React.createElement("defs", null, /*#__PURE__*/React.createElement("clipPath", {
  id: "clip0"
}, /*#__PURE__*/React.createElement("rect", {
  width: "94",
  height: "24",
  fill: "white"
}))));

const Logo = () => {
  return /*#__PURE__*/React.createElement("div", {
    className: logoStyle
  }, /*#__PURE__*/React.createElement(LogoLight, null), /*#__PURE__*/React.createElement(LogoDark, null));
};

const container = "ctx1wwe";
const wrapper = "w1xd6g6j";
const title = "to5s4qr";
const header = "h1xg2fvf";
const user = "unfczi4";
const section = "s1dfvacf";
const sectionLabel = "s1c5bsfz";
const sectionAction = "s1l4vcvj";
const appIcon = "a10is79n";
const google = "gsgt5pc";
const footer = "flq9k05";
const footerLinks = "f8la9j4";
const footerFollow = "f1unpskq";
const footerFollowIcons = "fvsjjxy";
const footerCopyright = "ftxby7l";

const OptionsApp = () => {
  const [storedTheme, setStoredTheme] = react.exports.useState('light');
  const [accessToken, setAccessToken] = react.exports.useState();
  const [userName, setUserName] = react.exports.useState();
  react.exports.useEffect(async () => {
    updateTheme((await getSetting('theme')) || 'system');
    setAccessToken(await getSetting('access_token'));
    setUserName(await getSetting('username'));
  }, []);

  const setShortcuts = () => openTabWithUrl(SET_SHORTCUTS);

  const logoutAction = () => openTabWithUrl(LOGOUT_URL);

  const loginAction = () => openTabWithUrl(AUTH_URL);

  const updateTheme = mode => {
    chrome.runtime.sendMessage({
      type: COLOR_MODE_CHANGE,
      payload: {
        theme: mode
      }
    });
    const newTheme = mode === 'system' ? getOSModeClass() : mode;
    setStoredTheme(mode);
    const htmlTag = document && document.documentElement;
    htmlTag === null || htmlTag === void 0 ? void 0 : htmlTag.classList.toggle(`pocket-theme-light`, newTheme === 'light');
    htmlTag === null || htmlTag === void 0 ? void 0 : htmlTag.classList.toggle(`pocket-theme-dark`, newTheme === 'dark');
  };

  return /*#__PURE__*/React.createElement("div", {
    className: cx$1('pocket-extension', radioStyles, container)
  }, /*#__PURE__*/React.createElement("section", {
    className: wrapper
  }, /*#__PURE__*/React.createElement("header", {
    className: header
  }, /*#__PURE__*/React.createElement(Logo, null), /*#__PURE__*/React.createElement("h1", {
    className: title
  }, chrome.i18n.getMessage('options_header'))), /*#__PURE__*/React.createElement("div", {
    className: section
  }, /*#__PURE__*/React.createElement("div", {
    className: sectionLabel
  }, chrome.i18n.getMessage('options_login_title')), /*#__PURE__*/React.createElement("div", {
    className: sectionAction
  }, accessToken && userName ? /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("span", {
    className: user
  }, userName), /*#__PURE__*/React.createElement(Button, {
    type: "secondary",
    onClick: logoutAction
  }, chrome.i18n.getMessage('options_log_out'))) : /*#__PURE__*/React.createElement(Button, {
    type: "secondary",
    onClick: loginAction
  }, chrome.i18n.getMessage('options_log_in')))), /*#__PURE__*/React.createElement("div", {
    className: section
  }, /*#__PURE__*/React.createElement("div", {
    className: sectionLabel
  }, chrome.i18n.getMessage('options_shortcut_title')), /*#__PURE__*/React.createElement("div", {
    className: sectionAction
  }, /*#__PURE__*/React.createElement(Button, {
    type: "primary",
    onClick: setShortcuts
  }, chrome.i18n.getMessage('options_shortcut_record')))), /*#__PURE__*/React.createElement("div", {
    className: section
  }, /*#__PURE__*/React.createElement("div", {
    className: sectionLabel
  }, chrome.i18n.getMessage('options_app_title')), /*#__PURE__*/React.createElement("div", {
    className: sectionAction
  }, /*#__PURE__*/React.createElement("a", {
    href: "https://apps.apple.com/us/app/pocket-save-read-grow/id309601447",
    target: "_blank",
    rel: "noopener noreferrer"
  }, /*#__PURE__*/React.createElement("img", {
    className: appIcon,
    src: "https://assets.getpocket.com/web-ui/assets/apple-app-store-badge.2928664fe1fc6aca88583a6f606d60ba.svg",
    alt: chrome.i18n.getMessage('options_app_apple')
  })), /*#__PURE__*/React.createElement("a", {
    className: google,
    href: "https://play.google.com/store/apps/details?id=com.ideashower.readitlater.pro",
    target: "_blank",
    rel: "noopener noreferrer"
  }, /*#__PURE__*/React.createElement("img", {
    className: appIcon,
    src: "https://assets.getpocket.com/web-ui/assets/google-play-badge.db9b21a1c41f3dcd9731e1e7acfdbb57.png",
    alt: chrome.i18n.getMessage('options_app_google')
  })))), /*#__PURE__*/React.createElement("div", {
    className: section
  }, /*#__PURE__*/React.createElement("div", {
    className: sectionLabel
  }, chrome.i18n.getMessage('options_theme_title')), /*#__PURE__*/React.createElement("div", {
    className: sectionAction
  }, /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("input", {
    id: "light",
    type: "radio",
    name: "light",
    onChange: () => updateTheme('light'),
    checked: storedTheme === 'light'
  }), /*#__PURE__*/React.createElement("label", {
    htmlFor: "light"
  }, chrome.i18n.getMessage('options_theme_light'))), /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("input", {
    id: "dark",
    type: "radio",
    name: "dark",
    onChange: () => updateTheme('dark'),
    checked: storedTheme === 'dark'
  }), /*#__PURE__*/React.createElement("label", {
    htmlFor: "dark"
  }, chrome.i18n.getMessage('options_theme_dark'))), /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("input", {
    id: "system",
    type: "radio",
    name: "system",
    onChange: () => updateTheme('system'),
    checked: storedTheme === 'system'
  }), /*#__PURE__*/React.createElement("label", {
    htmlFor: "system"
  }, chrome.i18n.getMessage('options_theme_system'))))), /*#__PURE__*/React.createElement("footer", {
    className: footer
  }, /*#__PURE__*/React.createElement("div", {
    className: footerLinks
  }, /*#__PURE__*/React.createElement("a", {
    href: "https://help.getpocket.com/",
    target: "_blank",
    rel: "noopener noreferrer"
  }, chrome.i18n.getMessage('options_need_help')), /*#__PURE__*/React.createElement("a", {
    href: "https://getpocket.com/contact_support?field3=Question%20about%20Pocket%20Extension",
    target: "_blank",
    rel: "noopener noreferrer"
  }, chrome.i18n.getMessage('options_email_us')), /*#__PURE__*/React.createElement("div", {
    className: footerFollow
  }, chrome.i18n.getMessage('options_follow'), /*#__PURE__*/React.createElement("div", {
    className: footerFollowIcons
  }, /*#__PURE__*/React.createElement("a", {
    target: "_blank",
    rel: "noopener noreferrer",
    href: "https://www.facebook.com/pocket/"
  }, /*#__PURE__*/React.createElement(FacebookIcon, null)), /*#__PURE__*/React.createElement("a", {
    target: "_blank",
    rel: "noopener noreferrer",
    href: "https://twitter.com/pocket/"
  }, /*#__PURE__*/React.createElement(TwitterIcon, null)), /*#__PURE__*/React.createElement("a", {
    target: "_blank",
    rel: "noopener noreferrer",
    href: "https://www.instagram.com/pocket/"
  }, /*#__PURE__*/React.createElement(InstagramIcon, null))))), /*#__PURE__*/React.createElement("div", {
    className: footerCopyright
  }, /*#__PURE__*/React.createElement(PocketLogoIcon, null), /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("p", {
    dangerouslySetInnerHTML: {
      __html: chrome.i18n.getMessage('options_family').replace('Mozilla', '<a href="https://mozilla.org/about/" rel="noopener noreferrer" target="_blank">Mozilla</a>')
    }
  }), /*#__PURE__*/React.createElement("div", null, /*#__PURE__*/React.createElement("span", null, "\xA9 ", new Date().getFullYear(), " Read It Later, Inc."), /*#__PURE__*/React.createElement("a", {
    href: "https://getpocket.com/privacy/?src=extension",
    rel: "noopener noreferrer",
    target: "_blank"
  }, chrome.i18n.getMessage('options_privacy')), /*#__PURE__*/React.createElement("a", {
    href: "https://getpocket.com/tos/?src=extension",
    rel: "noopener noreferrer",
    target: "_blank"
  }, chrome.i18n.getMessage('options_terms'))))))));
};

const root = document.getElementById('pocket-extension-anchor');
ReactDOM.render( /*#__PURE__*/React.createElement(OptionsApp, null), root);
