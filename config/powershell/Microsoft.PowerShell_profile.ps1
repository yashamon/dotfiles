oh-my-posh init pwsh --config ~/dotfiles/powershell/probua.minimal.omp.json | Invoke-Expression


# Usability
# 
# 
Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('lfcd.ps1')
         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
Set-PSReadlineOption -EditMode vi
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
# example command - use $Location with a different command:
# $commandOverride = [ScriptBlock]{ param($Location) Write-Host $Location }
# pass your override to PSFzf:
# Set-PsFzfOption -AltCCommand $commandOverride
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
# Set-PsFzfOption -TabExpansion
# Set-Location (Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf) # This works as of version 2.2.8
# Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf | Set-Location
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
function VerbCompletion {
    param($commandName, $wordToComplete, $commandAst, $fakeBoundParameter)

    Get-Verb "$wordToComplete*" |
        ForEach-Object {
            New-CompletionResult -CompletionText $_.Verb -ToolTip ("Group: " + $_.Group)
        }   
}
Register-ArgumentCompleter -CommandName j -ScriptBlock $function:VerbCompletion 
# Bindings and aliases
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Function Jumphome {fdfind . $HOME -t d -H | fzf | cd}
Function nf {
$ho=fdfind . $HOME -t f -H | fzf
echo $ho
neo $ho
}
Function nf {
$ho=fdfind . $HOME -t f -H | fzf
neo $ho
}
Function Invoke-PreJump() {
$ho=fdfind . $HOME -t d -H | fzf
[Microsoft.PowerShell.PSConsoleReadLine]::Insert($ho)
}
Remove-Alias -AliasName z
Set-Alias j Invoke-Zlocation
Set-Alias neo $HOME/.local/bin/goneovim/goneovim
Set-PSReadLineKeyHandler -Chord Alt+j -ScriptBlock { Invoke-PreJump }


