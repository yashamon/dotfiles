def main [f: string] {
let $newfile = '@_' + "$f"
let $a = open $f 
let $c = ( $a | into string | str replace -a 'b' '' )
let $d = $c  
$d
}




