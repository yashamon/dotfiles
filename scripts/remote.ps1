#!/bin/pwsh
$a=$args[0]
$b=$args[1]
echo $a
echo $b
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + ':' +
"buffer $b" + '<cr>:<esc>:' + "$a"+'<cr>'
echo $e
Invoke-Expression $e
