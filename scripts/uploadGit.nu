# def main [name: string] {
def main [name: string] {
let credentials = (open C:\\Users\yasha\.git-credentials --list)
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
