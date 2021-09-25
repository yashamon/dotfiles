# Enable Powerlezinitvel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# source ~/.zplug/init.zsh
# # # Make sure to use double quotes
#  zplug "zsh-users/zsh-history-substring-search"
#  zplug "b4b4r07/enhancd", use:init.sh
#  zplug "romkatv/powerlevel10k", as:theme, depth:1
#  zplug "softmoth/zsh-vim-mode"
#  zplug "zsh-users/zsh-autosuggestions", defer:2
#  # zplug "zsh-users/zsh-syntax-highlighting", defer:2
# #  zplug "https://github.com/clvv/fasd.git", as:program
#  zplug "wookayin/fzf-fasd"
#  zplug "plugins/git", from:oh-my-zsh
#  zplug "plugins/vi", from:oh-my-zsh
#  zplug "zdharma/fast-syntax-highlighting", defer:2
#  zplug load 
export ZSH=~/.oh-my-zsh
export ANDROID_HOME=/root/android-sdk-linux
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="af-magic"
#
#
#
# ZSH_THEME=powerlevel10k/powerlevel10k
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
  # ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
#  COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vim-mode command-not-found github history-substring-search fzf-fasd)

# User configuration

export PATH="$HOME/.cargo/bin:/$HOME/appimage:/snap/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/usr/bin:bin:/usr/local/sbin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin:/bin:~/.local/bin:/root/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/yashasavelyev/.local/bin:/$HOME/appimage" 
# export MANPATH="/usr/local/man:$MANPATH"
#  source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Path to your oh-my-zsh installation.



# bind UP and DOWN arrow keys
# zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
# #
# # # bind P and N for EMACS mode
# # bindkey -M emacs '^P' history-substring-search-up
# # bindkey -M emacs '^N' history-substring-search-down
# #
# # # bind k and j for VI mode
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down
bindkey -rpM viins '\e'

eval "$(fasd --init auto)"
#
# export PATH="$HOME/.linuxbrew/bin:$PATH"
# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
# alias nvim="/snap/bin/nvim"
alias tmux d="tmux detach"
alias vifmrc="nvim ~/.config/vifm/vifmrc" 
alias ls="source ~/bin/vf" 
alias texi="pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder" 
alias latexi="latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias pvc="latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias lat="latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g"

alias pushmod="git submodule foreach git add .; git submodule foreach git commit -m -a; 
git submodule foreach git push origin master; git add .; git commit -m -a; git push --all origin "
alias push="git add .; git commit -m -a; git push --all origin"
alias pull="git pull --recurse-submodules; git submodule update --recursive --remote"
alias pullmaster="git pull --recurse-submodules; git submodule update --recursive --remote; git submodule foreach git checkout master; git submodule foreach git pull --all"

alias pushgh="pandoc index.md > index.html ; git add .; git commit -m -a; git push origin gh-pages"
alias pandocd="pandoc index.md > index.html"

# <<<<<<< HEAD
# alias hw="pandoc ~/web/classes/topology/topology2019.md > ~/web/classes/topology/topology2019.html; pandoc ~/web/CalcIII2019/analysis.md > ~/web/CalcIII2019/analysis.html; git add .; git commit -m -a; git push origin gh-pages"
# =======
alias hw="pandoc ~/web/classes/CalcIII/2021.md > ~/web/classes/CalcIII/2021.html; pandoc ~/web/classes/topology/topology2021.md  > ~/web/classes/topology/topology2021.html; git add .; git commit -m -a; git push origin gh-pages"
alias attach="tmux attach"
# alias pdf="xpdf -geometry 1920x1080 -fullscreen"
# alias pdf="mupdf"
 alias pdf="zathura"
alias vnc="vncserver -kill :1; vncserver -geometry 1920x1080 :1"
# alias vnc="vncserver -kill :3; vncserver -geometry 1600x2560 :1"
alias drop="python ~/download?dl=packages%2Fdropbox.py"
alias j="z"
# alias fzf="/root/dotfiles\vim\bundle\fzf"
alias pcm="sudo pacman"
alias spcm="sudo pacman"
alias zrc="nvim ~/.zshrc"
alias pac="sudo packer"
alias cprc="cp /root/.zshrc /home/yasha/.zshrc"
alias pacup="packer -Syu --devel"
# alias vifm='source ~/bin/vf'
alias vrc="nvim ~/.config/nvim/init.vim"
alias snips="vi /root/dotfiles/vim/bundle/vim-snippets/UltiSnips/tex.snippets"
alias src="source ~/.zshrc"
alias mux="tmux -f ~/.tmux-conf"
alias bib="j bib ; vi link.bib"
alias suya="su yasha; a"
alias vis="rm /tmp/nvimsocket ; NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim" 
# alias go= pslatex document.tex; dvips document.dvi; ps2pdf document.ps
alias suru="su root; a"
alias rec="recoll -q"
alias vi="nvim"
alias update="git submodule update --init --recursive ; git pull origin master"
alias chrome="chromium --user-data-dir /root"
alias res="xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120; xrandr --addmode Virtual-1 "1920x1080_60.00";
xrandr -s 1920x1080"

