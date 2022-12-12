foreach ($x in $args) {$p = (Split-Path -Path $x).parent; robocopy $p . $x} 
echo $args > 'C:/Users/yasha/args.txt'
