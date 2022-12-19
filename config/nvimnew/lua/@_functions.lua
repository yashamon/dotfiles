 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::       local buff = vim.cmd('call bufname()')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::       print(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::    os.execute(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::       require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::    if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::     vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::         vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::     end, 10)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::       vim.cmd('sleep 600m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::       " copen
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::       " sleep 600m
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::       " " call feedkeys(":BLinesB  <c r>+ <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::       " " call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::       print(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    os.execute(execstr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::    vim.cmd('cg @_%')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::       vim.cmd('sleep 600m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::       vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42:: end
