def main [line: string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
# echo $buf
let var = $"(cat ~/servername.txt | str trim )"
let buf = $"(cat ~/filename.txt | str trim )"
echo $var
let exec = $"nvim --server " + ($var) + " --remote-send \':buffer " + ($buf) + "<cr><esc>:" + ($line) + "<cr>\'"
$exec
^$exec
# echo $"nvim ($exec)"
# nvim --server $var --remote-send $"':buffer ($buf)<cr><esc>:($line)<cr>'"
}

