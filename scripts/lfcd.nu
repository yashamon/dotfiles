def main [...ops] {
let exec = "C:\\Users\\yasha\\scoop\\shims\\lf.exe -last-dir-path=C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2XX.tmp"
^$exec
}
main
let dir = ((open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2XX.tmp") | str trim)
cd $dir
$dir | clip

