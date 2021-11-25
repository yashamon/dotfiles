if status is-interactive 
fish_vi_key_bindings  
alias rot="xrandr -o"
alias p="paru"
alias wifi="sudo wifi-menu -o" 
alias mod="xmodmap ~/.Xmodmap"
alias tmux d="tmux detach" 
alias svi="/snap/bin/nvim"
alias nvr="nvr --servername '(<~/servername.txt)' --remote-silent"
alias vifmrc="nvim ~/.config/vifm/vifmrc"  
alias lfrc="cd ~/.config/lf; goneovim lfrc"
# alias ls="lf" 
alias texi="pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder" 
alias latexi="latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias pvc="latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias lat="latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g"

alias pushmod="git submodule foreach git add .; git submodule foreach git commit -m -a; 
git submodule foreach git push origin master; git add .; git commit -m -a; git push --all origin "
alias push="git add .; git commit -m -a; git push --all origin"
alias pull="git pull --recurse-submodules; git submodule update --recursive --remote"
alias pullmaster="git pull --recurse-submodules; git submodule update --recursive --remote; git submodule foreach git checkout master; git submodule foreach git pull --all"
alias check="git checkout" 
alias pushgh="pandoc index.md > index.html ; git add .; git commit -m -a; git push origin gh-pages"
alias pandocd="pandoc index.md > index.html"
alias hw="pandoc ~/web/classes/CalcIII/2021.md > ~/web/classes/CalcIII/2021.html; pandoc ~/web/classes/topology/topology2021.md  > ~/web/classes/topology/topology2021.html; cd ~/web; git add . ;git commit -m -a; git push origin gh-pages"
alias attach="tmux attach"
# alias pdf="xpdf -geometry 1920x1080 -fullscreen"
# alias pdf="mupdf"
 alias pdf="zathura"
alias vnc="vncserver -kill :1; vncserver -geometry 1920x1080 :1"
# alias vnc="vncserver -kill :3; vncserver -geometry 1600x2560 :1"
alias drop="python ~/download?dl=packages%2Fdropbox.py"
alias j="fasd_cd -d"
# alias fzf="/root/dotfiles\vim\bundle\fzf"
alias pcm="sudo pacman"
alias spcm="sudo pacman"
alias zrc="cd ~; neo .zshrc"
alias pac="sudo packer"
alias cprc="cp /root/.zshrc /home/yasha/.zshrc"
alias pacup="packer -Syu --devel"
# alias vifm='source ~/bin/vf'
alias vrc="cd ~/.config/nvim; neo init.vim"
alias vifmrc="cd ~/.config/vifm; neo vifmrc"
alias snips="vi /root/dotfiles/vim/bundle/vim-snippets/UltiSnips/tex.snippets"
alias src="source ~/.zshrc"
#alias mux="tmux -f ~/.tmux-conf"
alias bib="j bib ; vi link.bib"
alias suya="su yasha; a"
alias vis="rm /tmp/nvimsocket ; NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim" 
# alias go= pslatex document.tex; dvips document.dvi; ps2pdf document.ps
alias suru="su root; a"
alias rec="recoll -q"
alias vi="nvim"   
alias ping="ping www.google.com"
alias gone="$HOME/.local/bin/goneovim"  
alias ubuntu="sudo apt-get update; sudo apt-get upgrade"
alias neo="$HOME/.local/bin/goneovim"
alias neov="$HOME/.local/bin/neovide --frameless --maximized --multigrid"
alias update="git submodule update --init --recursive ; git pull origin master"
alias chrome="chromium --user-data-dir /root"
alias res="xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120; xrandr --addmode Virtual-1 "1920x1080_60.00";
xrandr -s 1920x1080"

alias res2="xrandr --newmode "1920x1080_144.00"  452.50  1920 2088 2296 2672  1080 1083 1088 1177; xrandr --addmode Virtual-1 "1920x1080_144.00";
xrandr -s 1920x1080"
alias res3="xrandr --newmode "3440x1440_100.00"  728.00  3440 3728 4104 4768  1440 1443 1453 1527 -hsync +vsync; xrandr --addmode HDMI-1 "3440x1440.100.00";
xrandr -s 3440x1440
"
alias config="cd ~/dotfiles/; push; cd ~/workspacemodules; pushmod; cd ~/workspace; push; cd web pushgh; pacman -Qqe > $HOME/dotfiles/pkglist.txt" 

alias apt="sudo apt install"
# functions  
 
# function message 
#     #do things with parameters like $1 such as
#     git add .
#     git commit -m "$1"
#     git push origin master
# end
function bright
xrandr --output eDP-1 --brightness $1 
end
# alias bright=brightnessfunction


function send
set cwdb $pwd
cd ~/web
git pull
git rm ~/web/papers/"$1" 
git add .
git commit -m -a
git push origin gh-pages
cd $cwdb
cp "$1" ~/web/papers
cd ~/web
git add .
git commit -m -a
git push origin gh-pages
cd $cwdb
end
alias pulse="pulseaudio -k
pulseaudio --start"
alias tff="xinput disable 13"
alias ton="xinput enable 13"  

# source "$HOME/.config/lf-shellcd/lf-shellcd"
# Commands to run in interactive sessions can go here
end

