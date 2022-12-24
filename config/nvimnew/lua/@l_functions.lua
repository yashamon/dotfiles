 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1:: Feedkey = function(key, mode)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2::   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4:: Server = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5::    local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6::    local servername = vim.api.nvim_eval("v:servername")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7::    os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8::    os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11:: Line = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12::    vim.fn.jobwait({Idline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18::             vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::  end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::    vim.cmd('lopen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38::             vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::  end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42::      Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44::            vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47::            Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50::       Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52::            vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:54::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:55::       end 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:56::       Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:58:: CG = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:59::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:61::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:62::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:63::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:64::    local commandsentence = "lg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:65::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:66::    vim.fn.jobwait({Idline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:67::    local commandline = "lg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:68::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:69:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:70:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:71:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:72:: Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:73:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:74:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:75:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:76:: CG()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:77:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:78:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:79:: local timer = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:80::   local function do_complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:81::     require('cmp').complete({ reason = require('cmp').ContextReason.Auto )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:82::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:83::   vim.api.nvim_create_autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:84::     { "TextChangedI", ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:85::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:86::       callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:87::         vim.fn.timer_stop(timer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:88::         timer = vim.fn.timer_start(200, do_complete)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:89::       end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:90::       pattern = "*",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:91::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:92::   )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:93:: 
