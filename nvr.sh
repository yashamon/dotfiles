 #! /bin/sh
cat ~/servername.txt; /usr/bin/nvr --servername "$(< ~/servername.txt)" --remote-silent
