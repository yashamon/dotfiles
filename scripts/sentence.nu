def main [f: string] {
let $newfile = $"($f | str trim | path dirname)" + '/@_' + $"($f | str trim | path basename)"
$newfile
let $a = ( open $f | lines | each -n { |l| $" ($f)" + $":($l.index + 1):" + ' ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '\.@@@' | str replace -a '\.\s+' ( '\. ' +  $" ($f)" + $":($l.index + 1):" ) })
$a | save temp
let $c = ( open temp | into string | str replace -a "\n" '' )
$c
let $d = ( $c | str replace -a '\.\s+' "\n" | str replace -a '\.@' "\n" | str replace -a '\$' ' ' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' ' ' | str replace -a '@@ '  "\n" | str replace -a '% ' ' ' | str replace -a '-' ' ' | str replace -a '^' ' ' | str replace -a '_' ' ' | str replace -a '(' ' ' | str replace -a ')' ' ' | str replace -a ']' ' ' | str replace -a '[' ' ') 
$d 
$d | save $newfile
}