alias res2="xrandr --newmode "1920x1080_144.00"  452.50  1920 2088 2296 2672  1080 1083 1088 1177; xrandr --addmode Virtual-1 "1920x1080_144.00";
xrandr -s 1920x1080"
alias res3="xrandr --newmode "3440x1440_100.00"  728.00  3440 3728 4104 4768  1440 1443 1453 1527 -hsync +vsync; xrandr --addmode HDMI-1 "3440x1440.100.00";
xrandr -s 3440x1440
"
alias config="cd ~/dotfiles/; push; cd ~/workspacemodules; pushmod; cd ~/workspace; push; cd web pushgh; pacman -Qqe > pkglist.txt"
# alias apt="sudo apt-get install"
# functions
myfunction() {
    #do things with parameters like $1 such as
    git add .
    git commit -m "$1"
    git push origin master
    }

alias message=myfunction
brightnessfunction()
{
    #do things with parameters like $1 such as
xrandr --output eDP-1 --brightness $1 
    }
alias bright=brightnessfunction


sendFunction() {
cwdb=$(pwd)
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
}
alias send=sendFunction
alias tff="xinput disable 13"
alias ton="xinput enable 13"

# set dual monitors
dual () {
    xrandr --output eDP-1 --primary --left-of HDMI-1 --output HDMI-1 --auto
}

# set single monitor
single () {
    xrandr --output HDMI-1 --off
}

# alias vim="nvim"
# export ZSH=$HOME/.oh-my-zsh
# # Set name of the theme to load.
# # Look in ~/.oh-my-zsh/themes/
# # Optionally, if you set this to "random", it'll load a random theme each
# # # time that oh-my-zsh is loaded.
# ZSH_THEME="sorin"
# # robbyrussell
# # Uncomment the following line to use case-sensitive completion.
# # CASE_SENSITIVE="true"
#
# # Uncomment the following line to disable bi-weekly auto-update checks.
# # DISABLE_AUTO_UPDATE="true"
#
# # Uncomment the following line to change how often to auto-update (in days).
# # export UPDATE_ZSH_DAYS=13
#
# # Uncomment the following line to disable colors in ls.
# # DISABLE_LS_COLORS="true"
#
# # Uncomment the following line to disable auto-setting terminal title.
# # DISABLE_AUTO_TITLE="true"
#
# # Uncomment the following line to enable command auto-correction.
# # ENABLE_CORRECTION="true"
#
# # Uncomment the following line to display red dots whilst waiting for completion.
# # COMPLETION_WAITING_DOTS="true"
#
# # Uncomment the following line if you want to disable marking untracked files
# # under VCS as dirty. This makes repository status check for large repositories
# # much, much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# # Uncomment the following line if you want to change the command execution time
# # stamp shown in the history command output.
# # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# # HIST_STAMPS="mm/dd/yyyy"
#
# # Would you like to use another custom folder than $ZSH/custom?
# # ZSH_CUSTOM=/path/to/new-custom-folder
#
# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# # Add wisely, as too many plugins slow down shell startup.
# # Ensures that $terminfo values are valid and updates editor information when
# # # the keymap changes.
#
#
#
#
# #  terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
# #
# #  function zle-line-init zle-keymap-select {
# #      PS1_2="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
# #         PS1="%{$terminfo_down_sc$PS1_2$terminfo[rc]%}%~ %# "
# #             zle reset-prompt
# #          }
# #          preexec () { print -rn -- $terminfo[el]; }
# #          zle -N zle-line-init
# #          zle -N zle-keymap-select
# #     export KEYTIMEOUT=1
# source $ZSH/oh-my-zsh.sh
#
# # User configuration
#
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# plugins=(git autojump vi-mode command-not-found github history-substring-search)
# # export MANPATH="/usr/local/man:$MANPATH"
#
# # You may need to manually set your language environment
# # export LANG=en_US.UTF-8
#
# # Preferred editor for local and remote sessions
# # if [[ -n $SSH_CONNECTION ]]; then
# #   export EDITOR='vim'
# # else
# #   export EDITOR='mvim'
# # fi
#
# # Compilation flags
# # export ARCHFLAGS="-arch x86_64"
#
# # ssh
# # export SSH_KEY_PATH="~/.ssh/dsa_id"
#
# # Set personal aliases, overriding those provided by oh-my-zsh libs,
# # plugins, and themes. Aliases can be placed here, though oh-my-zsh
# # users are encouraged to define aliases within the ZSH_CUSTOM folder.
# # For a full list of active aliases, run `alias`.
# #
# # Example aliases
# # alias zshconfig="mate ~/.zshrc"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
# alias sudo='sudo '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias chmodWork sudo chmod -R ~/workspacemodules
export DISPLAY=:0.0
alias wq='wmctrl -r 'Alacritty' -b toggle,fullscreen'
alias ubuntu="sudo apt-get update; sudo apt-get upgrade"

