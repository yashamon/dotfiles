def main [files] { 
$files | each { |x| rm --trash $x }
}

