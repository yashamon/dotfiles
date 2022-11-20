def main [x] { 
let p = $x | into int
def fac [] { ($p == 1) {1} else {fac($p-1)}}
}
