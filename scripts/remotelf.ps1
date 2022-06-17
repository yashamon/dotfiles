#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-silent " + "$file"
Invoke-Expression $e
