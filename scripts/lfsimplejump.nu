def main [] {
let res = $"(fd . -H -I -d 1 | fzf --reverse --header='Jump to location' | str replace '\\' '' | str trim)"
echo $res
if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
}
