1:   env:Path += ":/opt: HOME/.
config/sway/modules: HOME/appimage:/home/linuxbrew/.
linuxbrew/bin:/usr/local/bin:/usr/sbin:/sbin:/bin: HOME/.
local/bin:/root/.
cabal/bin:/usr/bin/site perl:/usr/bin/vendor perl:/usr/bin/core perl: HOME/.
cabal/bin:/usr/bin/site perl:/usr/bin/vendor perl:/usr/bin/core perl: HOME/.
local/bin: HOME/.
local/bin/scripts: HOME/.
cargo/bin:/snap/bin:/data/data/com.
termux/files/usr/bin/applets:/data/data/com.
termux/files/usr/bin:bin:/usr/local/sbin:/usr/bin: HOME/.
local/share/nvim/lspinstall: HOME/skia-binaries: HOME/ninja:/home/yasha/.
nix-profile" 2:   3:  oh-my-posh init pwsh --config /home/yasha/dotfiles/powershell/probua.
minimal.
omp.
json | Invoke-Expression 4:   5:   6:  # Usability 7:  Set-PSReadlineOption -EditMode vi 8:  Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' 9:  # example command - use  Location with a different command: 10:   commandOverride = [ScriptBlock]  param( Location) Write-Host  Location   11:  # pass your override to PSFzf: 12:  Set-PsFzfOption -AltCCommand  commandOverride 13:  Set-PSReadLineKeyHandler -Key Tab -ScriptBlock   Invoke-FzfTabCompletion   14:  Set-PsFzfOption -TabExpansion 15:  Set-Location (Get-ChildItem . 
15:++++ -Recurse | ?     .
PSIsContainer   | Invoke-Fzf) # This works as of version 2.
2.
8 16:  Get-ChildItem . 
16:++++ -Recurse | ?     .
PSIsContainer   | Invoke-Fzf | Set-Location 17:  Import-Module PSReadLine 18:  Set-PSReadLineOption -PredictionSource History 19:  # For zoxide v0.
8.
0+ 20:  Invoke-Expression (&   21:        hook = if ( PSVersionTable.
PSVersion.
Major -lt 6)   'prompt'   else   'pwd'   22:       (zoxide init --hook  hook --cmd j powershell | Out-String) 23:   ) 24:   25:  # Bindings and aliases 26:  Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward 27:  Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward 28:  Function Jumphome  fdfind . 
28:++++  HOME -t d -H | fzf | cd  29:  Function neof   30:   ho=fdfind . 
30:++++  HOME -t f -H | fzf 31:  echo  ho 32:  neo  ho  33:    34:  Function Invoke-PreJump()   35:   ho=fdfind . 
35:++++  HOME -t d -H | fzf 36:  [Microsoft.
PowerShell.
PSConsoleReadLine]::Insert( ho) 37:    38:  New-Alias z Jumphome 39:  Set-Alias neo  HOME/.
local/bin/goneovim/goneovim 40:  Set-PSReadLineKeyHandler -Chord Alt+j -ScriptBlock   Invoke-PreJump   41:   42:   43:  Set-PSReadLineKeyHandler -Key 'y' -Function Copy -ViMode Command 44:  Set-PSReadLineKeyHandler -Key 'p' -Function Paste -ViMode Command 45:  Set-PSReadLineKeyHandler -Key 'd,d' -Function DeleteLine -ViMode Command 46:  Set-PSReadLineKeyHandler -Key 'D' -Function DeleteToEnd -ViMode Command 47:   48:  # Environmental variables 49:   Env:EDITOR = "nvim" 50:   