def main [f: string] {
let $newfile = '@_' + "$f"
let $a = ( open $f | lines | each -n { |l| $"($l.index)" + ': ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '.@@@' | str replace -a '\.\s+' ( '\. @' + $"($l.index)" + ':+++' ) })
$a | save temp
let $c = ( open temp | into string | str replace -a '\n' '' )
let $d = ( $c | str replace -a '\.\s+' '\.@\n' | str replace -a '\.@' '\.@\n' | str replace -a '$' '' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' '' )
}




