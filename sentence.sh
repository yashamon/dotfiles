#! /bin/sh 
touch more 
touch sentence_${1}
cat $1 | tr '\n' ' ' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  sentence2.sh  > sentence_${1}

#sed 's|[[:alpha:]]\{3\}\.[[:blank:]]*|&\'$'\n''|g' more > sentence_${1} 
#cat sentence_${1} 
