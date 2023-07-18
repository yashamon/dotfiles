############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

$dir="$HOME/OneDrive/dotfiles"                    # dotfiles directory
$olddir="$HOME/dotfiles_old"             # old dotfiles backup directory
$filesmain = "ctags", "gitconfig", "latexmkrc"    # list of files/folders to symlink in homedir
$homed="$HOME/OneDrive"
##########

# create dotfiles_old in homedir
# echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir  $olddir
# echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
$files = Get-ChildItem $olddir 
foreach ($file in $files){
   rm $file
}
foreach ($file in $filesmain){
    mv ~/.$file $olddir
    New-Item -ItemType SymbolicLink -Path "$HOME/.$file" -Target "$dir/$file" 
    } 
#$files = Get-ChildItem $HOME/OneDrive/dotfiles/scripts
#$foreach ($file in $files) echo "my file is $file" New-Item -ItemType SymbolicLink -Path "$HOME/.local/bin/$file" "$HOME/dotfiles/scripts/$file" } 
mv ~/.config ~/dotfiles_old 
echo "link config"
New-Item -ItemType SymbolicLink -Path "$HOME/.config" -Target "$HOME/OneDrive/dotfiles/config" 
mkdir ~/.ctags.d
mv ~/.ctags.d/latex.ctags $olddir
New-Item -ItemType SymbolicLink -Path "$HOME/.ctags.d/latex.ctags" -Target "$HOME/OneDrive/dotfiles/ctags"
mv C:\Users\yasha\AppData\Roaming\nushell\config.nu $olddir
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\nushell\config.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/config.nu
mv C:\Users\yasha\AppData\Roaming\nushell\env.nu $olddir
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\nushell\env.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/env.nu
mv $HOME/scoop/apps/summatrapdf/current/SummatraPDF-settings.txt $olddir
New-Item -ItemType SymbolicLink -Path "$HOME/scoop/apps/summatrapdf/current/SummatraPDF-settings.txt" -Target "$HOME/OneDrive/dotfiles/config/SummatraPDF-settings.txt"
mv $HOME/Users/yasha/AppData/Local/nvim $olddir
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME/OneDrive/dotfiles/config/nvimnew"
mv $HOME/Users/yasha/AppData/Local/lf/lfrc $olddir
new-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\lf\lfrc" -Target "$HOME/OneDrive/dotfiles/config/lf/lfrc"
mv $HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\desktop-switcher.ahk $olddir
new-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\desktop-switcher.ahk" -Target "$HOME/OneDrive/dotfiles/scripts/desktop-switcher.ahk"

git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
git config core.hooksPath $HOME\OneDrive\workspacemodules\.git\hooks
nu "$HOME/OneDrive/dotfiles/scripts/installScoop.nu"