# VBoxClient-all
# xrdb -merge ~/.Xresources
# setxkbmap -option caps:escape 
# xsetroot -cursor_name left_ptr &xmodmap -e "remove control = Control_R" -e "add Mod3 = Control_R" &

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma/fast-syntax-highlighting \
         zdharma/history-search-multi-word \
    light-mode depth"1" \
                romkatv/powerlevel10k 
zinit light softmoth/zsh-vim-mode 
zinit light wookayin/fzf-fasd
zinit ice wait'0'
zinit ice light b4b4r07/enhancd
zinit ice wait'0'
zinit light wfxr/forgit
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down'
zinit light zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

bindkey -M vicmd 'a' autosuggest-accept
bindkey -M vicmd 'E' autosuggest-execute

zinit ice from"gh-r" as"program" bpick"*appimage*" ver"nightly" mv"nvim* -> nvim" pick"nvim"
zinit light neovim/neovim
#programs
# zinit ice from"gh-r" as"program"
# zinit light clvv/fasd
#
 # zinit snippet OMZ::plugins/history-substring-search/history-substring-search.plugin.zsh
zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh
zinit ice wait'0' lucid atload"unalias d"
zinit snippet OMZ::plugins/fasd/fasd.plugin.zsh
#
bindkey -rpM viins '\e'
#
#  zinit from:OMZL
# zinit load ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode
#
# zinit "zsh-users/zsh-history-substring-search"
# zinit "b4b4r07/enhancd", use:init.sh
# zinit "romkatv/powerlevel10k", as:theme, depth:1
# zinit "softmoth/zsh-vim-mode"
# zinit "zsh-users/zsh-autosuggestions", defer:2
# zinit "zsh-users/zsh-syntax-highlighting", defer:2
# zinit "wookayin/fzf-fasd"
# zinit "plugins/git", from:oh-my-zsh
# zinit "plugins/vi", from:oh-my-zsh



### End of Zinit's installer chunk
# vi-append-x-selection () { RBUFFER=$(xclip -o -p </dev/null)$RBUFFER; }
# zle -N vi-append-x-selection
# bindkey -a '^X' vi-append-x-selection
# vi-yank-x-selection () { print -rn -- $CUTBUFFER | xclip -i -p; }
# zle -N vi-yank-x-selection
# bindkey -a '^Y' vi-yank-x-selection

function x11-clip-wrap-widgets() {
    # NB: Assume we are the first wrapper and that we only wrap native widgets
    # See zsh-autosuggestions.zsh for a more generic and more robust wrapper
    local copy_or_paste=$1
    shift

    for widget in $@; do
        # Ugh, zsh doesn't have closures
        if [[ $copy_or_paste == "copy" ]]; then
            eval "
            function _x11-clip-wrapped-$widget() {
                zle .$widget
                xclip -in -selection clipboard <<<\$CUTBUFFER
            }
            "
        else
            eval "
            function _x11-clip-wrapped-$widget() {
                CUTBUFFER=\$(xclip -out -selection clipboard)
                zle .$widget
            }
            "
        fi

        zle -N $widget _x11-clip-wrapped-$widget
    done
}


local copy_widgets=(
    vi-yank vi-yank-eol vi-delete vi-backward-kill-word vi-change-whole-line
)
local paste_widgets=(
    vi-put-{before,after}
)

# NB: can atm. only wrap native widgets
x11-clip-wrap-widgets copy $copy_widgets
x11-clip-wrap-widgets paste  $paste_widgets


