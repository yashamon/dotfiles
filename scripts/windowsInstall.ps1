############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
# irm get.scoop.sh | iex
$olddir="$HOME/dotfiles_old"
$dir="$HOME/OneDrive/workspacemodules/dotfiles"                 
$config="$HOME/AppData/Local"

scoop install git
scoop install nu 
scoop install sudo
nu "$dir/scripts/installScoop.nu"

# may need developer mode
sudo reg add "HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows/CurrentVersion/AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

$filesmain = "ctags", "gitconfig", "latexmkrc", "gitignore"    # list of files/folders to symlink in homedir
$homed="$HOME/OneDrive/workspacemodules/"
##########

# create dotfiles_old in homedir
# echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
# mkdir -Force -ErrorAction SilentlyContinue $olddir
# echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"
# probably remove the following two functions
foreach ($file in $filesmain){
      move-Item  ~/.$file $olddir -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path "$HOME/.$file" -Target "$dir/$file"
}
rm ~/.config 
# echo "link config"
New-Item -ItemType SymbolicLink -Path $HOME/.config -Target $dir/config 
mkdir ~/.ctags.d
rm ~/.ctags.d/latex.ctags 
New-Item -ItemType SymbolicLink -Path $HOME/.ctags.d/latex.ctags -Target $dir/ctags
rm -r $config/nushell 
New-Item -ItemType SymbolicLink -Path $config/nushell -Target $dir/config/nushell
New-Item -ItemType SymbolicLink -Path "$config/nushell/env.nu" -Target $dir/config/nushell/env.nu
rm $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt 
New-Item -ItemType SymbolicLink -Path $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt -Target $dir/config/sumatra/SumatraPDF-settings.txt
rm $HOME/textmf/bibtex/bib/link
mkdir -p $HOME/textmf/bibtex/bib

rm $HOME/AppData/Local/nvim 
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$dir/config/nvimnew"
rm $HOME/AppData/Local/lf/lfrc 
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/lf/lfrc" -Target "$dir/config/lf/lfrc"

rm "C:/Users/yasha/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop_switcher2.ahk"
New-Item -ItemType SymbolicLink -Path 'C:/Users/yasha/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop_switcher2.ahk' -Target 'C:/Users/yasha/onedrive/workspacemodules/dotfiles/scripts/desktop_switcher2.ahk'


git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
git config --global diff.tool nvimdiff
git config --global difftool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE"'

