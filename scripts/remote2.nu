def main [line: string, buffer:string] {
# echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
# let buf = ( $duf | sed 's/.*\\//' )
echo $buffer
let var = $"(cat ~/servername.txt | str trim )"
let buf = ($buffer | str trim |  path basename)
echo $buf
echo $var
nvim --server $var --remote-send ($"\':buffer ($buf)<cr><esc>:" + ($line) + "<cr>\'")
# let exec = $"nvim --server ($var) --remote-send \':buffer ($buffer)<cr><esc>: + ($line) + <cr>\'"
}
