foreach ($x in $args) { ln -sr -t . -- "$x" }
lf -remote "send clear"
