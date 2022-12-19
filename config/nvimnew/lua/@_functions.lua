 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::     vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::         vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::     end, 10)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::       local buff = vim.cmd('call bufname()')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::       print(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::    os.execute(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::       require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::       vim.cmd('sleep 600m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::       vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       " copen
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::       " sleep 600m
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::       " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       " " call feedkeys(":BLinesB  <c r>+ <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::       " " call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::       print(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::    os.execute(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::       vim.cmd('sleep 600m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::       vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41:: end
