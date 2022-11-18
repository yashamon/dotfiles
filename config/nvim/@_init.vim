 init.vim:1:: call plug#begin('~/.vim/plugged')
init.vim:2:: Plug 'tzachar/cmp-fuzzy-buffer'
init.vim:3:: Plug 'ggandor/leap.nvim'
init.vim:4:: Plug 'ibhagwan/fzf-lua', { 'branch': 'main' 
init.vim:5:: Plug 'tzachar/fuzzy.nvim'
init.vim:6:: Plug 'romgrk/fzy-lua-native'
init.vim:7:: Plug 'vijaymarupudi/nvim-fzf'
init.vim:8:: Plug 'kyazdani42/nvim-web-devicons'
init.vim:9:: Plug 'metalelf0/nvim-floatedit',  { 'branch': 'main' 
init.vim:10:: Plug 'phaazon/hop.nvim'
init.vim:11:: Plug 'ggandor/lightspeed.nvim'
init.vim:12:: Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0)  
init.vim:13:: Plug 'is0n/fm-nvim'
init.vim:14:: Plug 'williamboman/mason.nvim'
init.vim:15:: Plug 'williamboman/mason-lspconfig.nvim'
init.vim:16:: Plug 'neovim/nvim-lspconfig'
init.vim:17:: Plug 'williamboman/nvim-lsp-installer', { 'branch': 'main' 
init.vim:18:: Plug 'famiu/feline.nvim'
init.vim:19:: Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' 
init.vim:20:: Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' 
init.vim:21:: Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main'  
init.vim:22:: Plug 'hrsh7th/vim-vsnip'
init.vim:23:: Plug 'hrsh7th/vim-vsnip-integ'
init.vim:24:: Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main'  
init.vim:25:: Plug 'ray-x/cmp-treesitter'
init.vim:26:: Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main'   
init.vim:27:: Plug 'voldikss/vim-floaterm'
init.vim:28:: Plug 'terrortylor/nvim-comment', { 'branch': 'main' 
init.vim:29:: Plug 'justinhoward/fzf-neoyank'
init.vim:30:: Plug 'rakr/vim-one'
init.vim:31:: Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'  
init.vim:32:: Plug 'Shougo/neoyank.vim' 
init.vim:33:: Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'  
init.vim:34:: Plug 'skywind3000/asyncrun.vim'         
init.vim:35:: Plug 'junegunn/fzf', { 'do': { -> fzf#install()   
init.vim:36:: Plug 'neovim/nvim-lspconfig'
init.vim:37:: Plug 'junegunn/fzf.vim'
init.vim:38:: Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' 
init.vim:39:: Plug 'lewis6991/spellsitter.nvim'
init.vim:40:: Plug 'ggVGc/vim-fuzzysearch'
init.vim:41:: Plug 'hrsh7th/vim-searchx'
init.vim:42:: Plug 'Pocco81/true-zen.nvim', { 'branch': 'main' 
init.vim:43:: 
init.vim:44:: " Plug 'folke/zen-mode.nvim', { 'branch': 'main'  
init.vim:45:: " Plug 'karb94/neoscroll.nvim'
init.vim:46:: " Plug 'rlane/pounce.nvim'
init.vim:47:: " Plug 'vim-scripts/AutoTag'
init.vim:48:: " Plug 'rebelot/kanagawa.nvim'
init.vim:49:: " Plug 'reedes/vim-pencil' 
init.vim:50:: " Plug 'folke/which-key.nvim', { 'branch': 'main' 
init.vim:51:: " Plug 'folke/zen-mode.nvim', {  'branch': 'main'  
init.vim:52:: " Plug 'radenling/vim-dispatch-neovim'  
init.vim:53:: " Plug 'tpope/vim-dispatch'
init.vim:54:: " Plug 'sheerun/vim-polyglot' 
init.vim:55:: " Plug 'https://gitlab.com/yorickpeterse/nvim-dd.git',  { 'branch': 'main' 
init.vim:56:: " Plug 'luukvbaal/stabilize.nvim' 
init.vim:57:: " Plug 'nvim-lua/plenary.nvim'
init.vim:58:: " Plug 'nvim-telescope/telescope.nvim',
init.vim:59:: " Plug 'nvim-treesitter/playground
init.vim:60:: " Plug 'glepnir/lspsaga.nvim'
init.vim:61:: " If you are using Vim-Plug
init.vim:62:: " " Plug 'kdheepak/cmp-latex-symbols', { 'branch': 'main'  
init.vim:63:: " " Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main' 
init.vim:64:: " "Plug 'pope/vim-obsession'
init.vim:65:: " " Plug 'nvim-lua/plenary.nvim'
init.vim:66:: " " Plug 'windwp/nvim-spectre'
init.vim:67:: " " For luasnip user

init.vim:68:: " Plug 'L3MON4D3/LuaSnip'
init.vim:69:: " " Plug 'saadparwaiz1/cmp_luasnip'
init.vim:70:: " "Plug 'steelsojka/completion-buffers'
init.vim:71:: " " Plug 'neovim/node-host'
init.vim:72:: " Plug 'projekt0n/github-nvim-theme',  { 'branch': 'main' 
init.vim:73:: " Plug 'rktjmp/lush.nvim', { 'branch': 'main' 
init.vim:74:: " " Plug 'cyansprite/Extract'
init.vim:75:: " Plug 'gioele/vim-autoswap'
init.vim:76:: " " Plug 't9md/vim-smalls'
init.vim:77:: " Plug 'kevinhwang91/nvim-bqf', { 'branch': 'main' 
init.vim:78:: " " if you install fzf as system package like `pacman -S fzf` in ArchLinux,
init.vim:79:: " " please comment next line
init.vim:80:: " " Plug 'sindrets/diffview.nvim', { 'branch': 'main'  
init.vim:81:: " " Plug 'rmagatti/auto-session',  { 'branch': 'main'
init.vim:82:: " " Plug 'justinmk/vim-sneak'
init.vim:83:: " " Plug 'SirVer/ultisnips'  
init.vim:84:: " " Plug 'tpope/vim-fugitive'
init.vim:85:: " Plug 'eugen0329/vim-esearch'
init.vim:86:: " Plug 'haya14busa/incsearch.vim'
init.vim:87:: " Plug 'haya14busa/incsearch-fuzzy.vim'
init.vim:88:: " Plug 'Raimondi/vim_search_objects'
init.vim:89:: " " Plug 'terryma/vim-multiple-cursors'
init.vim:90:: " " " On-demand loading
init.vim:91:: " " Plug 'junegunn/goyo.vim'
init.vim:92:: " " " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' 
init.vim:93:: " "  Plug 'morhetz/gruvbox'
init.vim:94:: " Plug 'sainnhe/gruvbox-material'
init.vim:95:: " " Plug 'vim-pandoc/vim-pandoc'
init.vim:96:: " " Plug 'vim-pandoc/vim-pandoc-syntax' 
init.vim:97:: " " Plugin outside ~/.vim/plugged with post-update hook
init.vim:98:: " Plug 'junegunn/fzf', { 'do': './install --all' 
init.vim:99:: "  '
init.vim:100:: " Plug 'lifepillar/vim-solarized8'
init.vim:101:: " " Plug 'vim-scripts/vim-auto-save'
init.vim:102:: " " Plug 'vim-pandoc/vim-pandoc'
init.vim:103:: "
init.vim:104:: " " Plug 'yashamon/vim-snippets'
init.vim:105:: " " colorschemes
init.vim:106:: " " 
init.vim:107:: " Plug 'kyazdani42/blue-moon'  
init.vim:108:: " Plug 'marko-cerovac/material.nvim', { 'branch': 'main' 
init.vim:109:: "
init.vim:110:: " Plug 'reedes/vim-colors-pencil'
init.vim:111:: "
init.vim:112:: " Plug 'vim-scripts/oceanlight'
init.vim:113:: "
init.vim:114:: " Plug 'gosukiwi/vim-atom-dark'
init.vim:115:: "
init.vim:116:: " Plug 'dracula/vim'
init.vim:117:: Plug 'kevinhwang91/nvim-bqf'
init.vim:118:: " " Plug 'svermeulen/vim-cutlass'
init.vim:119:: " Plug 'kyazdani42/nvim-web-devicons' " for file icons
init.vim:120:: " " Plug 'kyazdani42/nvim-tree.lua', 
init.vim:121:: " "Plug 'nvim-lua/completion-nvim'
init.vim:122:: " Plug 'neovim/nvim-lspconfig'
init.vim:123:: " " Plug 'nvim-lua/diagnostic-nvim'
init.vim:124:: " " Plug 'rafamadriz/friendly-snippets'  
init.vim:125::  "  " Plug 'tpope/vim-surround'
init.vim:126:: " Unmanaged plugin (manually installed and updated)
init.vim:127:: " Plug '~/my-prototype-plugin'
init.vim:128:: " Add plugins to &runtimepath 
init.vim:129:: call plug#end()
init.vim:130:: 
init.vim:131:: "Neovide 
init.vim:132:: "
init.vim:133:: " let g:neovide_maximized=v:true 
init.vim:134:: let g:neovide_fullscreen=v:true
init.vim:135:: " let g:neovide_transparency=0.15
init.vim:136:: 
init.vim:137:: "General Settings    
init.vim:138:: set title
init.vim:139:: " set titlestring
init.vim:140:: " set noshowmode
init.vim:141:: " set noruler       
init.vim:142:: " set laststatus=1 
init.vim:143:: set noshowcmd    
init.vim:144:: set autoindent
init.vim:145:: set indentexpr=
init.vim:146:: set autoindent
init.vim:147:: set noshowmatch
init.vim:148:: set wrap
init.vim:149:: " set pb=10
init.vim:150:: " set winbl=10
init.vim:151:: set switchbuf=newtab
init.vim:152:: " let g:python3_host_prog='/usr/bin/python3.9'
init.vim:153:: " let g:python3_host_prog='/usr/bin/python3.9'
init.vim:154:: 
init.vim:155:: set clipboard+=unnamedplus	" yank to the system register (*) by default
init.vim:156:: " TAB setting{
init.vim:157:: set expandtab        "replace <TAB> with spaces
init.vim:158:: set softtabstop=3
init.vim:159:: set shiftwidth=3
init.vim:160:: " set shell="C:Program FilesPowerShell7pwsh.EXE"
init.vim:161:: set termguicolors
init.vim:162:: 
init.vim:163:: set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
init.vim:164::  		  ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
init.vim:165::  		  ,sm:block-blinkwait175-blinkoff150-blinkon175
init.vim:166:: set spelllang=en_us
init.vim:167:: set timeoutlen=0
init.vim:168:: function! OnUIEnter(event)
init.vim:169:: 	let l:ui = nvim_get_chan_info(a:event.chan)
init.vim:170:: 	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
init.vim:171:: 		if l:ui.client.name ==# 'Firenvim'
init.vim:172:: 			set guifont=Fira Code:h20
init.vim:173::                         set lines=100
init.vim:174::                         set columns=100
init.vim:175::                         noremap q <esc>:wq<cr>
init.vim:176:: 		endif
init.vim:177:: 	endif
init.vim:178:: endfunction
init.vim:179:: autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
init.vim:180:: 
init.vim:181:: 
init.vim:182:: 
init.vim:183:: "remember cursor location
init.vim:184:: autocmd BufReadPost * if @% !~# '.git[/]COMMIT_EDITMSG$' && line("'"") > 1 && line("'"") <= line("$") | exe "normal! g`"" | endif
init.vim:185:: 
init.vim:186:: au VIMEnter * let g:surround_108 = {
init.vim:187::      'q':  " ``r''"
init.vim:188::       
init.vim:189:: au VIMEnter * let g:buffmain=bufname()
init.vim:190:: nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
init.vim:191:: let g:tex_flavor = "latex"
init.vim:192:: let g:tex_isk = '@,48-57,58,_,192-255,:' 
init.vim:193:: au FileType tex setlocal iskeyword+=:
init.vim:194:: au Filetype tex,text,md set tw=50
init.vim:195:: au FileType tex setlocal indentexpr=
init.vim:196:: au FileType tex setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^s*'.&commentstring[0]
init.vim:197:: 
init.vim:198:: 
init.vim:199:: let g:tex_conceal = ""
init.vim:200:: set tags+=~/workspacemodules/tags
init.vim:201:: set tags+=~workspacemodulestags
init.vim:202:: set tags+=.tags
init.vim:203:: set tags+=./tags
init.vim:204:: "set +=~/Dropbox/workspace/tags
init.vim:205:: " set wrapmargin=1
init.vim:206:: " set shada="NONE"  
init.vim:207:: set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
init.vim:208:: set linebreak 
init.vim:209:: set formatoptions+=w " set breakat=" "
init.vim:210:: " set list  " list disables linebreak whitespace
init.vim:211:: " set textwidth=0
init.vim:212:: " set wrapmargin=-1
init.vim:213:: set hid
init.vim:214:: set autochdir
init.vim:215:: set guioptions-=r
init.vim:216:: set guioptions-=l
init.vim:217:: set inccommand=split
init.vim:218:: set mouse=n
init.vim:219:: noremap! <LeftDrag> <nop>
init.vim:220:: noremap! <RightDrag> <nop>
init.vim:221:: noremap! <LeftDrag> <nop>
init.vim:222:: " set selectmode=mouse, key
init.vim:223:: set bs=2		" allow backspacing over everything in insert mode 
init.vim:224:: set undofile                " Save undo's after file closes
init.vim:225:: set undodir=~/.undo " where to save undo histories
init.vim:226:: set undolevels=1000000         " How many undos
init.vim:227:: set undoreload=1000000		
init.vim:228:: set ruler		" show the cursor position all the time
init.vim:229:: set autoread		" auto read when file is changed from outside
init.vim:230:: set nohlsearch
init.vim:231:: " set noswapfile
init.vim:232:: " set showmatch		" Cursor shows matching ) and 
init.vim:233:: set nocursorline
init.vim:234:: set showmode		" Show current mode
init.vim:235:: set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
init.vim:236:: set wildmenu            " wild char completion menu
init.vim:237:: let maplocalleader = ""
init.vim:238:: " ignore these files while expanding wild chars
init.vim:239:: set wildignore=*.o,*.class,*.pyc
init.vim:240:: set incsearch		" incremental search
init.vim:241:: set nobackup		" no *~ backup files
init.vim:242:: set ignorecase		" ignore case when searchingset smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
init.vim:243:: set smarttab		" insert tabs on the start of a line according to context
init.vim:244:: set spell   
init.vim:245:: 
init.vim:246:: " disable sound on errors
init.vim:247:: set noerrorbells
init.vim:248:: " set novisualbell 
init.vim:249:: " set font=Fira Code:h18
init.vim:250:: colorscheme one
init.vim:251:: " colorscheme material  
init.vim:252:: " let g:material_style = 'palenight'  
init.vim:253:: " let g:material_style = 'lighter'
init.vim:254:: " highlight Normal ctermbg=none
init.vim:255:: set tm=1000
init.vim:256:: " set macreta 
init.vim:257:: hi SpellBad cterm=underline
init.vim:258:: " Set style for gVim
init.vim:259:: hi SpellBad gui=underline
init.vim:260:: "
init.vim:261:: "Autocommands, au
init.vim:262:: au FileType Makefile set noexpandtab
init.vim:263:: au FileType tex,text set spelllang=en_us
init.vim:264:: au FileType tex,text,md set indentexpr=
init.vim:265:: au FileType vim,md set list
init.vim:266:: " au FileType tex,text,md silent execute "!echo " 
init.vim:266::+++v:servername 
init.vim:266::+++" > ~/servername.txt"    
init.vim:267:: au FileType * silent execute "!echo " 
init.vim:267::+++v:servername 
init.vim:267::+++" > ~/servername.txt"
init.vim:268:: au UIEnter silent execute "!echo " 
init.vim:268::+++v:servername 
init.vim:268::+++" > ~/servername.txt"
init.vim:269:: function Server()
init.vim:270::    silent execute "!echo " 
init.vim:270::+++v:servername 
init.vim:270::+++" > ~/servername.txt"
init.vim:271:: endfunction
init.vim:272:: nmap <leader>nn :call Server()
init.vim:273:: 
init.vim:274:: au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment<cr><cr>/end{comment<esc>kp  
init.vim:275:: 
init.vim:276:: " au Filetype tex,text,md set fo=tc
init.vim:277:: " au FileType tex set background=dark 
init.vim:278:: au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true
init.vim:279:: au TextYankPost * call neoyank#_append()
init.vim:280:: 
init.vim:281:: set expandtab        "replace <TAB> with spaces
init.vim:282:: set softtabstop=3
init.vim:283:: set shiftwidth=3
init.vim:284:: 
init.vim:285:: "--------------------------------------------------------------------------- 
init.vim:286:: " USEFUL SHORTCUTS
init.vim:287:: "--------------------------------------------------------------------------- 
init.vim:288:: " set leader to ; 
init.vim:289:: let mapleader=';'
init.vim:290:: let g:mapleader=';'
init.vim:291:: 
init.vim:292:: " open the error console
init.vim:293:: " move to next error
init.vim:294:: 
init.vim:295:: " Bash like keys for the command line
init.vim:296:: cnoremap <C-A>      <Home>
init.vim:297:: cnoremap <C-E>      <End>
init.vim:298:: cnoremap <C-K>      <C-U>
init.vim:299:: 
init.vim:300:: " ,p toggles paste mode
init.vim:301:: " nmap <leader>p :set paste!<BAR>set paste?<CR>
init.vim:302:: 
init.vim:303:: " allow multiple indentation/deindentation in visual mode
init.vim:304:: vnoremap < <gv
init.vim:305:: vnoremap > >gv
init.vim:306:: 
init.vim:307:: " :cd
init.vim:307::+++change working directory to that of the current file
init.vim:308:: cmap cd
init.vim:308::+++lcd %:p:h
init.vim:309:: autocmd Filetype tex setlocal wrapmargin=0
init.vim:310:: " use syntax complete if nothing else available
init.vim:311:: if has("autocmd") && exists("+omnifunc")
init.vim:312::   autocmd Filetype *
init.vim:313::               	if &omnifunc == "" |
init.vim:314::               		setlocal omnifunc=syntaxcomplete#Complete |
init.vim:315::               	endif
init.vim:316:: endif
init.vim:317:: 
init.vim:318:: set cot-=preview "disable doc preview in omnicomplete
init.vim:319:: 
init.vim:320:: " make CSS omnicompletion work for SASS and SCSS
init.vim:321:: " autocmd BufNewFile,BufRead *.scss             set ft=scss.css
init.vim:322:: " autocmd BufNewFile,BufRead *.sass             set ft=sass.css
init.vim:323:: 
init.vim:324:: "--------------------------------------------------------------------------- 
init.vim:325:: " ENCODING SETTINGS
init.vim:326:: "--------------------------------------------------------------------------- 
init.vim:327:: set encoding=utf-8                                  
init.vim:328:: set termencoding=utf-8
init.vim:329:: set fileencoding=utf-8
init.vim:330:: 
init.vim:331:: "maps remaps mappings  
init.vim:332:: "
init.vim:333:: " terminal stuff 
init.vim:334:: autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
init.vim:335:: tnoremap <m-d> <C-><C-n>:bdelete!<cr>
init.vim:336:: tnoremap <A-`> <C-><C-n>
init.vim:337:: tnoremap <A-Esc> <C-><C-n>
init.vim:338:: nmap <A-S-t> :te<cr>
init.vim:339:: " other mappings 
init.vim:340:: vnoremap <Leader>U ""y:%s/<C-r>"
init.vim:341:: noremap <leader>r :w<cr>:e<cr> 
init.vim:342:: " inoremap 
init.vim:342::+++.<esc>:w<cr>a
init.vim:343:: noremap <leader>hh :set tw=50<cr>
init.vim:344:: noremap <leader>w :set tw=0<cr> 
init.vim:345:: map q :q<cr>
init.vim:346:: noremap <leader>q q
init.vim:347:: nmap <m-7> :ZenMode<cr>:mksession!<cr>
init.vim:348:: nnoremap <leader>rr :w<cr>:source $MYVIMRC<CR>
init.vim:349:: nnoremap <leader>u :lua require("true-zen.ataraxis") .off()<cr>:UndotreeToggle<CR>
init.vim:350:: nnoremap <leader>e :silent execute "!echo " 
init.vim:350::+++v:servername 
init.vim:350::+++' > C:/Users/yasha/servername.txt'<cr>:silent te pwsh -c lf<cr>i
init.vim:351:: nnoremap <leader>tt :FloatermToggle<cr>
init.vim:352:: nnoremap <leader>t :silent execute "!echo " 
init.vim:352::+++v:servername 
init.vim:352::+++' > C:/Users/yasha/servername.txt'<cr>:edit term://pwsh<cr>
init.vim:353:: nnoremap <c-,> :cprevious<cr>
init.vim:354:: nnoremap <c-.> :cnext<cr> 
init.vim:355:: vnoremap <m-s> :s///gc<left><left><left><left>
init.vim:356:: inoremap <m-s> <esc>:%s///gc<left><left><left><left>
init.vim:357:: nnoremap <m-s> :%s///gc<left><left><left><left>
init.vim:358:: vmap <M-.> t.<CR>h
init.vim:359:: nmap <M-.> t.<CR>h
init.vim:360:: nnoremap <up> 1<C-U>
init.vim:361:: imap <up> <nop>
init.vim:362:: nnoremap <down> 1<C-D>
init.vim:363:: imap <down> <nop>
init.vim:364:: noremap <ScrollWheelUp>      <nop>
init.vim:365:: noremap <S-ScrollWheelUp>    <nop>
init.vim:366:: noremap <C-ScrollWheelUp>    <nop>
init.vim:367:: noremap <ScrollWheelDown>    <nop>
init.vim:368:: noremap <S-ScrollWheelDown>  <nop>
init.vim:369:: noremap <C-ScrollWheelDown>  <nop>
init.vim:370:: noremap <ScrollWheelLeft>    <nop>
init.vim:371:: noremap <S-ScrollWheelLeft>  <nop>
init.vim:372:: noremap <C-ScrollWheelLeft>  <nop>
init.vim:373:: noremap <ScrollWheelRight>   <nop>
init.vim:374:: noremap <S-ScrollWheelRight> <nop>
init.vim:375:: noremap <C-ScrollWheelRight> <nop>
init.vim:376:: inoremap  /
init.vim:377:: inoremap / 
init.vim:378:: 
init.vim:379:: " Movement
init.vim:380:: inoremap <m-d> <C-w>
init.vim:381:: noremap W /$<CR>
init.vim:382:: noremap B ?$<CR>
init.vim:383:: noremap <m-w>m /$<CR>
init.vim:384:: noremap <m-b>m ?$<CR>
init.vim:385:: noremap <m-w>o /(|)<CR>
init.vim:386:: noremap <m-b>o /(|)<CR>
init.vim:387:: noremap <m-w>b /{|<CR>
init.vim:388:: noremap <m-b>b ?{|<CR>
init.vim:389:: noremap <m-w>w /{|<CR>
init.vim:390:: noremap <m-b>w ?{|<CR>
init.vim:391:: noremap <m-w>c /[|]<CR>
init.vim:392:: noremap <m-b>c ?[|]<CR>
init.vim:393:: " noremap <m-w> /{|<CR>
init.vim:394:: " noremap <m-b> ?{|<CR>
init.vim:395:: " noremap <m-W> /(|)<CR>
init.vim:396:: " noremap <m-B> ?(|)<CR>
init.vim:397:: 
init.vim:398:: 
init.vim:399:: " copy paste stuff 
init.vim:400:: " 
init.vim:401:: vnoremap p "_dP
init.vim:402:: inoremap <C-p> <C-r>"+
init.vim:403:: " noremap D "0D:wa<cr>
init.vim:404:: noremap d "_d
init.vim:405:: nnoremap dd "_dd
init.vim:406:: noremap c "_c
init.vim:407:: noremap c "_c
init.vim:408:: noremap s "_s
init.vim:409:: noremap C "_C
init.vim:410:: noremap x "_x
init.vim:411:: vnoremap x "+x
init.vim:412:: vnoremap d "_d
init.vim:413:: vnoremap c "_c
init.vim:414:: vnoremap y "+y
init.vim:415:: nnoremap y "+y
init.vim:416:: nnoremap p "+p
init.vim:417:: nnoremap <leader>q q
init.vim:418:: " map cr
init.vim:419:: inoremap <cr> <esc>$a<cr><space><esc>"_s
init.vim:420:: inoremap <m-cr> <cr><space><esc>"_s
init.vim:421:: 
init.vim:422:: " Softwrap  
init.vim:423:: 
init.vim:424:: nmap D "0dg$
init.vim:425:: nmap V vg$
init.vim:426:: nmap A g$a
init.vim:427:: map 0 g^
init.vim:428:: map 9 g$
init.vim:429:: nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira Code:h18<cr>:set columns=100<cr>
init.vim:430:: nnoremap <c-l> :bnext<CR>
init.vim:431:: nnoremap <c-h> :bprevious<CR>
init.vim:432:: " tnoremap <Esc> <C-> 
init.vim:433:: " nnoremap < :tabp<CR>
init.vim:434:: " nnoremap > :tabn<CR>
init.vim:435:: " nnoremap <leader>n :tabedit %<CR>
init.vim:436:: imap <M-j> <C-j>
init.vim:437:: " map <M-m> <cmd>HopChar1<cr>$
init.vim:438:: " map <S-b> ?$<CR>
init.vim:439:: map q: nop
init.vim:440:: map <S-C-q> <Esc>:qa!<CR>
init.vim:441:: map <m-q> <esc>:wq<cr>
init.vim:442:: map <m-Q> <esc>:q<cr>
init.vim:443:: map <m-c> :close<cr>
init.vim:444:: map <m-d> <Esc>:w<CR>:bdelete<CR>
init.vim:445:: map <m-D> :bdelete!<CR>
init.vim:446:: noremap gf gq
init.vim:447:: noremap f /
init.vim:448:: noremap F ?
init.vim:449:: noremap # /$<CR>v?$<CR>
init.vim:450:: noremap $ /$<CR>gev?$<CR>l
init.vim:451:: noremap 
/<CR>v?{<CR>
init.vim:452:: map j gj
init.vim:453:: map k gk
init.vim:454:: noremap <Space> 
 init.vim:455:: vnoremap <Space> t <cr>
init.vim:456:: map K <C-u>
init.vim:457:: map J <C-d>
init.vim:458:: " map <C-j> zz
init.vim:459:: " map <C-k> zb
init.vim:460:: map <C-j> <C-e>jj
init.vim:461:: map <C-k> <C-y>kk
init.vim:462:: nnoremap <leader>j J
init.vim:463:: nnoremap <leader>k K
init.vim:464:: map ' "
init.vim:465:: nnoremap <Backspace> i<Backspace><Esc>
init.vim:466:: nmap <leader>c gc
init.vim:467:: noremap <A-r> <C-r>
init.vim:468:: nnoremap ` ~
init.vim:469:: nnoremap 
init.vim:469::+++`
init.vim:470:: noremap <m-1> <C-o>
init.vim:471:: noremap <m-2> <C-i>
init.vim:472:: inoremap <m-d> <C-d>
init.vim:473:: noremap ;w <Esc>:w<CR>
init.vim:474:: noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
init.vim:475:: noremap <D-u> <C-u>
init.vim:476:: noremap <A-u> <C-u>
init.vim:477:: " windows stuff, comment out on windows
init.vim:478:: " nnoremap ;ww :%s///gc
init.vim:479:: " this mapping Enter key to <C-y> to chose the current highlight item 
init.vim:480:: " and close he selection list, same as other IDEs
 init.vim:481:: inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<C-g>u<CR>"
init.vim:482:: nnoremap <silent> <Leader>y :YRGetElem<CR>
init.vim:483:: map ' "
init.vim:484:: inoremap <D-]> <C-x><C-]>
init.vim:485:: inoremap <C-]> <C-x><C-]>
init.vim:486:: 
init.vim:487:: au FileType tex,text,md nmap 0 g^
init.vim:488:: au FileType tex,text,md noremap 9 g$
init.vim:489:: " au FileType tex,text,md nnoremap dd "_g^dg$g^
init.vim:490:: 
init.vim:491:: "Neovim mappings
init.vim:492:: " :tnoremap <S-h> <C-><C-n><C-w>h
init.vim:493:: " :tnoremap <S-j> <C-><C-n><C-w>j
init.vim:494:: " :tnoremap <S-k> <C-><C-n><C-w>k
init.vim:495:: " :tnoremap <S-l> <C-><C-n><C-w>l
init.vim:496:: " tnoremap <Left> :tbnext<CR>
init.vim:497:: " tnoremap <Right> :tbprevious<CR>
init.vim:498:: " tnoremap <Leader>e <C-><C-n> 
init.vim:499:: " imap <Backspace> 
init.vim:500:: " map t <Plug>Lightspeed_s
init.vim:501:: " map <C-t> <cmd>HopChar1
init.vim:502:: " map T <Plug>Lightspeed_S
init.vim:503:: " map <S-m-Space> <cmd>HopWord<cr>
init.vim:504:: " map t <ESC>:syntax off <CR>t: syntax on<CR>
init.vim:505:: 
init.vim:506:: " FZF 
init.vim:507:: let g:fzf_layout = { 'window': { 'width': 1, 'height': 1  
init.vim:508:: " let g:fzf_preview_window = []
init.vim:509:: noremap <m-t> :BTags<cr>
init.vim:510:: noremap S <cr>:call Sentence()<cr> 
init.vim:511:: "noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
init.vim:512:: " Line search mapping 
init.vim:513:: " function! Jumpback() 
init.vim:514:: "   K=bufname()
init.vim:515:: "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr>
init.vim:516:: " endfunction
init.vim:517:: noremap <m-b> <Esc>:Buffers<CR>
init.vim:518:: " noremap F <Esc>:GFiles<CR>
init.vim:519:: map <A-e> :FZF ~<CR> 
init.vim:520:: map <m-f> :FZF ~<CR> 
init.vim:521:: 
init.vim:522:: "miscellaneous
init.vim:523:: nmap <leader>g :TZAtaraxis<CR>
init.vim:524:: " nmap <leader>p :Denite neoyank -default-action=append<CR>
init.vim:525:: 
init.vim:526:: " Latex stuff
init.vim:527:: " 
init.vim:528:: noremap <leader>ss :w<cr>:source $MYVIMRC<cr> 
init.vim:529:: noremap <c-e> viwy:cclose<cr>:<c-r>+<cr><cr>
init.vim:530:: noremap <c-p> :<c-r>+<cr>
init.vim:531:: noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr><cr>
init.vim:532:: " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr>
init.vim:533:: 
init.vim:534:: "FZF Neoyank yank     
init.vim:535:: "
init.vim:536:: nnoremap <leader>y :FZFNeoyank<cr>
init.vim:537:: nnoremap <leader>Y :FZFNeoyank  P<cr>
init.vim:538:: vnoremap <leader>y :FZFNeoyankSelection<cr>
init.vim:539:: 
init.vim:540:: nnoremap <leader>p :FZFNeoyank +<cr> 
init.vim:541:: 
init.vim:542:: nnoremap <leader>1 :FZFNeoyank 1<cr>
init.vim:543:: nnoremap <leader>P :FZFNeoyank " P+<cr>
init.vim:544:: vnoremap <leader>p :FZFNeoyankSelection +<cr>
init.vim:545:: 
init.vim:546:: "Pounce
init.vim:547:: map t <Plug>(leap-forward)
init.vim:548:: map T <Plug>(leap-backward)
init.vim:549:: " " nmap S <cmd>PounceRepeat<CR>
init.vim:550:: " vmap t <cmd>Pounce<CR>
init.vim:551:: " omap gt <cmd>Pounce<CR>
init.vim:552:: " 's' is used by vim-surround
init.vim:553:: 
init.vim:554:: " Replace the default dictionary completion with fzf-based fuzzy completion
init.vim:555:: 
init.vim:556:: inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')  
init.vim:557:: 
init.vim:558:: 
init.vim:559:: "Functions
init.vim:560:: 
init.vim:561:: function Light()
init.vim:562:: set background=light
init.vim:563:: " colorscheme oceanlight 
init.vim:564:: colorscheme one 
init.vim:565:: " highlight Normal ctermfg=black
init.vim:566:: " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
init.vim:567:: " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
init.vim:568:: endfunction   
init.vim:569:: 
init.vim:570:: " function Light()
init.vim:571:: " set background=light
init.vim:572:: " " colorscheme oceanlight 
init.vim:573:: " colorscheme material 
init.vim:574:: " let g:material_style = 'lighter'  
init.vim:575:: "    " highlight Normal ctermfg=black
init.vim:576:: " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
init.vim:577:: " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
init.vim:578:: " endfunction   
init.vim:579:: function Bluemoon()
init.vim:580::    set background=dark
init.vim:581::    colorscheme blue-moon
init.vim:582::    " colorscheme material  
init.vim:583:: endfunction
init.vim:584:: 
init.vim:585:: function Deepocean()
init.vim:586::    set background=dark
init.vim:587::    colorscheme material  
init.vim:588::    let g:material_style = 'deep ocean'  
init.vim:589:: endfunction
init.vim:590:: 
init.vim:591:: function Palenight()
init.vim:592::    set background=dark
init.vim:593::    " colorscheme blue-moon
init.vim:594::    colorscheme material  
init.vim:595::    let g:material_style = 'palenight'  
init.vim:596:: endfunction
init.vim:597:: function Lighter()
init.vim:598::    set background=light
init.vim:599::    " colorscheme blue-moon
init.vim:600::    colorscheme material
init.vim:601::    let g:material_style = 'lighter'
init.vim:602:: endfunction
init.vim:603:: 
init.vim:604:: function Dark()
init.vim:605::    set background=dark
init.vim:606::    colorscheme one
init.vim:607:: endfunction
init.vim:608:: 
init.vim:609:: function! Profile()
init.vim:610:: profile start profile.log
init.vim:611:: profile func *
init.vim:612:: profile file *
init.vim:613:: endfunction
init.vim:614:: 
init.vim:615:: command! -bang -nargs=* BLinesB
init.vim:616::      call fzf#vim#grep(
init.vim:617::        'rg --with-filename --line-number --no-heading --smart-case 
init.vim:617::+++'.fnameescape(expand('%')),1,
init.vim:618::        fzf#vim#with_preview({'options': '--keep-right --layout reverse --query '.shellescape(<q-args>).' --preview "bat -p --color always {"', 'up:50%'))
init.vim:619:: 
init.vim:620:: " nnoremap H :LinesWithPreview<CR>
init.vim:621:: " command! -bang -nargs=* BLinesB
init.vim:622:: "      call fzf#vim#grep(
init.vim:623:: "        'rg --with-filename --column --line-number --no-heading --smart-case 
init.vim:623::+++'.fnameescape(expand('%:p')), 1,
init.vim:624:: "        fzf#vim#with_preview({'options': '--keep-right --delimiter : --nth 4.
init.vim:624::+++--preview "bat -p --color always {"', 'right:50%' ))
init.vim:625:: 
init.vim:626:: " command! -bang -nargs=* BLinesB
init.vim:627:: "       call fzf#vim#grep(
init.vim:628:: "         'rg --with-filename --column --line-number --no-heading --smart-case 
init.vim:628::+++'.fnameescape(expand('%:p')),,
init.vim:629:: " "        fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.
init.vim:629::+++--delimiter=":"', 'right:0%'))
init.vim:630::     "    fzf#vim#with_preview({'options': '--layout reverse  --with-nth=-1.
init.vim:630::+++--delimiter="/"', 'right:50%'))
init.vim:631::  function Sentence()
init.vim:632::   let g:buf = bufname()
init.vim:633::   " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
init.vim:634::   silent execute "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu %" 
init.vim:635::   caddf @_%
init.vim:636::   copen
init.vim:637::   " let b:paste = system('pwsh -c Get-Clipboard')
init.vim:638::   " call feedkeys(":BLinesB <c-r>+<cr>")
init.vim:639::   call feedkeys("zf")
init.vim:640:: endfunction
init.vim:641:: 
init.vim:642:: function SentenceLL()
init.vim:643::   let g:buf = bufname()
init.vim:644::   " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
init.vim:645::   silent execute "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu %" 
init.vim:646::   e @_%
init.vim:647::   " let b:paste = system('pwsh -c Get-Clipboard')
init.vim:648::   call feedkeys(":BLinesB <c-r>+<cr>")
init.vim:649:: endfunction
init.vim:650:: noremap LL :lua require("true-zen.ataraxis") .on()<cr>:lua require("true-zen.ataraxis") .off()<cr>:call SentenceLL()<cr>
init.vim:651:: " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr>
init.vim:652:: function GitAsync()
init.vim:653:: silent execute "!echo " 
init.vim:653::+++v:servername 
init.vim:653::+++' > ~/servername.txt'
init.vim:654:: let g:bufdude = bufname()
init.vim:655:: silent te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add 
init.vim:655::+++; git commit -m -a; git push --all origin; ctags -R 
init.vim:656:: execute "buffer" g:bufdude
init.vim:657:: endfunction
init.vim:658::   
init.vim:659:: " " AsyncRun -silent if git rev-parse --is-inside-work-"tree 
init.vim:660:: "|| git rev- parse --git-dir > /dev/null 2>&1 ; then git "add 
init.vim:661:: "
init.vim:661::+++; git commit -m -a ; git push --all origin; "fi  */
init.vim:662:: " te if ( (git rev-parse --is-inside-work-tree) -and (git 
init.vim:663:: "rev-parse --git-dir) ) { git add 
init.vim:663::+++; git commit -m -a ; "git push --all origin  */
init.vim:664:: " endfunction */
init.vim:665:: 
init.vim:666:: function ToggleQuickFix()
init.vim:667::       if empty(filter(getwininfo(), 'v:val.quickfix'))
init.vim:668::       exec "w"
init.vim:669::         echo bufname()
init.vim:670::         lua require("true-zen.ataraxis") .off()
init.vim:671::         " lua require("zen-mode").close()
init.vim:672::         echo bufname()
init.vim:673::         let b:filenamedir=expand('%:p:h')
init.vim:674::         echo b:filenamedir
init.vim:675::         let b:filename=expand('%:t:r')
init.vim:676::         let b:errors=b:filenamedir 
init.vim:676::+++"/build/" 
init.vim:676::+++b:filename .".log"
init.vim:677::         echo b:errors
init.vim:678::         exec "caddf" b:errors
init.vim:679::         copen
init.vim:680::         sleep 1
init.vim:681::         exec "wincmd j"
init.vim:682::         exec "/error"
init.vim:683::     else
init.vim:684::         exec "cclose"
init.vim:685::         sleep 1
init.vim:686::         endif
init.vim:687:: endfunction
init.vim:688:: 
init.vim:689:: nnoremap <leader>s :silent call ToggleQuickFix()<CR>
init.vim:690:: function! ClearLatex()
init.vim:691::   silent !rm ./build/* 
init.vim:692:: endfunction 
init.vim:693:: 
init.vim:694:: function! CompileLatex()
init.vim:695::   " silent call ClearLatex()
init.vim:696::   let buf=bufname()
init.vim:697::   silent te pwsh -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -output-directory="build" %
init.vim:698::   execute "buffer" buf
init.vim:699::   call ViewPdf()
init.vim:700:: endfunction
init.vim:701:: 
init.vim:702:: function! ViewPdf() 
init.vim:703:: wa
init.vim:704:: let g:buffmain=bufname()
init.vim:705:: silent execute "!echo " 
init.vim:705::+++v:servername 
init.vim:705::+++' > C:/Users/yasha/servername.txt'
init.vim:706:: let buf=bufname()
init.vim:707:: let linenumber=line(".")
init.vim:708:: let colnumber=col(".")
init.vim:709:: let b:filenamedir=expand('%:p:h')
init.vim:710:: let filenametex=expand('%:p:t')
init.vim:711:: let filenametexwhole=expand('%:p')
init.vim:712:: let filenameroot=expand('%:t:r')
init.vim:713:: " let filenamePDF=filename[:-4]."pdf"
init.vim:714:: let filenamePDFLinux=b:filenamedir 
init.vim:714::+++"/buildback/" 
init.vim:714::+++filenameroot 
init.vim:714::+++".pdf"
init.vim:715:: let b:filenamePDFWindows="build" 
init.vim:715::+++filenameroot 
init.vim:715::+++".pdf"
init.vim:716:: " echo b:filenamePDFWindows
init.vim:717:: let execstrLinux="silent te zathura --synctex-forward " 
init.vim:717::+++linenumber 
init.vim:717::+++":" 
init.vim:717::+++colnumber 
init.vim:717::+++":" 
init.vim:717::+++filenametexwhole 
init.vim:717::+++" " 
init.vim:717::+++filenamePDFLinux
init.vim:718:: let execstrWindows="silent te pwsh -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " 
init.vim:718::+++b:filenamePDFWindows 
init.vim:718::+++" -forward-search " 
init.vim:718::+++filenametex 
init.vim:718::+++" " 
init.vim:718::+++linenumber
init.vim:719:: exec execstrWindows
init.vim:720:: execute "buffer" buf
init.vim:721:: endfunction
init.vim:722:: nmap <leader>v :call ViewPdf()<cr><cr>
init.vim:723:: map <m-v> <esc>:call ViewPdf()<cr><cr>
init.vim:724:: 
init.vim:725:: " nmap <leader>v :VimtexView<cr>
init.vim:726:: " let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
init.vim:727:: nmap <leader>ll :call CompileLatex()<cr>
init.vim:728:: nmap <leader>cl :call ClearLatex()<cr>
init.vim:729:: " nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --webtex -o backup.html;  cp backup.html %<cr>:e %<cr>
init.vim:730:: 
init.vim:731:: " nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --mathjax[=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js] -o backup.html;  cp backup.html %<cr>:e %<cr>:w<cr>:qa<cr> 
init.vim:732:: "" mathml shenanigans
init.vim:733:: 
init.vim:734:: nmap <leader>m :w<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:w<cr>:qa<cr>
init.vim:735:: 
init.vim:736:: 
init.vim:737:: 
init.vim:738:: 
init.vim:739:: 
init.vim:740:: 
init.vim:741:: "Autosave and autocommit   
init.vim:742:: " let g:updatetime = 10000
init.vim:743:: let g:auto_save = 0
init.vim:744:: " .vimrc
init.vim:745:: let g:auto_save_events = ["CursorHold"]
init.vim:746:: "au FileType vim let g:autosave = 0
init.vim:747:: let g:auto_save_in_insert_mode = 0
init.vim:748:: let g:auto_save_silent = 1
init.vim:749:: 
init.vim:750:: "Git autocommit  (private git repo)
init.vim:751:: autocmd BufWritePost * call GitAsync()
init.vim:752:: " vsnip stuff 
init.vim:753:: " Use <Tab> and <S-Tab> to navigate through popup menu
init.vim:754:: " inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
init.vim:755:: " inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"
init.vim:756:: 
init.vim:757:: " Set completeopt to have a better completion experience
init.vim:758:: set completeopt=menuone,noinsert,noselect
init.vim:759:: 
init.vim:760:: " Avoid showing message extra message when using completion
init.vim:761:: set shortmess+=c
init.vim:762:: let g:vsnip_snippet_dir = '~/dotfiles/snippets'  
init.vim:763:: 
init.vim:764:: " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
init.vim:765:: " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
init.vim:766:: " 
init.vim:767:: " " Expand or jump
init.vim:768:: " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
init.vim:769:: " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
init.vim:770:: 
init.vim:771:: " Jump forward or backward
init.vim:772:: imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
init.vim:773::   smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
init.vim:774:: imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
init.vim:775:: smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
init.vim:776:: 
init.vim:777:: "
init.vim:778:: " set foldexpr=nvim_treesitter#foldexpr()
init.vim:779:: "
init.vim:780:: 
init.vim:781:: lua <<EOF
init.vim:782:: require("nvim-lsp-installer").setup {
init.vim:783::     local lspconfig = require("lspconfig")
init.vim:784:: 
init.vim:785::     local function on_attach(client, bufnr)
init.vim:786::         -- set up buffer keymaps, etc
 init.vim:787::     end
init.vim:788:: 
init.vim:789::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
init.vim:790::     lspconfig.tsserver.setup { on_attach = on_attach 
init.vim:791::     lspconfig.vimls.setup { on_attach = on_attach 
init.vim:792::     lspconfig.ltex.setup { on_attach = on_attach 
init.vim:793::     lspconfig.texlab.setup { on_attach = on_attach 
init.vim:794:: EOF
init.vim:795:: lua << EOF
init.vim:796:: local nvim_lsp = require('lspconfig')
init.vim:797:: -- Use an on_attach function to only map the following keys
init.vim:798:: -- after the language server attaches to the current buffer
init.vim:799:: local on_attach = function(client, bufnr)
init.vim:800:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
init.vim:801::  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
init.vim:802:: -- Enable completion triggered by <c-x><c-o>
init.vim:803::   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
init.vim:804:: 
init.vim:805::   -- Mappings
 init.vim:806::   local opts = { noremap=true, silent=true 
init.vim:807:: 
init.vim:808::   -- See `:help vim.lsp.*` for documentation on any of the below functions
init.vim:809::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
init.vim:810::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
init.vim:811::   --buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
init.vim:812::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
init.vim:813::   buf_set_keymap('n', '<S-C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
init.vim:814::   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
init.vim:815::   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
init.vim:816::   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
init.vim:817::   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
init.vim:818::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
init.vim:819::   buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
init.vim:820::   --buf_set_keymap('n', 'lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
init.vim:821::   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
init.vim:822::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
init.vim:823::   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
init.vim:824::   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
init.vim:825::   buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
init.vim:826:: 
init.vim:827:: end
init.vim:828:: EOF
init.vim:829:: nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
init.vim:830:: "Lsp instal 
init.vim:831:: "
init.vim:832:: " inoremap <cr> <cr> <backspace>
init.vim:833:: 
init.vim:834:: set completeopt=menu,menuone,noselect
init.vim:835:: 
init.vim:836:: lua <<EOF
init.vim:837::   -- Setup cmp
 init.vim:838:: 
init.vim:839:: local has_words_before = function()
init.vim:840::   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
init.vim:841::     return false
init.vim:842::   end
init.vim:843::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
init.vim:844::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
init.vim:845:: end
init.vim:846:: 
init.vim:847:: local feedkey = function(key, mode)
init.vim:848::   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
init.vim:849:: end
init.vim:850:: 
init.vim:851:: local cmp = require'cmp'
init.vim:852:: cmp.setup ({
init.vim:853:: snippet = {
init.vim:854::       expand = function(args)
init.vim:855::         -- For `vsnip` user
 init.vim:856::         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user
 init.vim:857::   -- ..
init.vim:857::+++Your other configuration ..
 init.vim:858:: end,
init.vim:859:: ,
init.vim:860:: 
init.vim:861:: mapping = cmp.mapping.preset.insert({
init.vim:862::         ["<C-p>"] = cmp.mapping.select_prev_item(),
init.vim:863::         ["<C-n>"] = cmp.mapping.select_next_item(),
init.vim:864::        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
init.vim:865::       ['<C-f>'] = cmp.mapping.scroll_docs(4),
init.vim:866::       ['<C-x>'] = cmp.mapping.complete(),
init.vim:867::       ['<C-e>'] = cmp.mapping.close(),
init.vim:868::       ['<CR>'] = cmp.mapping.confirm({ select = true ),
init.vim:869:: -- ..
init.vim:869::+++Your other mappings ..
 init.vim:870:: ["<Tab>"] = cmp.mapping(function(fallback) 
init.vim:871::       if vim.fn["vsnip#expandable"]() == 1
init.vim:872::         then
init.vim:873::         feedkey("<Plug>(vsnip-expand)", "")
init.vim:874::      elseif cmp.visible() then
init.vim:875::         cmp.select_next_item()
init.vim:876::       elseif has_words_before() then 
init.vim:877::         cmp.complete()
init.vim:878::       else 
init.vim:879::         fallback() -- The fallback function sends a already mapped key
init.vim:879::+++In this case, it's probably `<Tab>`
 init.vim:880::       end
init.vim:881::     end, { "i", "s" ),
init.vim:882:: ["<S-Tab>"] = cmp.mapping(function()
init.vim:883::       if vim.fn.pumvisible() == 1 then
init.vim:884::         feedkey("<C-p>", "n")  
init.vim:885::       elseif vim.fn["vsnip#jumpable"](-1) == 1 then
init.vim:886::         feedkey("<Plug>(vsnip-jump-prev)", "")
init.vim:887::       end
init.vim:888::     end, { "i", "s" ),
init.vim:889:: ),
init.vim:890:: requires = {
init.vim:891::     {
init.vim:892::       'tzachar/fuzzy.nvim',
init.vim:893::       'quangnguyen30192/cmp-nvim-tags',
init.vim:894::       -- if you want the sources is available for some file types
init.vim:895::       ft = {
init.vim:896::         'tex',
init.vim:897::         'latex' 
init.vim:898::       
init.vim:899::     
init.vim:900::     ,
init.vim:901:: -- ..
init.vim:901::+++Your other configuration ..
 init.vim:902:: sources = cmp.config.sources({
init.vim:903::       -- For vsnip user

init.vim:904:: { name = 'vsnip', keyword_length = 1000 ,
init.vim:905:: { name = 'tags' ,
init.vim:906:: { name = 'nvim_lsp', keyword_length = 4 ,
init.vim:907:: -- For ultisnips user
 init.vim:908::       -- { name = 'ultisnips' ,  
init.vim:909:: { name = 'omni', keyword_length = 4,
init.vim:910::        -- { name = 'spell' , 
init.vim:911::       --{ name = 'treesitter', keyword_length = 4 ,
init.vim:912:: { name = 'buffer', keyword_length = 4 
init.vim:913:: --{ name = 'fuzzy_buffer', keyword_length = 8 
init.vim:914:: ),
init.vim:915:: --completion = {
init.vim:916:: --    autocomplete = true
init.vim:917:: --    
init.vim:918:: )
init.vim:919:: EOF
init.vim:920:: " 
init.vim:921:: " " LSP mappings   
init.vim:922:: " "" LSP mappings 
init.vim:923:: noremap <leader>ca  :lua vim.lsp.buf.code_action()<CR>
init.vim:924:: noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
init.vim:925:: " 
init.vim:926:: " 
init.vim:927:: lua <<EOF
init.vim:928::  require('nvim_comment').setup(
init.vim:929:: {
init.vim:930::    -- Linters prefer comment and line to have a space in between markers
init.vim:931::    marker_padding = true,
init.vim:932::    -- should comment out empty or whitespace only lines
init.vim:933::    comment_empty = true,
init.vim:934::    -- Should key mappings be created
init.vim:935::    create_mappings = true,
init.vim:936::    -- Normal mode mapping left hand side
init.vim:937::    line_mapping = "gc",
init.vim:938::    -- Visual/Operator mapping left hand side
init.vim:939::    operator_mapping = "<leader>c",
init.vim:940::    -- Hook function to call before commenting takes place
init.vim:941::    --hook = nil 
init.vim:942::  
init.vim:943::  )
init.vim:944:: EOF
init.vim:945:: nmap <leader>c gc
init.vim:946:: lua <<EOF
init.vim:947:: local true_zen = require("true-zen")
init.vim:948:: true_zen.setup({
init.vim:949::  	ui = {
init.vim:950::  		bottom = {
init.vim:951::  			laststatus = 0,
init.vim:952::  			ruler = false,
init.vim:953::  			showmode = false,
init.vim:954::  			showcmd = false,
init.vim:955::  			cmdheight = 1,
init.vim:956::  		,
init.vim:957::  		top = {
init.vim:958::  			showtabline = 0,
init.vim:959::  		,
init.vim:960::  		left = {
init.vim:961::  			number = false,
init.vim:962::  			relativenumber = false,
init.vim:963::  			signcolumn = "no",
init.vim:964::  		,
init.vim:965::  	,
init.vim:966::  	modes = {
init.vim:967::  		ataraxis = {
init.vim:968::  			-- left_padding = 20,
init.vim:969::  			-- right_padding = 20,
init.vim:970::  			top_padding = 0,
init.vim:971::  			bottom_padding = 0,
init.vim:972::  			ideal_writing_area_width = {60,
init.vim:973::  			auto_padding = true,
init.vim:974::  			keep_default_fold_fillchars = true,
init.vim:975::  			custom_bg = {"none", "",
init.vim:976::  			bg_configuration = true,
init.vim:977::  			quit = "untoggle",
init.vim:978::  			ignore_floating_windows = true,
init.vim:979::  			affected_higroups = {
init.vim:980::  				NonText = true,
init.vim:981::  				FoldColumn = true,
init.vim:982::  				ColorColumn = true,
init.vim:983::  				VertSplit = true,
init.vim:984::  				StatusLine = true,
init.vim:985::  				StatusLineNC = true,
init.vim:986::  				SignColumn = true,
init.vim:987::  			,
init.vim:988::  		,
init.vim:989::  		focus = {
init.vim:990::  			margin_of_error = 5,
init.vim:991::  			focus_method = "experimental"
init.vim:992::  		,
init.vim:993::  	,
init.vim:994::  	integrations = {
init.vim:995::  		vim_gitgutter = false,
init.vim:996::  		galaxyline = false,
init.vim:997::  		tmux = false,
init.vim:998::  		gitsigns = false,
init.vim:999::  		nvim_bufferline = false,
init.vim:1000::  		limelight = false,
init.vim:1001::  		twilight = false,
init.vim:1002::  		vim_airline = false,
init.vim:1003::  		vim_powerline = false,
init.vim:1004::  		vim_signify = false,
init.vim:1005::  		express_line = false,
init.vim:1006::  		lualine = false,
init.vim:1007::  		lightline = false,
init.vim:1008::  		feline = false,
init.vim:1009::  	,
init.vim:1010::  	misc = {
init.vim:1011::  		on_off_commands = true,
init.vim:1012::  		ui_elements_commands = false,
init.vim:1013::  		cursor_by_mode = false,
init.vim:1014::  	
init.vim:1015::  )
init.vim:1016:: EOF
init.vim:1017:: lua <<EOF
init.vim:1018:: require('feline').setup({
init.vim:1019::     preset = 'noicon'
init.vim:1020::     )
init.vim:1021:: EOF
init.vim:1022:: " 
init.vim:1023:: " 
init.vim:1024:: " 
init.vim:1025:: " " lua <<EOF
init.vim:1026:: " " require('lualine').setup{
init.vim:1027:: " " options = {disabled_filetypes = {'txt', 'text'
init.vim:1028:: " " 
init.vim:1029:: " " EOF
init.vim:1030:: " lua << EOF
init.vim:1031:: "   require("zen-mode").setup {
init.vim:1032:: "   window = {
init.vim:1033:: "     backdrop = 1, -- shade the backdrop of the Zen window
init.vim:1033::+++Set to 1 to keep the same as Normal
init.vim:1034:: "     -- height and width can be:
init.vim:1035:: "     -- * an absolute number of cells when > 1
init.vim:1036:: "     -- * a percentage of the width / height of the editor when <= 1
init.vim:1037:: "     -- * a function that returns the width or the height
init.vim:1038:: "     width = .66, -- width of the Zen window
init.vim:1039:: "     height = 1, -- height of the Zen window
init.vim:1040:: "     -- by default, no options are changed for the Zen window
init.vim:1041:: "     -- uncomment any of the options below, or add other vim.wo options you want to apply
init.vim:1042:: "     options = {
init.vim:1043:: "       -- signcolumn = "no", -- disable signcolumn
init.vim:1044:: "       -- number = false, -- disable number column
init.vim:1045:: "       -- relativenumber = false, -- disable relative numbers
init.vim:1046:: "       -- cursorline = false, -- disable cursorline
init.vim:1047:: "       -- cursorcolumn = false, -- disable cursor column
init.vim:1048:: "       -- foldcolumn = "0", -- disable fold column
init.vim:1049:: "       -- list = false, -- disable whitespace characters
init.vim:1050:: "     ,
init.vim:1051:: "   ,
init.vim:1052:: "   plugins = {
init.vim:1053:: "     -- disable some global vim options (vim.o...)
init.vim:1054:: "     -- comment the lines to not apply the options
init.vim:1055:: "     options = {
init.vim:1056:: "       enabled = true,
init.vim:1057:: "       ruler = false, -- disables the ruler text in the cmd line area
init.vim:1058:: "       showcmd = false, -- disables the command in the last line of the screen
init.vim:1059:: "     ,
init.vim:1060:: "     twilight = { enabled = false , -- enable to start Twilight when zen mode opens
init.vim:1061:: "     gitsigns = { enabled = false , -- disables git signs
init.vim:1062:: "     tmux = { enabled = false , -- disables the tmux statusline
init.vim:1063:: "     -- this will change the font size on kitty when in zen mode
init.vim:1064:: "     -- to make this work, you need to set the following kitty options:
init.vim:1065:: "     -- - allow_remote_control socket-only
init.vim:1066:: "     -- - listen_on unix:/tmp/kitty
init.vim:1067:: "     kitty = {
init.vim:1068:: "       enabled = false,
init.vim:1069:: "       font = "+4", -- font size increment
init.vim:1070:: "     ,
init.vim:1071:: "   ,
init.vim:1072:: "   -- callback where you can add custom code when the Zen window opens
init.vim:1073:: "   on_open = function(win)
init.vim:1074:: "   end,
init.vim:1075:: "   -- callback where you can add custom code when the Zen window closes
init.vim:1076:: "   on_close = function()
init.vim:1077:: "   end,
init.vim:1078:: " 
init.vim:1079:: " EOF
init.vim:1080:: " lua <<EOF
init.vim:1081:: " require('telescope').setup{
init.vim:1082:: "   defaults = {
init.vim:1083:: "     -- Default configuration for telescope goes here:
init.vim:1084:: "     -- config_key = value,
init.vim:1085:: "     mappings = {
init.vim:1086:: "       i = {
init.vim:1087:: "         -- map actions.which_key to <C-h> (default: <C-/>)
init.vim:1088:: "         -- actions.which_key shows the mappings for your picker,
init.vim:1089:: "         -- e.g
init.vim:1089::+++git_{create, delete, ..._branch for the git_branches picker
init.vim:1090:: "         ["<C-h>"] = "which_key"
init.vim:1091:: "       
init.vim:1092:: "     
init.vim:1093:: "   ,
init.vim:1094:: "   pickers = {
init.vim:1095:: "     -- Default configuration for builtin pickers goes here:
init.vim:1096:: "     -- picker_name = {
init.vim:1097:: "     --   picker_config_key = value,
init.vim:1098:: "     --   ..
 init.vim:1099:: "     -- 
init.vim:1100:: "     -- Now the picker_config_key will be applied every time you call this
init.vim:1101:: "     -- builtin picker 
init.vim:1102:: "   ,
init.vim:1103:: "   extensions = {
init.vim:1104:: "     -- Your extension configuration goes here:
init.vim:1105:: "     -- extension_name = {
init.vim:1106:: "     --   extension_config_key = value,
init.vim:1107:: "     -- 
init.vim:1108:: "     -- please take a look at the readme of the extension you want to configure
init.vim:1109:: "   
init.vim:1110:: "  
init.vim:1111:: 
init.vim:1112:: " " EOF
init.vim:1113:: " lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5  
init.vim:1114:: " lua <<EOF
init.vim:1115:: " require('fm-nvim').setup{
init.vim:1116:: " 	config =
init.vim:1117:: " 	{
init.vim:1118:: " 		edit_cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc..
 init.vim:1119:: " 		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow'
init.vim:1120:: " 		height   = .9,
init.vim:1121:: " 		width    = .9,
init.vim:1122:: "                
init.vim:1123:: "           
init.vim:1124:: "           	-- Mappings used with the plugin
init.vim:1125:: " 	mappings = {
init.vim:1126:: " 		vert_split = "<C-v>",
init.vim:1127:: " 		horz_split = "<C-h>",
init.vim:1128:: " 		tabedit    = "<C-t>",
init.vim:1129:: " 		edit       = "<C-e>",
init.vim:1130:: " 		ESC        = "<ESC>"
init.vim:1131:: " 	,
init.vim:1132:: " 
init.vim:1133:: " EOF
init.vim:1134:: " lua <<EOF
init.vim:1135:: " require("telescope").load_extension("prosesitter") -- Optionally, depends on telescope.nvim
init.vim:1136:: " require("prosesitter"):setup({
init.vim:1137:: " 	vale_bin = vim.fn.stdpath("data") .
init.vim:1137::+++"/prosesitter/vale",
init.vim:1138:: " 	vale_cfg = vim.fn.stdpath("data") .
init.vim:1138::+++"/prosesitter/vale_cfg.ini",
init.vim:1139:: " 	--optional extra queries overrides existing queries
init.vim:1140:: " 	queries = { 
init.vim:1141:: " 		-- see the piece on adding queries on how to use this 
init.vim:1142:: " 		-- (not needed if using an out of the box supported language
init.vim:1143:: " 		py = { 
init.vim:1144:: " 			strings = "[(string) ] @capture",
init.vim:1145:: " 			comments = "[(comment)+ ] @capture",
init.vim:1146:: " 		,
init.vim:1147:: " 	, 
init.vim:1148:: " 	-- highlight groups to use for lint errors, warnings and suggestions
init.vim:1149:: " 	--" severity_to_hl = { error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap" ,
init.vim:1150:: " 	-- weather to lint strings, comments or both for a language
init.vim:1151:: " 	lint_targets = { py = "both", tex = "strings", sh = "comments" , 
init.vim:1152:: " 	disabled_ext = { "tex" , -- do not ever lint tex files
init.vim:1153:: " 	auto_enable = false, -- do not start linting files on open (default = true)
init.vim:1154:: " 	default_cmds = false,  -- do not add commands (default = true)
init.vim:1155:: " )
init.vim:1156:: " EOF 
init.vim:1157:: "
init.vim:1158:: "
init.vim:1159:: lua <<EOF
init.vim:1160:: require('spellsitter').setup {
init.vim:1161::   hl = 'SpellBad', 
init.vim:1162::   captures = {,  -- set to { to spellcheck everything
init.vim:1163:: 
init.vim:1164::   -- Spellchecker to use
init.vim:1164::+++values:
init.vim:1165::   -- * vimfn: built-in spell checker using vim.fn.spellbadword()
init.vim:1166::   -- * ffi: built-in spell checker using the FFI to access the
init.vim:1167::   --   internal spell_check() function
init.vim:1168:: spellchecker = 'vimfn'
init.vim:1169:: 
init.vim:1170:: EOF
init.vim:1171:: lua <<EOF
init.vim:1172::     require'lightspeed'.setup { 
init.vim:1173::         jump_to_unique_chars = false,
init.vim:1174::         repeat_ft_with_target_char = true,
init.vim:1175::         safe_labels  = { "f", "n", "u", "/", "e", "z", "h", "k", "m", "l", "j", "w", "b", "S", "F", "N", "L", "H", "M", "U", "G", "T", "?", "Z" ,
init.vim:1176::         labels = { "s", "f", "n", "j", "k", "l", "h", "o", "d", "w", "e", "m", "b", "u", "y", "v", "r", "g", "c", "x", "/", "z", "S", "F", "N", "J", "K", "L", "H", "O", "D", "W", "E", "M", "B", "U", "Y", "V", "R", "G", "T", "C", "X", "?", "Z" 
init.vim:1177:: 
init.vim:1178:: EOF
init.vim:1179:: 
init.vim:1180:: let g:firenvim_config = { 
init.vim:1181::      'globalSettings': {
init.vim:1182::          'alt': 'all',
init.vim:1183::       ,
init.vim:1184::      'localSettings': {
init.vim:1185::          '.*': {
init.vim:1186::              'cmdline': 'neovim',
init.vim:1187::              'content': 'text',
init.vim:1188::              'priority': 0,
init.vim:1189::              'selector': 'textarea',
init.vim:1190::              'takeover': 'never',
init.vim:1191::          ,
init.vim:1192::      
init.vim:1193::  
init.vim:1194:: lua << EOF
init.vim:1195:: 
init.vim:1196:: require('fzf-lua').setup{
init.vim:1197:: -- ..
 init.vim:1198:: 
init.vim:1199:: EOF
init.vim:1200:: lua <<EOF
init.vim:1201:: -- ===========================================
init.vim:1202:: --  Add user dictionary for ltex-ls
init.vim:1203:: --  * en.utf-8.add must be created using `zg` when set spell is on
init.vim:1204:: -- ===========================================
init.vim:1205:: local path = vim.fn.stdpath 'config' .
init.vim:1205::+++'/spell/en.utf-8.add'
init.vim:1206:: local path = vim.fn.stdpath 'config' .
init.vim:1206::+++'/spell/es.utf-8.spl'
init.vim:1207:: local words = {
init.vim:1208:: 
init.vim:1209:: for word in io.open(path, 'r'):lines() do
init.vim:1210::   table.insert(words, word)
init.vim:1211:: end
init.vim:1212:: require'lspconfig'.ltex.setup{
init.vim:1213::   on_attach = on_attach,
init.vim:1214::   capabilities = capabilities,
init.vim:1215::   settings = {
init.vim:1216::     ltex = {
init.vim:1217::       disabledRules = {
init.vim:1218::         ['en-US'] = { 'PROFANITY' ,
init.vim:1219::         ['en-GB'] = { 'PROFANITY' ,
init.vim:1220::       ,
init.vim:1221::       language="en-US",
init.vim:1222::       dictionary = {
init.vim:1223::         ['en-US'] = words,
init.vim:1224::         ['en-GB'] = words,
init.vim:1225::         ['es'] = words,
init.vim:1226:: ,
init.vim:1227::     ,
init.vim:1228::   ,
init.vim:1229:: 
init.vim:1230:: EOF
init.vim:1231:: " lua <<EOF
init.vim:1232:: " require('neoscroll').setup{
init.vim:1233:: "     -- All these keys will be mapped to their corresponding default scrolling animation
init.vim:1234:: "     mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
init.vim:1235:: "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb',
init.vim:1236:: "     hide_cursor = true,          -- Hide cursor while scrolling
init.vim:1237:: "     stop_eof = true,             -- Stop at <EOF> when scrolling downwards
init.vim:1238:: "     use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
init.vim:1239:: "     respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
init.vim:1240:: "     cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
init.vim:1241:: "     easing_function = nil,        -- Default easing function
init.vim:1242:: "     pre_hook = nil,              -- Function to run before the scrolling animation starts
init.vim:1243:: "     post_hook = nil,              -- Function to run after the scrolling animation ends
init.vim:1244:: "     
init.vim:1245:: " EOF
init.vim:1246:: 
init.vim:1247:: 
init.vim:1248:: 
init.vim:1249:: 
init.vim:1250::  
init.vim:1251:: " lua << EOF
init.vim:1252:: " require("stabilize").setup(
init.vim:1253:: " {
init.vim:1254:: "       force = true, -- stabilize window even when current cursor position will be hidden behind new window
init.vim:1255:: " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark>
init.vim:1256:: " 	--ignore = {  -- do not manage windows matching these file/buftypes
init.vim:1257:: " --		filetype = { "help", "list", "Trouble" ,
init.vim:1258:: " --		buftype = { "terminal", "quickfix", -- "loclist" 
init.vim:1259:: " --	
init.vim:1260:: " 
init.vim:1261:: " )
init.vim:1262:: " EOF
init.vim:1263:: " lua <<EOF
init.vim:1264:: " require('dd').setup()
init.vim:1265:: " EOF
init.vim:1266:: " lua << EOF
init.vim:1267:: " local opts = {
init.vim:1268:: "   log_level = 'info',
init.vim:1269:: "   auto_session_enable_last_session = false,
init.vim:1270:: "   auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
init.vim:1271:: "   auto_session_enabled = false,
init.vim:1272:: "   auto_save_enabled = nil,
init.vim:1273:: "   auto_restore_enabled = nil,
init.vim:1274:: "   auto_session_suppress_dirs = nil
init.vim:1275:: " 
init.vim:1276:: " require('auto-session').setup(opts)
init.vim:1277:: " EOF
init.vim:1278:: 
init.vim:1279:: " lua << EOF
init.vim:1280:: " if exists('g:started_by_firenvim')
init.vim:1281:: "   ZenMode
init.vim:1282:: " else
init.vim:1283:: "   set laststatus=2
init.vim:1284:: " endif
init.vim:1285:: 
init.vim:1286:: " lua <<EOF
init.vim:1287:: " require('neoclip').setup({
init.vim:1288:: "       history = 1000,
init.vim:1289:: "       enable_persistant_history = false,
init.vim:1290:: "       db_path = vim.fn.stdpath("data") .
init.vim:1290::+++"/databases/neoclip.sqlite3",
init.vim:1291:: "       filter = nil,
init.vim:1292:: "       preview = true,
init.vim:1293:: "       default_register = '"',
init.vim:1294:: "       content_spec_column = false,
init.vim:1295:: "       on_paste = {
init.vim:1296:: "         set_reg = false,
init.vim:1297:: "       ,
init.vim:1298:: "       keys = {
init.vim:1299:: "         i = {
init.vim:1300:: "           select = '<cr>',
init.vim:1301:: "           paste = '<c-p>',
init.vim:1302:: "           paste_behind = '<c-k>',
init.vim:1303:: "           custom = {,
init.vim:1304:: "         ,
init.vim:1305:: "         n = {
init.vim:1306:: "           select = '<cr>',
init.vim:1307:: "           paste = 'p',
init.vim:1308:: "           paste_behind = 'P',
init.vim:1309:: "           custom = {,
init.vim:1310:: "         ,
init.vim:1311:: "       ,
init.vim:1312:: "    )
init.vim:1313:: " EOF
init.vim:1314:: " lua <<EOF
init.vim:1315:: " local saga = require 'lspsaga'{
init.vim:1316:: " saga.init_lsp_saga() 
init.vim:1317:: " 
init.vim:1318:: " EOF
init.vim:1319:: 
init.vim:1320:: "au FileType tex autocmd User SneakLeave set syntax=tex
init.vim:1321:: "au FileType tex autocmd User SneakEnter set syntax=text
init.vim:1322:: "
init.vim:1323:: "
init.vim:1324:: "
init.vim:1325:: 
init.vim:1326:: "
init.vim:1327:: " 'tCommen20
init.vim:1328:: " let g:tcommentMapLeaderOp1=';' 
init.vim:1329:: " "map <leader>c <Leader>__ 
init.vim:1330:: "" function! RestoreRegister()
init.vim:1331:: "   let @" = s:restore_reg
init.vim:1332:: "   return ''
init.vim:1333:: " endfunction
init.vim:1334:: " function! s:Repl()
init.vim:1335:: "     let s:restore_reg = @"
init.vim:1336:: "     return "p@=RestoreRegister()<cr>"
init.vim:1337:: " endfunction
init.vim:1338:: "
init.vim:1339:: " " NB: this supports "rp that replaces the selection by the contents of @r
init.vim:1340:: " vnoremap <silent> <expr> p <sid>Repl()
init.vim:1341:: 
init.vim:1342:: " " Change Color when entering
init.vim:1343:: " Insert Mode augroup CursorLine
init.vim:1344:: "    au!
init.vim:1345:: "  if has("gui_running")
init.vim:1346:: "  else
init.vim:1347:: "      au InsertEnter * setlocal cursorline
init.vim:1348:: "        au InsertLeave * setlocal nocursorline
init.vim:1349:: "     endif
init.vim:1350:: "        augroup END
init.vim:1351:: " function! DelTagOfFile(file)
init.vim:1352:: "   let fullpath = a:file
init.vim:1353:: "   let cwd = getcwd()
init.vim:1354:: "   let tagfilename = cwd 
init.vim:1354::+++"/"
init.vim:1355:: "   let f = substitute(fullpath, cwd 
init.vim:1355::+++"/", "", "")
init.vim:1356:: "   let f = escape(f, './')
init.vim:1357:: "   let cmd = 'sed -i "/' 
init.vim:1357::+++f 
init.vim:1357::+++'/d" "' 
init.vim:1357::+++tagfilename 
init.vim:1357::+++'"'
init.vim:1358:: "   let resp = system(cmd)
init.vim:1359:: " endfunction
init.vim:1360:: " function! Break()
init.vim:1361:: "  let n=130-virtcol('.')
init.vim:1362:: "  <Esc>ni <Esc><Esc>
init.vim:1363:: " endfunction
init.vim:1364:: " function Gitview()
init.vim:1365:: "    cd /root/web2 ; git add 
init.vim:1365::+++; git commit -m -a ; git push origin gh-pages
init.vim:1366:: " endfunction
init.vim:1367:: " fuzzy search
init.vim:1368:: " function! s:config_fuzzyall(...) abort
init.vim:1369:: "   return extend(copy({
init.vim:1370:: "      'converters': [
init.vim:1371:: "        incsearch#config#fuzzy#converter(),
init.vim:1372:: "        incsearch#config#fuzzyspell#converter()
init.vim:1373:: "      ],
init.vim:1374:: "    ), get(a:, 1, {
init.vim:1375:: "   ))
init.vim:1376:: " endfunction
init.vim:1377:: " noremap <silent><expr> f incsearch#go(<SID>config_fuzzyall())
init.vim:1378:: " noremap <silent><expr> F  incsearch#go(<SID>config_fuzzyall({'command': '?'))
init.vim:1379:: " noremap <silent><expr> gF incsearch#go(<SID>config_fuzzyall({'is_stay': 1))
init.vim:1380:: " map f <Plug>(incsearch-fuzzyspell-/)
init.vim:1381:: " map F <Plug>(incsearch-fuzzyspell-?)
init.vim:1382:: " map gF <Plug>(incsearch-fuzzyspell-stay)
init.vim:1383:: " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR>
init.vim:1384:: " let g:deoplete#enable_at_startup = 1
init.vim:1385:: " map <silent> <leader>g :silent call Gitview()
init.vim:1386:: " map <silent> <leader>g :silent !cd /root/web2 ; git add .<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox

init.vim:1387:: "Load some useful plugins with vundle 
init.vim:1388:: "
init.vim:1389:: "asdf asldfkj
init.vim:1390:: " hi! link Sneak Normal
init.vim:1391:: " hi! link SneakScope Normal   test test2 test3
init.vim:1392:: 
init.vim:1393:: " command! -bang -nargs=* Rg
init.vim:1394:: "     call fzf#vim#grep(
init.vim:1395:: "     "rg --multiline --multiline-dotall --column --line-number --no-heading --color=always --smart-case " 
 init.vim:1396:: "     <q-args>, 1, fzf#vim#with_preview(), <bang>0)
init.vim:1397:: 
init.vim:1398:: "" au GUIEnter * set fullscreen
init.vim:1399:: " if has("gui_running")
init.vim:1400::   " set fuoptions=maxvert,maxhorz
init.vim:1401::   " au GUIEnter * set fullscreen
init.vim:1402::    " set foldcolumn=10
init.vim:1403::    " set formatoptions=ant
init.vim:1404:: " set wrapmargin=0
init.vim:1405:: " set nohlsearch
init.vim:1406:: " set = ~/workspacemodules/tags
init.vim:1407:: " highlight SignColumn guibg=bg
init.vim:1408:: "       endif    
init.vim:1409:: " if has("autocmd")
init.vim:1410:: "   au BufReadPost * if line("'"") > 1 && line("'"") <= line("$") | exe "normal! g'"" | endif
init.vim:1411:: " endif
init.vim:1412::   " autocmd BufWinLeave *.* mkview
init.vim:1413::   " autocmd BufWinEnter *.* silent loadview
init.vim:1414::    " set foldcolumn=2
init.vim:1415:: "  highlight foldcolumn ctermfg=256 ctermbg=bg
init.vim:1416:: " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg 
init.vim:1417:: " inoremap <cr> <esc>:w<cr>i<cr> 
init.vim:1418:: "" set tm=500
init.vim:1419:: " set macmeta
init.vim:1420:: " auto reload vimrc when editing it
init.vim:1421:: " let g:github_function_style = "italic"
init.vim:1422:: " let g:github_sidebars = ["qf", "vista_kind", "terminal", "vimplug"]
init.vim:1423:: " Change the "hint" color to the "orange" color, and make the "error" color bright red
init.vim:1424:: " let g:github_colors = [hint = "orange", error = "#ff0000"]
init.vim:1425:: " Load the colorscheme
init.vim:1426:: " colorscheme github_dark
init.vim:1427:: "" terminal color settings 
init.vim:1428:: " Example config in VimScript
init.vim:1429:: " let g:github_function_style = "italic"
init.vim:1430:: " let g:github_sidebars = ["qf", "vista_kind", "terminal", "vimplug"]
init.vim:1431:: 
init.vim:1432:: " Change the "hint" color to the "orange" color, and make the "error" color bright red
init.vim:1433:: " let g:github_colors = [hint = "orange", error = "#ff0000"]
init.vim:1434:: " Load the colorscheme
init.vim:1435:: " colorscheme github_dark 
init.vim:1436:: " set background=dark 
init.vim:1437:: " if has("gui_running")	" GUI color and font settings
init.vim:1438:: "   set guifont=Fira Code:h22
init.vim:1439:: "   " colorscheme gruvbox 
init.vim:1440:: "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none
init.vim:1441:: " else
init.vim:1442:: "  colorscheme one
init.vim:1443:: " colorscheme material  
init.vim:1444:: " let g:material_style = 'palenight'  
init.vim:1445:: " let g:material_style = 'lighter'
init.vim:1446:: " highlight Normal ctermbg=none 
init.vim:1447:: "   " let g:vimtex_quickfix_method='pplatex' 
init.vim:1448:: " let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
init.vim:1449:: "    function! UpdateSkim(status)
init.vim:1450:: "      if !a:status | return | endif
init.vim:1451:: "
init.vim:1452:: "      let l:out = b:vimtex.out()
init.vim:1453:: "      let l:tex = expand('%:p')
init.vim:1454:: "      let l:cmd = [g:vimtex_view_general_viewer, '-r']
init.vim:1455:: "      if !empty(system('pgrep Skim'))
init.vim:1456:: "        call extend(l:cmd, ['-g'])
init.vim:1457:: "      endif
init.vim:1458:: "      if has('nvim')
init.vim:1459:: "        call jobstart(l:cmd + [line('.'), l:out, l:tex])
init.vim:1460:: "      elseif has('job')
init.vim:1461:: "        call job_start(l:cmd + [line('.'), l:out, l:tex])
init.vim:1462:: "      else
init.vim:1463:: "        call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
init.vim:1464:: "      endif
init.vim:1465:: "    endfunction
init.vim:1466:: " let g:vimtex_latexmk_build_dir = './build'
init.vim:1467:: "  'build_dir' : './build',
init.vim:1468:: " 
init.vim:1469:: "     let g:vimtex_compiler_latexmk = {
init.vim:1470:: "      'background' : 0,
init.vim:1471:: "          'callback' : 1,
init.vim:1472:: "      'continuous' : 1,
init.vim:1473:: "      'options' : [
init.vim:1474:: "        '-pdf',
init.vim:1475:: "        '-verbose',
init.vim:1476:: "        '-file-line-error',
init.vim:1477:: "        '-synctex=1',
init.vim:1478:: "        '-interaction=nonstopmode',
init.vim:1479:: "      ],
init.vim:1480:: "     
init.vim:1481:: " let g:vimtex_compiler_progname = 'nvr'
init.vim:1482:: " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR>
init.vim:1483:: " let g:vimtex_quickfix_mode = 1
init.vim:1484:: " let g:vimtex_fold_enabled = 0
init.vim:1485:: " let g:vimtex_fold_manual = 1
init.vim:1486:: 
init.vim:1487:: 
init.vim:1488:: " let g:vimtex_fold_types= {
init.vim:1489:: "            'preamble' : {,
init.vim:1490:: "            'comments' : {'enabled' : 1,
init.vim:1491:: "            'markers' : {,
init.vim:1492:: "            'sections' : {
init.vim:1493:: "              'parse_levels' : 0,
init.vim:1494:: "              'sections' : [      
init.vim:1495:: "                '%(add)?part',
init.vim:1496:: "                '%(chapter|addchap)',
init.vim:1497:: "                '%(section|addsec)',
init.vim:1498:: "                'subsection',
init.vim:1499:: "                'subsubsection',
init.vim:1500:: "              ],
init.vim:1501:: "              'parts' : [         
init.vim:1502:: "                'appendix',
init.vim:1503:: "                'frontmatter',
init.vim:1504:: "                'mainmatter',
init.vim:1505:: "                'backmatter',
init.vim:1506:: "              ],
init.vim:1507:: "            ,
init.vim:1508:: "           
init.vim:1509:: 
init.vim:1510:: "  TermClose * if v:event == 12 || v:event == 0 bdelete endif
init.vim:1511:: " lua <<EOF
init.vim:1512:: " require'nvim-treesitter.configs'.setup {
init.vim:1513:: "   incremental_selection = {
init.vim:1514:: "     enable = true,
init.vim:1515:: "     keymaps = {
init.vim:1516:: "       init_selection = "gnn",
init.vim:1517:: "       node_incremental = "grn",
init.vim:1518:: "       scope_incremental = "grc",
init.vim:1519:: "       node_decremental = "grm",
init.vim:1520:: "     ,
init.vim:1521:: "   ,
init.vim:1522:: " 
init.vim:1523:: " EOF
init.vim:1524:: " 
init.vim:1525:: " " set foldlevel=20
init.vim:1526:: " " set foldmethod=expr
init.vim:1527:: " " set foldexpr=nvim_treesitter#foldexpr()
init.vim:1528:: " inoremap .<Esc> .<CR><Esc><leader>j
init.vim:1529:: " inoremap .<Space> .<CR><Esc><leader>j
init.vim:1530:: " noremap S :S 
init.vim:1531:: "
init.vim:1532:: "
init.vim:1533:: " function! Sneak()
init.vim:1534:: "     hi! link Sneak Normal
init.vim:1535:: "     hi! link SneakScope Normal
init.vim:1536:: "     execute 'normal! <Plug>Sneak_s'
init.vim:1537:: "     syntax on
init.vim:1538:: " endfunction
init.vim:1539::  
init.vim:1540:: " map N <Plug>Sneak_,
init.vim:1541:: " map t <Plug>(smalls-excursion)
init.vim:1542:: " let g:smalls_auto_jump=1
init.vim:1543:: " let g:smalls_auto_jump_timeout=0
init.vim:1544::     
init.vim:1545:: " 
init.vim:1546:: " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m -a ; git push --all origin; fi'
init.vim:1547:: " let g:vimtex_view_general_options = '-r @line @pdf 
init.vim:1548:: """ pandoc backup -s html -o markdown cp backup.html %<cr>:e %<cr>:w<cr>:qa<cr>  asldkfj
init.vim:1549:: " <cr>
init.vim:1550:: " ; pandoc backup.html > backup.md; cp backup.md %<cr>:e %<cr>
init.vim:1551:: " NB: this supports "rp that replaces the selection by the contents of @r
init.vim:1552:: " Auto updating C
init.vim:1553:: " autocmd VimLeave * exe ":silent ! c -R"
init.vim:1554:: "
init.vim:1555:: "" lua << EOF
init.vim:1556:: " local function setup_servers()
init.vim:1557:: "   require'lspinstall'.setup()
init.vim:1558:: "   local servers = require'lspinstall'.installed_servers()
init.vim:1559:: "   for _, server in pairs(servers) do
init.vim:1560:: "     require'lspconfig'[server].setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
init.vim:1561:: "   end
init.vim:1562:: " end
init.vim:1563:: " 
init.vim:1564:: " setup_servers()
init.vim:1565:: " 
init.vim:1566:: " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
init.vim:1567:: " require'lspinstall'.post_install_hook = function ()
init.vim:1568:: "   setup_servers() -- reload installed servers
init.vim:1569:: "   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
init.vim:1570:: " end
init.vim:1571:: " EOF
init.vim:1572:: " autocmd BufReadPost * if @% !~# '.git[/]COMMIT_EDITMSG$' && line("'"") > 1 && line("'"") <= line("$") | exe "normal! g`"" | endif
init.vim:1573:: 
init.vim:1574::       
init.vim:1575:: "other maps   
init.vim:1576:: inoremap <cr> <cr><space><esc>"_s
init.vim:1577:: nnoremap o o<space><esc>"_s
init.vim:1578:: " map cr
init.vim:1579:: " inoremap <cr> <esc>$a<cr><space><esc>"_s
init.vim:1580:: " inoremap <m-cr> <cr><space><esc>"_s
init.vim:1581:: let g:neovide_fullscreen=v:true
init.vim:1582:: if exists('g:gonvim_running')
init.vim:1583::  set guifont=Fira Code Light:h18
init.vim:1584:: "goneovim specific stuff
init.vim:1585:: elseif exists('g:neovide')
init.vim:1586::    set guifont=Fira Code:h18
init.vim:1587:: end
init.vim:1588:: nnoremap <C-c> :set hlsearch!<cr>
init.vim:1589:: xnoremap <silent> <cr> "*y:silent! let searchTerm = 'V'.substitute(escape(@*, '/'), "n", 'n', "g") <bar> let @/ = searchTerm <bar> echo '/'
/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
init.vim:1590:: 
init.vim:1591:: " lua <<EOF
init.vim:1592:: " -- Setup cmp
 init.vim:1593:: " -- Installation
init.vim:1594:: " use {
init.vim:1595:: "   'hrsh7th/nvim-cmp',
init.vim:1596:: "   requires = {
init.vim:1597:: "     {
init.vim:1598:: "       'quangnguyen30192/cmp-nvim-tags',
init.vim:1599:: "       -- if you want the sources is available for some file types
init.vim:1600:: "       ft = {
init.vim:1601:: "         'kotlin',
init.vim:1602:: "         'java'
init.vim:1603:: "       
init.vim:1604:: "     
init.vim:1605:: "   ,
init.vim:1606:: " config = function ()
init.vim:1607:: "     require'cmp'.setup {
init.vim:1608:: "     sources = {
init.vim:1609:: "       { name = 'tags' ,
init.vim:1610:: "      
init.vim:1611:: "     { name = 'vsnip', keyword_length = 1000 ,
init.vim:1612:: " { name = 'tags' ,
init.vim:1613:: " -- For ultisnips user
 init.vim:1614:: "       -- { name = 'ultisnips' ,  
init.vim:1615:: " { name = 'buffer', keyword_length = 1000 ,
init.vim:1616:: " { name = 'omni', keyword_length = 4,
init.vim:1617:: "        -- { name = 'spell' , 
init.vim:1618:: " { name = 'nvim_lsp', keyword_length = 4 ,
init.vim:1619:: "       --{ name = 'treesitter', keyword_length = 4 ,
init.vim:1620:: " --{ name = 'latex_symbols' ,
init.vim:1621:: " 
init.vim:1622:: " 
init.vim:1623:: " end
init.vim:1624:: " 
init.vim:1625:: 
init.vim:1626:: " test test2
init.vim:1627:: " let g:autotagTagsFile="~/workspacemodules/tags"
init.vim:1628:: " let g:autotagFile="~/workspacemodules/tags"
init.vim:1629:: " lua <<EOF
init.vim:1630:: " -- Installation
init.vim:1631:: " use { 
init.vim:1632:: "   'hrsh7th/nvim-cmp',
init.vim:1633:: "   requires = {
init.vim:1634:: "     {
init.vim:1635:: "       'quangnguyen30192/cmp-nvim-',
init.vim:1636:: "       -- if you want the sources is available for some file types
init.vim:1637:: "       ft = {
init.vim:1638:: "         'latex',
init.vim:1639:: "         'tex'
init.vim:1640:: "       
init.vim:1641:: "     
init.vim:1642:: "   ,
init.vim:1643:: "   config = function ()
init.vim:1644:: "     require'cmp'.setup {
init.vim:1645:: "     sources = {
init.vim:1646:: "       { name = '' ,
init.vim:1647:: "       -- more sources
init.vim:1648:: "     
init.vim:1649:: "   
init.vim:1650:: "   end
init.vim:1651:: " 
init.vim:1652:: " EOF
init.vim:1653:: "
init.vim:1654:: 
init.vim:1655:: 
init.vim:1656:: lua <<EOF
init.vim:1657:: require'nvim-treesitter.configs'.setup {
init.vim:1658:: -- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
init.vim:1659::   incremental_selection = {
init.vim:1660::     enable = true,
init.vim:1661::     keymaps = {
init.vim:1662::       init_selection = '<m-CR>',
init.vim:1663::       --scope_incremental = '<CR>',
init.vim:1664::       node_incremental = '<TAB>',
init.vim:1665::       node_decremental = '<S-TAB>',
init.vim:1666::     ,
init.vim:1667::   ,
init.vim:1668::   highlight = {
init.vim:1669::     enable = true,              -- false will disable the whole extension
init.vim:1670::     -- Instead of true it can also be a list of languages
init.vim:1671::     additional_vim_regex_highlighting = false,
init.vim:1672::   ,
init.vim:1673:: 
init.vim:1674:: EOF
init.vim:1675:: 
init.vim:1676:: lua <<EOF
init.vim:1677:: require('leap').setup {
init.vim:1678::   max_aot_targets = nil,
init.vim:1679::   highlight_unlabeled = false,
init.vim:1680::   max_highlighted_traversal_targets = 10,
init.vim:1681::   case_sensitive = false,
init.vim:1682::   -- Sets of characters that should match each other
 init.vim:1683::   -- Obvious candidates are braces and quotes ('([{', ')]', '`"'')
 init.vim:1684::   equivalence_classes = 
init.vim:1685::   {
init.vim:1686::       ' rn',
init.vim:1687::       ')]>',
init.vim:1688::       '([{<',
init.vim:1689::       { '"', "'", '`' ,
init.vim:1690::       --{'$', 'm',
init.vim:1691::       {'^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`',''','', 'n', 'r', ',', '.',';', ']', '[', '', '{', ')', '(', '$'
init.vim:1692::     ,
init.vim:1693::   -- Leaving the] $appropriate list emapty effectively disables "smart" mode,
init.vim:1694::   -- and forces auto-jump to be on or off
 init.vim:1695::   
init.vim:1696:: 
init.vim:1697:: EOF
init.vim:1698:: inoremap <m-d> <C-w>
init.vim:1699:: 
init.vim:1700:: @