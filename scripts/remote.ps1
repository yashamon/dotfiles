#!/opt/microsoft/powershell/7/pwsh
$a=$args[0]
echo ":$a<cr>"
nvim --server (cat ~/servername.txt) --remote-send ":$a<cr>"
