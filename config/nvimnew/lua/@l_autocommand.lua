 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:1:: local au = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:2:: local ag = vim.api.nvim_create_augroup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:3:: local autocmd = vim.api.nvim_create_autocmd
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:4:: local opt = vim.opt
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:5::    autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:6::        { "UIEnter",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:7::        {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:8::          callback = function() CG()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:9::    			end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:10::          pattern = "markdown, txt",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:11::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:12::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:13:: local timer = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:14:: local function do_complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:15:: 	require('cmp').complete({ reason = require('cmp').ContextReason.Auto )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:16:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:17:: autocmd(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:18::     { "TextChangedI", ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:19::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:20::       callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:21::         vim.fn.timer_stop(timer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:22::         timer = vim.fn.timer_start(200, do_complete)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:23::       end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:24::       pattern = "*",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:25::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:26:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:27:: autocmd('FocusLost', { pattern = '*', command = 'silent! wa' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:28:: autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:29::    autocmd('FileType tex', { pattern = '*', command = 'vim.opt.iskeyword:append {":"')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:30::    autocmd('Filetype tex,text,md', {command =  'vim.opt.tw=60')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:31::    autocmd('BufReadPost, FileReadPost', {command = 'normal zR')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:32:: au('FileType tex,text', {command = 'set spelllang=en_us')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:33:: au('FileType tex,text,md', {command = 'vim.opt.indentexpr=""')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:34:: au('FileType vim', {command = 'vim.opt.list = true')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:35:: au('Filetype tex', {command = 'vim.opt.wrapmargin=0')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:36:: au('BufWritePost', { callback = function() GitAsync() end )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:37:: au('Filetype tex', { command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:38:: local yankGrp = ag("YankHighlight", { clear = true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:39:: au("TextYankPost", {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:40::   command = "silent! lua vim.highlight.on_yank()",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:41::   group = yankGrp,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:42:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/autocommand.lua:43:: au('TextYankPost', {command =  'call neoyank#_append()')
