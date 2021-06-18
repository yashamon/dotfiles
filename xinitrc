#!/bin/sh
kitty &
 setxkbmap -option caps:escape & 
 xrdb -merge ~/.Xresources & 
xsetroot -cursor_name left_ptr & 
# /* xmodmap -e "keycode 133 = Escape" & */
# /* xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" & */
# /* /* xcompmgr -c & */ */
# /* VBoxClient-all & */
# /* kitty & */


exec xmonad



