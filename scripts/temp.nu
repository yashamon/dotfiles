def main [x] { 
let p = ($x | into int)
fac $p
}
def fac [p:int] { if ($p == 1) {$p} else {[$p (fac ($p - 1))] | math product}
}
