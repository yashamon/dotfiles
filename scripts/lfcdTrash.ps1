foreach ($x in $args) { Remove-ItemSafely -Option AllScope $x }
echo $args > 'C:/Users/yasha/args.txt'
