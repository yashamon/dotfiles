def main [file:string] {
$env.HOMED = $"($env.HOMEPATH)/OneDrive"
let HOME = $"($env.HOMEPATH)"
let HOMED = $"($HOME)/OneDrive"
let cwdb = $env.PWD
cd $"($HOMED)/web"
git pull
cd $cwdb
cp $file $"($HOMED)/web/papers"
cd $"($HOMED)/web"
git add .
git commit -m -a
git push origin gh-pages
cd $cwdb
}
