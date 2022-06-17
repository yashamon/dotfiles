#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + "`'" + 'q' + ':e ' + " $file" + '<cr>'+"`'"
Invoke-Expression $e
