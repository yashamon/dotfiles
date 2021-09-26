 #! /bin/sh 

var=$(cat ~/servername.txt)   
~/.local/bin/nvr --servername $var --remote-silent $1 $2
