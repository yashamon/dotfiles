def main [] {
let res = $"(fd . C:/Users/yasha -H -I | fzf --reverse --header='Jump to location' | str trim | sed s/\\/\//g)"
lf -remote $"send cd \"($res)\"" 
}
