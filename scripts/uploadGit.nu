# def main [name: string] {
def main [name: string] {
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
