#! /bin/sh 
touch more
cat $1 | tr '\n' ' ' > more 
touch ${1}_sentence
sed 's|[[:alpha:]]\{3\}\.[[:blank:]]*|&\'$'\n''|g' more > $1_sentence
cat $1_sentence 
exit
