 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:1:: let s:plug_dir = expand('/tmp/plugged/vim plug')" if !filereadable(s:plug_dir .. '/plug.vim')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:2:: "   execute printf('!curl  fLo %s/autoload/plug.vim   create dirs https://raw.githubusercontent.com/junegunn/vim plug/master/plug.vim', s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:3:: " end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:4:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:5:: call plug#begin(s:plug_dir)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:6:: "Plug 'nvim telescope/telescope fzf native.nvim', { 'do': 'make'  asdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:7:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:8:: " Plug 'folke/noice.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:9:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:10:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:11:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:12:: Plug 'LhKipp/nvim nu', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:13:: Plug 'lukas reineke/indent blankline.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:14:: Plug 'folke/which key.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:15:: Plug 'ggandor/leap.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:16:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:17:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:18:: Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:19:: Plug 'williamboman/mason.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:20:: Plug 'williamboman/mason lspconfig.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:21:: Plug 'hrsh7th/nvim cmp', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:22:: Plug 'hrsh7th/cmp buffer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:23:: Plug 'hrsh7th/cmp nvim lsp', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:24:: " Plug 'ray x/cmp treesitter'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:25:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:26:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:27:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:28:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:29:: Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:30:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:31:: " Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:32:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:33:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:34:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:35:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:36:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:37:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:38:: " Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:39:: Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:40:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:41:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:42:: Plug 'mg979/vim visual multi'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:43:: Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:44:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:45:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:46:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:47:: require('settings')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:48:: require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:49:: require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:50:: require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:51:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:52:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:53:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:54:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:55:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:56:: " let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:57:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:58:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:59:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:60:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:61:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:62::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:63::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:64::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:65::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:66::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:67::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:68::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:69::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:70::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:71::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:72::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:73::       
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:74::   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:75:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:76:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:77:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:78:: " " .vimrc 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:79:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:80:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:81:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:82:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:83:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:84:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:85:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:86:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:87:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:88::  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:89:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:90:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:91:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:92:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:93:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:94::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:95::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:96::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:97:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:98:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:99:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:100:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:101:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:102:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:103:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:104:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:105:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:106:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:107:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:108:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:109:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:110:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:111:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:112:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:113:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:114:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:115:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:116:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:117:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:118:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:119:: au Filetype tex vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:120:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:121:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:122:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:123:: "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:124:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:125:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:126:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:127:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:128:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:129:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:130:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:131:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:132:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:133:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:134:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:135:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:136:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:137:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:138:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:139:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:140:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:141:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:142:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:143:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:144:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:145:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:146:: nnoremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:147:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:148:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:149:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:150:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:151:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:152:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:153:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:154:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:155:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:156:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:157:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:158:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:159:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:160:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:161:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:162:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:163:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:164:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:165:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:166:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:167:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:168:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:169:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:170:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:171:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:172:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:173:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:174:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:175:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:176:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:177:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:178:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:179:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:180:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:181:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:182:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:183:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:184:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:185:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:186:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:187:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:188:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:189:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:190:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:191:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:192:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:193:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:194:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:195:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:196:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:197:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:198:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:199:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:200:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:201:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:202:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:203:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:204:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:205:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:206:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:207:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:208:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:209:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:210:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:211:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:212:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:213:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:214:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:215:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:216:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:217:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:218:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:219:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:220:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:221:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:222:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:223:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:224:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:225:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:226:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:227:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:228:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:229:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:230:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:231:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:232:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:233:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:234:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:235:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:236:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:237:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:238:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:239:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:240:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:241:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:242:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:243:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:244:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:245:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:246:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:247:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:248:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:249:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:250:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:251:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:252:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:253:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:254:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:255:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:256:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:257:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:258:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:259:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:260:: nmap gv   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:261:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:262:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:263:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:264:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:265:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:266:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:267:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:268:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:269:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:270:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:271:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:272:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:273:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:274:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:275:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:276:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:277:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:278:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:279:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:280:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:281:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:282:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:283:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:284:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:285:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:286:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:287:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:288:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:289:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:290:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:291:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:292:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:293:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:294:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:295:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:296:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:297:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:298:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:299:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:300:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:301:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:302:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:303:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:304:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:305:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:306:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:307::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:308::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:309::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:310:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:311:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:312:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:313:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:314:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:315:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:316::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:317::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:318::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:319::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:320::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:321:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:322:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:323:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:324:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:325:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:326:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:327:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:328:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:329:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:330:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:331:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:332:: " nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:333:: nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:334:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:335:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:336:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:337:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:338:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:339:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:340:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:341:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:342:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:343:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:344:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:345:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:346:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:347:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:348:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:349:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:350:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:351:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:352:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:353:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:354:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:355:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:356:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:357:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:358:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:359:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:360:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:361:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:362:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:363:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:364:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:365:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:366:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:367:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:368:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:369:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:370:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:371:: nmap <leader>v :silent call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:372:: map <m v> <esc>:silent call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:373:: nmap <leader>ll :silent call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:374:: nmap <leader>lcl :silent call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:375:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:376:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:377:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:378:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:379:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:380:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:381:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:382:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:383:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:384:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:385:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:386:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:387:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:388:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:389:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:390:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:391:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:392:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:393:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:394:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:395:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:396:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:397:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:398:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:399::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:400:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:401:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:402::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:403:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:404:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:405:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:406:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:407:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:408:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:409:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:410:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:411:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:412:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:413:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:414:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:415:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:416:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:417:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:418:: "Functions test
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:419:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:420:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:421::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:422::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:423::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:424:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:425:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:426:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:427::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:428::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:429::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:430:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:431:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:432:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:433::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:434::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:435::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:436::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:437:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:438:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:439::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:440::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:441:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:442:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:443::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:444::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:445:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:446:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:447:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:448::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:449::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:450:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:451:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:452:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:453:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:454:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:455:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:456:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:457:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:458:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:459::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:460::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:461::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:462:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:463:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:464::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:465::       exec "up"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:466::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:467::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:468::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:469::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:470::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:471::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:472::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:473::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:474::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:475::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:476::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:477::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:478::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:479::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:480:: end
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:481:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:482::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:483:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:484:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:485:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:486:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:487::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:488:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:489:: command! SEND silent call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:490:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:491::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:492::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:493::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:494::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:495::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:496::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:497::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:498::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:499::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:500::   endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:501:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:502::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:503::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:504::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:505::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:506::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:507::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:508:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:509:: 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:510:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:511:: up
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:512:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:513:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:514:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:515:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:516:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:517:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:518:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:519:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:520:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:521:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:522:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:523:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:524:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:525:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:526:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:527:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/init.vim:528:: endfunction
