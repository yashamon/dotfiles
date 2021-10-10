#! /bin/sh 


awk '{print NR ":  "  $0 }' $1 | awk -v RS= '{gsub(/\.[[:space:]]*\n/,".@???\n",$0);print}'| awk -v RS= '{gsub(/\.\n/,".@%%\n",$0);print}'| awk '{gsub(/\.\s/,"&"NR":++++ ",$0);print}' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' | tr '\n' ' ' | sed 's|\.\s*|&\n''|g'  | sed 's|\.@|&\n''|g'  > sentence_${1}




