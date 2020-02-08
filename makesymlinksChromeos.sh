#!tex/bin/bash

############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc asoundrc xmonad/xmonad.hs xmonad/xmobar.hs vnc ctags tmux-conf  oh-my-zsh
vifm/vifmrc gitconfig zshrc Xresources xprofile xinitrc latexmkrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"
mkdir ~/.vifm
mkdir ~/.xmonad
mkdir ~/.config
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

    echo "Moving vifm"
mkdir ~/bin
cp ~/dotfiles/bin/vf ~/bin/vf
mkdir ~/.config
ln -s ~/dotfiles/.config ~/.config
mkdir ~/.config/vifm
ln -s ~/dotfiles/vifm ~/.config/vifm
# ln -s ~/dotfiles/vifm ~/.config/vifm
    echo "Moving xmobarrc" 
ln -s ~/dotfiles/xmonad/xmobar.hs ~/.xmobarrc
    echo "Moving nvimrc"
mkdir ~/.config/nvim
rm ~/.config/nvim/init.vim
ln -s ~/dotfiles/nvimrcChromeOs ~/.config/nvim/init.vim
ln -s ~/dotfiles/ginit.vim ~/.config/nvim/ginit.vim
rm ~/.config/nvim/colors
ln -s ~/dotfiles/colors ~/.config/nvim/colors
rm ~/.config/nvim/spell 
ln -s ~/dotfiles/spell ~/.config/nvim/spell
mkdir ~/.config/nvim/autoload
ln -s ~/dotfiles/vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim


# zathura, termite
# mkdir ~/.config/zathura
# mkdir ~/.config/termite
# ln -s ~/dotfiles/zathurarc  ~/.config/zathura/zathurarc
# ln -s ~/dotfiles/termiteconfig ~/.config/termite/config
# echo "Moving zshrc"
# ln -s ~/dotfiles/zshrcChromeOs ~/.zshrc
install_zsh () {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
        git clone http://github.com/robbyrussell/oh-my-zsh.git
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
    fi
else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
        sudo apt-get install zsh
        install_zsh
    # If the platform is OS X, tell the user to install zsh :)
    elif [[ $platform == 'Darwin' ]]; then
        echo "Please install zsh, then re-run this script!"
        exit
    fi
fi
}
mkdir ~/.ctags.d
ln -s ~/dotfiles/ctags ~/.ctags.d/latex.ctags
git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
pip3 install neovim
pip3 install neovim-remote
