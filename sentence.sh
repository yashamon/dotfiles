#! /bin/sh 
touch more 
touch sentence_${1}
cat $1 | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|   
 tr '\^' ' ' | tr '\_' ' '  > more 
sentence2.sh more 

#sed 's|[[:alpha:]]\{3\}\.[[:blank:]]*|&\'$'\n''|g' more > sentence_${1} 
#cat sentence_${1} 
