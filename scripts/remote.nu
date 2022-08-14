def main [line: string; duf: string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
echo $duf
let buf = ( $duf | sed 's/.*\\//' )
echo $buf
let var = (cat ~/servername.txt | tr -d '\r' | tr -d '\n' )
echo $var
let exec = "--server " + $var + " --remote-send ':buffer " + $buf + "<cr><esc>:" + $line + "<cr>'"
echo $exec
echo $"nvim ($exec)"
nvim --server $var --remote-send $"':buffer ($buf)<cr><esc>:($line)<cr>'"
}

