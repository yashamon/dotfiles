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
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:51:: require('telescope').load_extension('fzf')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:52:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:53:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:54:: " require('functions')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:55:: " require('keymaps')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:56:: " require('set')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:57:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:58:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:59:: " let g:neovide_maximized=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:60:: " let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:61:: " let g:neovide_floating_blur_amount_x = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:62:: " let g:neovide_floating_blur_amount_y = 3.0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:63:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:64:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:65:: "General Settings, set
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:66:: " set title
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:67:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:68::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:69::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:70::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:71::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:72::           '.*': {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:73::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:74::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:75::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:76::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:77::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:78::           ,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:79::       
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:80::   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:81:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:82:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:83:: " let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:84:: " " .vimrc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:85:: " let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:86:: " "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:87:: " let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:88:: " let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:89:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:90:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:91:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:92:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:93:: " Autocommands, au
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:94:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:95:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:96:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:97:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:98:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:99:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:100::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:101::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:102::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:103:: 		endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:104:: 	endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:105:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:106:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:107:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:108:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:109:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:110:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:111:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:112:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:113:: au FileType tex, vim, lua * lua GitAsync() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:114:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:115:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:116:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:117:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:118:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:119:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:120:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:121:: au FileType vim set list
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:122:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:123:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:124:: "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:125:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:126:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:127:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:128:: command! Ser lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:129:: autocmd BufWritePost * lua GitAsync()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:130:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:131:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:132:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:133:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:134:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:135:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:136:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:137:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:138:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:139:: '
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:140:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:141:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:142:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:143:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:144:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:145:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:146:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:147:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:148:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:149:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:150:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:151:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:152:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:153:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:154:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:155:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:156:: noremap <leader>r :up<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:157:: " inoremap . .<esc>:up<cr>a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:158:: command Tw50 set tw=50
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:159:: command Tw0 set tw=0
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:160:: noremap q :q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:161:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:162:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:163:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:164:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:165:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:166:: " language
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:167:: command! ES set spelllang=es
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:168:: " cmap ES set spelllang=es<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:169:: command! EN set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:170:: " LSP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:171:: command! LT LspStart ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:172:: command! LTo LspStop ltex
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:173:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:174:: nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:175:: nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:176:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:177:: nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:178:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:179:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:180:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:181:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:182:: " vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:183:: " inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:184:: " nnoremap <m s> :%s///gc<left><left><left><left> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:185:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:186:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:187:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:188:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:189:: " imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:190:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:191:: " imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:192:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:193:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:194:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:195:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:196:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:197:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:198:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:199:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:200:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:201:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:202:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:203:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:204:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:205:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:206:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:207:: " Movement
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:208:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:209:: " noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:210:: " noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:211:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:212:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:213:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:214:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:215:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:216:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:217:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:218:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:219:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:220:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:221:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:222:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:223:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:224:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:225:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:226:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:227:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:228:: " command!  bar SA saveas
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:229:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:230:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:231:: inoremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:232:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:233:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:234:: noremap cg "_cgn
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:235:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:236:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:237:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:238:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:239:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:240:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:241:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:242:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:243:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:244:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:245:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:246:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:247:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:248:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:249:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:250:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:251:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:252:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:253:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:254:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:255:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:256:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:257:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:258:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:259:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:260:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:261:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:262:: map q: nop
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:263:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:264:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:265:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:266:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:267:: map <m d> <Esc>:up<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:268:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:269:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:270:: nmap f /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:271:: nmap gv   / 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:272:: vmap s   /
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:273:: " vim multiple  cursors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:274:: nnoremap <m n> <c n>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:275:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:276:: " vnoremap f / %V %V<left><left><left>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:277:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:278:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:279:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:280:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:281:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:282:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:283:: map j gj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:284:: map k gk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:285:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:286:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:287:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:288:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:289:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:290:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:291:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:292:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:293:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:294:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:295:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:296:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:297:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:298:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:299:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:300:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:301:: noremap ;w <Esc>:up<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:302:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:303:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:304:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:305:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:306:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:307:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:308:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:309:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:310:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:311:: map ' "
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:312:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:313:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:314:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:315:: " FZF 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:316:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:317:: " function! s:mybuild_quickfix_list(lines)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:318::   " call feedkeys(' <esc>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:319::   " lua  Feedkey('<esc><m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:320::   " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val '))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:321:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:322:: " function! s:myquick()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:323:: "    lua Feedkey('<c a>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:324:: "    lua Feedkey('<c q>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:325:: "    lua Feedkey('<m c>')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:326:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:327::  " let g:fzf_action = {
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:328::  "     'ctrl q': function('s:mybuild_quickfix_list'),
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:329::  "     'ctrl t': 'tab split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:330::  "     'ctrl x': 'split',
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:331::  "     'ctrl m': function('s:mybuild_quickfix_list') 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:332:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:333:: let  FZF_DEFAULT_OPTS = '  bind ctrl a:select all'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:334:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:335:: nnoremap <m t> :up<cr>:BTags<cr>:call s:myquick()<cr>:lopen<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:336:: nnoremap <m s> :up<cr>:lua Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:337:: nnoremap S :up<cr>:lua Line()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:338:: " TODO:Add :up
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:339:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:340:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:341:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:342:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:343:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:344:: " endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:345:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:346:: nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:347:: " nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:348:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:349:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:350:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:351:: " map <A e> :FZF ~<CR> test test2 test3
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:352:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:353:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:354:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:355:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:356:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:357:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:358:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:359:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:360:: nnoremap <leader>gs :up<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:361:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:362:: nnoremap <c p> :<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:363:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:364:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:365:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:366:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:367:: " 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:368:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:369:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:370:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:371:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:372:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:373:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:374:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:375:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:376:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:377:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:378:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:379:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:380:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:381:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:382:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:383:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:384:: " Latex maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:385:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:386:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:387:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:388:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:389:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:390:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:391:: nmap <leader>gm :up<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:392:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:393:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:394:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:395:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:396:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:397:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:398:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:399:: "Leap
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:400:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:401:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:402:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:403:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:404:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:405:: ""other maps
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:406:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:407:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:408:: " map cr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:409:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:410:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:411:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:412:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:413::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:414:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:415:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:416::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:417:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:418:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:419:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:420:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:421:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:422:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:423:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:424:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:425:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:426:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:427:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:428:: " For changing choices in choiceNodes (not strictly necessary for a basic setup). 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:429:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:430:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:431:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:432:: "Functions
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:433:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:434:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:435::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:436::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:437::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:438:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:439:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:440:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:441::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:442::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:443::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:444:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:445:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:446:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:447::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:448::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:449::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:450::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:451:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:452:: function Light()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:453::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:454::    set background=light
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:455:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:456:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:457::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:458::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:459:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:460:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:461:: function Dark()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:462::    set background=dark
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:463::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:464:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:465:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:466:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:467:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:468:: profile func *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:469:: profile file *
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:470:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:471:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:472:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:473::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:474::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:475::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:476:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:477:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:478::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:479::       exec "w"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:480::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:481::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:482::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:483::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:484::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:485::         copen
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:486::         lua <<EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:487::         if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:488::     local winid = vim.api.nvim_get_current_win()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:489::     vim.schedule(function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:490::         vim.api.nvim_win_call(winid, function()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:491::             vim.api.nvim_feedkeys('zffatal', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:492::         end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:493::     end)
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:494:: end
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:495:: EOF
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:496::         endif
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:497:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:498:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:499:: nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:500:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:501::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:502:: endfunction 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:503:: command! SEND call Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:504:: function! Send()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:505::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:506::   let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:507::   let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:508::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:509::   let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:510::   let execstr="silent te pwsh  c send " . b:pdf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:511::   echo execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:512::   exec execstr
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:513::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:514::   " call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:515:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:516:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:517::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:518::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:519::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f %
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:520::   silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:521::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:522::   call feedkeys(" <cr>")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:523:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:524:: 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:525:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:526:: wa
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:527:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:528:: lua Server()
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:529:: let linenumber=line(".")
let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:530:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:531:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:532:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:533:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:534:: " let filenamePDF=filename[: 4 ."pdf" 
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:535:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:536:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:537:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:538:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:539:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:540:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:541:: silent execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:542:: endfunction
 C:/Users/yasha/dotfiles/config/nvimnew/minimal.vim:543:: 
