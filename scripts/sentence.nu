def main [f: string] {
let $newfile = '@_' + "$f"
let $a = ( open $f | lines | each -n { |l| $"($l.index)" + ': ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '.@@@' | str replace -a '\.\s+' ( '\. @' + $"($l.index)" + ':+++' ) } )
$a
let $c = ( $a | into string | str replace -a '\n' '' )
$c
let $d = ( $c | str replace -a '\.\s+' '\.@\n' | str replace -a '\.@' '\.@\n' | str replace -a '$' '' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' '' )
}




