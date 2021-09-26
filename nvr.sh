 #! /bin/sh
cat ~/servername.txt; ~/.local/bin/nvr --servername "$(< ~/servername.txt)" --remote-silent
