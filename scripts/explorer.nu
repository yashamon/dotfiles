def main [file] {
let cmd =  "openwith " + "'" + $file + "'"
nu -c $cmd
}

