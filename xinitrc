setxkbmap -option caps:escape &
kitty &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &
xcompmgr -c &
exec xmonad 


