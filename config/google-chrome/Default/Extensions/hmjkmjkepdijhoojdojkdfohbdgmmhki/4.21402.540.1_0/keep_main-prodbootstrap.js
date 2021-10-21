const availableLocales = JSON.parse('\x5b\x22en\x22, \x22am\x22, \x22ar\x22, \x22bn\x22, \x22bg\x22, \x22ca\x22, \x22cs\x22, \x22cy\x22, \x22da\x22, \x22de\x22, \x22el\x22, \x22en_GB\x22, \x22es\x22, \x22es_419\x22, \x22et\x22, \x22eu\x22, \x22fa\x22, \x22fi\x22, \x22fil\x22, \x22fr\x22, \x22gl\x22, \x22gu\x22, \x22hi\x22, \x22hr\x22, \x22hu\x22, \x22id\x22, \x22is\x22, \x22it\x22, \x22iw\x22, \x22ja\x22, \x22kn\x22, \x22ko\x22, \x22lt\x22, \x22lv\x22, \x22ml\x22, \x22ms\x22, \x22my\x22, \x22nl\x22, \x22no\x22, \x22pl\x22, \x22pt_BR\x22, \x22pt_PT\x22, \x22ro\x22, \x22ru\x22, \x22sk\x22, \x22sl\x22, \x22sr\x22, \x22sv\x22, \x22sw\x22, \x22ta\x22, \x22te\x22, \x22th\x22, \x22tr\x22, \x22uk\x22, \x22ur\x22, \x22vi\x22, \x22zh_CN\x22, \x22zh_TW\x22, \x22zu\x22\x5d'); const availableRtlLocales = JSON.parse('\x5b\x22ar\x22, \x22fa\x22, \x22iw\x22, \x22ur\x22\x5d'); const prefix = '\/keep_main-prod'; _notes_flag_initialData = {"n_ugat":true,"n_ccd":[null,[]],"n_j":"https://keep.google.com/jserror","n_wcv":"3.3.0.142","n_eod":true,"n_ton":"keep","n_edlh":false,"n_amt":["audio/aac","image/jpeg","image/png","image/gif"],"n_eliw":false,"n_edtt":false,"n_ats":"https://www.googleapis.com/auth/client_channel","n_k":"AIzaSyBx4qIYtgGv7SYh3nV8weWhXKZjIcaYKek","n_ur":"edit","n_hak":"AIzaSyCu0mGMINziM4XKlidxSzycNQUx9qjr48g","n_mpak":"AIzaSyCOKFFECsTTlV2-EzQ_MywNsvnYJqDO-5A","n_tak":"AIzaSyAqeqEBGxTXZXOnu2gUrYCz9hsfKUr45vU","n_t":true,"n_cc":"TR, EC, SH, LB, RB, AN, EX, PI, DR, CO, MI, NC, SNB, IN","n_eil":true,"n_the":true,"n_s":"https://www.googleapis.com/auth/memento","n_sit":["image/jpeg","image/png","image/gif"],"n_dt":"","n_fpae":"https://keep-pa.googleapis.com","n_detl":false,"n_espuf":false,"n_tipe":true,"n_npv":"v1","n_nmb":1800000,"n_csbs":120,"n_scp":false,"n_pau":"https://people-pa.googleapis.com/","n_eau":false,"n_atas":"https://www.googleapis.com/auth/taskassist.readonly","n_rs":4,"n_tcur":{"0":[null,null,null,"/keep_main-prod_app_styles_rtl_default.css"]},"n_tcu":{"0":[null,null,null,"/keep_main-prod_app_styles_ltr_default.css"]},"n_nib":5000,"n_wfp":false,"n_edmp":true,"n_afoiu":false,"n_ecil":false,"n_taau":"https://taskassist-pa.googleapis.com/","n_ecesu":false,"n_uo":true,"n_oe":true,"n_lcu":false,"n_erwn":false,"n_cp":"CRX","n_eoros":false,"n_nmri":5000,"n_eh":false,"n_tbti":30000,"n_mpau":"https://maps.googleapis.com/maps/api/place/","n_imb":10485760,"n_ep":true,"n_rau":"https://reminders-pa.googleapis.com/","n_c":"192748556389-u13aelnnjsmn5df1voa2d3oimlbd8led.apps.googleusercontent.com","n_uptc":[],"n_tms":604800,"n_efab":false,"n_npd":"content-notes-pa.googleapis.com","n_enbg":false,"n_ss":"https://www.googleapis.com/auth/drive,https://www.googleapis.com/auth/peopleapi.readonly","n_imp":26214400,"n_ars":"https://www.googleapis.com/auth/reminders","n_deau":"https://www.googleapis.com/","n_ecpde":false};
// Locales sent from the server use underscore, not hyphen, to separate region code.
let locale = window.navigator.language.replace('-', '_');
const langSynonyms = {
  'he': 'iw',
}
if (langSynonyms[locale]) {
  locale = langSynonyms[locale];
}

const direction = availableRtlLocales.indexOf(locale) >= 0 ? 'rtl' : 'ltr';

const head = document.getElementsByTagName('head')[0];

// The set of available locales matches the window.navigator.language casing rules (eg. 'en_GB')
// but the generated JS files are all in lower case. We therefore need to request the lowercase
// version, otherwise this does not find the symbols file.
const symbolsLocaleName = availableLocales.indexOf(locale) >= 0 ? locale.toLowerCase() : 'en';
const symbolsEl = document.createElement('script');
symbolsEl.setAttribute('type', 'text/javascript');
symbolsEl.setAttribute('src', 'i18n/symbols_' + symbolsLocaleName + '.js');
head.appendChild(symbolsEl);

const mode = 'app';

const cssFileName = prefix + '_' + mode + '_styles_' + direction + '_default.css';
const cssEl = document.createElement('link');
cssEl.id = 'preloaded-theme';
cssEl.setAttribute('rel', 'stylesheet');
cssEl.setAttribute('href', cssFileName);
head.appendChild(cssEl);

const jsFileName = prefix + '_' + mode + '_script_' + direction + '.js';
const jsEl = document.createElement('script');
jsEl.setAttribute('type', 'text/javascript');
jsEl.setAttribute('src', jsFileName);
head.appendChild(jsEl);

let cssLoaded = false;
let jsLoaded = false;
let notesAppLoaded = false;

const onLoadFn = function() {
  if (cssLoaded && jsLoaded && !notesAppLoaded) {
    notesAppLoaded = true;
    initTurndownApp();
  }
};

cssEl.onload = function() {
  cssLoaded = true;
  onLoadFn();
};
jsEl.onload = function() {
  jsLoaded = true;
  onLoadFn();
};

