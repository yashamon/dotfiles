#!nu
let res = $"(fd . -H -I -d 1 | fzf --reverse --header='Jump to location' | sed 's/\\/\//g')"
lf -remote $"send cd ($res)"

