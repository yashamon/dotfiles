 C:/Users/yasha/dotfiles/scripts/Line.nu:1:: def main [f: string  {
 C:/Users/yasha/dotfiles/scripts/Line.nu:2:: let  newfile =  "( f | str trim | path dirname)" + '/@l_' +  "( f | str trim | path basename)"
 C:/Users/yasha/dotfiles/scripts/Line.nu:3::  newfile
 C:/Users/yasha/dotfiles/scripts/Line.nu:4:: let  a = ( open  f | lines | each  n { |l|  " ( f)" +  ":( l.index + 1):" + ': ' +  "( l.item)"  )
 C:/Users/yasha/dotfiles/scripts/Line.nu:5:: let  d = (  a | str replace  a '  ' ' ' | str replace  a '  ' ' ' | str replace  a '{' ' ' | str replace  a '' '' | str replace  a ' ' ' ' | str replace  a '[' ' ' | str replace  a ' ' ' ' | str replace  a '(' ' ' | str replace  a ')' ' ' | str replace  a ' ' ' ' )
 C:/Users/yasha/dotfiles/scripts/Line.nu:6::  d 
 C:/Users/yasha/dotfiles/scripts/Line.nu:7::  d | save  newfile
 C:/Users/yasha/dotfiles/scripts/Line.nu:8:: print "success"
 C:/Users/yasha/dotfiles/scripts/Line.nu:9:: 
 C:/Users/yasha/dotfiles/scripts/Line.nu:10:: 
 C:/Users/yasha/dotfiles/scripts/Line.nu:11:: 
 C:/Users/yasha/dotfiles/scripts/Line.nu:12:: 
 C:/Users/yasha/dotfiles/scripts/Line.nu:13:: 
