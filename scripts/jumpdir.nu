def main [] {
let res = $"(fd . ($env.HOME) -t d -H | fzf --reverse --header='Jump to location' | str trim )"
lf -remote $"send cd \"($res)\"" 
}



