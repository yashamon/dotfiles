  C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:1: Feedkey = function(key, mode)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:2:   vim.api.nvim feedkeys(vim.api.nvim replace termcodes(key, true, true, true), mode, true)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:3: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:4: Server = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:5:    local buff = vim.fn.bufname()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:6:    local servername = vim.api.nvim eval("v:servername")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:    os.execute("echo " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:servername . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:7:' > C:/Users/yasha/servername.txt')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:    os.execute("echo " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:buff . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:8:' > C:/Users/yasha/filename.txt')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:9: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:10: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:11: Line = function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:12:    vim.fn.jobwait({Idline )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:13:    vim.cmd('lopen')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:14:    if vim.w.bqf enabled then@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:15:     local winid = vim.api.nvim get current win()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:16:     vim.schedule(function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:17:         vim.api.nvim win call(winid, function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:18:             vim.api.nvim feedkeys('zf', 'im', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:19:         end)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:20:     end)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:21:  end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:22: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:23: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:24: Sentence = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:25:    vim.fn.jobwait({IdSentence )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:26:    vim.cmd('lopen')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:27:    if vim.w.bqf enabled then@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:28:     local winid = vim.api.nvim get current win()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:29:     vim.schedule(function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:30:         vim.api.nvim win call(winid, function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:31:             vim.api.nvim feedkeys('zf', 'im', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:32:         end)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:33:     end)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:34:  end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:35:      Wait = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:36:          if vim.b.bqf enabled then@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:37:            vim.cmd('sleep 200m')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:38:            vim.api.nvim feedkeys('zf', 'i', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:39:          else@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:40:            Wait()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:41:          end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:42:       end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:43:       Wait = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:44:          if vim.b.bqf enabled then@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:45:            vim.cmd('sleep 150m')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:46:            vim.api.nvim feedkeys('zf', 'i', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:47:          end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:48:       end @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:49:       Wait()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:50: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:51: CG = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:52:    local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "  ", "/", "g")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:53:    local filename = vim.fn.substitute(vim.fn.expand('%:p'), "  ", "/", "g")@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:54:    Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:55:    IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:56:    vim.fn.jobwait({IdSentence )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57:    local commandsentence = "lg " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57:"@s " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:57:filenameshort@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:58:    vim.cmd(commandsentence)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:59:    vim.fn.jobwait({Idline )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60:    local commandline = "lg " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60:"@l " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:60:filenameshort@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:61:    vim.cmd(commandline)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:62: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:63: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:64: GitAsync = function ()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:65: Server()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:66: local buff = vim.fn.bufname()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:67: vim.cmd('te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add  
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:67:; git commit  m  a; git push   all origin; ctags  R  ')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:68: vim.cmd("buffer " . 
C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:68:buff)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:69: CG()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:70: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:71: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:72: local timer = 0@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:73:   local function do complete()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:74:     require('cmp').complete({ reason = require('cmp').ContextReason.Auto  )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:75:   end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:76: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:77:    vim.api.nvim create autocmd(@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:78:        { "BufReadPost","FileReadPost", "FileType tex, vim, lua" ,@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:79:        {@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:80:          callback = function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:81:           GitAsync()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:82:          end,@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:83:          pattern = "*",@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:84:         @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:85:      )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:86: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:87:   vim.api.nvim create autocmd(@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:88:     { "TextChangedI",  ,@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:89:     {@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:90:       callback = function()@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:91:         vim.fn.timer stop(timer)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:92:         timer = vim.fn.timer start(200, do complete)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:93:       end,@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:94:       pattern = "*",@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:95:      @ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:96:   )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/functions.lua:97: @