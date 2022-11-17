#!nu
let res = $"(fd . -H -I -d 1 | fzf --reverse --header='Jump to location' | str replace '\.' '' | str replace '\' '')"

if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
