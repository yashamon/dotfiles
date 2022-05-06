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
mkdir ~/.xmonad
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done 
cd $HOME/dotfiles/scripts
for file in *; do
echo file
ln -s $HOME/dotfiles/scripts/$file $HOME/.local/bin/$file 
done 
echo "Moving vifm"
mkdir ~/bin
cp ~/dotfiles/bin/vf ~/bin/vf
mv ~/.config ~/dotfiles_old 
echo "link config"
ln -s ~/dotfiles/config ~/.config
# mkdir ~/.config/vifm
# ln -s ~/dotfiles/vifm ~/.config/vifm
# ln -s ~/dotfiles/vifm ~/.config/vifm
echo "Moving xmobarrc" 
ln -s ~/dotfiles/xmonad/xmobar.hs ~/.xmobarrc  
mkdir  ~/.local/share/applications
cp -r ~/dotfiles/applications/* ~/.local/share/applications
#     echo "Moving nvimrc"
# mkdir ~/.config/nvim
# rm ~/.config/nvim/init.vim
# ln -s ~/dotfiles/nvimrcChromeOs ~/.config/nvim/init.vim
# ln -s ~/dotfiles/ginit.vim ~/.config/nvim/ginit.vim
# rm ~/.config/nvim/colors
# ln -s ~/dotfiles/colors ~/.config/nvim/colors
# rm ~/.config/nvim/spell 
# ln -s ~/dotfiles/spell ~/.config/nvim/spell
# mkdir ~/.config/nvim/autoload
# ln -s ~/dotfiles/vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
#
#
# zathura, termite
# mkdir ~/.config/zathura
# mkdir ~/.config/termite
# ln -s ~/dotfiles/zathurarc  ~/.config/zathura/zathurarc
# ln -s ~/dotfiles/termiteconfig ~/.config/termite/config
# echo "Moving zshrc"
# ln -s ~/dotfiles/zshrcChromeOs ~/.zshrc
mkdir ~/.ctags.d
ln -s ~/dotfiles/ctags ~/.ctags.d/latex.ctags
# ln -s ~/dotfiles/config/nvim/lua/init.lua ~/.config/nvim/lua/init.lua
git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
# pip3 install neovim, git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k; mkdir -p $ZSH_CUSTOM/lib && touch $ZSH_CUSTOM/lib/misc.zsh

sudo apt install kitty zathura zathura-ps zathura-djvu xdotool inkscape texlive texlive-base texlive-latex-base texlive-pstricks texlive-science texlive-xetex latexmk xclip fasd python3-pip vifm universal-ctags ripgrep sed gitk build-essential procps curl file git autoconf  automake cmake  g++ gettext libncurses5-dev libtool  libtool-bin libunibilium-dev libunibilium4 ninja-build pkg-config software-properties-common unzip fd-find inotify-tools trash-cli zsh wl-clipboard qtwayland5 libwayland-dev libwayland-egl1-mesa libwayland-server0 libgles2-mesa-dev libxkbcommon-dev 
libqt5waylandclient5
sudo pip3 install neovim
sudo pip3 install neovim-remote 
sudo pip3 install setuptools
sudo pip3 install --upgrade pynvim 
sudo pip3 install trash-cli
mkdir $HOME/appimage
chsh -s $(which zsh)
