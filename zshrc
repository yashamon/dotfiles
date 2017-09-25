# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export ANDROID_HOME=/root/android-sdk-linux
export LANG=en_US.UTF-8
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git vi-mode command-not-found github history-substring-search)

# User configuration

export PATH="bin:/usr/local/sbin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin:/bin:/home/yasha/.local/bin:/root/.cabal/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

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
 zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
#
# # bind P and N for EMACS mode
# bindkey -M emacs '^P' history-substring-search-up
# bindkey -M emacs '^N' history-substring-search-down
#
# # bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

eval "$(fasd --init auto)"
#
# export PATH="$HOME/.linuxbrew/bin:$PATH"
# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

if [ "$TERM" = "xterm" ]; then
         # No it isn't, it's gnome-terminal
             export TERM=xterm-256color
             fi
alias tmux d="tmux detach"
alias texi="pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder" 
alias latexi="latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias pvc="latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f"
alias push="sudo git add .; sudo git commit -m -a; sudo git push origin master"
alias pushgh="pandoc index.md > index.html ; git add .; git commit -m -a; git push origin gh-pages"
alias pandocd="pandoc index.md > index.html"
alias attach="tmux attach -t"
# alias pdf="xpdf -geometry 1920x1080 -fullscreen"
# alias pdf="mupdf"
 alias pdf="zathura"
alias vnc="vncserver -kill :1; vncserver -geometry 1920x1080 :1"
# alias vnc="vncserver -kill :3; vncserver -geometry 1600x2560 :1"
alias drop="python ~/download?dl=packages%2Fdropbox.py"
alias ls="ls -a"
alias j="z"
# alias fzf="/root/dotfiles\vim\bundle\fzf"
alias pcm="sudo pacman"
alias spcm="sudo pacman"
alias zrc="nvim ~/.zshrc"
alias pac="sudo packer"
alias cprc="cp /root/.zshrc /home/yasha/.zshrc"
alias pacup="packer -Syu --devel"
alias vifm='source ~/bin/vf'
alias vrc="nvim ~/.config/nvim/init.vim"
alias snips="vi /root/dotfiles/vim/bundle/vim-snippets/UltiSnips/tex.snippets"
alias src="source ~/.zshrc"
alias mux="tmux -f ~/.tmux-conf"
alias bib="j bib ; vi link.bib"
alias suya="su yasha; a"
alias vis="NVIM_LISTEN_ADDRESS=/tmp/tempsocket nvim" 
# alias go= pslatex document.tex; dvips document.dvi; ps2pdf document.ps
alias suru="su root; a"
alias rec="recoll -q"
alias vi="nvim"
alias update="git submodule update --init --recursive ; git pull origin master"
alias chrome="chromium --user-data-dir /root"
alias apt="sudo apt-get install"
myfunction() {
    #do things with parameters like $1 such as
    git add .
    git commit -m "$1"
    git push origin master
    }
alias message=myfunction
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

alias sudo='sudo '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias chmodWork sudo chmod -R ~/workspacemodules
