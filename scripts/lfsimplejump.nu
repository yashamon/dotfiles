#!nu
let res = $"(fd . -H -I -d 1 | fzf --reverse --header='Jump to location' | sed 's/\\//g' | 's/\.//g')"

if  ($res | path type) == dir  { echo hello; lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
