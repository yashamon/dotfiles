# def main [name: string] {
def main [name: string] {
curl -u "yashamon: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" "https://api.github.com/yashamon/repos -d '{"name":($name), "private":"true"}'"
git remote add origin $"https://yashamon:yNJgYzPVU2SSse4cyhU8@github.com/yashamon/($name).git"
git push -u origin master
}