Set-PSReadLineKeyHandler -Key 'y' -Function Copy -ViMode Command
Set-PSReadLineKeyHandler -Key 'p' -Function Paste -ViMode Command
Set-PSReadLineKeyHandler -Key 'd,d' -Function DeleteLine -ViMode Command
Set-PSReadLineKeyHandler -Key 'c,w' -Function DeleteWord -ViMode Command
Set-PSReadLineKeyHandler -Key 'D' -Function DeleteToEnd -ViMode Command
Set-PSReadLineKeyHandler -Key 'L' -Function AcceptSuggestion -ViMode Command
Set-PSReadlineKeyHandler -Key Ctrl+Shift+P `
    -BriefDescription CopyPathToClipboard `
    -LongDescription "Copies the current path to the clipboard" `
    -ScriptBlock { (Resolve-Path -LiteralPath $pwd).ProviderPath.Trim() | clip }

# This example emits a cursor change VT escape in response to a Vi mode change.

function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# Environmental variables
$Env:EDITOR = "nvim"

# various binding functions

function ubuntu { sudo apt update
sudo apt upgrade
sudo apt dist-upgrade }
function wifi { sudo wifi-menu -o }
function vrc { neo ~/dotfiles/config/nvim/init.vim }
function zrc { neo ~/dotfiles/zshrc }
function swrc { neo ~/dotfiles/config/sway/config }
function lfrc { neo  ~/dotfiles/config/lf/lfrc }
# alias ls="lf" 
function texi($1) { pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder $1 }
function latexi { latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f }
function pvc { latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f }
function lat {latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g }
#
function pushmod { git submodule foreach git add . && git submodule foreach git commit -m -a && 
 git submodule foreach git push origin master; git add . && git commit -m -a; git push --all origin }
function push { git add . && git commit -m -a && git push --all origin }
function pull { git pull --recurse-submodules && git submodule update --recursive --remote }
function pullmaster { git pull --recurse-submodules && git submodule update --recursive --remote && git submodule foreach git checkout master && git submodule foreach git pull --all
}
# alias check="git checkout" 
function pushgh { pandoc index.md > index.html && git add . && git commit -m -a && git push origin gh-pages }
# alias pandocd="pandoc index.md > index.html"
#
# # <<<<<<< HEAD
function hw { pandoc ~/web/classes/topology/topology2019.md > ~/web/classes/topology/topology2019.html; pandoc ~/web/CalcIII2019/analysis.md > ~/web/CalcIII2019/analysis.html; git
add .; git commit -m -a; git push origin gh-pages }
# # =======
function clip { /mnt/c/windows/System32/WindowsPowerShell/v1.0/powershell.exe -c Get-Clipboard | tr -d $'\r' | wl-copy }
function hw { pandoc ~/web/classes/Spivak/hw2022.md > ~/web/classes/Spivak/hw2022.html && pandoc ~/web/classes/LinearAlgebra/hw2022.md  > ~/web/classes/LinearAlgebra/hw2022.html && cd ~/web && git add .  && git commit -m -a && git push origin gh-pages }
# alias attach="tmux attach"
# # alias pdf="xpdf -geometry 1920x1080 -fullscreen"
function pdf($1) { zathura $1 }
# function launch() {
#   local type="$1"; shift;
#   case "$type" in
#     (q) "$@" >/dev/null 2>&1     ;;   # (q)uiet
#     (b) "$@" >/dev/null 2>&1 &   ;;   # quiet+(b)ackground
#     (d) "$@" >/dev/null 2>&1 &!  ;;   # quiet+(d)isown
#   esac
# }
# alias neo="launch d $HOME/.local/bin/goneovim/goneovim"
# alias neov="neovide --frame NONE --maximized --wsl"
# # alias update="git submodule update --init --recursive ; git pull origin master"
# alias res="xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120; xrandr --addmode eDP-1 "1920x1080_60.00";
# xrandr -s 1920x1080"
#
# alias res2="xrandr --newmode "1920x1080_144.00"  452.50  1920 2088 2296 2672  1080 1083 1088 1177; xrandr --addmode Virtual-1 "1920x1080_144.00";
# xrandr -s 1920x1080"
# alias res3="xrandr --newmode "3440x1440_100.00"  728.00  3440 3728 4104 4768  1440 1443 1453 1527 -hsync +vsync; xrandr --addmode HDMI-1 "3440x1440.100.00";
# xrandr -s 3440x1440
# "
# alias config="cd ~/dotfiles/; push; cd ~/workspacemodules; pushmod; cd ~/workspace; push; cd web pushgh; pacman -Qqe > $HOME/dotfiles/pkglist.txt"
# # alias apt="sudo apt-get install"
# # functions 
# # alias nvr=""
# # nvru() {
# # if [ -f $1 ]; then
# # nvr --nostart --servername  $(<~/servername.txt) --remote $1 > /dev/null
# # echo "trying to attach to server" 
# # echo $?
# # (($? != 0)) && {echo "server not running; starting server"; goneovim $1 }
# # else 
# # echo "wrong file name"
# # fi
# # }
#
# gitcommitwithmessage() {
#     #do things with parameters like $1 such as
#     git add .
#     git commit -m "$1"
#     git push origin master
#     }
# alias message=gitcommitwithmessage
# brightnessfunction()
# {
#     #do things with parameters like $1 such as
# xrandr --output eDP-1 --brightness $1 
#     }
# alias bright=brightnessfunction
#
#
function sendFunction($1) {
$cwdb=$pwd
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
Set-Alias send sendFunction
Set-Alias lf $HOME/dotfiles/scripts/lfcd.ps1
# Environment variables
$Env:QT_SCALE_FACTOR=2 
$Env:GDK_SCALE=2 
$Env:QT_QPA_PLATFORM="wayland"
$Env:Path+=":/opt:$HOME/.config/sway/modules:$HOME/appimage:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:/usr/sbin:/sbin:/bin:$HOME/.local/bin:/root/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.local/bin:$HOME/.local/bin/scripts:$HOME/.cargo/bin:/snap/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/usr/bin:bin:/usr/local/sbin:/usr/bin:$HOME/.local/share/nvim/lspinstall:$HOME/skia-binaries:$HOME/ninja:/home/yasha/.nix-profile:$HOME/dotfiles/scripts"
