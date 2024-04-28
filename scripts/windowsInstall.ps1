############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
scoop install nu 
nu "$HOME/OneDrive/dotfiles/scripts/installScoop.nu"

# may need developer mode
sudo reg add "HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows/CurrentVersion/AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

# $olddir="$HOME/dotfiles_old"
$dir="$HOME/OneDrive/dotfiles"                    # dotfiles directory
$filesmain = "ctags", "gitconfig", "latexmkrc", "gitignore"    # list of files/folders to symlink in homedir
$homed="$HOME/OneDrive"
##########

# create dotfiles_old in homedir
# echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
# mkdir -Force -ErrorAction SilentlyContinue $olddir
# echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"
# foreach ($file in $filesmain){
#     move-Item  ~/.$file $olddir -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path "$HOME/.$file" -Target "$dir/$file" 
    } 
#$files = Get-ChildItem $HOME/OneDrive/dotfiles/scripts
#$foreach ($file in $files) echo "my file is $file" New-Item -ItemType SymbolicLink -Path "$HOME/.local/bin/$file" "$HOME/dotfiles/scripts/$file" } 
# mv ~/.config $olddir -Force -ErrorAction SilentlyContinue
# echo "link config"
New-Item -ItemType SymbolicLink -Path "$HOME/.config" -Target "$HOME/OneDrive/dotfiles/config" 
mkdir ~/.ctags.d
# mv ~/.ctags.d/latex.ctags $olddir -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path "$HOME/.ctags.d/latex.ctags" -Target "$HOME/OneDrive/dotfiles/ctags"
# mv C:/Users/yasha/AppData/Roaming/nushell/config.nu $olddir 
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/nushell/config.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/config.nu
# mv C:/Users/yasha/AppData/Roaming/nushell/env.nu $olddir
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/nushell/env.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/env.nu
# nu -c "mv $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt $olddir"
nu -c "sudo ln -s $HOME/OneDrive/dotfiles/config/sumatra/SumatraPDF-settings.txt $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt"
# nu -c "mv $HOME/textmf/bibtex/bib/link $olddir"
mkdir -p $HOME/textmf/bibtex/bib
nu -c "sudo ln -s $HOME/OneDrive/workspacemodules/link.bib $HOME/OneDrive/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt"

# mv $HOME/Users/yasha/AppData/Local/nvim $olddir
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME/OneDrive/dotfiles/config/nvimnew"
# mv $HOME/Users/yasha/AppData/Local/lf/lfrc $olddir
new-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/lf/lfrc" -Target "$HOME/OneDrive/dotfiles/config/lf/lfrc"
# mv $HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop-switcher.ahk $olddir
new-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop_switcher.ahk" -Target "$HOME/OneDrive/dotfiles/scripts/desktop_switcher.ahk"
new-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/WinJump.exe" -Target "$HOME/OneDrive/WinJump.exe"

new-Item -ItemType SymbolicLink -Path "$HOME/windows-desktop-switcher" -Target "$HOME/OneDrive/windows-desktop-switcher"

git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
