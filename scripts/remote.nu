def main [line: string, buffer?: string] {
echo $line
let var = $"(open ~/servername.txt | str trim )"
let buf = (open ~/filename.txt | str trim) 
#mjm makes a mark
let exec = $"nvim --server ($var) --remote-send '<esc>mjm:buffer ($buf)<cr><esc>:($line)<cr>'"
# let exec = $"nvim --server ($var) --remote-send ':buffer stableincompleteness.tex<cr>'"

echo $exec
nu -c $exec
}

