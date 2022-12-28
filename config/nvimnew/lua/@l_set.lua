 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:1:: local opt = vim.opt
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:2:: local home = '/Users/yasha'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:3:: local indent = 2
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:4:: vim.opt.tabstop = indent
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:5:: vim.opt.shiftwidth = indent
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:6:: vim.opt.softtabstop = indent
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:7:: vim.opt.backup = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:8:: opt.termguicolors = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:9:: opt.spelllang = 'en_us'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:10:: opt.clipboard = 'unnamedplus'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:11:: opt.wrap = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:12:: opt.indentexpr = ''
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:13:: opt.title = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:14:: opt.cmdheight = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:15:: opt.signcolumn = 'yes'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:16:: opt.scrolloff=10
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:17:: opt.pumblend=20
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:18::     set winblend=15 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:19:: opt.switchbuf='newtab'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:20:: opt.ignorecase = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:21:: opt.smartcase = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:22:: opt.foldmethod='expr'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:23:: opt.linebreak = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:24:: vim.opt.formatoptions:append{"w"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:25:: opt.autochdir = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:26:: vim.g.mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:27::    vim.g.mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:28::    vim.cmd [[let mapleader=';'  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:29::    vim.cmd [[let g:mapleader=';'  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:30:: opt.inccommand = 'split'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:31:: opt.undofile = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:32:: opt.undodir=home .. '/.undo'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:33:: opt.undolevels=1000000
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:34:: opt.undoreload=1000000
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:35:: opt.hlsearch=false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:36:: opt.cursorline=false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:37:: opt.background='light'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:38:: vim.o.guicursor = 'n v c:block,i ci ve:ver25,r cr:hor20,o:hor50,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor,sm:block blinkwait175 blinkoff150 blinkon175'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:39::    vim.cmd [[set tags+=~/workspacemodules/tags  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:40::    vim.cmd [[set tags+=./tags  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:41::    vim.cmd [[set shortmess+=c  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:42::    vim.cmd [[set shortmess+=c  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:43::    vim.cmd [[set shortmess+=c  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:44::    " set tags+=~ workspacemodules tags
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:45:: opt.tags:append {home .. "/workspacemodules/tags", "./tags"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:46::    opt.tags:append {".  tags"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:47::    set tags+=~ workspacemodules tags
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:48::    opt.tags:append {'/workspacemodules/tags'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:49::    set tags+=. tags
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:50::    set tags+=./tags
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:51::    Set colorscheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:52:: vim.cmd.colorscheme('gruvbox')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:53:: vim.cmd [[set shortmess+=c  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:54:: vim.cmd [[let g:neovide_fullscreen=v:true  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:55:: vim.cmd [[let g:neovide_floating_blur_amount_x = 3.0  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:56:: vim.cmd [[let g:neovide_floating_blur_amount_y = 3.0  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:57:: vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:58:: vim.opt.runtimepath:append(',/tmp/pluggedtest/vim plug')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:59::    opt.foldexr = 'vim.fn.nvim_treesitter#foldexpr()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:60::    opt.guicursor = n v c:block,i ci ve:ver25,r cr:hor20,o:hor50,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor,sm:block blinkwait175 blinkoff150 blinkon175 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:61::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:62:: opt.spell = true
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:63::    highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:64::    vim.cmd [[highlight IndentBlanklineChar guifg=#af6000 gui=nocombine  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:65::    vim.cmd [[hi SpellBad gui=undercurl guisp=#580058    test
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:66::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:67:: vim.api.nvim_set_hl(0, 'SpellBad', { sp = '#580058', undercurl = true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/set.lua:68:: vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#af6000', nocombine = true )
