  C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1: Server = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2:    local buff = vim.fn.bufname()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3:    local servername = vim.api.nvim eval("v:servername")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4:    os.execute("echo " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4:servername . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4:' > C:/Users/yasha/servername.txt')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5:    os.execute("echo " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5:buff . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5:' > C:/Users/yasha/filename.txt')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8: Line = function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9:       local buff = vim.cmd('call bufname()')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10:    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11:    local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11:filename@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12:       print(execstr)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13:    os.execute(execstr)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14:    vim.cmd('cg @ %')   @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15:    require('telescope.builtin').quickfix({layout strategy='vertical',layout config={width=0.9  )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16:       " copen@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17:       " sleep 600m@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18:       " " let b:paste = system('pwsh  c Get Clipboard')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19:       " " call feedkeys(":BLinesB  <c r>+ <cr>")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20:       " " call feedkeys("zf")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23: Sentence = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24:    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25:    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25:filename@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26:       print(execstr)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27:    os.execute(execstr)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28:    vim.cmd('cg @ %')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29:    vim.cmd('copen')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30:    vim.cmd('sleep 600m')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:    vim.fn.feedkey("zf")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32: end@