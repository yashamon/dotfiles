 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:1:: let s:plug_dir = expand('/tmp/plugged/vim plug')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:2:: " if !filereadable(s:plug_dir .. '/plug.vim')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:3:: "   execute printf('!curl  fLo %s/autoload/plug.vim   create dirs https://raw.githubusercontent.com/junegunn/vim plug/master/plug.vim', s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:4:: " end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:5:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:6:: execute 'set runtimepath+=' . s:plug_dir
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:7:: call plug#begin(s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:8:: Plug 'hrsh7th/nvim cmp',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:9:: Plug 'hrsh7th/cmp buffer',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:10:: Plug 'hrsh7th/cmp nvim lsp',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:11:: Plug 'hrsh7th/vim vsnip',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:12:: Plug 'neovim/nvim lspconfig',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:13:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:14:: " Plug 'folke/noice.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:15:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:16:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:17:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:18:: Plug 'LhKipp/nvim nu', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:19:: Plug 'folke/which key.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:20:: Plug 'ggandor/leap.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:21:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:22:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:23:: Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:24:: Plug 'williamboman/mason.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:25:: Plug 'williamboman/mason lspconfig.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:26:: Plug 'hrsh7th/nvim cmp', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:27:: Plug 'hrsh7th/cmp buffer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:28:: Plug 'hrsh7th/cmp nvim lsp', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:29:: " Plug 'ray x/cmp treesitter'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:30:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:31:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:32:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:33:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:34:: Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:35:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:36:: " Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:37:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:38:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:39:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:40:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:41:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:42:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:43:: Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:44:: Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:45:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:46:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:47:: Plug 'mg979/vim visual multi'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:48:: Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:49:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:50:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:51:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:52:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:53:: require('settings')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:54:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:55:: " require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:56:: " require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:57:: " require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:58:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:59:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:60:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:61:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:62:: let g:neovide_floating_blur_amount_x = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:63:: let g:neovide_floating_blur_amount_y = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:64:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:65:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:66:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:67:: set title
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:68:: set cmdheight=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:69:: set signcolumn=yes
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:70:: set scrolloff=10
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:71:: " set shell=nu
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:72:: " let &shell = 'nu'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:73:: " let &shellcmdflag = ' c'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:74:: " let &shellquote = ""
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:75:: " let &shellxquote = ""
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:76:: set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:77:: set wrap
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:78:: set pumblend=20
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:79:: " set winblend=15 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:80:: set switchbuf=newtab
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:81:: " let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:82:: " let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:83:: set clipboard+=unnamedplus	
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:84:: " TAB setting{
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:85:: set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:86:: set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:87:: " set shell="C: Program Files PowerShell 7 pwsh.EXE"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:88:: set termguicolors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:89:: set guicursor=n v c:block,i ci ve:ver25,r cr:hor20,o:hor50
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:90::  		   ,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:91::  		   ,sm:block blinkwait175 blinkoff150 blinkon175
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:92:: set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:93:: " set timeoutlen=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:94:: set foldmethod=expr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:95:: " set foldexpr=nvim_treesitter#foldexpr()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:96:: set tags+=~/workspacemodules/tags
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:97:: set tags+=~ workspacemodules tags
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:98:: set tags+=. tags
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:99:: set tags+=./tags
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:100:: " set wrapmargin=1
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:101:: " set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:102:: set linebreak 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:103:: set formatoptions+=w " set breakat=" "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:104:: " set list  " list disables linebreak whitespace
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:105:: set autochdir
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:106:: set guioptions =r
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:107:: set guioptions =l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:108:: let mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:109:: let g:mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:110:: set inccommand=split
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:111:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:112:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:113:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:114:: set undofile                " Save undo's after file closes
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:115:: set undodir=~/.undo " where to save undo histories
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:116:: set undolevels=1000000         " How many undos
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:117:: set undoreload=1000000		
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:118:: set nohlsearch
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:119:: " set noswapfile
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:120:: set showmatch		" Cursor shows matching ) and 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:121:: set nocursorline
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:122:: set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:123:: set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:124:: colorscheme gruvbox
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:125:: set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:126:: " set tm=1000
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:127:: set expandtab        "replace <TAB> with spaces
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:128:: set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:129:: set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:130:: "Git autocommit  (nonmain branch)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:131:: set completeopt=menu,menuone,noselect,noinsert
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:132:: " Avoid showing message extra message when using completion
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:133:: set shortmess+=c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:134:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:135:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:136::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:137::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:138::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:139::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:140::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:141::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:142::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:143::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:144::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:145::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:146::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:147::       
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:148::   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:149:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:150:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:151:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:152:: " " .vimrc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:153:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:154:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:155:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:156:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:157:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:158:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:159:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:160:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:161:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:162::  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:163:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:164:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:165:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:166:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:167:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:168::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:169::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:170::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:171:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:172:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:173:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:174:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:175:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:176:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:177:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:178:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:179:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:180:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:181:: au FileType tex, vim, lua * lua GitAsync() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:182:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:183:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:184:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:185:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:186:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:187:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:188:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:189:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:190:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:191:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:192:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:193:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:194:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:195:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:196:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:197:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:198:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:199:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:200:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:201:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:202:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:203:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:204:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:205:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:206:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:207:: '
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:208:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:209:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:210:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:211:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:212:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:213:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:214:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:215:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:216:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:217:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:218:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:219:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:220:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:221:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:222:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:223:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:224:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:225:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:226:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:227:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:228:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:229:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:230:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:231:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:232:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:233:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:234:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:235:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:236:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:237:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:238:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:239:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:240:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:241:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:242:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:243:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:244:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:245:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:246:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:247:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:248:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:249:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:250:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:251:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:252:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:253:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:254:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:255:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:256:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:257:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:258:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:259:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:260:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:261:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:262:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:263:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:264:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:265:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:266:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:267:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:268:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:269:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:270:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:271:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:272:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:273:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:274:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:275:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:276:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:277:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:278:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:279:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:280:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:281:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:282:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:283:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:284:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:285:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:286:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:287:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:288:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:289:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:290:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:291:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:292:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:293:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:294:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:295:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:296:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:297:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:298:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:299:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:300:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:301:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:302:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:303:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:304:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:305:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:306:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:307:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:308:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:309:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:310:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:311:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:312:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:313:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:314:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:315:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:316:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:317:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:318:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:319:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:320:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:321:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:322:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:323:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:324:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:325:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:326:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:327:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:328:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:329:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:330:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:331:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:332:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:333:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:334:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:335:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:336:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:337:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:338:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:339:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:340:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:341:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:342:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:343:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:344:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:345:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:346:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:347:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:348:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:349:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:350:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:351:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:352:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:353:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:354:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:355:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:356:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:357:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:358:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:359:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:360:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:361:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:362:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:363:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:364:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:365:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:366:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:367:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:368:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:369:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:370:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:371:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:372:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:373:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:374:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:375:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:376:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:377:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:378:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:379:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:380:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:381:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:382:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:383:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:384:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:385:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:386::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:387::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:388::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:389:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:390:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:391:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:392:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:393:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:394:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:395::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:396::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:397::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:398::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:399::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:400:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:401:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:402:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:403:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:404:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:405:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:406:: " TODO:Add :up
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:407:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:408:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:409:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:410:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:411:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:412:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:413:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:414:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:415:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:416:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:417:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:418:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:419:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:420:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:421:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:422:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:423:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:424:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:425:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:426:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:427:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:428:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:429:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:430:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:431:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:432:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:433:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:434:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:435:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:436:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:437:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:438:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:439:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:440:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:441:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:442:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:443:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:444:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:445:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:446:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:447:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:448:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:449:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:450:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:451:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:452:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:453:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:454:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:455:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:456:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:457:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:458:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:459:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:460:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:461:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:462:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:463:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:464:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:465:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:466:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:467:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:468:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:469:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:470:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:471:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:472:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:473:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:474:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:475:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:476:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:477:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:478:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:479:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:480:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:481::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:482:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:483:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:484::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:485:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:486:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:487:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:488:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:489:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:490:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:491:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:492:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:493:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:494:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:495:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:496:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:497:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:498:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:499:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:500:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:501:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:502:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:503::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:504::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:505::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:506:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:507:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:508:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:509::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:510::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:511::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:512:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:513:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:514:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:515::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:516::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:517::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:518::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:519:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:520:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:521::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:522::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:523:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:524:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:525::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:526::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:527:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:528:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:529:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:530::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:531::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:532:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:533:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:534:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:535:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:536:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:537:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:538:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:539:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:540:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:541::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:542::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:543::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:544:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:545:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:546::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:547::       exec "w"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:548::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:549::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:550::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:551::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:552::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:553::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:554::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:555::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:556::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:557::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:558::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:559::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:560::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:561::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:562:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:563:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:564::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:565:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:566:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:567:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:568:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:569::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:570:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:571:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:572:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:573::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:574::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:575::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:576::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:577::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:578::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:579::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:580::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:581::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:582::   " call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:583:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:584:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:585::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:586::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:587::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:588::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:589::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:590::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:591:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:592:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:593:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:594:: wa
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:595:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:596:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:597:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:598:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:599:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:600:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:601:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:602:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:603:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:604:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:605:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:606:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:607:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:608:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:609:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:610:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:611:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:612:: 
