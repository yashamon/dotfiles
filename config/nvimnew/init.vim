call plug#begin('~/.vim/plugged')
"asd Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'folke/todo-comments.nvim', { 'branch': 'main' }
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'nvim-treesitter/playground'
Plug 'LhKipp/nvim-nu', { 'branch': 'main' }
Plug 'folke/which-key.nvim', { 'branch': 'main' }
Plug 'ggandor/leap.nvim', { 'branch': 'main' }
Plug 'ibhagwan/fzf-lua', { 'branch': 'main' }
Plug 'romgrk/fzy-lua-native'
Plug 'vijaymarupudi/nvim-fzf'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', { 'branch': 'main' } 
Plug 'williamboman/mason-lspconfig.nvim', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' } 
Plug 'ray-x/cmp-treesitter'
Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main' }  
Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'justinhoward/fzf-neoyank'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' }
" Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'Shougo/neoyank.vim' 
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'lewis6991/spellsitter.nvim'
Plug 'kevinhwang91/nvim-bqf', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'simnalamburt/vim-mundo'
Plug 'rlane/pounce.nvim'


" Plug 'rakr/vim-one'
"" Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' } 
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ' Plug 'kyazdani42/blue-moon'
"" Plug 'shaunsingh/nord.nvim' 
" Plug 'monsonjeremy/onedark.nvim'
" Plug 'navarasu/onedark.nvim'
" Plug 'yegappan/mru'
" Plug 'folke/zen-mode.nvim', { 'branch': 'main' } 
" Plug 'karb94/neoscroll.nvim'
" Plug 'rlane/pounce.nvim'
" Plug 'phaazon/hop.nvim'
" Plug 'ggandor/lightspeed.nvim'
"" Plug 'nyngwang/murmur' 
" Plug 'vim-scripts/AutoTag'
" Plug 'rebelot/kanagawa.nvim'
" Plug 'reedes/vim-pencil' 
" Plug 'folke/zen-mode.nvim', {  'branch': 'main' } 
" Plug 'radenling/vim-dispatch-neovim'  
" Plug 'tpope/vim-dispatch'
" Plug 'sheerun/vim-polyglot' 
" Plug 'https://gitlab.com/yorickpeterse/nvim-dd.git',  { 'branch': 'main' }
" Plug 'luukvbaal/stabilize.nvim' 
" Plug 'nvim-treesitter/playground
" Plug 'glepnir/lspsaga.nvim'
" If you are using Vim-Plug
" " Plug 'kdheepak/cmp-latex-symbols', { 'branch': 'main' } 
" " Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main' }
" "Plug 'pope/vim-obsession'
" " Plug 'nvim-lua/plenary.nvim'
" " Plug 'windwp/nvim-spectre'
" " For luasnip user. 

" "Plug 'steelsojka/completion-buffers'
" " Plug 'neovim/node-host'
" Plug 'projekt0n/github-nvim-theme',  { 'branch': 'main' }
" Plug 'rktjmp/lush.nvim', { 'branch': 'main' }
" " Plug 'cyansprite/Extract'
" Plug 'gioele/vim-autoswap'
" " Plug 't9md/vim-smalls'
" Plug 'kevinhwang91/nvim-bqf', { 'branch': 'main' }
" " i you install fzf as system package like `pacman -S fzf` in ArchLinux,
" " please comment next line
" " Plug 'sindrets/diffview.nvim', { 'branch': 'main' } 
" " Plug 'rmagatti/auto-session',  { 'branch': 'main'}
" " Plug 'justinmk/vim-sneak'
" " Plug 'SirVer/ultisnips'  
" " Plug 'tpope/vim-fugitive'
" Plug 'eugen0329/vim-esearch'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'Raimondi/vim_search_objects'
" " Plug 'terryma/vim-multiple-cursors'
" " " On-demand loading
" " Plug 'junegunn/goyo.vim'
" " " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" "  Plug 'morhetz/gruvbox'
" Plug 'sainnhe/gruvbox-material'
" " Plug 'vim-pandoc/vim-pandoc'
" " Plug 'vim-pandoc/vim-pandoc-syntax' 
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'do': './install --all' }
"  '}
" Plug 'lifepillar/vim-solarized8'
" " Plug 'vim-scripts/vim-auto-save'
" " Plug 'vim-pandoc/vim-pandoc'
"
" " Plug 'yashamon/vim-snippets'
" " colorschemes
" " 
  
