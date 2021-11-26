/*
/**
 * @author Senad Dizdar
 * 
 * Copyright (C) 2010-2020, cloudHQ 
 * All rights reserved.
 *b
 */

/*! cloudHQ launches new features to users every day. Users love our fast updates and quick response to bugs.
 * In order to accomplish this we use the popular InboxSDK library (www.inboxsdk.com). Its used by
 * several large organizations: 
 *   Dropbox (https://chrome.google.com/webstore/detail/dropbox-for-gmail-beta/dpdmhfocilnekecfjgimjdeckachfbec)
 *   HubSpot (https://chrome.google.com/webstore/detail/hubspot-sales/oiiaigjnkhngdbnoookogelabohpglmd)
 *   Stripe (https://chrome.google.com/webstore/detail/stripe-for-gmail/dhnddbohjigcdbcfjdngilgkdcbjjhna)
 *   Giphy (https://chrome.google.com/webstore/detail/giphy-for-gmail/andgibkjiikabclfdkecpmdkfanpdapf)
 *   Clearbit (https://chrome.google.com/webstore/detail/clearbit-connect-supercha/pmnhcgfcafcnkbengdcanjablaabjplo)
 * The use of the library is similar to using other popular javascript libraries like jQuery and Underscore
 *
 * The library allows us to load our application code from our server providing our users with fast updates
 * and the ability quickly respond to bugs.
 *
 * The remote code is loaded from here: https://www.cloudhq.net/javascripts/chrome_extension_gmail_html_packaged.js
 *
 */

// global variables
// NOTE: we don't use var becasue we want that variables are declared in global context. 
//       Each of the files is wrapped by Google Chrome into its own enclosure so var really does
//       makes variable global.
// 
g_server_url = "https://www.cloudhq.net/";
var version_date = new Date().toJSON().slice(0,10)
InboxSDK.loadScript(g_server_url + 'javascripts/chrome_extension_gmail_html_packaged.js?v=' + version_date);
