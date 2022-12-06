def main [] {
let res = $"(fd . C:/Users/yasha -t d -H | fzf --reverse --header='Jump to location' | str trim | str replace '\\$' '')"
lf -remote $"send cd \"($res)\"" 
}



