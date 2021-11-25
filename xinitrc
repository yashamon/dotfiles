#!/bin/sh
kitty & 
# [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap 
setxkbmap -option "caps:swapescape" & 
wait 1 &
setxkbmap -option "ctrl:swap_rwin_rctl" & 
wait 1 &
xsetroot -cursor_name left_ptr &   
/usr/sbin/xmodmap -e "keycode 37 = Control_L" &  
/usr/sbin/xmodmap -e "keycode 151 = Control_L" & 
/usr/sbin/xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &   
xinput set-button-map 15 1 0 3 4 5 6 7
xcompmgr -c & 
VBoxClient-all & 
kitty &   
feh --bg-scale ~/Downloads/johannes-plenio-RwHv7LgeC7s-unsplash.jpg &
exec xmonad



