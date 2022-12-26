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
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:11:: Plug 'neovim/nvim lspconfig',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:12:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:13:: " Plug 'folke/noice.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:14:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:15:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:16:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:17:: Plug 'LhKipp/nvim nu', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:18:: Plug 'folke/which key.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:19:: Plug 'ggandor/leap.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:20:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:21:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:22:: Plug 'williamboman/mason.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:23:: Plug 'williamboman/mason lspconfig.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:24:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:25:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:26:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:27:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:28:: " Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:29:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:30:: " Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:31:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:32:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:33:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:34:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:35:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:36:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:37:: " Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:38:: Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:39:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:40:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:41:: Plug 'mg979/vim visual multi'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:42:: Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:43:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:44:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:45:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:46::    require('test')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:47:: require('settings')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:48:: require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:49:: require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:50:: require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:51:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:52:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:53:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:54:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:55:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:56:: " let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:57:: " let g:neovide_floating_blur_amount_x = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:58:: " let g:neovide_floating_blur_amount_y = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:59:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:60:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:61:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:62:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:63::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:64::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:65::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:66::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:67::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:68::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:69::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:70::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:71::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:72::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:73::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:74::       
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:75::   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:76:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:77:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:78:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:79:: " " .vimrc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:80:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:81:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:82:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:83:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:84:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:85:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:86:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:87:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:88:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:89:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:90:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:91:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:92:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:93:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:94:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:95::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:96::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:97::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:98:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:99:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:100:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:101:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:102:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:103:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:104:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:105:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:106:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:107:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:108:: au FileType tex, vim, lua * lua GitAsync() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:109:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:110:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:111:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:112:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:113:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:114:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:115:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:116:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:117:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:118:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:119:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:120:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:121:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:122:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:123:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:124:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:125:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:126:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:127:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:128:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:129:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:130:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:131:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:132:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:133:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:134:: '
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:135:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:136:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:137:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:138:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:139:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:140:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:141:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:142:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:143:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:144:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:145:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:146:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:147:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:148:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:149:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:150:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:151:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:152:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:153:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:154:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:155:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:156:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:157:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:158:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:159:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:160:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:161:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:162:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:163:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:164:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:165:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:166:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:167:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:168:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:169:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:170:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:171:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:172:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:173:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:174:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:175:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:176:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:177:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:178:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:179:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:180:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:181:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:182:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:183:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:184:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:185:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:186:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:187:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:188:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:189:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:190:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:191:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:192:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:193:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:194:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:195:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:196:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:197:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:198:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:199:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:200:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:201:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:202:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:203:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:204:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:205:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:206:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:207:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:208:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:209:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:210:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:211:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:212:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:213:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:214:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:215:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:216:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:217:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:218:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:219:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:220:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:221:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:222:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:223:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:224:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:225:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:226:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:227:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:228:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:229:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:230:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:231:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:232:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:233:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:234:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:235:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:236:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:237:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:238:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:239:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:240:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:241:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:242:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:243:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:244:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:245:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:246:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:247:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:248:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:249:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:250:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:251:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:252:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:253:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:254:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:255:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:256:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:257:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:258:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:259:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:260:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:261:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:262:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:263:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:264:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:265:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:266:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:267:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:268:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:269:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:270:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:271:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:272:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:273:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:274:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:275:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:276:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:277:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:278:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:279:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:280:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:281:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:282:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:283:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:284:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:285:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:286:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:287:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:288:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:289:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:290:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:291:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:292:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:293:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:294:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:295:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:296:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:297:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:298:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:299:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:300:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:301:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:302:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:303:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:304:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:305:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:306:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:307:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:308:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:309:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:310:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:311:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:312:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:313::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:314::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:315::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:316:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:317:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:318:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:319:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:320:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:321:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:322::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:323::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:324::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:325::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:326::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:327:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:328:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:329:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:330:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:331:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:332:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:333:: " TODO:Add :up
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:334:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:335:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:336:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:337:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:338:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:339:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:340:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:341:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:342:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:343:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:344:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:345:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:346:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:347:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:348:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:349:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:350:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:351:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:352:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:353:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:354:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:355:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:356:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:357:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:358:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:359:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:360:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:361:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:362:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:363:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:364:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:365:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:366:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:367:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:368:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:369:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:370:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:371:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:372:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:373:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:374:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:375:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:376:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:377:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:378:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:379:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:380:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:381:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:382:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:383:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:384:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:385:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:386:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:387:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:388:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:389:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:390:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:391:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:392:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:393:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:394:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:395:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:396:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:397:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:398:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:399:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:400:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:401:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:402:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:403:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:404:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:405:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:406:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:407:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:408::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:409:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:410:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:411::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:412:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:413:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:414:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:415:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:416:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:417:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:418:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:419:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:420:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:421:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:422:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:423:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:424:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:425:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:426:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:427:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:428:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:429:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:430::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:431::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:432::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:433:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:434:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:435:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:436::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:437::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:438::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:439:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:440:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:441:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:442::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:443::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:444::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:445::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:446:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:447:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:448::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:449::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:450:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:451:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:452::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:453::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:454:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:455:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:456:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:457::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:458::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:459:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:460:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:461:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:462:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:463:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:464:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:465:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:466:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:467:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:468::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:469::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:470::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:471:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:472:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:473::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:474::       exec "w"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:475::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:476::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:477::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:478::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:479::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:480::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:481::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:482::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:483::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:484::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:485::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:486::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:487::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:488::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:489:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:490:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:491::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:492:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:493:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:494:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:495:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:496::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:497:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:498:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:499:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:500::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:501::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:502::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:503::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:504::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:505::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:506::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:507::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:508::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:509::   " call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:510:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:511:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:512::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:513::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:514::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:515::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:516::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:517::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:518:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:519:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:520:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:521:: wa
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:522:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:523:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:524:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:525:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:526:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:527:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:528:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:529:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:530:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:531:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:532:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:533:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:534:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:535:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:536:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:537:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:538:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:539:: 
