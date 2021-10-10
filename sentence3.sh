awk '{print ln++  ":  "  $0 }' kan.tex | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' |  awk '{printf "%s+",$0} END {print "NR"}' | fzf

