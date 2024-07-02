def main [files] { 
$files | split row " " | each { |x| rm -r --trash $x }
}

