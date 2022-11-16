def main [f: string] {
$newfile='@_' + "$f"
$a = open $f | lines | each -n { |l| $"(l.index)" + ': ' + $"(l.item)"  + "@") | str replace -a "\.\s+@" ".@@@" |  str replace -a "\.\s+" ("\. @"+ $"(l.index)" + ':+++') }
$b = $a
$c=$b str replace -a "`n" "" 
$d=$c str replace -a "\.\s+" "\.@`n" str replace -a "\.@" "\.@`n" str replace -a 
'\$' ' ' str replace -a '\\' ' ' str replace -a '{' ' ' str replace -a '}'
# ' ' str replace -a '\^' ' ' str replace -a '_' ' ' str replace -a '%' ' ' str replace -a '@' ' '
echo $d > $newfile

# | sed /\.[[:space:]]*\n/,".@???\n",$0);print}'| awk -v RS='{gsub(/\.\n/,".@%%\n",$0);print}'| awk '{gsub(/\.\s/,"&"NR":++++ ",$0);print}' | tr '\$' ' ' | tr '\\' ' '| tr '\{' ' '| tr '\}' ' '|  tr '\^' ' ' | tr '\_' ' '| tr '\%' ' ' | tr '\n' ' ' | sed 's|\.\s*|&\n''|g'  | sed 's|\.@|&\n''|g'") > $newfile


}




