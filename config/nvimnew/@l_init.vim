 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:1:: let s:plug_dir = expand('/tmp/plugged/vim plug')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:2:: " if !filereadable(s:plug_dir .. '/plug.vim')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:3:: "   execute printf('!curl  fLo %s/autoload/plug.vim   create dirs https://raw.githubusercontent.com/junegunn/vim plug/master/plug.vim', s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:4:: " end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:5:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:6:: call plug#begin(s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:7:: "Plug 'nvim telescope/telescope fzf native.nvim', { 'do': 'make'  asdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:8:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:9:: " Plug 'folke/noice.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:10:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:11:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:12:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:13:: Plug 'LhKipp/nvim nu', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:14:: Plug 'lukas reineke/indent blankline.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:15:: Plug 'folke/which key.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:16:: Plug 'ggandor/leap.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:17:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:18:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:19:: Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:20:: Plug 'williamboman/mason.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:21:: Plug 'williamboman/mason lspconfig.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:22:: Plug 'hrsh7th/nvim cmp', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:23:: Plug 'hrsh7th/cmp buffer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:24:: Plug 'hrsh7th/cmp nvim lsp', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:25:: " Plug 'ray x/cmp treesitter'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:26:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:27:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:28:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:29:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:30:: Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:31:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:32:: " Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:33:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:34:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:35:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:36:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:37:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:38:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:39:: " Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:40:: Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:41:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:42:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:43:: Plug 'mg979/vim visual multi'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:44:: Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:45:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:46:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:47:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:48:: require('settings')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:49:: require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:50:: require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:51:: require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:52:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:53:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:54:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:55:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:56:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:57:: " let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:58:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:59:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:60:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:61:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:62:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:63::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:64::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:65::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:66::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:67::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:68::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:69::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:70::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:71::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:72::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:73::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:74::       
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:75::   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:76:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:77:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:78:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:79:: " " .vimrc 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:80:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:81:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:82:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:83:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:84:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:85:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:86:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:87:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:88:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:89::  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:90:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:91:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:92:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:93:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:94:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:95::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:96::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:97::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:98:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:99:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:100:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:101:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:102:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:103:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:104:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:105:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:106:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:107:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:108:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:109:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:110:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:111:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:112:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:113:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:114:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:115:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:116:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:117:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:118:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:119:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:120:: au Filetype tex vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:121:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:122:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:123:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:124:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:125:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:126:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:127:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:128:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:129:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:130:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:131:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:132:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:133:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:134:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:135:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:136:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:137:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:138:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:139:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:140:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:141:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:142:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:143:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:144:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:145:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:146:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:147:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:148:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:149:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:150:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:151:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:152:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:153:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:154:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:155:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:156:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:157:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:158:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:159:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:160:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:161:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:162:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:163:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:164:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:165:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:166:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:167:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:168:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:169:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:170:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:171:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:172:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:173:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:174:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:175:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:176:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:177:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:178:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:179:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:180:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:181:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:182:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:183:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:184:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:185:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:186:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:187:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:188:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:189:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:190:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:191:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:192:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:193:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:194:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:195:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:196:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:197:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:198:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:199:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:200:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:201:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:202:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:203:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:204:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:205:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:206:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:207:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:208:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:209:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:210:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:211:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:212:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:213:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:214:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:215:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:216:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:217:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:218:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:219:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:220:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:221:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:222:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:223:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:224:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:225:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:226:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:227:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:228:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:229:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:230:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:231:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:232:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:233:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:234:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:235:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:236:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:237:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:238:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:239:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:240:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:241:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:242:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:243:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:244:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:245:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:246:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:247:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:248:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:249:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:250:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:251:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:252:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:253:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:254:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:255:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:256:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:257:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:258:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:259:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:260:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:261:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:262:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:263:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:264:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:265:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:266:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:267:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:268:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:269:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:270:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:271:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:272:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:273:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:274:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:275:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:276:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:277:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:278:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:279:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:280:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:281:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:282:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:283:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:284:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:285:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:286:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:287:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:288:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:289:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:290:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:291:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:292:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:293:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:294:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:295:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:296:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:297:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:298:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:299:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:300:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:301:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:302:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:303:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:304:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:305:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:306:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:307:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:308:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:309:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:310::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:311::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:312::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:313:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:314:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:315:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:316:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:317:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:318:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:319::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:320::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:321::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:322::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:323::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:324:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:325:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:326:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:327:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:328:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:329:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:330:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:331:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:332:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:333:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:334:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:335:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:336:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:337:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:338:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:339:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:340:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:341:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:342:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:343:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:344:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:345:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:346:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:347:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:348:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:349:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:350:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:351:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:352:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:353:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:354:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:355:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:356:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:357:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:358:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:359:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:360:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:361:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:362:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:363:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:364:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:365:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:366:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:367:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:368:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:369:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:370:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:371:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:372:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:373:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:374:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:375:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:376:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:377:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:378:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:379:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:380:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:381:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:382:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:383:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:384:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:385:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:386:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:387:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:388:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:389:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:390:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:391:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:392:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:393:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:394:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:395:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:396:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:397:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:398:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:399:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:400:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:401:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:402:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:403::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:404:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:405:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:406::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:407:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:408:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:409:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:410:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:411:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:412:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:413:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:414:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:415:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:416:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:417:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:418:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:419:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:420:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:421:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:422:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:423:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:424:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:425::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:426::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:427::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:428:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:429:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:430:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:431::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:432::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:433::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:434:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:435:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:436:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:437::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:438::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:439::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:440::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:441:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:442:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:443::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:444::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:445:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:446:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:447::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:448::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:449:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:450:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:451:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:452::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:453::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:454:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:455:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:456:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:457:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:458:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:459:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:460:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:461:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:462:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:463::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:464::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:465::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:466:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:467:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:468::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:469::       exec "up"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:470::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:471::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:472::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:473::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:474::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:475::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:476::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:477::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:478::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:479::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:480::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:481::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:482::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:483::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:484:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:485:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:486::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:487:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:488:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:489:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:490:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:491::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:492:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:493:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:494:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:495::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:496::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:497::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:498::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:499::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:500::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:501::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:502::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:503::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:504::   endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:505:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:506::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:507::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:508::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:509::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:510::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:511::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:512:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:513:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:514:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:515:: up
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:516:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:517:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:518:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:519:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:520:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:521:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:522:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:523:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:524:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:525:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:526:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:527:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:528:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:529:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:530:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:531:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:532:: endfunction
