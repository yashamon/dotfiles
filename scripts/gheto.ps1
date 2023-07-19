$homey="C://Users//yasha"
$homeyd="$homey//OneDrive"
$olddir="$homey//dotfiles_old"
nu -c "mv $homey//scoop//apps/summatrapdf//current//SummatraPDF-settings.txt $olddir"
nu -c "sudo ln -s $HOMED//dotfile//config//sumatra//SumatraPDF-settings.txt $HOME//scoop//apps//sumatrapdf//current//SumatraPDF-settings.txt"

