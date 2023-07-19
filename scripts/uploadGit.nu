# def main [name: string] {
def main [name: string] {
let credentials = (open C:\\Users\yasha\.git-credentials --list)
curl -u $credentials.0 https://api.github.com/user/repos -d $'{"name":"($name)", "private":"true"}'
git remote add origin $"$credentials.0/yashamon/($name).git"
git push -u origin master
}
