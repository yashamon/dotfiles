lualatex -halt-on-error -synctex=1 -file-line-error -jobname=backup.pdf
if $?=0; then 
mv ./build/backup.pdf $1
fi
