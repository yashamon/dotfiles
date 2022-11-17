def main [f: string] {
let $newfile = '@_' + "$f"
let $a = ( open $f | lines | each -n { |l| $"($l.index)" + ': ' + $"($l.item)"  + "@" | str replace -a '\.\s+@' '.@@@' | str replace -a '\.\s+' ( '\. @' + $"($l.index-1)" + ':+++' ) } )
let $c = ( $a | str replace -a '`n' '' )
let $d = ( $c | str replace -a '\.\s+' '\.@`n' | str replace -a '\.@' '\.@`n' | str replace -a '$' '' | str replace -a '\\' ' ' | str replace -a '{' ' ' | str replace -a '}' '' )
echo $d 
}




