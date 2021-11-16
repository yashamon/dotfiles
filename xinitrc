#!/bin/sh
kitty & 
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
setxkbmap -option caps:escape & 
xsetroot -cursor_name left_ptr &  
setxkbmap -option caps:escape & 
xmodmap -e "keycode 133 = Escape" &  
xmodmap -e "keycode 37 = Control_L" &  
xmodmap -e "keycode 151 = Control_L" & 
xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &  
sleep 20 &
xcompmgr -c & 
VBoxClient-all & 
kitty &   
feh --bg-scale ~/Downloads/johannes-plenio-RwHv7LgeC7s-unsplash.jpg &
exec xmonad



