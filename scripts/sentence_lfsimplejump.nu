1:  #!nu
2:++++ -H -I -d 1 | fzf --reverse --header='Jump to location' | sed 's/  / //g')"