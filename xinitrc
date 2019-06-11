
setxkbmap -option caps:escape &
termite &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
xmodmap -e "keycode 133 = Escape"
xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &
xcompmgr -c &
/* /* feh --bg-scale /home/yasha/Downloads/backgrounds/jN5a1bi.jpg & */ */
exec xmonad 


