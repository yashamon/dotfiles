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
      
document.addEventListener("DOMContentLoaded",restore_options);document.getElementById("va_rcf").addEventListener("click",va_rcf);document.getElementById("va_rvf").addEventListener("click",va_rvf);var els=document.getElementsByClassName("text");len=els.length;for(k=0;k<len;k++){els[k].addEventListener("keyup",save_options)}var els=document.getElementsByClassName("radio");len=els.length;for(k=0;k<len;k++){els[k].addEventListener("click",save_options)};