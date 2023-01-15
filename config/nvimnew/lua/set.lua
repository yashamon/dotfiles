local opt = vim.opt
local home = '/Users/yasha'
local indent = 2
local g = vim.g
local fn = vim.fn
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
-- opt.foldmethod='expr'
opt.foldexpr='nvim_treesitter#foldexpr()'
opt.linebreak = true
opt.foldenable = false
vim.opt.formatoptions:append{"w"}
opt.autochdir = true
g.mapleader=';'
opt.inccommand = 'split'
opt.undofile = true
opt.undodir=home .. '/.undo'
opt.undolevels=1000000
opt.undoreload=1000000
opt.hlsearch=false
opt.cursorline=false
opt.background='light'
vim.o.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
opt.tags:append {home .. "/workspacemodules/tags", "./tags"}
-- Set colorscheme font 
opt.guifont = "JetBrains Mono NL:h18"
-- vim.cmd.colorscheme('gruvbox')
vim.cmd [[set shortmess+=c]]
-- vim.cmd [[set shortmess-=F]]
vim.cmd [[let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }]]
vim.cmd [[let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
]]
vim.cmd [[let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
]]
--neovide
-- vim.cmd [[let g:neovide_profiler = v:true]]
g.neovide_fullscreen = true
-- vim.cmd [[let g:neovide_refresh_rate = 120]]
g.neovide_floating_blur_amount_x = 2.0
g.neovide_floating_blur_amount_y = 2.0
opt.spell = true
-- vim.o.foldcolumn = '1'
-- vim.o.foldlevel = 99
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.o.statuscolumn = "%=%C"
-- opt.foldexr = 'vim.fn.nvim_treesitter#foldexpr()
-- opt.guicursor = n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175 
-- highlights
-- vim.cmd [[highlight IndentBlanklineChar guifg=#af6000 gui=nocombine]]
-- vim.cmd [[hi SpellBad gui=undercurl guisp=#580058 ]] test
vim.api.nvim_set_hl(0, 'SpellBad', { sp = '#580058', underline = true })
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#af6000', nocombine = true })
vim.api.nvim_set_hl(0, 'cursor', { fg = 'black', bg = 'white' })
