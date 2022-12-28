local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local timer = 0
local function do_complete()
	require('cmp').complete({ reason = require('cmp').ContextReason.Auto })
end
autocmd(
    { "TextChangedI", },
    {
      callback = function()
        vim.fn.timer_stop(timer)
        timer = vim.fn.timer_start(200, do_complete)
      end,
      pattern = "*",
    }
)
autocmd('FocusLost', { pattern = '*', command = 'silent! wa' })
autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' })
autocmd('FileType', { pattern = 'tex', command = 'vim.opt.iskeyword:append{":"}'})
autocmd('FileType', {pattern = 'tex,text,md', command =  'vim.opt.tw=60'})
autocmd('BufReadPost, FileReadPost', {command = 'normal zR'})
au('FileType', {pattern = 'tex,text', command = 'set spelllang=en_us'})
au('FileType', {pattern = 'tex,text,md', command = 'vim.opt.indentexpr=""'})
-- au('FileType', {pattern = 'vim', command = 'vim.opt.list=true'})
au('FileType', {pattern = 'tex', command = 'vim.opt.wrapmargin=0'})
au('BufWritePost', { callback = function() GitAsync() end })
au('FileType', {pattern = 'tex,lua,vim', callback = function() CG() end })
au('FileType', { pattern = 'tex', command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp'})
local yankGrp = ag("YankHighlight", { clear = true })
au("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})
au('TextYankPost', {command =  'call neoyank#_append()'})
