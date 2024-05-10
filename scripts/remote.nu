def main [line: string, buffer?: string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
# echo $buf
let var = $"(open ~/servername.txt | str trim )"
let buf = (open ~/filename.txt | str trim) 
# echo $buffer > ~/buffer.txt
# let buf = ''
let exec = $"nvim --server ($var) --remote-send `<esc>mjm':<esc>:buffer ($buf)<cr><esc>:($line)<cr>`"
echo $exec
nu -c $exec
# ^$"nvim --server ($var)"
# --remote-send '<esc>:buffer ($buf)<cr><esc>:($line)<cr>'"
# ^$"("nvim --server " + ($var) + " --remote-send '<esc>:buffer " + ($buf))"

# + "<cr><esc>:" + ($line) + "<cr>'")"
# nvim --server $var --remote-send $"\'<esc>:buffer ($buf)<cr><esc>:($line)<cr>\'"
}

