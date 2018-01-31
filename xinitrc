/* !/bin/sh  */
/* if [ -d /etc/X11/xinit/xinitrc.d ] ; then */
/*     for f in /etc/X11/xinit/xinitrc.d/?* ; do */
/*         [ -x "$f" ] && . "$f" */
/*     done */
/*     unset f */
/* fi */
/* [ -f /etc/xprofile ] && source /etc/xprofile */
/* [ -f ~/.xprofile ] && source ~/.xprofile */
setxkbmap -option caps:escape &
termite &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
xmodmap -e "keycode 133 = Escape"
xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &
xcompmgr -c &
/* /* feh --bg-scale /home/yasha/Downloads/backgrounds/jN5a1bi.jpg & */ */
exec xmonad 


