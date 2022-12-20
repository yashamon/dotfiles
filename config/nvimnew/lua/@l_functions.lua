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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::   Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::         vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::       else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::         Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::    local commandsentence = "cg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::    local commandline = "cg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45:: Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51:: 
