$a=$args
echo $a
$var=(cat ~/servername.txt)
echo $args
$e="nvim --server " + "$var" + " --remote-send " + ':' + "$a" + '<cr>'
echo $e
Invoke-Expression $e
