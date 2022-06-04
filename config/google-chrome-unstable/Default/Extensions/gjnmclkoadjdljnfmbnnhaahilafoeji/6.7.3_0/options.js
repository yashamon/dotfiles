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
      
var va_cae,va_ce,va_cf,va_ccf,va_vae,va_vm,va_vf,va_vcf,va_am,va_tn,va_csf,va_vsf,va_tep,va_mg;var va_ls,va_dpr,va_ma,va_lbc,va_bg2;function va_sisp(){if(va_tep==0){va_ls="https://latex.codecogs.com/gif.latex?";va_bg2="%20%5Cbg_white%20";if(va_mg==0){va_dpr="%5Cdpi%7B110%7D"+va_bg2;va_ma=1;va_lbc=10}else{va_dpr="%5Cdpi%7B300%7D"+va_bg2;va_ma=0.3667;va_lbc=29}}if(va_tep==1){va_ls="https://s0.wp.com/latex.php?";va_bg2="ffffff";va_dpr="zoom=1&bg="+va_bg2+"&fg=000000&s=0&latex=";if(va_mg==0){va_ma=1;va_lbc=10}else{va_dpr="zoom=3&bg="+va_bg2+"&fg=000000&s=0&latex=";va_ma=0.33333333;va_lbc=30}}}function va_got(update,fun,args){if(update){chrome.storage.sync.get({va_ccf:"font-style:italic;",va_vcf:"font-size:118%; font-family:STIXGeneral,STIX-Regular,Cambria Math,serif;",va_tep:1,va_mg:1,va_scb:0,va_svb:0,va_svm:0,va_sft:0},function(items){va_ccf=items.va_ccf;va_vcf=items.va_vcf;va_tep=items.va_tep;va_mg=items.va_mg;va_scb=items.va_scb;va_svb=items.va_svb;va_svm=items.va_svm;va_sft=items.va_sft;va_css();va_sisp();fun.apply(this,args)})}else{fun.apply(this,args)}}function save_options(){function getValue(names){var choices=document.getElementsByName(names);for(i=0;i<choices.length;i++){if(choices[i].checked){return i}}}va_ccf=document.getElementById("va_ccf").value;va_vcf=document.getElementById("va_vcf").value;va_tep=getValue("va_tep");va_mg=getValue("va_mg");va_scb=getValue("va_scb");va_svb=getValue("va_svb");va_svm=getValue("va_svm");va_sft=getValue("va_sft");chrome.storage.sync.set({va_ccf:va_ccf,va_vcf:va_vcf,va_tep:va_tep,va_mg:va_mg,va_scb:va_scb,va_svb:va_svb,va_svm:va_svm,va_sft:va_sft},function(){});chrome.runtime.sendMessage({va_o:"changed"},function(){})}function va_css(){va_csf=va_ccf?va_ccf.replace(/\"/g,""):"";va_vsf=va_vcf?va_vcf.replace(/\"/g,""):""}function restore_options(){function setValue(variable,names){var choices=document.getElementsByName(names);for(i=0;i<choices.length;i++){if(i==variable){choices[i].checked=true}else{choices[i].checked=false}}}va_got(true,function(){va_css();setValue(va_ce,"va_ce");setValue(va_cf,"va_cf");var el=document.getElementById("va_ccf");if(el){el.value=va_ccf}var el=document.getElementById("va_vcf");if(el){el.value=va_vcf}setValue(va_tep,"va_tep");setValue(va_mg,"va_mg");setValue(va_scb,"va_scb");setValue(va_svb,"va_svb");setValue(va_svm,"va_svm");setValue(va_sft,"va_sft")})}function va_rcf(){var el=document.getElementById("va_ccf");el.value="font-style:italic;";save_options()}function va_rvf(){var el=document.getElementById("va_vcf");el.value="font-size:118%; font-family:STIXGeneral,STIX-Regular,Cambria Math,serif;";save_options()};