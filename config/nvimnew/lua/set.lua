local opt = vim.opt
local indent = 2
vim.opt.tabstop = indent
vim.opt.shiftwidth = indent
vim.opt.softtabstop = indent
vim.opt.backup = false
opt.termguicolors = true
opt.spelllang = 'en_us'
opt.clipboard = 'unnamedplus'
opt.wrap = true
opt.indentexpr = ''
opt.title = true
opt.cmdheight = 0
opt.signcolumn = true
opt.scrolloff=10
opt.pumblend=20
 -- set winblend=15 
opt.switchbuf='newtab'
-- opt.ignorecase = true
opt.smartcase = true
-- opt.foldmethod=expr
-- opt.foldexpr = fn.nvim_treesitter#foldexpr()
-- opt.foldexpr=set foldmethod=expr

-- opt.guicursor = n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175 
--
opt.spell = true
