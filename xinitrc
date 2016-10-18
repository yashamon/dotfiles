#!/bin/sh 
# if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#     for f in /etc/X11/xinit/xinitrc.d/?* ; do
#         [ -x "$f" ] && . "$f"
#     done
#     unset f
# fi
# [ -f /etc/xprofile ] && source /etc/xprofile
# [ -f ~/.xprofile ] && source ~/.xprofile
# setxkbmap -option caps:escape &
# source ~/.xprofile &
xrdb ~/.Xresources &
xrdb -load ~/.Xresources &
xsetroot -cursor_name left_ptr &
urxvtd -q -f -o  &
# xmodmap ~/.Xmodmap &
xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &
exec xmonad 
