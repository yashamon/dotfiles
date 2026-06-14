#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e2="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e2

