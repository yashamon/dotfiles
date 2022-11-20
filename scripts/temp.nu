def main [x] { 
let p = ($x | into int)
def fac [p:int] { ($p == 1) {echo $p} else {$p*fac($p-1)}}
}
