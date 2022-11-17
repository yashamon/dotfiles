############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

$dir=~/dotfiles                    # dotfiles directory
$olddir=~/dotfiles_old             # old dotfiles backup directory
$files = "ctags gitconfig latexmkrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
# echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
# mkdir -p $olddir
# echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    New-Item -ItemType SymbolicLink -Path "$dir/$file" -Target "~/.$file"
done 
cd $HOME/dotfiles/scripts
for file in *; do
echo file
New-Item -ItemType SymbolicLink -Path "$HOME/dotfiles/scripts/$file" -Target "$HOME/.local/bin/$file"
done 
mv ~/.config ~/dotfiles_old 
echo "link config"
New-Item -ItemType SymbolicLink -Path "$HOME/dotfiles/config" -Target "$HOME/.config"
mkdir ~/.ctags.d
New-Item -ItemType SymbolicLink -Path "$HOME/dotfiles/ctags" - Target "$HOME/.ctags.d/latex.ctags"
New-Item -ItemType SymbolicLink -Path "$HOME/dotfiles/config/nushell/config.nu" -Target C:\Users\yasha\AppData\Roaming\nushell\config.nu
New-Item -ItemType SymbolicLink -Path "$HOME/dotfiles/config/SummatraPDF-settings.txt" -Target "$HOME/scoop/apps/summatrapdf/current/SummatraPDF-settings.txt"

git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"


