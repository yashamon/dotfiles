foreach ($x in $args) { $f= ( Split-Path $x -leaf ); new-Item -ItemType SymbolicLink -Path "$f" -Target "$x" }
lf -remote "send clear"
