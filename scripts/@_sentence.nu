 C:/Users/yasha/dotfiles/scripts/sentence.nu:1:: def main [f: string  {
 C:/Users/yasha/dotfiles/scripts/sentence.nu:2:: let basename =  "( f | str trim | path basename)"
 C:/Users/yasha/dotfiles/scripts/sentence.nu:3:: let newfile =  "( f | str trim | path dirname)" + '/@_' +  basename
 C:/Users/yasha/dotfiles/scripts/sentence.nu:4::  newfile
 C:/Users/yasha/dotfiles/scripts/sentence.nu:5:: let a = ( open  f | lines | each  n { |l|  " ( f)" +  ":( l.index + 1):" + ' ' +  "( l.item)"  + "@" | str replace  a ' . s+@' ' .@@@' | str replace  a ' . s+' ( ' . ' +   " ( f)" +  ":( l.index + 1):" ) )
 C:/Users/yasha/dotfiles/scripts/sentence.nu:6::  a | save C:/Users/yasha/temp.tex
 C:/Users/yasha/dotfiles/scripts/sentence.nu:7:: let c = ( open C:/Users/yasha/temp.tex | into string | str replace  a " n" '' )
 C:/Users/yasha/dotfiles/scripts/sentence.nu:8::  c
 C:/Users/yasha/dotfiles/scripts/sentence.nu:9:: let d = (  c | str replace  a ' . s+' " n" | str replace  a ' .@' " n" | str replace  a '  ' ' ' | str replace  a '  ' ' ' | str replace  a '{' ' ' | str replace  a '' ' ' | str replace  a '@@ '  " n" | str replace  a ' ' ' ' | str replace  a ' ' ' ' | str replace  a '^' ' ' | str replace  a '_' ' ' | str replace  a '(' ' ' | str replace  a ')' ' ' | str replace  a ' ' ' ' | str replace  a '[' ' ') 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:10::  d 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:11::  d | save  newfile
 C:/Users/yasha/dotfiles/scripts/sentence.nu:12:: 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:13:: 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:14:: 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:15:: 
 C:/Users/yasha/dotfiles/scripts/sentence.nu:16:: 
