def main [f: string] {
$newfile='@_' + "$f"
$a = open $f | lines | each -n { |l| $"(l.index)" + ': ' + $"(l.item)"  + "@") | str replace -a "\.\s+@" ".@@@" |  str replace -a "\.\s+" ("\. @"+ $"(l.index)" + ':+++') }
$b = $a
$c = $b str replace -a "`n" "" 
$d = $c str replace -a "\.\s+" "\.@`n" | str replace -a "\.@" "\.@`n" | str replace -a '\$' ' ' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' ' ' 
echo $d > $newfile
}




