setxkbmap -option caps:escape &
termite &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
xmodmap -e "keycode 133 = Escape" &
xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &
xcompmgr -c &
exec xmonad 
/* xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 & */
/* xrandr --addmode Virtual-1 "1920x1080_60.00" & */
/* xrandr -s 1920x1080 */
/* /* feh --bg-scale /home/yasha/Downloads/backgrounds/jN5a1bi.jpg & */ */
exec xmonad $
/* xrandr -s 1920x1200  */

>>>>>>> b78772bde62e55528f3cafe93df50fc07ac54e12

