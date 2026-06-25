def main [] {
let a = (open ~\OneDrive\workspacemodules\dotfiles\scoopPackageList.json)
for x in $a.buckets.Name { scoop bucket add $x }
for x in $a.apps.Name { scoop install $x }
}
