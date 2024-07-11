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
git add .
git commit -m "fist commit"
curl -u $"yashamon:($credential)" https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote set-url $"https://yashamon:($credential)@github.com/yashamon/($name).git"
git push origin master
}
