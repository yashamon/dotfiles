#!/bin/pwsh
$a=$args
echo $a
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + ':' + "$a" + '<cr>'
echo $e
Invoke-Expression $e
