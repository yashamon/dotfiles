# def main [name: string] {
def main [name: string] {
let credentials = (open C:\\Users\yasha\.git-credentials)
echo $credentials.0
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
