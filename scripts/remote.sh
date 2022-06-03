$line=$1
$buf=$2
$var=$(cat ~/servername.txt)
$e=nvim --server " + "$var" + " --remote-send " + 
"`'"+':' + "buffer $buf" + '<cr><esc>:' + "$line" 
+ '<cr>'+ "`'" 
echo $e
Invoke-Expression $e
$c=nvim --server " + "$var" + " --remote-send " + "`'"
echo $c


