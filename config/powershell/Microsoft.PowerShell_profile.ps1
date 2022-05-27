$env:Path += ":/opt:$HOME/.config/sway/modules:$HOME/appimage:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:/usr/sbin:/sbin:/bin:$HOME/.local/bin:/root/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cabal/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.local/bin:$HOME/.local/bin/scripts:$HOME/.cargo/bin:/snap/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/usr/bin:bin:/usr/local/sbin:/usr/bin:$HOME/.local/share/nvim/lspinstall:$HOME/skia-binaries:$HOME/ninja:/home/yasha/.nix-profile"

oh-my-posh init pwsh --config /home/yasha/dotfiles/powershell/probua.minimal.omp.json | Invoke-Expression


# Usability
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
# For zoxide v0.8.0+
Invoke-Expression (& {
     $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
     (zoxide init --hook $hook --cmd j powershell | Out-String)
})
function VerbCompletion {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    Get-Verb "$wordToComplete*" |
        ForEach-Object {
            New-CompletionResult -CompletionText $_.Verb -ToolTip ("Group: " + $_.Group)
        }   
}
Register-ArgumentCompleter j Get-Verb -Parameter Verb -ScriptBlock $function:VerbCompletion -Description 'This argument completer handles the -Verb parameter of the Get-Verb command.'

# Bindings and aliases
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Function Jumphome {fdfind . $HOME -t d -H | fzf | cd}
Function neof {
$ho=fdfind . $HOME -t f -H | fzf
echo $ho
neo $ho 
}
Function Invoke-PreJump() {
$ho=fdfind . $HOME -t d -H | fzf
[Microsoft.PowerShell.PSConsoleReadLine]::Insert($ho)
}
New-Alias z Jumphome
Set-Alias neo $HOME/.local/bin/goneovim/goneovim
Set-PSReadLineKeyHandler -Chord Alt+j -ScriptBlock { Invoke-PreJump }


Set-PSReadLineKeyHandler -Key 'y' -Function Copy -ViMode Command
Set-PSReadLineKeyHandler -Key 'p' -Function Paste -ViMode Command
Set-PSReadLineKeyHandler -Key 'd,d' -Function DeleteLine -ViMode Command
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

