nu -c let a = open ~\dotfiles\scripts\symlinksWindows.ps1 ; for x in $a.buckets.Name { scoop bucket add $x }
nu -c let a = open ~\dotfiles\scripts\symlinksWindows.ps1 ; for x in $a.apps.Name { scoop install $x }
