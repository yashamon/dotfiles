$HOMED="$HOME//OneDrive"
nu -c "mv $HOME//scoop//apps/summatrapdf//current//SummatraPDF-settings.txt $olddir"
nu -c "sudo ln -s $HOMED//dotfile//config//sumatra//SumatraPDF-settings.txt $HOME//scoop//apps//sumatrapdf//current//SumatraPDF-settings.txt"

