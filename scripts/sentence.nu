def main [f: string] {
$newfile='@_' + "$f"
$a = (cat $f | from tsv) | each {|l| ([string](l.ReadCount-1) + ': ' + $_  + "@") -replace "\.\s+@", ".@@@" -replace "\.\s+", ("\. @"+[string]($_.ReadCount-1)+':+++') }
$b=[String]$a
$c=$b -replace "`n", "" 
$d=$c -replace "\.\s+", "\.@`n" -replace "\.@", "\.@`n" -replace
'\$', ' ' -replace '\\', ' ' -replace '{', ' ' -replace '}'
# ' ' -replace '\^', ' ' -replace '_', ' ' -replace '%', ' ' -replace '@', ' '
echo $d > $newfile

# | sed /\.[[:space:]]*\n/,".@???\n",$0);print}'| awk -v RS='{gsub(/\.\n/,".@%%\n",$0);print}'| awk '{gsub(/\.\s/,"&"NR":++++ ",$0);print}' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' | tr '\n' ' ' | sed 's|\.\s*|&\n''|g'  | sed 's|\.@|&\n''|g'") > $newfile


}