" Plug 'marko-cerovac/material.nvim', { 'branch': 'main' }
"
" Plug 'reedes/vim-colors-pencil'
"
" Plug 'vim-scripts/oceanlight'
"
" Plug 'gosukiwi/vim-atom-dark'
"
" Plug 'dracula/vim'


" " Plug 'svermeulen/vim-cutlass'
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" " Plug 'kyazdani42/nvim-tree.lua', 
" "Plug 'nvim-lua/completion-nvim'
" Plug 'neovim/nvim-lspconfig'
" " Plug 'nvim-lua/diagnostic-nvim'
" " Plug 'rafamadriz/friendly-snippets'  
 "  " Plug 'tpope/vim-surround'
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Add plugins to &runtimepath 
call plug#end()
lua <<EOF
require('settings')
-- require('telescope').load_extension('fzf')
EOF

"Neovide 
"
" let g:neovide_maximized=v:true
let g:neovide_fullscreen=v:true
let g:neovide_floating_blur_amount_x = 2.0
let g:neovide_floating_blur_amount_y = 2.0
" let g:neovide_transparency=0.15

"General Settings    
set scrolloff=10
set title
set cmdheight=0
set signcolumn=yes
set nojoinspaces
" set titlestring
" set noshowmode
" set noruler       
" set laststatus=1 
set noshowcmd    
" set shell=nu
" let &shell = 'nu'
" let &shellcmdflag = '-c'
" let &shellquote = ""
" let &shellxquote = ""
set autoindent
set indentexpr=
set noshowmatch
set wrap
" set wildoptions=pum
set pumblend=15
" set winblend=15 
set switchbuf=newtab
" let g:python3_host_prog='/usr/bin/python3.9'
" let g:python3_host_prog='/usr/bin/python3.9'
set clipboard+=unnamedplus	
" TAB setting{
set expandtab        "replace <TAB> with spaces
set softtabstop=3
set shiftwidth=3
" set shell="C:\Program Files\PowerShell\7\pwsh.EXE"
set termguicolors

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
 		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
 		  \,sm:block-blinkwait175-blinkoff150-blinkon175
set spelllang=en_us
set timeoutlen=0
function! OnUIEnter(event)
	let l:ui = nvim_get_chan_info(a:event.chan)
	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
		if l:ui.client.name ==# 'Firenvim'
			set guifont=Fira\ Code:h20
                        set lines=100
                        set columns=100
                        noremap q <esc>:wq<cr>
		endif
	endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
autocmd ColorScheme * lua vim.api.nvim_set_hl(0, 'LeapMatch', { fg = "black" })

"remember cursor location
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

au VIMEnter * let g:surround_108 = {
     \'q':  " ``\r''"
     \ }
au VIMEnter * let g:buffmain=bufname()
nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
let g:tex_flavor = "latex"
let g:tex_isk = '@,48-57,58,_,192-255,:' 
au FileType tex setlocal iskeyword+=:
au Filetype tex,text,md set tw=60
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
autocmd BufReadPost,FileReadPost * normal zR
" au FileType tex setlocal indentexpr=
" set foldmethod=expr
" au FileType tex, text, md setlocal foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]
" au FileType lua, vim, c, haskell  set foldexpr=nvim_treesitter#foldexpr()
let g:tex_conceal = ""
set tags+=~/workspacemodules/tags
set tags+=~\workspacemodules\tags
set tags+=.\tags
set tags+=./tags
" set wrapmargin=1
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set linebreak 
set formatoptions+=w " set breakat=" "
" set list  " list disables linebreak whitespace
" set textwidth=0
" set wrapmargin=-1
set hid
set autochdir
set guioptions-=r
set guioptions-=l
set inccommand=split
set mouse=n
noremap! <LeftDrag> <nop>
noremap! <RightDrag> <nop>
noremap! <LeftDrag> <nop>
" set selectmode=mouse, key
set bs=2		" allow backspacing over everything in insert mode 
set undofile                " Save undo's after file closes
set undodir=~/.undo " where to save undo histories
set undolevels=1000000         " How many undos
set undoreload=1000000		
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set nohlsearch
" set noswapfile
set showmatch		" Cursor shows matching ) and }
set nocursorline
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu
let maplocalleader = "\\"
" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc
set incsearch		" incremental search
set nobackup		" no *~ backup files
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context
set spell   

