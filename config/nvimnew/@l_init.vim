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
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:51:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:52:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:53:: let g:neovide_floating_blur_amount_x = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:54:: let g:neovide_floating_blur_amount_y = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:55:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:56:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:57:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:58:: " set guicursor=n v c:block,i ci ve:ver25,r cr:hor20,o:hor50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:59::  		   ,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:60::  		   ,sm:block blinkwait175 blinkoff150 blinkon175
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:61:: " set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:62:: " set timeoutlen=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:63:: " set wrapmargin=1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:64:: " set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:65:: " set linebreak 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:66:: " set formatoptions+=w " set breakat=" "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:67:: " " set list  " list disables linebreak whitespace
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:68:: " set autochdir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:69:: " let mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:70:: " let g:mapleader=';'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:71:: " set inccommand=split
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:72:: " set undofile                " Save undo's after file closes
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:73:: " set undodir=~/.undo " where to save undo histories
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:74:: " set undolevels=1000000         " How many undos
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:75:: " set undoreload=1000000		
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:76:: " set nohlsearch
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:77:: " " set noswapfile
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:78:: " set nocursorline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:79:: " set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:80:: " set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:81:: " colorscheme gruvbox
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:82:: " set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:83:: " set shortmess+=c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:84:: " set tm=1000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:85:: " set expandtab        "replace <TAB> with spaces
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:86:: " set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:87:: " set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:88:: "Git autocommit  (nonmain branch)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:89:: " set completeopt=menu,menuone,noselect,noinsert
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:90:: " Avoid showing message extra message when using completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:91:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:92:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:93::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:94::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:95::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:96::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:97::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:98::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:99::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:100::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:101::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:102::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:103::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:104::       
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:105::   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:106:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:107:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:108:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:109:: " " .vimrc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:110:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:111:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:112:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:113:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:114:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:115:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:116:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:117:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:118:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:119::  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:120:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:121:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:122:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:123:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:124:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:125::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:126::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:127::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:128:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:129:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:130:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:131:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:132:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:133:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:134:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:135:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:136:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:137:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:138:: au FileType tex, vim, lua * lua GitAsync() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:139:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:140:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:141:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:142:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:143:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:144:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:145:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:146:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:147:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:148:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:149:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:150:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:151:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:152:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:153:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:154:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:155:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:156:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:157:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:158:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:159:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:160:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:161:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:162:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:163:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:164:: '
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:165:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:166:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:167:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:168:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:169:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:170:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:171:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:172:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:173:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:174:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:175:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:176:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:177:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:178:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:179:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:180:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:181:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:182:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:183:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:184:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:185:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:186:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:187:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:188:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:189:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:190:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:191:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:192:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:193:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:194:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:195:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:196:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:197:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:198:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:199:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:200:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:201:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:202:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:203:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:204:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:205:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:206:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:207:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:208:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:209:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:210:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:211:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:212:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:213:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:214:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:215:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:216:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:217:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:218:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:219:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:220:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:221:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:222:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:223:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:224:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:225:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:226:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:227:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:228:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:229:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:230:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:231:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:232:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:233:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:234:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:235:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:236:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:237:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:238:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:239:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:240:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:241:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:242:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:243:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:244:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:245:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:246:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:247:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:248:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:249:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:250:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:251:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:252:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:253:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:254:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:255:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:256:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:257:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:258:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:259:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:260:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:261:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:262:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:263:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:264:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:265:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:266:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:267:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:268:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:269:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:270:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:271:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:272:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:273:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:274:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:275:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:276:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:277:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:278:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:279:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:280:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:281:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:282:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:283:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:284:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:285:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:286:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:287:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:288:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:289:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:290:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:291:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:292:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:293:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:294:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:295:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:296:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:297:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:298:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:299:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:300:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:301:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:302:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:303:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:304:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:305:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:306:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:307:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:308:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:309:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:310:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:311:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:312:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:313:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:314:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:315:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:316:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:317:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:318:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:319:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:320:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:321:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:322:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:323:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:324:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:325:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:326:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:327:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:328:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:329:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:330:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:331:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:332:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:333:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:334:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:335:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:336:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:337:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:338:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:339:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:340:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:341:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:342:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:343:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:344:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:345:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:346::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:347::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:348::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:349:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:350:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:351:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:352:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:353:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:354:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:355::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:356::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:357::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:358::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:359::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:360:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:361:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:362:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:363:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:364:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:365:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:366:: " TODO:Add :up
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:367:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:368:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:369:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:370:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:371:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:372:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:373:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:374:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:375:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:376:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:377:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:378:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:379:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:380:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:381:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:382:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:383:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:384:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:385:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:386:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:387:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:388:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:389:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:390:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:391:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:392:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:393:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:394:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:395:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:396:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:397:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:398:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:399:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:400:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:401:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:402:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:403:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:404:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:405:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:406:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:407:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:408:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:409:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:410:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:411:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:412:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:413:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:414:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:415:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:416:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:417:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:418:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:419:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:420:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:421:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:422:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:423:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:424:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:425:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:426:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:427:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:428:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:429:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:430:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:431:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:432:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:433:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:434:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:435:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:436:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:437:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:438:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:439:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:440:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:441::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:442:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:443:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:444::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:445:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:446:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:447:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:448:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:449:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:450:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:451:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:452:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:453:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:454:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:455:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:456:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:457:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:458:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:459:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:460:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:461:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:462:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:463::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:464::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:465::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:466:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:467:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:468:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:469::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:470::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:471::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:472:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:473:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:474:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:475::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:476::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:477::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:478::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:479:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:480:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:481::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:482::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:483:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:484:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:485::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:486::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:487:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:488:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:489:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:490::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:491::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:492:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:493:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:494:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:495:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:496:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:497:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:498:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:499:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:500:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:501::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:502::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:503::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:504:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:505:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:506::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:507::       exec "w"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:508::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:509::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:510::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:511::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:512::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:513::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:514::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:515::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:516::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:517::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:518::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:519::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:520::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:521::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:522:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:523:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:524::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:525:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:526:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:527:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:528:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:529::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:530:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:531:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:532:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:533::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:534::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:535::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:536::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:537::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:538::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:539::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:540::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:541::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:542::   endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:543:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:544::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:545::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:546::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:547::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:548::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:549::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:550:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:551:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:552:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:553:: wa
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:554:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:555:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:556:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:557:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:558:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:559:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:560:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:561:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:562:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:563:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:564:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:565:: " echo b:filenamePDFWindows 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:566:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:567:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:568:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:569:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:570:: endfunction
