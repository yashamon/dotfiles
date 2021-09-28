#! /bin/sh 
awk '{print ln++  ":  "  $0 }' $1 | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' > more_${1}
sed 's|\.[[:blank:]]*|[[:blank:]]N|g' more_${1} > sentence_${1} 
rm more_${1}


#awk '{print ln++  ":  "  $0 }' $1 | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' > more_${1}
#sed 's|\.[[:blank:]]*|&\n''|g' more_${1} > sentence_${1} 
#rm more_${1}
#sed 's|[[:alpha:]]\{3\}\.[[:blank:]]*|&\'$'\n''|g' more > sentence_${1} 
#cat sentence_${1}  

#cat $1 | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|    
 #tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' > more_${1}
#sentence2.sh more_${1} 
#rm more_${1}
#awk '{print ln++  ":  "  $0 }' kan.tex |awk '{gsub("\.[[:blank:]]*",". "NR,$0);print}' | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' |  awk '{gsub("\.[[:blank:]]*","\n",$0);print}'  > blah