" disable sound on errors
set noerrorbells
" set novisualbell 
" set font=Fira\ Code:h18
set background=light
colorscheme gruvbox
set background=light
" colorscheme material  
" let g:material_style = 'palenight'  
" let g:material_style = 'lighter'
" highlight Normal ctermbg=none
set tm=1000
" set macreta 
hi SpellBad cterm=underline
" Set style for gVim
hi SpellBad gui=undercurl guisp=white
"
"Autocommands, au
au FileType Makefile set noexpandtab
au FileType tex,text set spelllang=en_us
au FileType tex,text,md set indentexpr=
au FileType vim set list
au UIEnter silent execute "!echo " . v:servername . ' > ~/servername.txt'
function Server()
   let g:buffmain=bufname()
   echo g:buffmain
   silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
   silent execute "!echo " . g:buffmain . ' > C:/Users/yasha/filename.txt'
endfunction
nmap <leader>ser :call Server()

au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp  

" au Filetype tex,text,md set fo=tc
" au FileType tex set background=dark 
au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}
au TextYankPost * call neoyank#_append()

set expandtab        "replace <TAB> with spaces
set softtabstop=3
set shiftwidth=3

"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ; 
let mapleader=';'
let g:mapleader=';'


" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h
autocmd Filetype tex setlocal wrapmargin=0
" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
              \	if &omnifunc == "" |
              \		setlocal omnifunc=syntaxcomplete#Complete |
              \	endif
endif

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8

"maps remaps mappings  
"
" terminal stuff 

autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
tnoremap <A-`> <C-\><C-n>
tnoremap <A-Esc> <C-\><C-n>
nmap <A-S-t> :te<cr>
" other mappings 
vnoremap <Leader>U ""y:%s/<C-r>"
noremap <leader>r :w<cr>:e<cr> 
" inoremap . .<esc>:w<cr>a
noremap <leader>hh :set tw=50<cr>
noremap <leader>w :set tw=0<cr> 
map q :q<cr>
noremap <leader>q q
nmap <m-7> :ZenMode<cr>:mksession!<cr>
nnoremap <leader>rr :w<cr>:source $MYVIMRC<CR>
nnoremap <leader>u <cr>:UndotreeToggle<CR>
noremap <leader>c :'<,'>CommentToggle<cr>

" language
noremap <leader>sls :set spelllang=es<cr>
noremap <leader>sle :set spelllang=en_us<cr>
" LSP
noremap <leader>lt :w<cr>:LspStart ltex<cr>

nnoremap <leader>f :w<cr>:silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:te pwsh -c lf<cr>i
nnoremap <leader>lg :w<cr>:silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:te pwsh -c lazygit<cr>i
" nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>t :w<cr>:silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:edit term://pwsh<cr><cr>
nnoremap <c-,> :cprevious<cr>
nnoremap <c-.> :cnext<cr> 
inoremap <m-h> <left>
inoremap <m-l> <right>
vnoremap <m-s> :s///gc<left><left><left><left>
inoremap <m-s> <esc>:%s///gc<left><left><left><left>
nnoremap <m-s> :%s///gc<left><left><left><left>
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
nnoremap <up> 1<C-U>
nnoremap <m-g> gqip
imap <up> <nop>
nnoremap <down> 1<C-D>
imap <down> <nop>
noremap <ScrollWheelUp>      <nop>
noremap <S-ScrollWheelUp>    <nop>
noremap <C-ScrollWheelUp>    <nop>
noremap <ScrollWheelDown>    <nop>
noremap <S-ScrollWheelDown>  <nop>
noremap <C-ScrollWheelDown>  <nop>
noremap <ScrollWheelLeft>    <nop>
noremap <S-ScrollWheelLeft>  <nop>
noremap <C-ScrollWheelLeft>  <nop>
noremap <ScrollWheelRight>   <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>
inoremap \ /
inoremap / \

" Movement
inoremap <m-d> <C-w>
" noremap W /\$<CR>
" noremap B ?\$<CR>
noremap gwm /\$<CR>
noremap gbm ?\$<CR>
noremap gwo /(\\|)<CR>
noremap gbo /(\\|)<CR>
noremap gwb /{\\|}<CR>
noremap gbb ?{\\|}<CR>
noremap gww /{\\|}<CR>
noremap gbw ?{\\|}<CR>
noremap gwc /[\\|]<CR>
noremap gbc ?[\\|]<CR>



" copy paste stuff 
" 
vnoremap p "_dP
cmap <m-p> <c-r>+
noremap <m-p> <c-r>+
inoremap <m-p> <c-r>+
" noremap D "0D:wa<cr>
noremap d "_d
nnoremap dd "_dd
noremap c "_c
noremap c "_c
noremap s "_s
noremap C "_C
noremap x "_x
vnoremap x "+x
vnoremap d "_d
vnoremap c "_c
vnoremap y "+y
nnoremap y "+y
nnoremap p "+p
nnoremap <leader>q q
" map cr
inoremap <cr> <esc>$a<cr><space><esc>"_s
inoremap <m-cr> <cr><space><esc>"_s

" Softwrap  

nnoremap D "0dg$
nnoremap V vg$
nnoremap A g$a
noremap H g^
noremap L g$
nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
nnoremap <c-l> :bnext<CR>
nnoremap <c-h> :bprevious<CR>
imap <M-j> <C-j>
map q: nop
map <S-C-q> <Esc>:qa!<CR>
map <m-q> <esc>:wq<cr>
map <m-Q> <esc>:q<cr>
map <m-c> :close<cr>
map <m-d> <Esc>:w<CR>:bdelete<CR>
map <m-D> :bdelete!<CR>
noremap gf gq
nnoremap f /
vnoremap f :'<,'>%s
noremap F ?
noremap gfm /\$<CR>v?\$<CR>
noremap gm /\$<CR>hv?\$<CR>l
noremap gwb /}<CR>hv?{<CR>l
noremap gsb /]<CR>hv?[<CR>l
noremap gob /)<CR>hv?(<CR>l
map j gj
map k gk
noremap <Space> .
vnoremap <Space> t <cr>
map K <C-u>
map J <C-d>
map <C-j> <C-e>jj
map <C-k> <C-y>kk
nnoremap <leader>j J
nnoremap <leader>k K
map ' "
nnoremap <Backspace> i<Backspace><Esc>
noremap <A-r> <C-r>
nnoremap ` ~
nnoremap . `
noremap <m-1> <C-o>
noremap <m-2> <C-i>
inoremap <m-d> <C-d>
noremap ;w <Esc>:w<CR>
noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
" windows stuff, comment out on windows
" nnoremap ;ww :%s///gc
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close he selection list, same as other IDEs.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <Leader>y :YRGetElem<CR>
map ' "
inoremap <D-]> <C-x><C-]>
inoremap <C-]> <C-x><C-]>

" FZF 
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
" let g:fzf_preview_window = []
nnoremap <m-t> :w<cr>:BTags<cr>
nnoremap SS :w<cr>:call Sentence()<cr>
nnoremap S :w<cr>:call Line()<cr>
" TODO:Add :w
"noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
" Line search mapping 
" function! Jumpback() 
"   K=bufname()
"   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr>
" endfunction
" 
 " nnoremap <m-b> :Buffers<cr>
nnoremap <m-b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9}})<cr>
nnoremap <m-i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9}})<cr>
nnoremap <m-u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
" noremap F <Esc>:GFiles<CR>
" map <A-e> :FZF ~<CR> 
map <m-f> :FZF ~<CR> 
" map <m-f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}}) ~<CR> 
"miscellaneous

" nmap <leader>p :Denite neoyank -default-action=append<CR>

" Latex stuff
" 
nnoremap <leader>gs :w<cr>:source $MYVIMRC<cr> 
nnoremap <c-e> viwy:cclose<cr>:<c-r>+<cr><cr>
nnoremap <c-p> :<c-r>+<cr>
nnoremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr><cr>
" noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr>

" nvim-comment
" 
vnoremap <leader>c :'<,'>CommentToggle<cr>
nnoremap <leader>c :gc


" FZF Neoyank yank     

nnoremap <leader>y :FZFNeoyank<cr>
nnoremap <leader>Y :FZFNeoyank  P<cr>
vnoremap <leader>y :FZFNeoyankSelection<cr>

nnoremap <leader>p :FZFNeoyank +<cr> 

nnoremap <leader>1 :FZFNeoyank 1<cr>
nnoremap <leader>P :FZFNeoyank " P+<cr>
vnoremap <leader>p :FZFNeoyankSelection +<cr>

"Pounce
map t <Plug>(leap-forward)
map T <Plug>(leap-backward)
" " nmap S <cmd>PounceRepeat<CR>
" vmap t <cmd>Pounce<CR>
" omap gt <cmd>Pounce<CR>
" 's' is used by vim-surround

" Replace the default dictionary completion with fzf-based fuzzy completion

inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')  


"Functions



" function Light()
" set background=light
" " colorscheme oceanlight 
" colorscheme material 
" let g:material_style = 'lighter'  
"    " highlight Normal ctermfg=black
" " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
" " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
" endfunction   
function Bluemoon()
   set background=dark
   colorscheme blue-moon
   " colorscheme material  
endfunction

function Deepocean()
   set background=dark
   colorscheme material  
   let g:material_style = 'deep ocean'  
endfunction

function Palenight()
   set background=dark
   " colorscheme blue-moon
   colorscheme material  
   let g:material_style = 'palenight'  
endfunction
function Light()
   colorscheme gruvbox 
   set background=light
endfunction
function Lighter()
   " colorscheme blue-moon
   colorscheme tokyonight-day
endfunction

function Dark()
   set background=dark
   colorscheme tokyonight-moon
endfunction

function! Profile()
profile start profile.log
profile func *
profile file *
endfunction

command! -bang -nargs=* BLinesB
    \ call fzf#vim#grep(
    \   'rg --with-filename --line-number --no-heading --smart-case . '.fnameescape(expand('%')),1,
    \   fzf#vim#with_preview({'options': '--keep-right --layout reverse --query '.shellescape(<q-args>).' --preview "bat -p --color always {}"'}, 'up:50%'))

function Line()
   " vimgrep /\w\+/j % | copen
   let g:buf = bufname()
   " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
   let b:filenamedir = substitute(expand('%:p:h'), "\\", "/", "g")
   let b:file = expand('%:p')
   let b:filename = substitute(b:file, "\\", "/", "g")
   let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/line.nu " . b:filename 
   exec b:execstr
   cg @_%
   lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}}) 
   " copen
   " sleep 600m
   " " let b:paste = system('pwsh -c Get-Clipboard')
   " " call feedkeys(":BLinesB \<c-r>+\<cr>")
   " call feedkeys("zf")
endfunction
function Sentence()
   let g:buf = bufname()
   " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
   let b:filenamedir = substitute(expand('%:p:h'), "\\", "/", "g")
   let b:file = expand('%:p')
   let b:filename = substitute(b:file, "\\", "/", "g")
   let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
   exec b:execstr
   cg @_%
   " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}}) 
   copen
   sleep 600m
   " " let b:paste = system('pwsh -c Get-Clipboard')
   call feedkeys("zf")
endfunction

function SentenceLL()
 let g:buf = bufname()
  " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
  let b:filenamedir = substitute(expand('%:p:h'), "\\", "/", "g")
  let b:file = expand('%:p')
  let b:filename = substitute(b:file, "\\", "/", "g")
  let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
  exec b:execstr
  cg @_% 
  copen 
  sleep 300m
  call feedkeys("zf")
  sleep 100m
  " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
  call feedkeys("\<c-r>+\<cr>")
endfunction
noremap gs :call SentenceLL()<cr>

function GitAsync()
silent execute "!echo " . v:servername . ' > ~/servername.txt'
let g:bufdude = bufname()
silent te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }
execute "buffer" g:bufdude
endfunction
  
function ToggleQuickFix()
      if empty(filter(getwininfo(), 'v:val.quickfix'))
      exec "w"
        " lua require("true-zen.ataraxis") .off()
        " lua require("zen-mode").close()
        let b:filenamedir=expand('%:p:h')
        echo b:filenamedir
        let b:filename=expand('%:t:r')
        let b:errors=b:filenamedir . "/build/" . b:filename .".log"
        echo b:errors
        exec "cg" b:errors
        copen
        sleep 200m
        call feedkeys("zf")
        " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
        call feedkeys("fatal")
        endif
endfunction

nnoremap <leader>e :silent call ToggleQuickFix()<CR>
function! ClearLatex()
  silent !rm ./build/* 
endfunction 

function! CompileLatex()
  " silent call ClearLatex()
  let buf=bufname()
  silent te pwsh -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -output-directory="build" %
  execute "buffer" buf
  call ViewPdf()
endfunction

function! ViewPdf() 
wa
" let g:buffmain=bufname()
" silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
let buf=bufname()
call Server()
let linenumber=line(".")
let colnumber=col(".")
let b:filenamedir=expand('%:p:h')
let filenametex=expand('%:p:t')
let filenametexwhole=expand('%:p')
let filenameroot=expand('%:t:r')
" let filenamePDF=filename[:-4]."pdf"
let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
let b:filenamePDFWindows="build\\" . filenameroot . ".pdf"
" echo b:filenamePDFWindows
let execstrLinux="silent te zathura --synctex-forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
let execstrWindows="silent te pwsh -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
exec execstrWindows
execute "buffer" buf
endfunction
nmap <leader>v :call ViewPdf()<cr><cr>
map <m-v> <esc>:call ViewPdf()<cr><cr>

" nmap <leader>v :VimtexView<cr>
" let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
nmap <leader>ll :call CompileLatex()<cr>
nmap <leader>lcl :call ClearLatex()<cr>
nmap gtd :TodoQuickFix<cr>
nmap <leader>ga :TZAtaraxis<CR>
nmap <leader>gm :w<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:w<cr>:qa<cr>

" Lsp mappings
nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
noremap ga  :lua vim.lsp.buf.code_action()<CR>
noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
nmap <leader>c gc
"Autosave and autocommit   
" let g:updatetime = 10000
let g:auto_save = 0
" .vimrc
let g:auto_save_events = ["CursorHold"]
"au FileType vim let g:autosave = 0
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1

"Git autocommit  (nonmain branch)
autocmd BufWritePost * call GitAsync()
set completeopt=menu,menuone,noselect,noinsert

" Avoid showing message extra message when using completion
set shortmess+=c

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

""other maps
inoremap <cr> <cr><space><esc>"_s
nnoremap o o<space><esc>"_s
" map cr
" inoremap <cr> <esc>$a<cr><space><esc>"_s
" inoremap <m-cr> <cr><space><esc>"_s
let g:neovide_fullscreen=v:true
if exists('g:gonvim_running')
 set guifont=Fira\ Code\ Light:h18
"goneovim specific stuff
elseif exists('g:neovide')
   set guifont=JetBrains\ Mono:h18
end
nnoremap <C-c> :set hlsearch!<cr>
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>
inoremap <m-d> <C-w>


imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
inoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
nnoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
inoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>
nnoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'



"lua <<EOF
" local generator = function()
"     local el_segments = {}
"
"     -- Statusline options can be of several different types.
"     -- Option 1, just a string.
"
"     table.insert(el_segments, '[literal_string]')
"
"     -- Keep in mind, these can be the builtin strings,
"     -- which are found in |:help statusline|
"     table.insert(el_segments, '%f')
"
"     -- expresss_line provides a helpful wrapper for these.
"     -- You can check out el.builtin
"     local builtin = require('el.builtin')
"     table.insert(el_segments, builtin.file)
"
"     -- Option 2, just a function that returns a string.
"     local extensions = require('el.extensions')
"     table.insert(el_segments, extensions.mode) -- mode returns the current mode.
"
"     -- Option 3, returns a function that takes in a Window and a Buffer.
"     --  See |:help el.Window| and |:help el.Buffer|
"     --
"     --  With this option, you don't have to worry about escaping / calling
"     --  the function in the correct way to get the current buffer and window.
"     local file_namer = function(_window, buffer)
"       return buffer.name
"     end
"     table.insert(el_segments, file_namer)
"
"     -- Option 4, you can return a coroutine.
"     --  In lua, you can cooperatively multi-thread.
"     --  You can use `coroutine.yield()` to yield execution to another coroutine.
"     --
"     --  For example, in luvjob.nvim, there is `co_wait` which is a coroutine
"     --  version of waiting for a job to complete. So you can start multiple
"     --  jobs at once and wait for them to all be done.
"     table.insert(el_segments, extensions.git_changes)
"
"     -- Option 5, there are several helper functions provided to asynchronously
"     --  run timers which update buffer or window variables at a certain frequency.
"     --
"     --  These can be used to set infrequrently updated values without waiting.
"     local helper = require("el.helper")
"     table.insert(el_segments, helper.async_buf_setter(
"       win_id,
"       'el_git_stat',
"       extensions.git_changes,
"       5000
"     ))
"
"     return el_segments
" end
"
" -- And then when you're all done, just call
" require('el').setup { generator = generator }
" EOF
" " " EOF
" lua << EOF
"   require("zen-mode").setup {
"   window = {
"     backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
"     -- height and width can be:
"     -- * an absolute number of cells when > 1
"     -- * a percentage of the width / height of the editor when <= 1
"     -- * a function that returns the width or the height
"     width = .66, -- width of the Zen window
"     height = 1, -- height of the Zen window
"     -- by default, no options are changed for the Zen window
"     -- uncomment any of the options below, or add other vim.wo options you want to apply
"     options = {
"       -- signcolumn = "no", -- disable signcolumn
"       -- number = false, -- disable number column
"       -- relativenumber = false, -- disable relative numbers
"       -- cursorline = false, -- disable cursorline
"       -- cursorcolumn = false, -- disable cursor column
"       -- foldcolumn = "0", -- disable fold column
"       -- list = false, -- disable whitespace characters
"     },
"   },
"   plugins = {
"     -- disable some global vim options (vim.o...)
"     -- comment the lines to not apply the options
"     options = {
"       enabled = true,
"       ruler = false, -- disables the ruler text in the cmd line area
"       showcmd = false, -- disables the command in the last line of the screen
"     },
"     twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
"     gitsigns = { enabled = false }, -- disables git signs
"     tmux = { enabled = false }, -- disables the tmux statusline
"     -- this will change the font size on kitty when in zen mode
"     -- to make this work, you need to set the following kitty options:
"     -- - allow_remote_control socket-only
"     -- - listen_on unix:/tmp/kitty
"     kitty = {
"       enabled = false,
"       font = "+4", -- font size increment
"     },
"   },
"   -- callback where you can add custom code when the Zen window opens
"   on_open = function(win)
"   end,
"   -- callback where you can add custom code when the Zen window closes
"   on_close = function()
"   end,
" }
" EOF
" lua <<EOF
" require('telescope').setup{
"   defaults = {
"     -- Default configuration for telescope goes here:
"     -- config_key = value,
"     mappings = {
"       i = {
"         -- map actions.which_key to <C-h> (default: <C-/>)
"         -- actions.which_key shows the mappings for your picker,
"         -- e.g. git_{create, delete, ...}_branch for the git_branches picker
"         ["<C-h>"] = "which_key"
"       }
"     }
"   },
"   pickers = {
"     -- Default configuration for builtin pickers goes here:
"     -- picker_name = {
"     --   picker_config_key = value,
"     --   ...
"     -- }
"     -- Now the picker_config_key will be applied every time you call this
"     -- builtin picker 
"   },
"   extensions = {
"     -- Your extension configuration goes here:
"     -- extension_name = {
"     --   extension_config_key = value,
"     -- }
"     -- please take a look at the readme of the extension you want to configure
"   }
" } 

" " EOF
" lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 } 
" lua <<EOF
" require('fm-nvim').setup{
" 	config =
" 	{
" 		edit_cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc...
" 		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow'
" 		height   = .9,
" 		width    = .9,
"                
"           }
"           	-- Mappings used with the plugin
" 	mappings = {
" 		vert_split = "<C-v>",
" 		horz_split = "<C-h>",
" 		tabedit    = "<C-t>",
" 		edit       = "<C-e>",
" 		ESC        = "<ESC>"
" 	},
" }
" EOF
" lua <<EOF
" require("telescope").load_extension("prosesitter") -- Optionally, depends on telescope.nvim
" require("prosesitter"):setup({
" 	vale_bin = vim.fn.stdpath("data") .. "/prosesitter/vale",
" 	vale_cfg = vim.fn.stdpath("data") .. "/prosesitter/vale_cfg.ini",
" 	--optional extra queries overrides existing queries
" 	queries = { 
" 		-- see the piece on adding queries on how to use this 
" 		-- (not needed if using an out of the box supported language
" 		py = { 
" 			strings = "[(string) ] @capture",
" 			comments = "[(comment)+ ] @capture",
" 		},
" 	}, 
" 	-- highlight groups to use for lint errors, warnings and suggestions
" 	--" severity_to_hl = { error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap" },
" 	-- weather to lint strings, comments or both for a language
" 	lint_targets = { py = "both", tex = "strings", sh = "comments" }, 
" 	disabled_ext = { "tex" }, -- do not ever lint tex files
" 	auto_enable = false, -- do not start linting files on open (default = true)
" 	default_cmds = false,  -- do not add commands (default = true)
" })
" EOF 
"
"" lua <<EOF
"     require'lightspeed'.setup { 
"         jump_to_unique_chars = false,
"         repeat_ft_with_target_char = true,
"         safe_labels  = { "f", "n", "u", "/", "e", "z", "h", "k", "m", "l", "j", "w", "b", "S", "F", "N", "L", "H", "M", "U", "G", "T", "?", "Z" },
"         labels = { "s", "f", "n", "j", "k", "l", "h", "o", "d", "w", "e", "m", "b", "u", "y", "v", "r", "g", "c", "x", "/", "z", "S", "F", "N", "J", "K", "L", "H", "O", "D", "W", "E", "M", "B", "U", "Y", "V", "R", "G", "T", "C", "X", "?", "Z" }
" }
" EOF
" lua <<EOF
" -- Setup cmp.
" -- Installation
" use {
"   'hrsh7th/nvim-cmp',
"   requires = {
"     {
"       'quangnguyen30192/cmp-nvim-tags',
"       -- if you want the sources is available for some file types
"       ft = {
"         'kotlin',
"         'java'
"       }
"     }
"   },
" config = function ()
"     require'cmp'.setup {
"     sources = {
"       { name = 'tags' },
"      
"     { name = 'vsnip', keyword_length = 1000 },
" { name = 'tags' },
" -- For ultisnips user.
"       -- { name = 'ultisnips' },  
" { name = 'buffer', keyword_length = 1000 },
" { name = 'omni', keyword_length = 4},
"        -- { name = 'spell' }, 
" { name = 'nvim_lsp', keyword_length = 4 },
"       --{ name = 'treesitter', keyword_length = 4 },
" --{ name = 'latex_symbols' },
" }
" }
" end
" }

" test test2
" let g:autotagTagsFile="~/workspacemodules/tags"
" let g:autotagFile="~/workspacemodules/tags"
" lua <<EOF
" -- Installation
" use { 
"   'hrsh7th/nvim-cmp',
"   requires = {
"     {
"       'quangnguyen30192/cmp-nvim-',
"       -- if you want the sources is available for some file types
"       ft = {
"         'latex',
"         'tex'
"       }
"     }
"   },
"   config = function ()
"     require'cmp'.setup {
"     sources = {
"       { name = '' },
"       -- more sources
"     }
"   }
"   end
" }
" EOF
"


" local true_zen = require("true-zen")
" true_zen.setup({
"  	ui = {
"  		bottom = {
"  			laststatus = 0,
"  			ruler = false,
"  			showmode = false,
"  			showcmd = false,
"  			cmdheight = 0,
"  		},
"  		top = {
"  			showtabline = 0,
"  		},
"  		left = {
"  			number = false,
"  			relativenumber = false,
"  			signcolumn = "no",
"  		},
"  	},
"  	modes = {
"  		ataraxis = {
"  			-- left_padding = 20,
"  			-- right_padding = 20,
"  			top_padding = 0,
"  			bottom_padding = 0,
"  			ideal_writing_area_width = {60},
"  			auto_padding = true,
"  			keep_default_fold_fillchars = true,
"  			custom_bg = {"none", ""},
"  			bg_configuration = true,
"  			quit = "untoggle",
"  			ignore_floating_windows = true,
"  			affected_higroups = {
"  				NonText = true,
"  				FoldColumn = true,
"  				ColorColumn = true,
"  				VertSplit = true,
"  				StatusLine = true,
"  				StatusLineNC = true,
"  				SignColumn = true,
"  			},
"  		},
"  		focus = {
"  			margin_of_error = 5,
"  			focus_method = "experimental"
"  		},
"  	},
"  	integrations = {
"  		vim_gitgutter = false,
"  		galaxyline = false,
"  		"Neovim mappings
" :tnoremap <S-h> <C-\><C-n><C-w>h
" :tnoremap <S-j> <C-\><C-n><C-w>j
" :tnoremap <S-k> <C-\><C-n><C-w>k
" :tnoremap <S-l> <C-\><C-n><C-w>l
"" nnoremap H :LinesWithPreview<CR>
" command! -bang -nargs=* BLinesB
"     \ call fzf#vim#grep(
"     \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')), 1,
"     \   fzf#vim#with_preview({'options': '--keep-right --delimiter : --nth 4.. --preview "bat -p --color always {}"'}, 'right:50%' ))

" command! -bang -nargs=* BLinesB
"      \ call fzf#vim#grep(
"      \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')),,
" "     \   fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.. --delimiter=":"'}, 'right:0%'))
    " \   fzf#vim#with_preview({'options': '--layout reverse  --with-nth=-1.. --delimiter="/"'}, 'right:50%')) tnoremap <Left> :tbnext<CR>
" tnoremap <Right> :tbprevious<CR>
" tnoremap <Leader>e <C-\><C-n> 
" imap <Backspace> \
" map t <Plug>Lightspeed_s
" map <C-t> <cmd>HopChar1
" map T <Plug>Lightspeed_S
" map <S-m-Space> <cmd>HopWord<cr>
" map t <ESC>:syntax off <CR>t: syntax on<CR>tmux = false,
"  		gitsigns = false,
"  		nvim_bufferline = false,
"  		limelight = false,
"  		twilight = false,
"  		vim_airline = false,
"  		vim_powerline = false,
"  		vim_signify = false,
"  		express_line = false,
"  		lualine = false,
"  		lightline = false,
"  		feline = false,
"  	},
"  	misc = {
"  		on_off_commands = true,
"  		ui_elements_commands = false,
"  		cursor_by_mode = false,
"  	}
"  })
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
" Vim Script
