def main [f: string] {
# $"($f | str trim | path dirname)"
let $newfile =  '/tmp'+ '/@l_' + $"($f | str trim | path basename)"
let $a = ( open $f | lines | each -n { |l| $" ($f)" + $":($l.index + 1):" + ': ' + $"($l.item)" } )
let $d = ( $a | str replace -a '\$' ' ' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' '' | str replace -a '% ' ' ' | str replace -a '[' ' ' | str replace -a ']' ' ' | str replace -a '(' ' ' | str replace -a ')' ' ' | str replace -a '-' ' ' )
$d | save $newfile
print "success"
}




