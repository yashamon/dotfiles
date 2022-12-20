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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::       echo filter(getwininfo(), 'v:val.quickfix && !v:val.loclist')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::    Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::       local qf = vim.fn.filter(vim.fn.getwininfo(), 'v:val.quickfix && !v:val.loclist')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::       if not next(qf) == nil and vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::         vim.cmd('sleep 50m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::         Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::       vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::       require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::    local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::    local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::    vim.fn.jobwait({id)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::        vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::           vim.api.nvim_input("Gzf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::        end, 200) test
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50::    vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51::    vim.fn.feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53:: 
