#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
lf -remote "send quit"
# $e1="nvim --server " + "$var" + " --remote-send " + "`'" + "q" +  "`'"
Invoke-Expression $e2
# Invoke-Expression $e1
# Invoke-Expression $e2
