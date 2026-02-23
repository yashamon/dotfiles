def main [] {
let res = $"(fd . / -t d -H | fzf --reverse --header='Jump to location' | str trim | sed s/\\/\//g)"
lf -remote $"send cd \"($res)\"" 
}







