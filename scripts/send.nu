function [file:string] {
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
