def main [name: string, credential: string] {
# let credentials = (open C:\\Users\yasha\.git-credentials --list)
# use forward slash
# git init 
touch .gitignore
cp $"($env.HOMED)/workspacemodules/.gitignore" ./.gitignore
# sudo ln -s ./link.bib $"($env.HOMED)/workspacemodules/link.bib"  
do --ignore-errors { rm ./link.bib }
pwsh -nop -c New-Item -ItemType SymbolicLink -Path ./link.bib -Target C:/Users/yasha/onedrive/dotfiles/link.bib  
do --ignore-errors {curl -u $"yashamon:($credential)" https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'}
do --ignore-errors {git remote add origin $"https://yashamon:($credential)@github.com/yashamon/($name).git"}
do --ignore-errors { git add . }
do --ignore-errors {git commit -m} 
do --ignore-errors {git push origin master} 
}
