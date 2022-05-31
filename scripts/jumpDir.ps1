Invoke-Command -ScriptBlock { $res= fd . $HOME -t d -H | fzf --reverse --header='Jump to location' | sed s/\\/\\\\/g
echo $res
lf -remote "send cd `\`"$res`\`"" }
