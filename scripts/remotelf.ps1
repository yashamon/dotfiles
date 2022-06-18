#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e1="nvim --server " + "$var" + " --remote-send " + "`'" + "q" +  "`'" 
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e1
Invoke-Expression $e2
