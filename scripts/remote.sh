$a=$1
$var=$(cat ~/servername.txt)
$c=nvim --server " + "$var" + " --remote-send " + "`'"
$e=nvim --server " + "$var" + " --remote-send " + "`'"+':' + "$a" + '<cr>'+"`'
echo $e
echo $c
Invoke-Expression "$e"
