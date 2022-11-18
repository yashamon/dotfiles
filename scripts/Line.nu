def main [f: string] {
let $newfile = $"($f | str trim | path dirname)" + '/@_' + $"($f | str trim | path basename)"
$newfile
let $a = ( open $f | lines | each -n { |l| $" ($f)" + $":($l.index + 1):" + ': ' + $"($l.item)"  + "@" } )
let $d = ( $a | str replace -a '$' '' | str replace -a '\\' '' | str replace -a '{' '' | str replace -a '}' '' | str replace -a '% ' '' ) 
$d 
$d | save $newfile
}




