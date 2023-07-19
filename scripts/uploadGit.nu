# def main [name: string] {
def main [name: string] {
$credentials = open "C:\\Users\\yasha\\.gitcredentials"
echo $credentials
curl -u yashamon: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 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"https://yashamon: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@github.com/yashamon/($name).git"
git push -u origin master
}
