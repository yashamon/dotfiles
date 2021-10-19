// Version: 6.7.3
// Date: Nov 22, 2020
//
// TeX for Gmail written by Valery Alexeev <va.email.tex@gmail.com> (C)2010-... 
// License: http://creativecommons.org/licenses/by-nc-sa/3.0/
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.
      
var va_o="initial state";chrome.runtime.onMessage.addListener(function(request,sender,sendResponse){if(request.va_o=="changed"){va_o="changed";chrome.tabs.query({active:true,currentWindow:true},function(tabs){for(var k=0;k<tabs.length;k++){chrome.tabs.sendMessage(tabs[0].id,{action:"options-changed"},function(){})}})}if(request.va_o=="update?"){if(va_o=="changed"){sendResponse({answer:"yes"});va_o="stable"}else{sendResponse({answer:"no"})}}});chrome.runtime.onInstalled.addListener(function(details){chrome.tabs.query({},function(tabs){for(var k=0;k<tabs.length;k++){var tab=tabs[k];var url=tab.url;if(url&&url.match(/(mail|inbox).google.com/)){chrome.tabs.reload(tab.id)}}})});