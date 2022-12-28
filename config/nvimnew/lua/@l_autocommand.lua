 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:1:: local au = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:2:: local ag = vim.api.nvim_create_augroup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:3:: local autocmd = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:4:: autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:5::     { "UIEnter",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:6::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:7::       callback = function() CG()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:8:: 			end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:9::       pattern = "markdown, txt",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:10::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:11:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:12:: local timer = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:13:: local function do_complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:14:: 	require('cmp').complete({ reason = require('cmp').ContextReason.Auto )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:15:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:16:: autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:17::     { "TextChangedI", ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:18::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:19::       callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:20::         vim.fn.timer_stop(timer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:21::         timer = vim.fn.timer_start(200, do_complete)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:22::       end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:23::       pattern = "*",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:24::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:25:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:26:: autocmd('FocusLost', { pattern = '*', command = 'silent! wa' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:27:: autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:28:: autocmd('FileType tex', { pattern = '*', command = 'vim.opt.iskeyword:append {":"')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:29:: autocmd('Filetype tex,text,md', {command =  'vim.opt.tw=60')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:30:: autocmd('BufReadPost, FileReadPost', {command = 'normal zR')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:31:: au('FileType tex,text', {command = 'set spelllang=en_us')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:32:: au('FileType tex,text,md', {command = 'opt.vim.indentexpr=""')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:33:: au('FileType vim', {command = 'opt.vim.list = true')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:34:: au('Filetype tex', {command = 'opt.vim.wrapmargin=0')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:35:: au('BufWritePost', { callback = function() GitAsync() end )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:36:: au('Filetype tex', { command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:37:: local yankGrp = ag("YankHighlight", { clear = true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:38:: au("TextYankPost", {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:39::   command = "silent! lua vim.highlight.on_yank()",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:40::   group = yankGrp,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:41:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:42:: au('TextYankPost', {command =  'call neoyank#_append()')
