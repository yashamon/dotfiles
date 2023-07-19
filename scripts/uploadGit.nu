def main [name: string, credential: string] {
# let credentials = (open C:\\Users\yasha\.git-credentials --list)
git init 
git branch -M master
touch help
git add .
git commit -m "fist commit"
curl -u $"yashamon:($credential)" https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add $name $"https://yashamon:($credential)@github.com/yashamon/($name).git"
git push -u $name master
}
