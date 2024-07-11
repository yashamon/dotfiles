def main [name: string, credential: string] {
# let credentials = (open C:\\Users\yasha\.git-credentials --list)
# use forward slash
# git init 
git branch -M master
touch .gitignore
cp $"($env.HOMED)/workspacemodules/.gitignore" ./.gitignore
# sudo ln -s ./link.bib $"($env.HOMED)/workspacemodules/link.bib"  
rm ./link.bib
pwsh -nop -c New-Item -ItemType SymbolicLink -Path ./link.bib -Target C:/Users/yasha/onedrive/dotfiles/link.bib 
curl -u $"yashamon:($credential)" https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon:($credential)@github.com/yashamon/($name).git"
do --ignore-errors { git add . }
pwsh -nop -c 'git commit -m "fist commit"; git push origin master'
}
