#!/opt/microsoft/powershell/7/pwsh
$a=$args[0]
$s=':' + $a + '<cr>'
nvim --server (cat ~/servername.txt) --remote-send "$s"
