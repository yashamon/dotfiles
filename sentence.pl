#!/usr/bin/perl
use warnings;

perl -MLingua::EN::Sentence=get_sentences -00 -e '
$t = <>;         # slurp the whole file
$t =~ tr{\n}{ }; # convert newlines to spaces
print "$_\n" for grep { /graph/ } @{get_sentences($t)}' dijk


