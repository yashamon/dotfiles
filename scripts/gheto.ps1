$olddir="$HOME\dotfiles_old"
nu -c "mv $HOME\scoop\apps\sumatrapdf\current\SumatraPDF-settings.txt $olddir"
nu -c "sudo ln -s $HOME\OneDrive\dotfiles\config\sumatra\SumatraPDF-settings.txt $HOME\scoop\apps\sumatrapdf\current\SumatraPDF-settings.txt"

