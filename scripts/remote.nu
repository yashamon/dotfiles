def main [line: string; buf: string] {
echo $buf > 'C:\Users\yasha\sumatra.txt'
# echo $line
# echo $buf
let var = (cat ~/servername.txt)
echo $var
let exec = "--server " + $var + " --remote-send ':buffer " + "$buf" + "<cr><esc>:" + $line + "<cr>'"
echo $exec
echo $"nvim ($exec)"
# nvim $"--server ($var) --remote-send :buffer ($buf)<cr><esc>:($line)<cr>"
nvim $"nvim ($exec)"
}

