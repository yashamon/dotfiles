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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13::         vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20:: Sentence = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22::    vim.cmd('copen')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23::      Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24::          if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25::            vim.cmd('sleep 200m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28::            Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29::          end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31::    Wait = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32::       if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33::         vim.cmd('sleep 150m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34::         vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36::    end 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37::    Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40:: GitAsync = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41::    Server()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42:: local buff = vim.fn.bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43:: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R ')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44:: vim.cmd("buffer " .. buff)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45::    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46::    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47::    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48::    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49::    vim.fn.jobwait({IdSentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50::    local commandsentence = "cg " .. "@s_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51::    vim.cmd(commandsentence)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52::    vim.fn.jobwait({IdLine)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53::    local commandline = "cg " .. "@l_" .. filenameshort
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:54::    vim.cmd(commandline)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:55:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:56:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57:: local fzf = require "fzf".fzf
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:58:: local action = require "fzf.actions".action
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:59:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60:: coroutine.wrap(function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:61::      items is a table of selected or hovered fzf items
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:62::   local shell = action(function(items, fzf_lines, fzf_cols)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:63::        only one item will be hovered at any time, so get the selection
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:64::        out and convert it to a number
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:65::     local buf = tonumber(items[1 )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:66:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:67::        you can return either a string or a table to show in the preview
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:68::        window
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:69::     return vim.api.nvim_buf_get_lines(buf, 0,  1, false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:70::   end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:71:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:72::   fzf(vim.api.nvim_list_bufs(), "  preview " .. shell)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:73:: end)()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:74:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:75::    asdf
