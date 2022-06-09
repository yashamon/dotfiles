$res= fd . $HOME -H -I | fzf --reverse --header='Jump to location' | sed 's/\\/\\\\/g' 
if ( Test-Path -Path "$res" -PathType Container )
     {  if ($res -notmatch '\\$') 
            { $res+= '\'
              echo $res }  
        lf -remote "send cd `\`".\\$res\\`\`""
     }
else 
   { lf -remote "send select `\`".\\$res`\`"" }


