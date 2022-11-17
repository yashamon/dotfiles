def main [f: string] {
let $newfile = '@_' + $"($f)"
$newfile
let $a = ( open $f | lines | each -n { |l| $"($l.index + 1)" + ': ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '\.@@@' | str replace -a '\.\s+' ( '\. @' + $"($l.index + 1)" + ':+++' ) })
$a | save temp
let $c = ( open temp | into string | str replace -a "\n" '' )
$c
( $c | str replace -a '\.\s+' "\n" | str replace -a '\.@' "\n" | str replace -a '$' '' | str replace -a '\\' '' | str replace -a '{' '' | str replace -a '}' '' ) | save $newfile
}




