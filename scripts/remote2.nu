def main [line: string, buffer:string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
# echo $buf
let var = $"(cat ~/servername.txt | str trim )"
let buf = ($buffer | str trim)
echo $var
let exec = $"nvim --server " + ($var) + " --remote-send \':buffer " + ($buffer) + "<cr><esc>:" + ($line) + "<cr>\'"
let exec2 = ($exec | str trim)
^$exec2
# echo $"nvim ($exec)"
# nvim --server $var --remote-send $"':buffer ($buf)<cr><esc>:($line)<cr>'"
}

