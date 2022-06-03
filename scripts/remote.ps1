#!/opt/microsoft/powershell/7/pwsh
$a=$args[0]
$var=(cat ~/servername.txt)
$s=':' + $a + '<cr>'
echo $s
nvim --server $var --remote-send $s
