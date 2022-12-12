foreach ($x in $args) {$p = (get-item $x).parent; robocopy $p . $x} 
echo $args > 'C:/Users/yasha/args.txt'
