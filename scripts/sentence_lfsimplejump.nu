1:  #!nu 2:  let res =  "(fd . 
2:++++ -H -I -d 1 | fzf --reverse --header='Jump to location' | sed 's/  / //g')" 3:  lf -remote  "send cd ( res)" 4:   