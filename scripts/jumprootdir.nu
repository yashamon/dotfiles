def main [] {
let res = $"(fd . / -t d -H | fzf --reverse --header='Jump to location' | str replace '\.' '' | str replace '\\' '' | str replace '\\' '' | str trim)"

if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
}



