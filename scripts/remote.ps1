#!/bin/pwsh
$line=$args[0]
$buf=$args[1]
echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
echo $buf
$var=(cat ~/servername.txt)
echo $var
$e="nvim --server " + "$var" + " --remote-send " + "`'" + ':' +
'buffer ' + " $buf" + '<cr><esc>:' + "$line"+'<cr>'+"`'"
echo $e
Invoke-Expression $e
