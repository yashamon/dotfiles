# def main [name: string] {
def main [name: string] {
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
