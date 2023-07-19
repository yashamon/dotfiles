def main [name: string, credential: string] {
# let credentials = (open C:\\Users\yasha\.git-credentials --list)
curl -u $"yashamon:($credential)" https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon:($credential)@github.com/yashamon/($name).git"
git push -u origin master
}
