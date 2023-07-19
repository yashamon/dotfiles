# def main [name: string] {
def main [name: string] {
let credentials = (open C:\\Users\yasha\.git-credentials --list)
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
