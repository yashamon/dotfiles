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
        timer = vim.fn.timer_start(150, do_complete)
      end,
      pattern = "*",
    }
)
autocmd('FocusLost', { pattern = '*', command = 'silent! wa' })
autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' })
autocmd('FileType', { pattern = 'tex', command = 'lua vim.opt.iskeyword:append{":"}'})
autocmd('FileType', { pattern = 'tex,text,md', command = 'lua vim.opt.tw=60'})
autocmd('UIEnter', {command = 'normal zR'})
au('Filetype', { pattern = 'tex,text', command = 'lua vim.opt.spelllang = "en_us"'})
au('Filetype', { pattern = 'tex,text,md', command = 'lua vim.opt.indentexpr = ""'} )
au('Filetype', { pattern = 'vim', command = 'lua vim.opt.list = true'})
au('Filetype', { pattern = 'tex', command = 'lua vim.opt.wrapmargin = 0'} )
au('BufWritePost', { callback = GitAsync } )
au('Filetype', { pattern = 'tex,lua,vim', callback = CG } )
au('UIEnter', { pattern = 'tex,lua,vim', command = 'silent! w' })
au('Filetype', { pattern = 'tex', command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp'})
local yankGrp = ag("YankHighlight", { clear = true })
au("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})
au('TextYankPost',  {command =  'call neoyank#_append()'} )
