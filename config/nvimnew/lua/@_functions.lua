 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::       local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::       vim.cmd("let filename = filename")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::    local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::    vim.fn.jobwait({id)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::       vim.cmd('sleep 30m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::    Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::         vim.cmd('sleep 50m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::       else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::         Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::       require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::    vim.fn.jobwait({id)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::        vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::           vim.api.nvim_input("Gzf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::        end, 200) test
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::    vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49::    vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51:: 
