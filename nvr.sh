 #! /bin/sh
cat ~/servername.txt; nvr --servername "$(< ~/servername.txt)" --remote-silent
