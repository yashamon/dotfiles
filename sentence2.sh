#!/bin/sh 
touch sentence_${1}
perl -MLingua::EN::Sentence=get_sentences -00 -e '
$t = <>;         # slurp the whole file
$t =~ tr{\n}{ }; # convert newlines to spaces
print "$_\n" for grep { // } @{get_sentences($t)}' > sentence_${1}  
exit
