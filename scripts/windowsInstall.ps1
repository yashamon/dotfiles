############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
param([Switch]$WaitForKey)
if (([Version](Get-CimInstance Win32_OperatingSystem).version).Major -lt 10)
{
    Write-Host -ForegroundColor Red "The DeveloperMode is only supported on Windows 10"
    exit 1
}

# Get the ID and security principal of the current user account
$myWindowsID=[System.Security.Principal.WindowsIdentity]::GetCurrent()
$myWindowsPrincipal=new-object System.Security.Principal.WindowsPrincipal($myWindowsID)

# Get the security principal for the Administrator role
$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator

if ($myWindowsPrincipal.IsInRole($adminRole))
{
    $RegistryKeyPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock"
    if (! (Test-Path -Path $RegistryKeyPath)) 
    {
        New-Item -Path $RegistryKeyPath -ItemType Directory -Force
    }

    if (! (Get-ItemProperty -Path $RegistryKeyPath -Name AllowDevelopmentWithoutDevLicense))
    {
        # Add registry value to enable Developer Mode
        New-ItemProperty -Path $RegistryKeyPath -Name AllowDevelopmentWithoutDevLicense -PropertyType DWORD -Value 1
    }
    $feature = Get-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online
    if ($feature -and ($feature.State -eq "Disabled"))
    {
        Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -All -LimitAccess -NoRestart
    }
scoop install git
scoop install nu 
scoop install sudo
nu "$HOME/OneDrive/dotfiles/scripts/installScoop.nu"

# may need developer mode
sudo reg add "HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows/CurrentVersion/AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

$olddir="$HOME/dotfiles_old"
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
#pwsh -nop -c ~\scoop\apps\sudo\current\sudo.ps1 New-Item -ItemType SymbolicLink -Path "$HOME/.$file" -Target "$dir/$file" 
#$files = Get-ChildItem $HOME/OneDrive/dotfiles/scripts
#$foreach ($file in $files) echo "my file is $file" New-Item -ItemType SymbolicLink -Path "$HOME/.local/bin/$file" "$HOME/dotfiles/scripts/$file" } 
rm -r ~/.config 
# echo "link config"
pwsh -nop -c ~\scoop\apps\sudo\current\sudo.ps1 New-Item -ItemType SymbolicLink -Path "$HOME/.config" -Target "$HOME/OneDrive/dotfiles/config" 
mkdir ~/.ctags.d
rm -r ~/.ctags.d/latex.ctags 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path "$HOME/.ctags.d/latex.ctags" -Target "$HOME/OneDrive/dotfiles/ctags"
rm -r C:/Users/yasha/AppData/Roaming/nushell/config.nu 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/nushell/config.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/config.nu
rm -r C:/Users/yasha/AppData/Roaming/nushell/env.nu 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/nushell/env.nu" -Target $HOME/OneDrive/dotfiles/config/nushell/env.nu
rm -r $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path $HOME/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt -Target $HOME/OneDrive/dotfiles/config/sumatra/SumatraPDF-settings.txt
rm -r $HOME/textmf/bibtex/bib/link
mkdir -p $HOME/textmf/bibtex/bib
pwsh -nop -c New-Item -ItemType SymbolicLink -Path $HOME/OneDrive/scoop/apps/sumatrapdf/current/SumatraPDF-settings.txt -Target $HOME/OneDrive/workspacemodules/link.bib

rm -r $HOME/AppData/Local/nvim 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME/OneDrive/dotfiles/config/nvimnew"
rm -r $HOME/AppData/Local/lf/lfrc 
pwsh -nop -c New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/lf/lfrc" -Target "$HOME/onedrive/dotfiles/config/lf/lfrc"
rm $HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop-switcher.ahk 
pwsh -nop -c 'New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/desktop_switcher.ahk" -Target "$HOME/OneDrive/dotfiles/scripts/desktop_switcher.ahk"'
pwsh -nop -c 'New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\WinJump.exe" -Target "$HOME\OneDrive\WinJump.exe"'
pwsh -nop -c 'New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/taskbar.exe" -Target "C:\Users\yasha\scoop\shims\buttery-taskbar.EXE"'
new-Item -ItemType SymbolicLink -Path "C:\Users\yasha\AppData\Local\Microsoft\Windows Terminal\settings.json" -Target "C:\Users\yasha\OneDrive\dotfiles\config\windowsterm\settings.json"
# winget install Microsoft.VisualStudio.2022.BuildTools --force --override "--wait --passive --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows11SDK.22000"
Install-Module -Name PSFzf
# pwsh -nop -c ~\scoop\apps\sudo\current\sudo.ps1 New-Item -ItemType SymbolicLink -Path "$HOME/windows-desktop-switcher" -Target "$HOME/OneDrive/windows-desktop-switcher"
git config --global core.longpaths true
git config --global credential.helper store
git config --global user.name "yashamon"
git config --global user.email "yasha.savelyev@gmail.com"
