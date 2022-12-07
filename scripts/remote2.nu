def main [line: string, buffer:string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
# echo $buf
let var = $"(cat ~/servername.txt | str trim )"
let buf = ($buffer | str trim)
echo $var
let exec = $"nvim --server " + ($var) + " --remote-send \':buffer " + ($buffer) + "<cr><esc>:" + ($line) + "<cr>\'" 
$exec
# ^$exec
# echo $"nvim ($exec)"
# nvim --server $var --remote-send $"':buffer ($buf)<cr><esc>:($line)<cr>'"
}

