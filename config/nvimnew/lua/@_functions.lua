 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9::       local buff = vim.cmd('call bufname()')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::    print(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::    os.execute(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::       vim.cmd('cg @_%')   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::    require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::       let b:filenamedir = substitute(expand('%:p:h'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::       let b:file = expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::       let b:filename = substitute(b:file, "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::       let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/line.nu " . b:filename 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::       exec b:execstr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::       cg @_%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::       lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::       " copen
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       " sleep 600m
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::       " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::       " " call feedkeys(":BLinesB  <c r>+ <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       " call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::    endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::    function Sentence()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::       let g:buf = bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::       " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::       let b:filenamedir = substitute(expand('%:p:h'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::       let b:file = expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::       let b:filename = substitute(b:file, "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::       let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::       exec b:execstr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::       cg @_%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::       lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::       " copen
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::       " sleep 600m
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::       " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::       " call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::    endfunction
