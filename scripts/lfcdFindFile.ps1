
$res= fd . $HOME -t f -H | fzf --reverse --header='Jump to location' | sed s/\\/\\\\/g
lf -remote "send select `\`"$res\\`\`""

