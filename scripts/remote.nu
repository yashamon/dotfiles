def main [line: string, buffer: string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
# echo $buf
let var = $"(cat ~/servername.txt | str trim )"
# let buf = ($buffer | str trim | sed s/\\/\//g | path basename ) 
let buf = ''
let exec = "--server " + $var + " --remote-send ':buffer " + $buf + "<cr><esc>:" + $line + "<cr>'"
echo $exec
nvim --server $var --remote-send $"\':buffer ($buf)<cr><esc>:($line)<cr>\'"
}

