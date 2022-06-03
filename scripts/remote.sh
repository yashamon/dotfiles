$a=$1
$var=$(cat ~/servername.txt)
$e="nvim --server " + "$var" + " --remote-send " + ':' 
+ "$a" + '<cr>'
echo $e
Invoke-Expression $e
