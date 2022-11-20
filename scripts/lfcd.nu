# Change working dir in powershell to last dir in lf on exit.
#
# You need to put this file to a folder in $ENV:PATH variable.
#
# You may also like to assign a key to this command:
#
#     Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
#         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
#         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('lfcd.ps1')
#         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
#     }
#
# You may put this in one of the profiles found in $PROFILE.
def main [opt?] {
let pwd = ((pwd) | str trim | str replace -a '/' '\\')
let tmp = "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp"
# \\AppData \\Local\\Temp\\tmpZ714.tmp"
touch C:\\Users\\yasha\\temp.tmp 
# touch C:/Users/yasha/AppData/Local/lf/temp.tmp
# let tmp = ((pwsh -c [System.IO.Path]::GetTempFileName() 2> null) | str trim)
$tmp
let exec = "C:\\Users\\yasha\\scoop\\shims\\lf.exe -last-dir-path=C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp"
^$exec
let dir = ((open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp") | str trim)
if (($dir | path type)  == dir) {
            echo $dir | clip
        }
# open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp") | str trim) | clip
}
