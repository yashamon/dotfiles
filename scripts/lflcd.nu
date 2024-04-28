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
let tmp = $"(pwd)"+"temp"
let lf = "$(which lf)"+" last-dir-path="+"$tmp"+" $opt"
^$lf
if ($tmp | path  == file) {
    let dir = $tmp
    rm $tmp
    if ($tmp | path  == dir) {
        if ($dir !== $pwd) {
            cd $dir
        }
    }
}
}
