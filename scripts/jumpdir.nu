def main [] {
let res = $"(fd . $env.HOME -t d -H | fzf --reverse --header='Jump to location' )"

if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
}



