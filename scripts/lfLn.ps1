foreach ($x in $args) { $f= ( Split-Path $x -leaf ); new-Item -ItemType SymbolicLink -Path "$x" -Target "./$f" }
lf -remote "send clear"
