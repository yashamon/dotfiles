def main [f: string] {
let basename = $"($f | str trim | path basename)"
let newfile = $"($f | str trim | path dirname)" + '/@s_' + $basename
$newfile
let a = ( open $f | lines | each -n { |l| $" ($f)" + $":($l.index + 1):" + ' ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '\.@@@' | str replace -a '\.\s+' ( '\. ' +  $" ($f)" + $":($l.index + 1):" ) })
$a | save C:/Users/yasha/temp.tex
let c = ( open C:/Users/yasha/temp.tex | into string | str replace -a "\n" '' )
$c
let d = ( $c | str replace -a '\.\s+' "\n" | str replace -a '\.@' "\n" | str replace -a '\$' ' ' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' ' ' | str replace -a '@@ '  "\n" | str replace -a '% ' ' ' | str replace -a '-' ' ' | str replace -a '^' ' ' | str replace -a '_' ' ' | str replace -a '(' ' ' | str replace -a ')' ' ' | str replace -a ']' ' ' | str replace -a '[' ' ') 
$d 
$d | save $newfile
print "success"
}




