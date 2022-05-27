$env:Path += ":/opt:$HOME/.config/sway/modules:$HOME/appimage:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:/usr/sbin:/sbin:/bin:$HOME/.local/bin:/root/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.local/bin:$HOME/.local/bin/scripts:$HOME/.cargo/bin:/snap/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/usr/bin:bin:/usr/local/sbin:/usr/bin:$HOME/.local/share/nvim/lspinstall:$HOME/skia-binaries:$HOME/ninja:/home/yasha/.nix-profile"
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -EditMode vi
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
# example command - use $Location with a different command:
$commandOverride = [ScriptBlock]{ param($Location) Write-Host $Location }
# pass your override to PSFzf:
Set-PsFzfOption -AltCCommand $commandOverride
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
Set-PsFzfOption -TabExpansion
Set-Location (Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf) # This works as of version 2.2.8
Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf | Set-Location
oh-my-posh init pwsh | Invoke-Expression

# For zoxide v0.8.0+
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --cmd j --hook $hook powershell | Out-String)
})


# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Function Jumphome {fdfind . $HOME -t d -H | fzf | cd}
New-Alias z Jumphome
Set-Alias neo $HOME/.local/bin/goneovim/goneovim
Set-PSReadLineKeyHandler -Chord Alt+j -ScriptBlock {
 Jumphome
}


