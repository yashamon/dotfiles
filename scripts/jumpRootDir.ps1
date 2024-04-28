Invoke-Command -ScriptBlock { $res= fd . '/' -t d -H | fzf --reverse --header='Jump to location' | sed s/\\/\\\\/g
if ($res -notmatch '\\$') 
            { $res+= '\'
              echo $res }  
lf -remote "send cd `\`"$res\\`\`""
}

