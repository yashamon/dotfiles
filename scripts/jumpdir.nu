def main [] {
let res = $"(fd . $env.HOME -t d -H | fzf --reverse --header='Jump to location' | str replace '\.' '' | str replace '\\' '' | str replace '\\' '' | str trim)"

if  ($res | path type) == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
}


$res=fd . $HOME -t d -H | fzf --reverse --header='Jump to location' | sed s/\\/\\\\/g
if ($res -notmatch '\\$') 
            { $res+= '\'
              echo $res }  
lf -remote "send cd `\`"$res\\`\`""
