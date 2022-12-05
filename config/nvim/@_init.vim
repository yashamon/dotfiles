 C:/Users/yasha/dotfiles/config/nvim/init.vim:1:: call plug#begin('~/.vim/plugged')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:2:: " Plug 'nvim telescope/telescope fzf native.nvim', { 'do': 'make' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:3:: Plug 'folke/todo comments.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:4:: Plug 'L3MON4D3/LuaSnip'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:5:: Plug 'saadparwaiz1/cmp_luasnip'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:6:: Plug 'nvim treesitter/playground'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:7:: Plug 'LhKipp/nvim nu'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:8:: Plug 'folke/which key.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:9:: Plug 'ggandor/leap.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:10:: Plug 'ibhagwan/fzf lua', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:11:: Plug 'romgrk/fzy lua native'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:12:: Plug 'vijaymarupudi/nvim fzf'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:13:: Plug 'kyazdani42/nvim web devicons'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:14:: Plug 'glacambre/firenvim', { 'do': { _  > firenvim#install(0)  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:15:: Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:16:: Plug 'williamboman/nvim lsp installer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:17:: Plug 'hrsh7th/nvim cmp', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:18:: Plug 'hrsh7th/cmp buffer', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:19:: Plug 'hrsh7th/cmp nvim lsp', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:20:: Plug 'ray x/cmp treesitter'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:21:: Plug 'quangnguyen30192/cmp nvim tags',  { 'branch': 'main'   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:22:: Plug 'terrortylor/nvim comment', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:23:: Plug 'nvim lualine/lualine.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:24:: Plug 'justinhoward/fzf neoyank'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:25:: Plug 'folke/tokyonight.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:26:: Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:27:: Plug 'eddyekofo94/gruvbox flat.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:28:: Plug 'nvim treesitter/nvim treesitter', {'do': ':TSUpdate'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:29:: Plug 'Shougo/neoyank.vim' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:30:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:31:: Plug 'skywind3000/asyncrun.vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:32:: Plug 'junegunn/fzf', { 'do': {  > fzf#install()   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:33:: Plug 'junegunn/fzf.vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:34:: Plug 'yuki yano/fzf preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:35:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:36:: Plug 'lewis6991/spellsitter.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:37:: Plug 'kevinhwang91/nvim bqf'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:38:: Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:39:: Plug 'nvim telescope/telescope.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:40:: Plug 'simnalamburt/vim mundo'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:41:: Plug 'rlane/pounce.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:42:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:43:: call plug#end()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:44:: lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:45:: require('settings')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:46::    require('telescope').load_extension('fzf')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:47:: EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:48:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:49:: "Neovide 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:50:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:51:: " let g:neovide_maximized=v:true 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:52:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvim/init.vim:53:: let g:neovide_floating_blur_amount_x = 2.0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:54:: let g:neovide_floating_blur_amount_y = 2.0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:55:: " let g:neovide_transparency=0.15
 C:/Users/yasha/dotfiles/config/nvim/init.vim:56:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:57:: "General Settings    
 C:/Users/yasha/dotfiles/config/nvim/init.vim:58:: set scrolloff=10
 C:/Users/yasha/dotfiles/config/nvim/init.vim:59:: set title
 C:/Users/yasha/dotfiles/config/nvim/init.vim:60:: set cmdheight=0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:61:: set signcolumn=yes
 C:/Users/yasha/dotfiles/config/nvim/init.vim:62:: set nojoinspaces
 C:/Users/yasha/dotfiles/config/nvim/init.vim:63:: " set titlestring
 C:/Users/yasha/dotfiles/config/nvim/init.vim:64:: " set noshowmode
 C:/Users/yasha/dotfiles/config/nvim/init.vim:65:: " set noruler       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:66:: " set laststatus=1 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:67:: set noshowcmd    
 C:/Users/yasha/dotfiles/config/nvim/init.vim:68:: " set shell=nu
 C:/Users/yasha/dotfiles/config/nvim/init.vim:69:: " let &shell = 'nu'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:70:: " let &shellcmdflag = ' c'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:71:: " let &shellquote = ""
 C:/Users/yasha/dotfiles/config/nvim/init.vim:72:: " let &shellxquote = ""
 C:/Users/yasha/dotfiles/config/nvim/init.vim:73:: set autoindent
 C:/Users/yasha/dotfiles/config/nvim/init.vim:74:: set indentexpr=
 C:/Users/yasha/dotfiles/config/nvim/init.vim:75:: set noshowmatch
 C:/Users/yasha/dotfiles/config/nvim/init.vim:76:: set wrap
 C:/Users/yasha/dotfiles/config/nvim/init.vim:77:: set pb=15
 C:/Users/yasha/dotfiles/config/nvim/init.vim:78:: " set winbl=20
 C:/Users/yasha/dotfiles/config/nvim/init.vim:79:: set switchbuf=newtab
 C:/Users/yasha/dotfiles/config/nvim/init.vim:80:: " let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:81:: " let g:python3_host_prog='/usr/bin/python3.9'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:82:: set clipboard+=unnamedplus	
 C:/Users/yasha/dotfiles/config/nvim/init.vim:83:: " TAB setting{
 C:/Users/yasha/dotfiles/config/nvim/init.vim:84:: set expandtab        "replace <TAB> with spaces
 C:/Users/yasha/dotfiles/config/nvim/init.vim:85:: set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvim/init.vim:86:: set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvim/init.vim:87:: " set shell="C: Program Files PowerShell 7 pwsh.EXE"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:88:: set termguicolors
 C:/Users/yasha/dotfiles/config/nvim/init.vim:89:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:90:: set guicursor=n v c:block,i ci ve:ver25,r cr:hor20,o:hor50
 C:/Users/yasha/dotfiles/config/nvim/init.vim:91::  		   ,a:blinkwait700 blinkoff400 blinkon250 Cursor/lCursor
 C:/Users/yasha/dotfiles/config/nvim/init.vim:92::  		   ,sm:block blinkwait175 blinkoff150 blinkon175
 C:/Users/yasha/dotfiles/config/nvim/init.vim:93:: set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvim/init.vim:94:: set timeoutlen=0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:95:: function! OnUIEnter(event)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:96:: 	let l:ui = nvim_get_chan_info(a:event.chan)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:97:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:98:: 		if l:ui.client.name ==# 'Firenvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:99:: 			set guifont=Fira  Code:h20
 C:/Users/yasha/dotfiles/config/nvim/init.vim:100::                         set lines=100
 C:/Users/yasha/dotfiles/config/nvim/init.vim:101::                         set columns=100
 C:/Users/yasha/dotfiles/config/nvim/init.vim:102::                         noremap q <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:103:: 		endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:104:: 	endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:105:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:106:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:107:: autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" )
 C:/Users/yasha/dotfiles/config/nvim/init.vim:108:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:109:: "remember cursor location
 C:/Users/yasha/dotfiles/config/nvim/init.vim:110:: autocmd BufReadPost * if @ !~# ' .git[ /   COMMIT_EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:111:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:112:: au VIMEnter * let g:surround_108 = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:113::       'q':  " `` r''"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:114::        
 C:/Users/yasha/dotfiles/config/nvim/init.vim:115:: au VIMEnter * let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:116:: nnoremap <m y> viwy:buffer g:buffmain<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:117:: let g:tex_flavor = "latex"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:118:: let g:tex_isk = '@,48 57,58,_,192 255,:' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:119:: au FileType tex setlocal iskeyword+=:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:120:: au Filetype tex,text,md set tw=60
 C:/Users/yasha/dotfiles/config/nvim/init.vim:121:: set foldmethod=expr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:122:: set foldexpr=nvim_treesitter#foldexpr()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:123:: autocmd BufReadPost,FileReadPost * normal zR
 C:/Users/yasha/dotfiles/config/nvim/init.vim:124:: " au FileType tex setlocal indentexpr=
 C:/Users/yasha/dotfiles/config/nvim/init.vim:125:: " set foldmethod=expr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:126:: " au FileType tex, text, md setlocal foldexpr=getline(v:lnum)=~'^ s*'.&commentstring[0 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:127:: " au FileType lua, vim, c, haskell  set foldexpr=nvim_treesitter#foldexpr()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:128:: let g:tex_conceal = ""
 C:/Users/yasha/dotfiles/config/nvim/init.vim:129:: set tags+=~/workspacemodules/tags
 C:/Users/yasha/dotfiles/config/nvim/init.vim:130:: set tags+=~ workspacemodules tags
 C:/Users/yasha/dotfiles/config/nvim/init.vim:131:: set tags+=. tags
 C:/Users/yasha/dotfiles/config/nvim/init.vim:132:: set tags+=./tags
 C:/Users/yasha/dotfiles/config/nvim/init.vim:133:: " set wrapmargin=1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:134:: set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
 C:/Users/yasha/dotfiles/config/nvim/init.vim:135:: set linebreak 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:136:: set formatoptions+=w " set breakat=" "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:137:: " set list  " list disables linebreak whitespace
 C:/Users/yasha/dotfiles/config/nvim/init.vim:138:: " set textwidth=0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:139:: " set wrapmargin= 1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:140:: set hid
 C:/Users/yasha/dotfiles/config/nvim/init.vim:141:: set autochdir
 C:/Users/yasha/dotfiles/config/nvim/init.vim:142:: set guioptions =r
 C:/Users/yasha/dotfiles/config/nvim/init.vim:143:: set guioptions =l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:144:: set inccommand=split
 C:/Users/yasha/dotfiles/config/nvim/init.vim:145:: set mouse=n
 C:/Users/yasha/dotfiles/config/nvim/init.vim:146:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:147:: noremap! <RightDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:148:: noremap! <LeftDrag> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:149:: " set selectmode=mouse, key
 C:/Users/yasha/dotfiles/config/nvim/init.vim:150:: set bs=2		" allow backspacing over everything in insert mode 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:151:: set undofile                " Save undo's after file closes
 C:/Users/yasha/dotfiles/config/nvim/init.vim:152:: set undodir=~/.undo " where to save undo histories
 C:/Users/yasha/dotfiles/config/nvim/init.vim:153:: set undolevels=1000000         " How many undos
 C:/Users/yasha/dotfiles/config/nvim/init.vim:154:: set undoreload=1000000		
 C:/Users/yasha/dotfiles/config/nvim/init.vim:155:: set ruler		" show the cursor position all the time
 C:/Users/yasha/dotfiles/config/nvim/init.vim:156:: set autoread		" auto read when file is changed from outside
 C:/Users/yasha/dotfiles/config/nvim/init.vim:157:: set nohlsearch
 C:/Users/yasha/dotfiles/config/nvim/init.vim:158:: " set noswapfile
 C:/Users/yasha/dotfiles/config/nvim/init.vim:159:: set showmatch		" Cursor shows matching ) and 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:160:: set nocursorline
 C:/Users/yasha/dotfiles/config/nvim/init.vim:161:: set showmode		" Show current mode
 C:/Users/yasha/dotfiles/config/nvim/init.vim:162:: set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:163:: set wildmenu            " wild char completion menu
 C:/Users/yasha/dotfiles/config/nvim/init.vim:164:: let maplocalleader = "  "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:165:: " ignore these files while expanding wild chars
 C:/Users/yasha/dotfiles/config/nvim/init.vim:166:: set wildignore=*.o,*.class,*.pyc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:167:: set incsearch		" incremental search
 C:/Users/yasha/dotfiles/config/nvim/init.vim:168:: set nobackup		" no *~ backup files
 C:/Users/yasha/dotfiles/config/nvim/init.vim:169:: set ignorecase		" ignore case when searching
 C:/Users/yasha/dotfiles/config/nvim/init.vim:170:: set smartcase		" ignore case if search pattern is all lowercase,case sensitive otherwise
 C:/Users/yasha/dotfiles/config/nvim/init.vim:171:: set smarttab		" insert tabs on the start of a line according to context
 C:/Users/yasha/dotfiles/config/nvim/init.vim:172:: set spell   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:173:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:174:: " disable sound on errors
 C:/Users/yasha/dotfiles/config/nvim/init.vim:175:: set noerrorbells
 C:/Users/yasha/dotfiles/config/nvim/init.vim:176:: " set novisualbell 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:177:: " set font=Fira  Code:h18
 C:/Users/yasha/dotfiles/config/nvim/init.vim:178:: set background=light
 C:/Users/yasha/dotfiles/config/nvim/init.vim:179:: colorscheme gruvbox
 C:/Users/yasha/dotfiles/config/nvim/init.vim:180:: set background=light
 C:/Users/yasha/dotfiles/config/nvim/init.vim:181:: " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:182:: " let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:183:: " let g:material_style = 'lighter'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:184:: " highlight Normal ctermbg=none
 C:/Users/yasha/dotfiles/config/nvim/init.vim:185:: set tm=1000
 C:/Users/yasha/dotfiles/config/nvim/init.vim:186:: " set macreta 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:187:: hi SpellBad cterm=underline
 C:/Users/yasha/dotfiles/config/nvim/init.vim:188:: " Set style for gVim
 C:/Users/yasha/dotfiles/config/nvim/init.vim:189:: hi SpellBad gui=undercurl guisp=white
 C:/Users/yasha/dotfiles/config/nvim/init.vim:190:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:191:: "Autocommands, au
 C:/Users/yasha/dotfiles/config/nvim/init.vim:192:: au FileType Makefile set noexpandtab
 C:/Users/yasha/dotfiles/config/nvim/init.vim:193:: au FileType tex,text set spelllang=en_us
 C:/Users/yasha/dotfiles/config/nvim/init.vim:194:: au FileType tex,text,md set indentexpr=
 C:/Users/yasha/dotfiles/config/nvim/init.vim:195:: " au FileType vim,md set list
 C:/Users/yasha/dotfiles/config/nvim/init.vim:196:: " au FileType tex,text,md silent execute "!echo " . v:servername . " > ~/servername.txt"    
 C:/Users/yasha/dotfiles/config/nvim/init.vim:197:: " au FileType * silent execute "!echo " . v:servername . " > ~/servername.txt"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:198:: au UIEnter silent execute "!echo " . v:servername . " > ~/servername.txt"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:199:: function Server()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:200::    silent execute "!echo " . v:servername . " > ~/servername.txt"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:201:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:202:: nmap <leader>nn :call Server()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:203:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:204:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:205:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:206:: " au Filetype tex,text,md set fo=tc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:207:: " au FileType tex set background=dark 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:208:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
 C:/Users/yasha/dotfiles/config/nvim/init.vim:209:: au TextYankPost * call neoyank#_append()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:210:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:211:: set expandtab        "replace <TAB> with spaces
 C:/Users/yasha/dotfiles/config/nvim/init.vim:212:: set softtabstop=3
 C:/Users/yasha/dotfiles/config/nvim/init.vim:213:: set shiftwidth=3
 C:/Users/yasha/dotfiles/config/nvim/init.vim:214:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:215:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvim/init.vim:216:: " USEFUL SHORTCUTS
 C:/Users/yasha/dotfiles/config/nvim/init.vim:217:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvim/init.vim:218:: " set leader to ; 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:219:: let mapleader=';'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:220:: let g:mapleader=';'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:221:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:222:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:223:: " Bash like keys for the command line
 C:/Users/yasha/dotfiles/config/nvim/init.vim:224:: cnoremap <C A>      <Home>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:225:: cnoremap <C E>      <End>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:226:: cnoremap <C K>      <C U>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:227:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:228:: " allow multiple indentation/deindentation in visual mode
 C:/Users/yasha/dotfiles/config/nvim/init.vim:229:: vnoremap < <gv
 C:/Users/yasha/dotfiles/config/nvim/init.vim:230:: vnoremap > >gv
 C:/Users/yasha/dotfiles/config/nvim/init.vim:231:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:232:: " :cd. change working directory to that of the current file
 C:/Users/yasha/dotfiles/config/nvim/init.vim:233:: cmap cd. lcd %:p:h
 C:/Users/yasha/dotfiles/config/nvim/init.vim:234:: autocmd Filetype tex setlocal wrapmargin=0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:235:: " use syntax complete if nothing else available
 C:/Users/yasha/dotfiles/config/nvim/init.vim:236:: if has("autocmd") && exists("+omnifunc")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:237::   autocmd Filetype *
 C:/Users/yasha/dotfiles/config/nvim/init.vim:238::                	if &omnifunc == "" |
 C:/Users/yasha/dotfiles/config/nvim/init.vim:239::                		setlocal omnifunc=syntaxcomplete#Complete |
 C:/Users/yasha/dotfiles/config/nvim/init.vim:240::                	endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:241:: endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:242:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:243:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvim/init.vim:244:: " ENCODING SETTINGS
 C:/Users/yasha/dotfiles/config/nvim/init.vim:245:: "                                                                            
 C:/Users/yasha/dotfiles/config/nvim/init.vim:246:: set encoding=utf 8                                  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:247:: set termencoding=utf 8
 C:/Users/yasha/dotfiles/config/nvim/init.vim:248:: set fileencoding=utf 8
 C:/Users/yasha/dotfiles/config/nvim/init.vim:249:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:250:: "maps remaps mappings  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:251:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:252:: " terminal stuff 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:253:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:254:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:255:: tnoremap <m d> <C  ><C n>:bdelete!<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:256:: tnoremap <A `> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:257:: tnoremap <A Esc> <C  ><C n>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:258:: nmap <A S t> :te<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:259:: " other mappings 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:260:: vnoremap <Leader>U ""y:%s/<C r>"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:261:: noremap <leader>r :w<cr>:e<cr> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:262:: " inoremap . .<esc>:w<cr>a
 C:/Users/yasha/dotfiles/config/nvim/init.vim:263:: noremap <leader>hh :set tw=50<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:264:: noremap <leader>w :set tw=0<cr> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:265:: map q :q<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:266:: noremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvim/init.vim:267:: nmap <m 7> :ZenMode<cr>:mksession!<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:268:: nnoremap <leader>rr :w<cr>:source  MYVIMRC<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:269:: nnoremap <leader>u <cr>:UndotreeToggle<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:270:: noremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:271:: nnoremap <leader>f :silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:te pwsh  c lf<cr>i
 C:/Users/yasha/dotfiles/config/nvim/init.vim:272:: nnoremap <leader>lg :silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:te pwsh  c lazygit<cr>i
 C:/Users/yasha/dotfiles/config/nvim/init.vim:273:: " nnoremap <leader>tt :FloatermToggle<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:274:: nnoremap <leader>t :silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:edit term://pwsh<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:275:: nnoremap <c ,> :cprevious<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:276:: nnoremap <c .> :cnext<cr> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:277:: inoremap <m h> <left>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:278:: inoremap <m l> <right>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:279:: vnoremap <m s> :s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:280:: inoremap <m s> <esc>:%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:281:: nnoremap <m s> :%s///gc<left><left><left><left>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:282:: vmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvim/init.vim:283:: nmap <M .> t.<CR>h
 C:/Users/yasha/dotfiles/config/nvim/init.vim:284:: nnoremap <up> 1<C U>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:285:: nnoremap <m g> gqip
 C:/Users/yasha/dotfiles/config/nvim/init.vim:286:: imap <up> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:287:: nnoremap <down> 1<C D>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:288:: imap <down> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:289:: noremap <ScrollWheelUp>      <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:290:: noremap <S ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:291:: noremap <C ScrollWheelUp>    <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:292:: noremap <ScrollWheelDown>    <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:293:: noremap <S ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:294:: noremap <C ScrollWheelDown>  <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:295:: noremap <ScrollWheelLeft>    <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:296:: noremap <S ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:297:: noremap <C ScrollWheelLeft>  <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:298:: noremap <ScrollWheelRight>   <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:299:: noremap <S ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:300:: noremap <C ScrollWheelRight> <nop>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:301:: inoremap   /
 C:/Users/yasha/dotfiles/config/nvim/init.vim:302:: inoremap /  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:303:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:304:: " Movement
 C:/Users/yasha/dotfiles/config/nvim/init.vim:305:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:306:: noremap W /  <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:307:: noremap B ?  <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:308:: noremap gwm /  <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:309:: noremap gbm ?  <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:310:: noremap gwo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:311:: noremap gbo /(  |)<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:312:: noremap gwb /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:313:: noremap gbb ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:314:: noremap gww /{  |<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:315:: noremap gbw ?{  |<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:316:: noremap gwc /[  | <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:317:: noremap gbc ?[  | <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:318:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:319:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:320:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:321:: " copy paste stuff 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:322:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:323:: vnoremap p "_dP
 C:/Users/yasha/dotfiles/config/nvim/init.vim:324:: inoremap <C p> <C r>"+
 C:/Users/yasha/dotfiles/config/nvim/init.vim:325:: " noremap D "0D:wa<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:326:: noremap d "_d
 C:/Users/yasha/dotfiles/config/nvim/init.vim:327:: nnoremap dd "_dd
 C:/Users/yasha/dotfiles/config/nvim/init.vim:328:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvim/init.vim:329:: noremap c "_c
 C:/Users/yasha/dotfiles/config/nvim/init.vim:330:: noremap s "_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:331:: noremap C "_C
 C:/Users/yasha/dotfiles/config/nvim/init.vim:332:: noremap x "_x
 C:/Users/yasha/dotfiles/config/nvim/init.vim:333:: vnoremap x "+x
 C:/Users/yasha/dotfiles/config/nvim/init.vim:334:: vnoremap d "_d
 C:/Users/yasha/dotfiles/config/nvim/init.vim:335:: vnoremap c "_c
 C:/Users/yasha/dotfiles/config/nvim/init.vim:336:: vnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvim/init.vim:337:: nnoremap y "+y
 C:/Users/yasha/dotfiles/config/nvim/init.vim:338:: nnoremap p "+p
 C:/Users/yasha/dotfiles/config/nvim/init.vim:339:: nnoremap <leader>q q
 C:/Users/yasha/dotfiles/config/nvim/init.vim:340:: " map cr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:341:: inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:342:: inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:343:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:344:: " Softwrap  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:345:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:346:: nnoremap D "0dg 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:347:: nnoremap V vg 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:348:: nnoremap A g a
 C:/Users/yasha/dotfiles/config/nvim/init.vim:349:: noremap H g^
 C:/Users/yasha/dotfiles/config/nvim/init.vim:350:: noremap L g 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:351:: nmap <m 8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira  Code:h18<cr>:set columns=100<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:352:: nnoremap <c l> :bnext<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:353:: nnoremap <c h> :bprevious<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:354:: imap <M j> <C j>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:355:: map q: nop
 C:/Users/yasha/dotfiles/config/nvim/init.vim:356:: map <S C q> <Esc>:qa!<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:357:: map <m q> <esc>:wq<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:358:: map <m Q> <esc>:q<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:359:: map <m c> :close<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:360:: map <m d> <Esc>:w<CR>:bdelete<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:361:: map <m D> :bdelete!<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:362:: noremap gf gq
 C:/Users/yasha/dotfiles/config/nvim/init.vim:363:: noremap f /
 C:/Users/yasha/dotfiles/config/nvim/init.vim:364:: noremap F ?
 C:/Users/yasha/dotfiles/config/nvim/init.vim:365:: noremap gfm /  <CR>v?  <CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:366:: noremap gm /  <CR>hv?  <CR>l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:367:: noremap gwb /<CR>hv?{<CR>l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:368:: noremap gsb / <CR>hv?[<CR>l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:369:: noremap gob /)<CR>hv?(<CR>l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:370:: map j gj
 C:/Users/yasha/dotfiles/config/nvim/init.vim:371:: map k gk
 C:/Users/yasha/dotfiles/config/nvim/init.vim:372:: noremap <Space> .
 C:/Users/yasha/dotfiles/config/nvim/init.vim:373:: vnoremap <Space> t <cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:374:: map K <C u>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:375:: map J <C d>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:376:: map <C j> <C e>jj
 C:/Users/yasha/dotfiles/config/nvim/init.vim:377:: map <C k> <C y>kk
 C:/Users/yasha/dotfiles/config/nvim/init.vim:378:: nnoremap <leader>j J
 C:/Users/yasha/dotfiles/config/nvim/init.vim:379:: nnoremap <leader>k K
 C:/Users/yasha/dotfiles/config/nvim/init.vim:380:: map ' "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:381:: nnoremap <Backspace> i<Backspace><Esc>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:382:: noremap <A r> <C r>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:383:: nnoremap ` ~
 C:/Users/yasha/dotfiles/config/nvim/init.vim:384:: nnoremap . `
 C:/Users/yasha/dotfiles/config/nvim/init.vim:385:: noremap <m 1> <C o>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:386:: noremap <m 2> <C i>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:387:: inoremap <m d> <C d>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:388:: noremap ;w <Esc>:w<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:389:: noremap <C t> <Esc>:AsyncRun ctags  R<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:390:: noremap <D u> <C u>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:391:: noremap <A u> <C u>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:392:: " windows stuff, comment out on windows
 C:/Users/yasha/dotfiles/config/nvim/init.vim:393:: " nnoremap ;ww :%s///gc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:394:: " this mapping Enter key to <C y> to chose the current highlight item 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:395:: " and close he selection list, same as other IDEs.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:396:: inoremap <expr> <CR> pumvisible() ? " <C y>" : " <C g>u <CR>"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:397:: nnoremap <silent> <Leader>y :YRGetElem<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:398:: map ' "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:399:: inoremap <D  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvim/init.vim:400:: inoremap <C  > <C x><C  >
 C:/Users/yasha/dotfiles/config/nvim/init.vim:401:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:402:: " FZF 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:403:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:404:: " let g:fzf_preview_window = [ 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:405:: nnoremap <m t> :BTags<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:406:: nnoremap SS :call Sentence()<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:407:: nnoremap S <cr>:call Line()<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:408:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:409:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:410:: " Line search mapping 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:411:: " function! Jumpback() 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:412:: "   K=bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:413:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c r>+<cr>:ZenMode<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:414:: " endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:415:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:416::  " nnoremap <m b> :Buffers<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:417:: nnoremap <m b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:418:: nnoremap <m i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9)<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:419:: nnoremap <m u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:420:: " noremap F <Esc>:GFiles<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:421:: " map <A e> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:422:: map <m f> :FZF ~<CR> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:423:: " map <m f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9) ~<CR> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:424:: "miscellaneous
 C:/Users/yasha/dotfiles/config/nvim/init.vim:425:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:426:: " nmap <leader>p :Denite neoyank  default action=append<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:427:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:428:: " Latex stuff
 C:/Users/yasha/dotfiles/config/nvim/init.vim:429:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:430:: nnoremap <leader>gs :w<cr>:source  MYVIMRC<cr> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:431:: nnoremap <c e> viwy:cclose<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:432:: cmap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvim/init.vim:433:: noremap <m p> <c r>+
 C:/Users/yasha/dotfiles/config/nvim/init.vim:434:: nnoremap <m l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c r>+<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:435:: " noremap <m l> viwy<esc>:bp<cr>:<c r>+<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:436:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:437:: " nvim comment
 C:/Users/yasha/dotfiles/config/nvim/init.vim:438:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:439:: vnoremap <leader>c :'<,'>CommentToggle<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:440:: nnoremap <leader>c :gc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:441:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:442:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:443:: " FZF Neoyank yank     
 C:/Users/yasha/dotfiles/config/nvim/init.vim:444:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:445:: nnoremap <leader>y :FZFNeoyank<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:446:: nnoremap <leader>Y :FZFNeoyank  P<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:447:: vnoremap <leader>y :FZFNeoyankSelection<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:448:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:449:: nnoremap <leader>p :FZFNeoyank +<cr> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:450:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:451:: nnoremap <leader>1 :FZFNeoyank 1<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:452:: nnoremap <leader>P :FZFNeoyank " P+<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:453:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:454:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:455:: "Pounce
 C:/Users/yasha/dotfiles/config/nvim/init.vim:456:: map t <Plug>(leap forward)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:457:: map T <Plug>(leap backward)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:458:: " " nmap S <cmd>PounceRepeat<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:459:: " vmap t <cmd>Pounce<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:460:: " omap gt <cmd>Pounce<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:461:: " 's' is used by vim surround
 C:/Users/yasha/dotfiles/config/nvim/init.vim:462:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:463:: " Replace the default dictionary completion with fzf based fuzzy completion
 C:/Users/yasha/dotfiles/config/nvim/init.vim:464:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:465:: inoremap <expr> <c x><c k> fzf#vim#complete('cat /usr/share/dict/words')  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:466:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:467:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:468:: "Functions
 C:/Users/yasha/dotfiles/config/nvim/init.vim:469:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:470:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:471:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:472:: " function Light()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:473:: " set background=light
 C:/Users/yasha/dotfiles/config/nvim/init.vim:474:: " " colorscheme oceanlight 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:475:: " colorscheme material 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:476:: " let g:material_style = 'lighter'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:477:: "    " highlight Normal ctermfg=black
 C:/Users/yasha/dotfiles/config/nvim/init.vim:478:: " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
 C:/Users/yasha/dotfiles/config/nvim/init.vim:479:: " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
 C:/Users/yasha/dotfiles/config/nvim/init.vim:480:: " endfunction   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:481:: function Bluemoon()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:482::    set background=dark
 C:/Users/yasha/dotfiles/config/nvim/init.vim:483::    colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvim/init.vim:484::    " colorscheme material  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:485:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:486:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:487:: function Deepocean()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:488::    set background=dark
 C:/Users/yasha/dotfiles/config/nvim/init.vim:489::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:490::    let g:material_style = 'deep ocean'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:491:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:492:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:493:: function Palenight()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:494::    set background=dark
 C:/Users/yasha/dotfiles/config/nvim/init.vim:495::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvim/init.vim:496::    colorscheme material  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:497::    let g:material_style = 'palenight'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:498:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:499:: function Light()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:500::    colorscheme gruvbox 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:501::    set background=light
 C:/Users/yasha/dotfiles/config/nvim/init.vim:502:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:503:: function Lighter()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:504::    " colorscheme blue moon
 C:/Users/yasha/dotfiles/config/nvim/init.vim:505::    colorscheme tokyonight day
 C:/Users/yasha/dotfiles/config/nvim/init.vim:506:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:507:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:508:: function Dark()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:509::    set background=dark
 C:/Users/yasha/dotfiles/config/nvim/init.vim:510::    colorscheme tokyonight moon
 C:/Users/yasha/dotfiles/config/nvim/init.vim:511:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:512:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:513:: function! Profile()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:514:: profile start profile.log
 C:/Users/yasha/dotfiles/config/nvim/init.vim:515:: profile func *
 C:/Users/yasha/dotfiles/config/nvim/init.vim:516:: profile file *
 C:/Users/yasha/dotfiles/config/nvim/init.vim:517:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:518:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:519:: command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvim/init.vim:520::       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvim/init.vim:521::         'rg   with filename   line number   no heading   smart case . '.fnameescape(expand('%')),1,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:522::         fzf#vim#with_preview({'options': '  keep right   layout reverse   query '.shellescape(<q args>).'   preview "bat  p   color always {"', 'up:50%'))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:523:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:524:: function Line()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:525::    " vimgrep / w +/j  | copen
 C:/Users/yasha/dotfiles/config/nvim/init.vim:526::    let g:buf = bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:527::    " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:528::    let b:filenamedir = substitute(expand('%:p:h'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:529::    let b:file = expand('%:p')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:530::    let b:filename = substitute(b:file, "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:531::    let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/line.nu " . b:filename 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:532::    exec b:execstr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:533::    cg @_%
 C:/Users/yasha/dotfiles/config/nvim/init.vim:534::    lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9) 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:535::    " copen
 C:/Users/yasha/dotfiles/config/nvim/init.vim:536::    " sleep 600m
 C:/Users/yasha/dotfiles/config/nvim/init.vim:537::    " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:538::    " " call feedkeys(":BLinesB  <c r>+ <cr>")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:539::    " call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:540:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:541:: function Sentence()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:542::    let g:buf = bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:543::    " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:544::    let b:filenamedir = substitute(expand('%:p:h'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:545::    let b:file = expand('%:p')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:546::    let b:filename = substitute(b:file, "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:547::    let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
 C:/Users/yasha/dotfiles/config/nvim/init.vim:548::    exec b:execstr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:549::    cg @_%
 C:/Users/yasha/dotfiles/config/nvim/init.vim:550::    " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9) 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:551::    copen
 C:/Users/yasha/dotfiles/config/nvim/init.vim:552::    sleep 600m
 C:/Users/yasha/dotfiles/config/nvim/init.vim:553::    " " let b:paste = system('pwsh  c Get Clipboard')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:554::    call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:555:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:556:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:557:: function SentenceLL()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:558::  let g:buf = bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:559::   " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:560::   let b:filenamedir = substitute(expand('%:p:h'), "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:561::   let b:file = expand('%:p')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:562::   let b:filename = substitute(b:file, "  ", "/", "g")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:563::   let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
 C:/Users/yasha/dotfiles/config/nvim/init.vim:564::   exec b:execstr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:565::   cg @_ 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:566::   copen 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:567::   sleep 300m
 C:/Users/yasha/dotfiles/config/nvim/init.vim:568::   call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:569::   sleep 100m
 C:/Users/yasha/dotfiles/config/nvim/init.vim:570::   " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:571::   call feedkeys(" <c r>+ <cr>")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:572:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:573:: noremap gs :call SentenceLL()<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:574:: function GitAsync()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:575:: silent execute "!echo " . v:servername . ' > ~/servername.txt'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:576:: let g:bufdude = bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:577:: silent te pwsh  c if ( (git rev parse   is inside work tree)  and (git rev parse   git dir) ) { git add . ; git commit  m  a; git push   all origin; ctags  R 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:578:: execute "buffer" g:bufdude
 C:/Users/yasha/dotfiles/config/nvim/init.vim:579:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:580::   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:581:: function ToggleQuickFix()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:582::       if empty(filter(getwininfo(), 'v:val.quickfix'))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:583::       exec "w"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:584::         " lua require("true zen.ataraxis") .off()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:585::         " lua require("zen mode").close()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:586::         let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:587::         echo b:filenamedir
 C:/Users/yasha/dotfiles/config/nvim/init.vim:588::         let b:filename=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:589::         let b:errors=b:filenamedir . "/build/" . b:filename .".log"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:590::         echo b:errors
 C:/Users/yasha/dotfiles/config/nvim/init.vim:591::         exec "cg" b:errors
 C:/Users/yasha/dotfiles/config/nvim/init.vim:592::         copen
 C:/Users/yasha/dotfiles/config/nvim/init.vim:593::         sleep 200m
 C:/Users/yasha/dotfiles/config/nvim/init.vim:594::         call feedkeys("zf")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:595::         " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:596::         call feedkeys("fatal")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:597::         endif
 C:/Users/yasha/dotfiles/config/nvim/init.vim:598:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:599:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:600:: nnoremap <leader>ge :silent call ToggleQuickFix()<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:601:: function! ClearLatex()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:602::   silent !rm ./build/* 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:603:: endfunction 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:604:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:605:: function! CompileLatex()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:606::   " silent call ClearLatex()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:607::   let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:608::   silent te pwsh  c latexmk  pvc  halt on error  synctex=1  file line error  f  output directory="build" %
 C:/Users/yasha/dotfiles/config/nvim/init.vim:609::   execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvim/init.vim:610::   call ViewPdf()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:611:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:612:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:613:: function! ViewPdf() 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:614:: wa
 C:/Users/yasha/dotfiles/config/nvim/init.vim:615:: let g:buffmain=bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:616:: silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:617:: let buf=bufname()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:618:: let linenumber=line(".")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:619:: let colnumber=col(".")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:620:: let b:filenamedir=expand('%:p:h')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:621:: let filenametex=expand('%:p:t')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:622:: let filenametexwhole=expand('%:p')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:623:: let filenameroot=expand('%:t:r')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:624:: " let filenamePDF=filename[: 4 ."pdf"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:625:: let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:626:: let b:filenamePDFWindows="build  " . filenameroot . ".pdf"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:627:: " echo b:filenamePDFWindows
 C:/Users/yasha/dotfiles/config/nvim/init.vim:628:: let execstrLinux="silent te zathura   synctex forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
 C:/Users/yasha/dotfiles/config/nvim/init.vim:629:: let execstrWindows="silent te pwsh  c C:/Users/yasha/scoop/shims/sumatrapdf.EXE  reuse instance " . b:filenamePDFWindows . "  forward search " . filenametex . " " . linenumber
 C:/Users/yasha/dotfiles/config/nvim/init.vim:630:: exec execstrWindows
 C:/Users/yasha/dotfiles/config/nvim/init.vim:631:: execute "buffer" buf
 C:/Users/yasha/dotfiles/config/nvim/init.vim:632:: endfunction
 C:/Users/yasha/dotfiles/config/nvim/init.vim:633:: nmap <leader>v :call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:634:: map <m v> <esc>:call ViewPdf()<cr><cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:635:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:636:: " nmap <leader>v :VimtexView<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:637:: " let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:638:: nmap <leader>ll :call CompileLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:639:: nmap <leader>lcl :call ClearLatex()<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:640:: nmap gtd :TodoQuickFix<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:641:: nmap <leader>ga :TZAtaraxis<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:642:: nmap <leader>gm :w<cr>:silent ! cat  >> ~/workspace/email.txt; cp  /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html   from html   to markdown_strict  o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:w<cr>:qa<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:643:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:644:: " Lsp mappings
 C:/Users/yasha/dotfiles/config/nvim/init.vim:645:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:646:: noremap ga  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:647:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:648:: nmap <leader>c gc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:649:: "Autosave and autocommit   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:650:: " let g:updatetime = 10000
 C:/Users/yasha/dotfiles/config/nvim/init.vim:651:: let g:auto_save = 0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:652:: " .vimrc
 C:/Users/yasha/dotfiles/config/nvim/init.vim:653:: let g:auto_save_events = ["CursorHold" 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:654:: "au FileType vim let g:autosave = 0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:655:: let g:auto_save_in_insert_mode = 0
 C:/Users/yasha/dotfiles/config/nvim/init.vim:656:: let g:auto_save_silent = 1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:657:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:658:: "Git autocommit  (nonmain branch)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:659:: autocmd BufWritePost * call GitAsync()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:660:: set completeopt=menu,menuone,noselect,noinsert
 C:/Users/yasha/dotfiles/config/nvim/init.vim:661:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:662:: " Avoid showing message extra message when using completion
 C:/Users/yasha/dotfiles/config/nvim/init.vim:663:: set shortmess+=c
 C:/Users/yasha/dotfiles/config/nvim/init.vim:664:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:665:: let g:firenvim_config = { 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:666::       'globalSettings': {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:667::           'alt': 'all',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:668::        ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:669::       'localSettings': {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:670::           '.*': {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:671::               'cmdline': 'neovim',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:672::               'content': 'text',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:673::               'priority': 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:674::               'selector': 'textarea',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:675::               'takeover': 'never',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:676::           ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:677::       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:678::   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:679:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:680:: ""other maps
 C:/Users/yasha/dotfiles/config/nvim/init.vim:681:: inoremap <cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:682:: nnoremap o o<space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:683:: " map cr
 C:/Users/yasha/dotfiles/config/nvim/init.vim:684:: " inoremap <cr> <esc> a<cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:685:: " inoremap <m cr> <cr><space><esc>"_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:686:: let g:neovide_fullscreen=v:true
 C:/Users/yasha/dotfiles/config/nvim/init.vim:687:: if exists('g:gonvim_running')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:688::  set guifont=Fira  Code  Light:h18
 C:/Users/yasha/dotfiles/config/nvim/init.vim:689:: "goneovim specific stuff
 C:/Users/yasha/dotfiles/config/nvim/init.vim:690:: elseif exists('g:neovide')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:691::    set guifont=JetBrains  Mono:h18
 C:/Users/yasha/dotfiles/config/nvim/init.vim:692:: end
 C:/Users/yasha/dotfiles/config/nvim/init.vim:693:: nnoremap <C c> :set hlsearch!<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:694:: xnoremap <silent> <cr> "*y:silent! let searchTerm = ' V'.substitute(escape(@*, ' /'), " n", '  n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:695:: inoremap <m d> <C w>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:696:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:697:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:698:: imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip expand or jump' : '<Tab>' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:699:: "  1 for jumping backwards.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:700:: inoremap <silent> <S Tab> <cmd>lua require'luasnip'.jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:701:: inoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:702:: nnoremap <silent> <m j> <cmd>lua require('luasnip').jump(1)<Cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:703:: inoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:704:: nnoremap <silent> <m k> <cmd>lua require('luasnip').jump( 1)<Cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:705:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:706:: " For changing choices in choiceNodes (not strictly necessary for a basic setup).
 C:/Users/yasha/dotfiles/config/nvim/init.vim:707:: imap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:708:: smap <silent><expr> <C E> luasnip#choice_active() ? '<Plug>luasnip next choice' : '<C E>'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:709:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:710:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:711:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:712:: "lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:713:: " local generator = function()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:714:: "     local el_segments = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:715:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:716:: "        Statusline options can be of several different types.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:717:: "        Option 1, just a string.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:718:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:719:: "     table.insert(el_segments, '[literal_string ')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:720:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:721:: "        Keep in mind, these can be the builtin strings,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:722:: "        which are found in |:help statusline|
 C:/Users/yasha/dotfiles/config/nvim/init.vim:723:: "     table.insert(el_segments, '%f')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:724:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:725:: "        expresss_line provides a helpful wrapper for these.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:726:: "        You can check out el.builtin
 C:/Users/yasha/dotfiles/config/nvim/init.vim:727:: "     local builtin = require('el.builtin')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:728:: "     table.insert(el_segments, builtin.file)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:729:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:730:: "        Option 2, just a function that returns a string.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:731:: "     local extensions = require('el.extensions')
 C:/Users/yasha/dotfiles/config/nvim/init.vim:732:: "     table.insert(el_segments, extensions.mode)    mode returns the current mode.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:733:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:734:: "        Option 3, returns a function that takes in a Window and a Buffer.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:735:: "         See |:help el.Window| and |:help el.Buffer|
 C:/Users/yasha/dotfiles/config/nvim/init.vim:736:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:737:: "         With this option, you don't have to worry about escaping / calling
 C:/Users/yasha/dotfiles/config/nvim/init.vim:738:: "         the function in the correct way to get the current buffer and window.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:739:: "     local file_namer = function(_window, buffer)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:740:: "       return buffer.name
 C:/Users/yasha/dotfiles/config/nvim/init.vim:741:: "     end
 C:/Users/yasha/dotfiles/config/nvim/init.vim:742:: "     table.insert(el_segments, file_namer)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:743:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:744:: "        Option 4, you can return a coroutine.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:745:: "         In lua, you can cooperatively multi thread.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:746:: "         You can use `coroutine.yield()` to yield execution to another coroutine.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:747:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:748:: "         For example, in luvjob.nvim, there is `co_wait` which is a coroutine
 C:/Users/yasha/dotfiles/config/nvim/init.vim:749:: "         version of waiting for a job to complete. So you can start multiple
 C:/Users/yasha/dotfiles/config/nvim/init.vim:750:: "         jobs at once and wait for them to all be done.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:751:: "     table.insert(el_segments, extensions.git_changes)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:752:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:753:: "        Option 5, there are several helper functions provided to asynchronously
 C:/Users/yasha/dotfiles/config/nvim/init.vim:754:: "         run timers which update buffer or window variables at a certain frequency.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:755:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:756:: "         These can be used to set infrequrently updated values without waiting.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:757:: "     local helper = require("el.helper")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:758:: "     table.insert(el_segments, helper.async_buf_setter(
 C:/Users/yasha/dotfiles/config/nvim/init.vim:759:: "       win_id,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:760:: "       'el_git_stat',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:761:: "       extensions.git_changes,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:762:: "       5000
 C:/Users/yasha/dotfiles/config/nvim/init.vim:763:: "     ))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:764:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:765:: "     return el_segments
 C:/Users/yasha/dotfiles/config/nvim/init.vim:766:: " end
 C:/Users/yasha/dotfiles/config/nvim/init.vim:767:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:768:: "    And then when you're all done, just call
 C:/Users/yasha/dotfiles/config/nvim/init.vim:769:: " require('el').setup { generator = generator 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:770:: " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:771:: " " " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:772:: " lua << EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:773:: "   require("zen mode").setup {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:774:: "   window = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:775:: "     backdrop = 1,    shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
 C:/Users/yasha/dotfiles/config/nvim/init.vim:776:: "        height and width can be:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:777:: "        * an absolute number of cells when > 1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:778:: "        * a percentage of the width / height of the editor when <= 1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:779:: "        * a function that returns the width or the height
 C:/Users/yasha/dotfiles/config/nvim/init.vim:780:: "     width = .66,    width of the Zen window
 C:/Users/yasha/dotfiles/config/nvim/init.vim:781:: "     height = 1,    height of the Zen window
 C:/Users/yasha/dotfiles/config/nvim/init.vim:782:: "        by default, no options are changed for the Zen window
 C:/Users/yasha/dotfiles/config/nvim/init.vim:783:: "        uncomment any of the options below, or add other vim.wo options you want to apply
 C:/Users/yasha/dotfiles/config/nvim/init.vim:784:: "     options = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:785:: "          signcolumn = "no",    disable signcolumn
 C:/Users/yasha/dotfiles/config/nvim/init.vim:786:: "          number = false,    disable number column
 C:/Users/yasha/dotfiles/config/nvim/init.vim:787:: "          relativenumber = false,    disable relative numbers
 C:/Users/yasha/dotfiles/config/nvim/init.vim:788:: "          cursorline = false,    disable cursorline
 C:/Users/yasha/dotfiles/config/nvim/init.vim:789:: "          cursorcolumn = false,    disable cursor column
 C:/Users/yasha/dotfiles/config/nvim/init.vim:790:: "          foldcolumn = "0",    disable fold column
 C:/Users/yasha/dotfiles/config/nvim/init.vim:791:: "          list = false,    disable whitespace characters
 C:/Users/yasha/dotfiles/config/nvim/init.vim:792:: "     ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:793:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:794:: "   plugins = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:795:: "        disable some global vim options (vim.o...)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:796:: "        comment the lines to not apply the options
 C:/Users/yasha/dotfiles/config/nvim/init.vim:797:: "     options = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:798:: "       enabled = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:799:: "       ruler = false,    disables the ruler text in the cmd line area
 C:/Users/yasha/dotfiles/config/nvim/init.vim:800:: "       showcmd = false,    disables the command in the last line of the screen
 C:/Users/yasha/dotfiles/config/nvim/init.vim:801:: "     ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:802:: "     twilight = { enabled = false ,    enable to start Twilight when zen mode opens
 C:/Users/yasha/dotfiles/config/nvim/init.vim:803:: "     gitsigns = { enabled = false ,    disables git signs
 C:/Users/yasha/dotfiles/config/nvim/init.vim:804:: "     tmux = { enabled = false ,    disables the tmux statusline
 C:/Users/yasha/dotfiles/config/nvim/init.vim:805:: "        this will change the font size on kitty when in zen mode
 C:/Users/yasha/dotfiles/config/nvim/init.vim:806:: "        to make this work, you need to set the following kitty options:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:807:: "          allow_remote_control socket only
 C:/Users/yasha/dotfiles/config/nvim/init.vim:808:: "          listen_on unix:/tmp/kitty
 C:/Users/yasha/dotfiles/config/nvim/init.vim:809:: "     kitty = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:810:: "       enabled = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:811:: "       font = "+4",    font size increment
 C:/Users/yasha/dotfiles/config/nvim/init.vim:812:: "     ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:813:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:814:: "      callback where you can add custom code when the Zen window opens
 C:/Users/yasha/dotfiles/config/nvim/init.vim:815:: "   on_open = function(win)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:816:: "   end,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:817:: "      callback where you can add custom code when the Zen window closes
 C:/Users/yasha/dotfiles/config/nvim/init.vim:818:: "   on_close = function()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:819:: "   end,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:820:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:821:: " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:822:: " lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:823:: " require('telescope').setup{
 C:/Users/yasha/dotfiles/config/nvim/init.vim:824:: "   defaults = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:825:: "        Default configuration for telescope goes here:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:826:: "        config_key = value,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:827:: "     mappings = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:828:: "       i = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:829:: "            map actions.which_key to <C h> (default: <C />)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:830:: "            actions.which_key shows the mappings for your picker,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:831:: "            e.g. git_{create, delete, ..._branch for the git_branches picker
 C:/Users/yasha/dotfiles/config/nvim/init.vim:832:: "         ["<C h>"  = "which_key"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:833:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:834:: "     
 C:/Users/yasha/dotfiles/config/nvim/init.vim:835:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:836:: "   pickers = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:837:: "        Default configuration for builtin pickers goes here:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:838:: "        picker_name = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:839:: "          picker_config_key = value,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:840:: "          ...
 C:/Users/yasha/dotfiles/config/nvim/init.vim:841:: "        
 C:/Users/yasha/dotfiles/config/nvim/init.vim:842:: "        Now the picker_config_key will be applied every time you call this
 C:/Users/yasha/dotfiles/config/nvim/init.vim:843:: "        builtin picker 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:844:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:845:: "   extensions = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:846:: "        Your extension configuration goes here:
 C:/Users/yasha/dotfiles/config/nvim/init.vim:847:: "        extension_name = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:848:: "          extension_config_key = value,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:849:: "        
 C:/Users/yasha/dotfiles/config/nvim/init.vim:850:: "        please take a look at the readme of the extension you want to configure
 C:/Users/yasha/dotfiles/config/nvim/init.vim:851:: "   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:852:: "  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:853:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:854:: " " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:855:: " lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:856:: " lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:857:: " require('fm nvim').setup{
 C:/Users/yasha/dotfiles/config/nvim/init.vim:858:: " 	config =
 C:/Users/yasha/dotfiles/config/nvim/init.vim:859:: " 	{
 C:/Users/yasha/dotfiles/config/nvim/init.vim:860:: " 		edit_cmd = "edit",    opts: 'tabedit'; 'split'; 'pedit'; etc...
 C:/Users/yasha/dotfiles/config/nvim/init.vim:861:: " 		border   = "single",    opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:862:: " 		height   = .9,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:863:: " 		width    = .9,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:864:: "                
 C:/Users/yasha/dotfiles/config/nvim/init.vim:865:: "           
 C:/Users/yasha/dotfiles/config/nvim/init.vim:866:: "           	   Mappings used with the plugin
 C:/Users/yasha/dotfiles/config/nvim/init.vim:867:: " 	mappings = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:868:: " 		vert_split = "<C v>",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:869:: " 		horz_split = "<C h>",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:870:: " 		tabedit    = "<C t>",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:871:: " 		edit       = "<C e>",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:872:: " 		ESC        = "<ESC>"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:873:: " 	,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:874:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:875:: " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:876:: " lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:877:: " require("telescope").load_extension("prosesitter")    Optionally, depends on telescope.nvim
 C:/Users/yasha/dotfiles/config/nvim/init.vim:878:: " require("prosesitter"):setup({
 C:/Users/yasha/dotfiles/config/nvim/init.vim:879:: " 	vale_bin = vim.fn.stdpath("data") .. "/prosesitter/vale",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:880:: " 	vale_cfg = vim.fn.stdpath("data") .. "/prosesitter/vale_cfg.ini",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:881:: " 	  optional extra queries overrides existing queries
 C:/Users/yasha/dotfiles/config/nvim/init.vim:882:: " 	queries = { 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:883:: " 		   see the piece on adding queries on how to use this 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:884:: " 		   (not needed if using an out of the box supported language
 C:/Users/yasha/dotfiles/config/nvim/init.vim:885:: " 		py = { 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:886:: " 			strings = "[(string)   @capture",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:887:: " 			comments = "[(comment)+   @capture",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:888:: " 		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:889:: " 	, 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:890:: " 	   highlight groups to use for lint errors, warnings and suggestions
 C:/Users/yasha/dotfiles/config/nvim/init.vim:891:: " 	  " severity_to_hl = { error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap" ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:892:: " 	   weather to lint strings, comments or both for a language
 C:/Users/yasha/dotfiles/config/nvim/init.vim:893:: " 	lint_targets = { py = "both", tex = "strings", sh = "comments" , 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:894:: " 	disabled_ext = { "tex" ,    do not ever lint tex files
 C:/Users/yasha/dotfiles/config/nvim/init.vim:895:: " 	auto_enable = false,    do not start linting files on open (default = true)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:896:: " 	default_cmds = false,     do not add commands (default = true)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:897:: " )
 C:/Users/yasha/dotfiles/config/nvim/init.vim:898:: " EOF 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:899:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:900:: "" lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:901:: "     require'lightspeed'.setup { 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:902:: "         jump_to_unique_chars = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:903:: "         repeat_ft_with_target_char = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:904:: "         safe_labels  = { "f", "n", "u", "/", "e", "z", "h", "k", "m", "l", "j", "w", "b", "S", "F", "N", "L", "H", "M", "U", "G", "T", "?", "Z" ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:905:: "         labels = { "s", "f", "n", "j", "k", "l", "h", "o", "d", "w", "e", "m", "b", "u", "y", "v", "r", "g", "c", "x", "/", "z", "S", "F", "N", "J", "K", "L", "H", "O", "D", "W", "E", "M", "B", "U", "Y", "V", "R", "G", "T", "C", "X", "?", "Z" 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:906:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:907:: " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:908:: " lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:909:: "    Setup cmp.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:910:: "    Installation
 C:/Users/yasha/dotfiles/config/nvim/init.vim:911:: " use {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:912:: "   'hrsh7th/nvim cmp',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:913:: "   requires = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:914:: "     {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:915:: "       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:916:: "          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvim/init.vim:917:: "       ft = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:918:: "         'kotlin',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:919:: "         'java'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:920:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:921:: "     
 C:/Users/yasha/dotfiles/config/nvim/init.vim:922:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:923:: " config = function ()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:924:: "     require'cmp'.setup {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:925:: "     sources = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:926:: "       { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:927:: "      
 C:/Users/yasha/dotfiles/config/nvim/init.vim:928:: "     { name = 'vsnip', keyword_length = 1000 ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:929:: " { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:930:: "    For ultisnips user.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:931:: "          { name = 'ultisnips' ,  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:932:: " { name = 'buffer', keyword_length = 1000 ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:933:: " { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:934:: "           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:935:: " { name = 'nvim_lsp', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:936:: "         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:937:: "   { name = 'latex_symbols' ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:938:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:939:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:940:: " end
 C:/Users/yasha/dotfiles/config/nvim/init.vim:941:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:942:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:943:: " test test2
 C:/Users/yasha/dotfiles/config/nvim/init.vim:944:: " let g:autotagTagsFile="~/workspacemodules/tags"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:945:: " let g:autotagFile="~/workspacemodules/tags"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:946:: " lua <<EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:947:: "    Installation
 C:/Users/yasha/dotfiles/config/nvim/init.vim:948:: " use { 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:949:: "   'hrsh7th/nvim cmp',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:950:: "   requires = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:951:: "     {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:952:: "       'quangnguyen30192/cmp nvim ',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:953:: "          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvim/init.vim:954:: "       ft = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:955:: "         'latex',
 C:/Users/yasha/dotfiles/config/nvim/init.vim:956:: "         'tex'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:957:: "       
 C:/Users/yasha/dotfiles/config/nvim/init.vim:958:: "     
 C:/Users/yasha/dotfiles/config/nvim/init.vim:959:: "   ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:960:: "   config = function ()
 C:/Users/yasha/dotfiles/config/nvim/init.vim:961:: "     require'cmp'.setup {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:962:: "     sources = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:963:: "       { name = '' ,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:964:: "          more sources
 C:/Users/yasha/dotfiles/config/nvim/init.vim:965:: "     
 C:/Users/yasha/dotfiles/config/nvim/init.vim:966:: "   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:967:: "   end
 C:/Users/yasha/dotfiles/config/nvim/init.vim:968:: " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:969:: " EOF
 C:/Users/yasha/dotfiles/config/nvim/init.vim:970:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:971:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:972:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:973:: " local true_zen = require("true zen")
 C:/Users/yasha/dotfiles/config/nvim/init.vim:974:: " true_zen.setup({
 C:/Users/yasha/dotfiles/config/nvim/init.vim:975:: "  	ui = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:976:: "  		bottom = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:977:: "  			laststatus = 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:978:: "  			ruler = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:979:: "  			showmode = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:980:: "  			showcmd = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:981:: "  			cmdheight = 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:982:: "  		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:983:: "  		top = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:984:: "  			showtabline = 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:985:: "  		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:986:: "  		left = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:987:: "  			number = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:988:: "  			relativenumber = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:989:: "  			signcolumn = "no",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:990:: "  		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:991:: "  	,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:992:: "  	modes = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:993:: "  		ataraxis = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:994:: "  			   left_padding = 20,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:995:: "  			   right_padding = 20,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:996:: "  			top_padding = 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:997:: "  			bottom_padding = 0,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:998:: "  			ideal_writing_area_width = {60,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:999:: "  			auto_padding = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1000:: "  			keep_default_fold_fillchars = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1001:: "  			custom_bg = {"none", "",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1002:: "  			bg_configuration = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1003:: "  			quit = "untoggle",
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1004:: "  			ignore_floating_windows = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1005:: "  			affected_higroups = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1006:: "  				NonText = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1007:: "  				FoldColumn = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1008:: "  				ColorColumn = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1009:: "  				VertSplit = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1010:: "  				StatusLine = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1011:: "  				StatusLineNC = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1012:: "  				SignColumn = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1013:: "  			,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1014:: "  		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1015:: "  		focus = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1016:: "  			margin_of_error = 5,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1017:: "  			focus_method = "experimental"
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1018:: "  		,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1019:: "  	,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1020:: "  	integrations = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1021:: "  		vim_gitgutter = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1022:: "  		galaxyline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1023:: "  		"Neovim mappings
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1024:: " :tnoremap <S h> <C  ><C n><C w>h
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1025:: " :tnoremap <S j> <C  ><C n><C w>j
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1026:: " :tnoremap <S k> <C  ><C n><C w>k
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1027:: " :tnoremap <S l> <C  ><C n><C w>l
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1028:: "" nnoremap H :LinesWithPreview<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1029:: " command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1030:: "       call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1031:: "         'rg   with filename   column   line number   no heading   smart case . '.fnameescape(expand('%:p')), 1,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1032:: "         fzf#vim#with_preview({'options': '  keep right   delimiter :   nth 4..   preview "bat  p   color always {"', 'right:50%' ))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1033:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1034:: " command!  bang  nargs=* BLinesB
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1035:: "        call fzf#vim#grep(
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1036:: "          'rg   with filename   column   line number   no heading   smart case . '.fnameescape(expand('%:p')),,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1037:: " "         fzf#vim#with_preview({'options': '  layout reverse   query '.shellescape(<q args>).'   with nth=4..   delimiter=":"', 'right:0%'))
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1038::     "     fzf#vim#with_preview({'options': '  layout reverse    with nth= 1..   delimiter="/"', 'right:50%')) tnoremap <Left> :tbnext<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1039:: " tnoremap <Right> :tbprevious<CR>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1040:: " tnoremap <Leader>e <C  ><C n> 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1041:: " imap <Backspace>  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1042:: " map t <Plug>Lightspeed_s
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1043:: " map <C t> <cmd>HopChar1
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1044:: " map T <Plug>Lightspeed_S
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1045:: " map <S m Space> <cmd>HopWord<cr>
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1046:: " map t <ESC>:syntax off <CR>t: syntax on<CR>tmux = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1047:: "  		gitsigns = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1048:: "  		nvim_bufferline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1049:: "  		limelight = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1050:: "  		twilight = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1051:: "  		vim_airline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1052:: "  		vim_powerline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1053:: "  		vim_signify = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1054:: "  		express_line = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1055:: "  		lualine = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1056:: "  		lightline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1057:: "  		feline = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1058:: "  	,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1059:: "  	misc = {
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1060:: "  		on_off_commands = true,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1061:: "  		ui_elements_commands = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1062:: "  		cursor_by_mode = false,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1063:: "  	
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1064:: "  )
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1065:: " press <Tab> to expand or jump in a snippet. These can also be mapped separately
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1066:: " via <Plug>luasnip expand snippet and <Plug>luasnip jump next.
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1067:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1068:: " Plug 'rakr/vim one'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1069:: "" Plug 'hrsh7th/cmp vsnip', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1070:: " Plug 'hrsh7th/vim vsnip'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1071:: " Plug 'hrsh7th/vim vsnip integ' Plug 'kyazdani42/blue moon'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1072:: "" Plug 'shaunsingh/nord.nvim' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1073:: " Plug 'monsonjeremy/onedark.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1074:: " Plug 'navarasu/onedark.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1075:: " Plug 'yegappan/mru'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1076:: " Plug 'folke/zen mode.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1077:: " Plug 'karb94/neoscroll.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1078:: " Plug 'rlane/pounce.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1079:: " Plug 'phaazon/hop.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1080:: " Plug 'ggandor/lightspeed.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1081:: "" Plug 'nyngwang/murmur' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1082:: " Plug 'vim scripts/AutoTag'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1083:: " Plug 'rebelot/kanagawa.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1084:: " Plug 'reedes/vim pencil' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1085:: " Plug 'folke/zen mode.nvim', {  'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1086:: " Plug 'radenling/vim dispatch neovim'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1087:: " Plug 'tpope/vim dispatch'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1088:: " Plug 'sheerun/vim polyglot' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1089:: " Plug 'https://gitlab.com/yorickpeterse/nvim dd.git',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1090:: " Plug 'luukvbaal/stabilize.nvim' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1091:: " Plug 'nvim treesitter/playground
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1092:: " Plug 'glepnir/lspsaga.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1093:: " If you are using Vim Plug
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1094:: " " Plug 'kdheepak/cmp latex symbols', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1095:: " " Plug 'kabouzeid/nvim lspinstall', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1096:: " "Plug 'pope/vim obsession'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1097:: " " Plug 'nvim lua/plenary.nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1098:: " " Plug 'windwp/nvim spectre'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1099:: " " For luasnip user. 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1100:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1101:: " "Plug 'steelsojka/completion buffers'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1102:: " " Plug 'neovim/node host'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1103:: " Plug 'projekt0n/github nvim theme',  { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1104:: " Plug 'rktjmp/lush.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1105:: " " Plug 'cyansprite/Extract'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1106:: " Plug 'gioele/vim autoswap'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1107:: " " Plug 't9md/vim smalls'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1108:: " Plug 'kevinhwang91/nvim bqf', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1109:: " " i you install fzf as system package like `pacman  S fzf` in ArchLinux,
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1110:: " " please comment next line
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1111:: " " Plug 'sindrets/diffview.nvim', { 'branch': 'main'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1112:: " " Plug 'rmagatti/auto session',  { 'branch': 'main'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1113:: " " Plug 'justinmk/vim sneak'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1114:: " " Plug 'SirVer/ultisnips'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1115:: " " Plug 'tpope/vim fugitive'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1116:: " Plug 'eugen0329/vim esearch'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1117:: " Plug 'haya14busa/incsearch.vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1118:: " Plug 'haya14busa/incsearch fuzzy.vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1119:: " Plug 'Raimondi/vim_search_objects'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1120:: " " Plug 'terryma/vim multiple cursors'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1121:: " " " On demand loading
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1122:: " " Plug 'junegunn/goyo.vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1123:: " " " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1124:: " "  Plug 'morhetz/gruvbox'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1125:: " Plug 'sainnhe/gruvbox material'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1126:: " " Plug 'vim pandoc/vim pandoc'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1127:: " " Plug 'vim pandoc/vim pandoc syntax' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1128:: " " Plugin outside ~/.vim/plugged with post update hook
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1129:: " Plug 'junegunn/fzf', { 'do': './install   all' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1130:: "  '
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1131:: " Plug 'lifepillar/vim solarized8'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1132:: " " Plug 'vim scripts/vim auto save'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1133:: " " Plug 'vim pandoc/vim pandoc'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1134:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1135:: " " Plug 'yashamon/vim snippets'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1136:: " " colorschemes
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1137:: " " 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1138::   
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1139:: " Plug 'marko cerovac/material.nvim', { 'branch': 'main' 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1140:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1141:: " Plug 'reedes/vim colors pencil'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1142:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1143:: " Plug 'vim scripts/oceanlight'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1144:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1145:: " Plug 'gosukiwi/vim atom dark'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1146:: "
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1147:: " Plug 'dracula/vim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1148:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1149:: 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1150:: " " Plug 'svermeulen/vim cutlass'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1151:: " Plug 'kyazdani42/nvim web devicons' " for file icons
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1152:: " " Plug 'kyazdani42/nvim tree.lua', 
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1153:: " "Plug 'nvim lua/completion nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1154:: " Plug 'neovim/nvim lspconfig'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1155:: " " Plug 'nvim lua/diagnostic nvim'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1156:: " " Plug 'rafamadriz/friendly snippets'  
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1157::  "  " Plug 'tpope/vim surround'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1158:: " Unmanaged plugin (manually installed and updated)
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1159:: " Plug '~/my prototype plugin'
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1160:: " Add plugins to &runtimepath
 C:/Users/yasha/dotfiles/config/nvim/init.vim:1161:: 
