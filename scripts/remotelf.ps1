#!/bin/pwsh
$file=$args
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + "`'" + '\<C-\>\<C-n>' + ':e ' + " $file" + '<cr>'+"`'"
Invoke-Expression $e
