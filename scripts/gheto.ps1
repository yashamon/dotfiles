$homey="C://Users//yasha"
$homeyd="$homey//OneDrive"
$olddir="$homey//dotfiles_old"
nu -c "mv C:\Users\yasha\scoop\apps\sumatrapdf\current\SumatraPDF-settings.txt $olddir"
nu -c "sudo ln -s $homeyd//dotfile//config//sumatra//SumatraPDF-settings.txt $homey//scoop//apps//sumatrapdf//current//SumatraPDF-settings.txt"

