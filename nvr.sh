 #! /bin/sh 

var =$(cat ~/servername.txt)   
echo var
~/.local/bin/nvr --servername "$var" --remote-silent
