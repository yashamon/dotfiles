def main [x] { 
let p = ($x | into int)
def fac [p:int] { ($p == 1) {$p} else {$p*fac($p-1)}}
}
