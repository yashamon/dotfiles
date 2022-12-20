 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:: Line2 = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9::    vim.cmd('cg @_blah.tex')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::    vim.cmd('sleep 600m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::       local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::       vim.cmd("let filename = filename")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::    local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::    vim.fn.jobwait({id)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::    vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::    vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::       require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::    local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    vim.fn.jobwait({id)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::        vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::           vim.api.nvim_input("Gzf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::        end, 200) test
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::    vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::    vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47:: 
