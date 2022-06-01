lualatex $args[0] $args[1] $args[2] $args[3] $args[4] $args[5] $args[6] $args[7] $args[8] $args[9]
$myfile=(Get-item $args[-1]).BaseName
$mypdfstring=$myfile+".pdf"
$mylogstring=$myfile+".log"
sync=$myfile".synctex.gz"
if (-Not (grep -q Fatal .\buildback\$mylogstring)) {
echo cool
echo $mypdfstring
mkdir .\build
foreach ($i in Get-ChildItem -Path .\buildback) {Copy-Item $i .\build\}
}
