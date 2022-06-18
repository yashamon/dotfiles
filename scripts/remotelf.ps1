#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e2
lf -remote "send quit"
# $e1="nvim --server " + "$var" + " --remote-send " + "`'" + "q" +  "`'"
# Invoke-Expression $e1
# Invoke-Expression $e2
