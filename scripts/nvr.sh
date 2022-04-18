#! /bin/sh 

var=$(cat ~/servername.txt)   
~/.local/bin/nvr --servername $var --remote send '<esc>:w<cr>'.--remote-silent $1 $2
