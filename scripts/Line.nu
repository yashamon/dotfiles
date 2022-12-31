def main [f: string] {
let basename = $"($f | str trim | path basename)"
let newfile = '/tmp' + '/@l_' + $basename
let a = ( open $f | lines | each -n { |l| $"($f)" + $":($l.index + 1)" + ' ' + $"($l.item)" } )
let d = ( $a | str replace -a '\$' ' ' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' '' | str replace -a '% ' ' ' | str replace -a '[' ' ' | str replace -a ']' ' ' | str replace -a '(' ' ' | str replace -a ')' ' ' | str replace -a '-' ' ' )
$d | save $newfile
print "success"
}




