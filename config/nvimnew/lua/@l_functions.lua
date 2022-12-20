 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9::    vim.fn.jobwait({Idline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::    Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::         vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::       else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::         Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::    local command = "cg " .. "@_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::    vim.cmd(command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::   Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::         vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::       else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::         Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::    local commandsentence = "cg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::    local commandline = "cg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47:: Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53:: 
