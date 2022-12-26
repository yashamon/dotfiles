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
opt.signcolumn = 'yes'
opt.scrolloff=10
opt.pumblend=20
 -- set winblend=15 
opt.switchbuf='newtab'
opt.ignorecase = true
opt.smartcase = true
opt.foldmethod='expr'
opt.linebreak = true
vim.opt.formatoptions:append{"w"}
opt.autochdir = true
vim.g.mapleader=';'
-- vim.g.mapleader=';'
-- vim.cmd [[let mapleader=';']]
-- vim.cmd [[let g:mapleader=';']]
opt.inccommand = 'split'
opt.undofile = true
opt.undodir='~/.undo'
opt.undolevels=1000000
opt.undoreload=1000000
opt.hlsearch=false
opt.cursorline=false
opt.background='light'
vim.o.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
vim.cmd [[set tags+=~/workspacemodules/tags]]
vim.cmd [[set tags+=./tags]]
-- vim.cmd [[set shortmess+=c]]
-- vim.cmd [[set shortmess+=c]]
-- vim.cmd [[set shortmess+=c]]
-- " set tags+=~\workspacemodules\tags
" " -- opt.tags:append {"C:\\Users\\yasha\\workspacemodules\\tags"}
-- opt.tags:append {".\\tags"}
-- set tags+=~\workspacemodules\tags
-- opt.tags:append {'/workspacemodules/tags'}
-- set tags+=.\tags
-- set tags+=./tags
-- Set colorscheme
vim.cmd.colorscheme('gruvbox')
vim.cmd [[set shortmess+=c]]
vim.cmd [[let g:neovide_fullscreen=v:true]]
vim.cmd [[let g:neovide_floating_blur_amount_x = 3.0]]
vim.cmd [[let g:neovide_floating_blur_amount_y = 3.0]]
vim.cmd [[let g:neovide_fullscreen=v:true]]
vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()]]
-- opt.foldexr = 'vim.fn.nvim_treesitter#foldexpr()
-- opt.guicursor = n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175 
--
opt.spell = true
