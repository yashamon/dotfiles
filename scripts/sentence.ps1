$f=$args[0]
$newfile='sentence_' + "$f"
ForEach-Object { Add-Content -Path $f -Value "$_.:" } > $newfile
# | sed /\.[[:space:]]*\n/,".@???\n",$0);print}'| awk -v RS='{gsub(/\.\n/,".@%%\n",$0);print}'| awk '{gsub(/\.\s/,"&"NR":++++ ",$0);print}' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' | tr '\n' ' ' | sed 's|\.\s*|&\n''|g'  | sed 's|\.@|&\n''|g'") > $newfile

