 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:1:: local au = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:2:: local ag = vim.api.nvim_create_augroup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:3:: local autocmd = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:4:: local opt = vim.opt
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:5:: local timer = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:6:: local function do_complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:7:: 	require('cmp').complete({ reason = require('cmp').ContextReason.Auto )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:8:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:9:: autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:10::     { "TextChangedI", ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:11::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:12::       callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:13::         vim.fn.timer_stop(timer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:14::         timer = vim.fn.timer_start(200, do_complete)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:15::       end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:16::       pattern = "*",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:17::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:18:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:19:: autocmd('FocusLost', { pattern = '*', command = 'silent! wa' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:20:: autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:21:: autocmd('FileType', { pattern = 'tex', command = 'vim.opt.iskeyword:append{":"')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:22:: autocmd('FileType', {pattern = 'tex,text,md', command =  'vim.opt.tw=60')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:23:: autocmd('BufReadPost, FileReadPost', {command = 'normal zR')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:24:: au('FileType', {pattern = 'tex,text', command = 'set spelllang=en_us')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:25:: au('FileType', {pattern = 'tex,text,md', command = 'vim.opt.indentexpr=""')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:26:: au('FileType', {pattern = 'vim', command = 'vim.opt.list=true')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:27:: au('FileType', {pattern = 'tex', command = 'vim.opt.wrapmargin=0')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:28:: au('BufWritePost', { callback = function() GitAsync() end )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:29:: au('FileType', {pattern = 'tex, lua, vim', callback = function() CG() end )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:30:: au('FileType', { pattern = 'tex', command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:31:: local yankGrp = ag("YankHighlight", { clear = true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:32:: au("TextYankPost", {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:33::   command = "silent! lua vim.highlight.on_yank()",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:34::   group = yankGrp,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:35:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:36:: au('TextYankPost', {command =  'call neoyank#_append()')
