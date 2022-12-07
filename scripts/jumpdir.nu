def main [] {
let res = $"(fd . C:/Users/yasha -t d -H | fzf --reverse --header='Jump to location' | str trim | sed s/\\/\//g)"
if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
}



