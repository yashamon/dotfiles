def main [files] { 
$files | split row " " | each { |x| rm --trash $x }
}

