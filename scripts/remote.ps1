#!/bin/pwsh
$line=$args[0]
$buf=$args[1]
echo $buf > C:\Users\yasha\sumatra.txt
$file=Get-Item $buf
$file.Basename 
echo $line
echo $buf
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + "`'" + ':' +
'buffer ' + " $file.Basename" + '<cr><esc>:' + "$line"+'<cr>'+"`'"
echo $e
Invoke-Expression $e
