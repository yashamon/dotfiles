$f=$args[0]
$newfile='sentence_' + "$f"
Get-Content $f | foreach { $L=[string]($_.ReadCount-1) } | foreach { $L + ': ' + $_ } |
sed -e "/\.\s\{0,\}\n/.@???\n/g" > blah

# | sed /\.[[:space:]]*\n/,".@???\n",$0);print}'| awk -v RS='{gsub(/\.\n/,".@%%\n",$0);print}'| awk '{gsub(/\.\s/,"&"NR":++++ ",$0);print}' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' | tr '\n' ' ' | sed 's|\.\s*|&\n''|g'  | sed 's|\.@|&\n''|g'") > $newfile

