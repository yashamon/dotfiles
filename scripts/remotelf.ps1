#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
lf -remote "send quit"
lf -remote "send quit"
Start-Sleep -Milliseconds 2000
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e2

# $e1="nvim --server " + "$var" + " --remote-send " + "`'" + "q" +  "`'"
# Invoke-Expression $e1
# Invoke-Expression $e2
