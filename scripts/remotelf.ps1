#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
lf -remote "send quit"
# $e1="nvim --server " + "$var" + " --remote-send " + "`'" + "q" +  "`'"
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e2
# Start-Sleep -Milliseconds 200
# Invoke-Expression $e1
# Invoke-Expression $e2
