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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::             vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::  end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::             vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::  end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::      Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::            vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::            Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52::       end 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:54:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:55:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:56:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57::    Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:58:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:59:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:61::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:62::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:63::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:64::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:65::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:66::    local commandsentence = "cg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:67::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:68::    vim.fn.jobwait({Idline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:69::    local commandline = "cg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:70::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:71:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:72:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:73::    local timer = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:74::      local function do_complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:75::        cmp.complete({ reason = cmp.ContextReason.Auto )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:76::      end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:77::      vim.api.nvim_create_autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:78::        { "TextChangedI", ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:79::        {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:80::          callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:81::            vim.fn.timer_stop(timer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:82::            timer = vim.fn.timer_start(500, do_complete)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:83::          end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:84::          pattern = "*",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:85::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:86::      )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:87:: 
