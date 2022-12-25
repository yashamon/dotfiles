 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:1:: call plug#begin('~/.vim/plugged')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:2:: "Plug 'nvim telescope/telescope fzf native.nvim', { 'do': 'make'  asdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:3:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:4:: " Plug 'folke/noice.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:5:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:6:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:7:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:8:: Plug 'LhKipp/nvim nu', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:9:: Plug 'folke/which key.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:10:: Plug 'ggandor/leap.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:11:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:12:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:13:: Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:14:: Plug 'williamboman/mason.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:15:: Plug 'williamboman/mason lspconfig.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:16:: Plug 'hrsh7th/nvim cmp', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:17:: Plug 'hrsh7th/cmp buffer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:18:: Plug 'hrsh7th/cmp nvim lsp', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:19:: " Plug 'ray x/cmp treesitter'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:20:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:21:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:22:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:23:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:24:: Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:25:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:26:: " Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:27:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:28:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:29:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:30:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:31:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:32:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:33:: Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:34:: Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:35:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:36:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:37:: Plug 'mg979/vim visual multi'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:38:: Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:39:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:40:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:41:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:42:: require('settings')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:43:: require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:44:: require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:45:: require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:46::    require('telescope').load_extension('fzf')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:47:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:48:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:49:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:50:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:51:: let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:52:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:53:: let g:neovide_floating_blur_amount_x = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:54:: let g:neovide_floating_blur_amount_y = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:55:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:56:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:57:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:58:: set title
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:59:: set ignorecase
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:60:: set cmdheight=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:61:: set signcolumn=yes
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:62:: set scrolloff=10
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:63:: set shell=nu
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:64:: let &shell = 'nu'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:65:: let &shellcmdflag = ' c'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:66:: let &shellquote = ""
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:67:: let &shellxquote = ""
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:68:: set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:69:: set wrap
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:70:: set pumblend=20
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:71:: set winblend=15 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:72:: set switchbuf=newtab
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:73:: let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:74:: let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:75:: set clipboard+=unnamedplus	
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:76:: TAB setting{
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:77:: set shell="C: Program Files PowerShell 7 pwsh.EXE"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:78:: " set guioptions =r
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:79:: set guioptions =l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:80:: set guicursor=n v c:block,i ci ve:ver25,r cr:hor20,o:hor50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:81::  		   ,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:82::  		   ,sm:block blinkwait175 blinkoff150 blinkon175
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:83:: " set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:84:: " set timeoutlen=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:85:: set foldmethod=expr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:86:: set foldexpr=nvim_treesitter#foldexpr()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:87:: set tags+=~/workspacemodules/tags
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:88:: set tags+=~ workspacemodules tags
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:89:: set tags+=. tags
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:90:: set tags+=./tags
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:91:: " set wrapmargin=1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:92:: " set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:93:: set linebreak 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:94:: set formatoptions+=w " set breakat=" "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:95:: " set list  " list disables linebreak whitespace
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:96:: set autochdir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:97:: set inccommand=split
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:98:: set undofile                " Save undo's after file closes
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:99:: set undodir=~/.undo " where to save undo histories
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:100:: set undolevels=1000000         " How many undos
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:101:: set undoreload=1000000		
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:102:: set nohlsearch
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:103:: " set noswapfile
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:104:: set nocursorline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:105:: set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:106:: set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:107:: colorscheme gruvbox
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:108:: set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:109:: set shortmess+=c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:110:: set tm=1000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:111:: set expandtab        "replace <TAB> with spaces
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:112:: set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:113:: set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:114:: "Git autocommit  (nonmain branch)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:115:: set completeopt=menu,menuone,noselect,noinsert
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:116:: Avoid showing message extra message when using completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:117:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:118:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:119::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:120::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:121::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:122::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:123::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:124::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:125::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:126::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:127::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:128::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:129::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:130::       
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:131::   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:132:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:133:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:134:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:135:: " " .vimrc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:136:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:137:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:138:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:139:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:140:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:141:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:142:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:143:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:144:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:145::  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:146:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:147:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:148:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:149:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:150:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:151::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:152::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:153::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:154:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:155:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:156:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:157:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:158:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:159:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:160:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:161:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:162:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:163:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:164:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:165:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:166:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:167:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:168:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:169:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:170:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:171:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:172:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:173:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:174:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:175:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:176:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:177:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:178:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:179:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:180:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:181:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:182:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:183:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:184:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:185:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:186:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:187:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:188:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:189:: '
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:190:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:191:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:192:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:193:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:194:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:195:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:196:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:197:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:198:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:199:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:200:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:201:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:202:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:203:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:204:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:205:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:206:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:207:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:208:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:209:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:210:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:211:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:212:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:213:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:214:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:215:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:216:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:217:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:218:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:219:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:220:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:221:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:222:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:223:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:224:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:225:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:226:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:227:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:228:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:229:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:230:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:231:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:232:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:233:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:234:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:235:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:236:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:237:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:238:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:239:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:240:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:241:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:242:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:243:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:244:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:245:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:246:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:247:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:248:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:249:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:250:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:251:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:252:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:253:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:254:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:255:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:256:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:257:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:258:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:259:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:260:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:261:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:262:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:263:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:264:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:265:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:266:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:267:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:268:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:269:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:270:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:271:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:272:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:273:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:274:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:275:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:276:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:277:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:278:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:279:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:280:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:281:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:282:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:283:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:284:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:285:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:286:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:287:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:288:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:289:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:290:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:291:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:292:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:293:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:294:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:295:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:296:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:297:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:298:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:299:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:300:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:301:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:302:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:303:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:304:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:305:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:306:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:307:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:308:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:309:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:310:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:311:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:312:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:313:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:314:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:315:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:316:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:317:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:318:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:319:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:320:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:321:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:322:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:323:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:324:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:325:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:326:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:327:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:328:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:329:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:330:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:331:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:332:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:333:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:334:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:335:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:336:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:337:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:338:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:339:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:340:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:341:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:342:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:343:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:344:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:345:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:346:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:347:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:348:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:349:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:350:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:351:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:352:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:353:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:354:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:355:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:356:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:357:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:358:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:359:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:360:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:361:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:362:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:363:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:364:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:365:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:366:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:367:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:368:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:369:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:370:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:371::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:372::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:373::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:374:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:375:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:376:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:377:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:378:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:379:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:380::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:381::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:382::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:383::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:384::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:385:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:386:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:387:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:388:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:389:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:390:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:391:: " TODO:Add :up
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:392:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:393:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:394:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:395:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:396:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:397:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:398:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:399:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:400:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:401:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:402:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:403:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:404:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:405:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:406:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:407:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:408:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:409:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:410:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:411:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:412:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:413:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:414:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:415:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:416:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:417:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:418:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:419:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:420:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:421:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:422:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:423:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:424:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:425:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:426:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:427:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:428:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:429:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:430:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:431:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:432:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:433:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:434:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:435:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:436:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:437:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:438:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:439:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:440:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:441:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:442:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:443:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:444:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:445:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:446:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:447:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:448:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:449:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:450:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:451:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:452:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:453:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:454:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:455:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:456:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:457:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:458:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:459:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:460:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:461:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:462:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:463:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:464:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:465:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:466::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:467:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:468:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:469::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:470:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:471:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:472:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:473:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:474:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:475:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:476:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:477:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:478:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:479:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:480:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:481:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:482:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:483:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:484:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:485:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:486:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:487:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:488::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:489::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:490::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:491:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:492:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:493:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:494::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:495::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:496::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:497:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:498:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:499:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:500::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:501::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:502::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:503::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:504:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:505:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:506::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:507::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:508:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:509:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:510::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:511::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:512:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:513:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:514:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:515::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:516::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:517:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:518:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:519:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:520:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:521:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:522:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:523:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:524:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:525:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:526::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:527::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:528::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:529:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:530:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:531::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:532::       exec "w"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:533::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:534::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:535::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:536::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:537::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:538::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:539::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:540::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:541::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:542::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:543::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:544::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:545::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:546::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:547:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:548:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:549::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:550:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:551:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:552:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:553:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:554::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:555:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:556:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:557:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:558::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:559::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:560::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:561::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:562::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:563::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:564::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:565::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:566::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:567::   endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:568:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:569::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:570::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:571::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:572::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:573::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:574::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:575:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:576:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:577:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:578:: wa
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:579:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:580:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:581:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:582:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:583:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:584:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:585:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:586:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:587:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:588:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:589:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:590:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:591:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:592:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:593:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:594:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:595:: endfunction
