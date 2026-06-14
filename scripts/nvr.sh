#! /bin/sh 

var=$(cat ~/servername.txt)   
~/.local/bin/nvr --servername $var --remote-send '<esc>:w<cr>' 
$2; ~/.local/bin/nvr --servername $var --remote-silent $1 $2
