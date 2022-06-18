#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e1="nvim --server " + "$var" + " --remote-send " + "`'" + ":quit\<cr>" +  "`'" 
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e1
# Start-Sleep -Milliseconds 200
# Invoke-Expression $e1
# Invoke-Expression $e2
