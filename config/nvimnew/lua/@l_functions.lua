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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::             vim.api.nvim_feedkeys('fatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::      Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::            vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::            Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::       end 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::    Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:54::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:55::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:56::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57::    local commandsentence = "cg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:58::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:59::    vim.fn.jobwait({Idline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60::    local commandline = "cg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:61::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:62:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:63:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:64:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:65:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:66::    asdf
