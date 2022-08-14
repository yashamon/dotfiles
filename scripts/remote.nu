def main [line: string; buf: string] {
echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
echo $buf
let var = (cat ~/servername.txt)
echo $var
let exec = $"($var) --remote-send \':buffer ($buf)<cr><esc>:($line)<cr>\'"
echo $exec
nvim --server $exec
}

