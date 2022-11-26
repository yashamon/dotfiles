call plug#begin('~/.vim/plugged')
Plug 'folke/todo-comments.nvim', { 'branch': 'main' }
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'LhKipp/nvim-nu'
Plug 'folke/which-key.nvim'
Plug 'ggandor/leap.nvim'
Plug 'ibhagwan/fzf-lua', { 'branch': 'main' }
Plug 'romgrk/fzy-lua-native'
Plug 'vijaymarupudi/nvim-fzf'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' } 
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' } 
Plug 'ray-x/cmp-treesitter'
Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main' }  
Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'justinhoward/fzf-neoyank'
" Plug 'shaunsingh/nord.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'Shougo/neoyank.vim' 
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'lewis6991/spellsitter.nvim'
Plug 'kevinhwang91/nvim-bqf'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'simnalamburt/vim-mundo'
Plug 'rlane/pounce.nvim'


" Plug 'rakr/vim-one'
" Plug 'kyazdani42/blue-moon'
" Plug 'monsonjeremy/onedark.nvim'
" Plug 'navarasu/onedark.nvim'
" Plug 'yegappan/mru'
" Plug 'folke/zen-mode.nvim', { 'branch': 'main' } 
" Plug 'karb94/neoscroll.nvim'
" Plug 'rlane/pounce.nvim'
" Plug 'phaazon/hop.nvim'
" Plug 'ggandor/lightspeed.nvim'
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
" " if you install fzf as system package like `pacman -S fzf` in ArchLinux,
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

"Neovide 
"
" let g:neovide_maximized=v:true 
let g:neovide_fullscreen=v:true
" let g:neovide_transparency=0.15

"General Settings    
set scrolloff=10
set title
set cmdheight=0
set signcolumn=yes
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
" set pb=10
" set winbl=10
set switchbuf=newtab
" let g:python3_host_prog='/usr/bin/python3.9'
" let g:python3_host_prog='/usr/bin/python3.9'

set clipboard+=unnamedplus	" yank to the system register (*) by default
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
au Filetype tex,text,md set tw=50
au FileType tex setlocal indentexpr=
au FileType tex setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]


let g:tex_conceal = ""
set tags+=~/workspacemodules/tags
set tags+=~\workspacemodules\tags
set tags+=.\tags
set tags+=./tags
"set +=~/Dropbox/workspace/tags
" set wrapmargin=1
" set shada="NONE"  
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
" set showmatch		" Cursor shows matching ) and }
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
colorscheme tokyonight-night
" colorscheme material  
" let g:material_style = 'palenight'  
" let g:material_style = 'lighter'
" highlight Normal ctermbg=none
set tm=1000
" set macreta 
hi SpellBad cterm=underline
" Set style for gVim
hi SpellBad gui=underline
"
"Autocommands, au
au FileType Makefile set noexpandtab
au FileType tex,text set spelllang=en_us
au FileType tex,text,md set indentexpr=
au FileType vim,md set list
" au FileType tex,text,md silent execute "!echo " . v:servername . " > ~/servername.txt"    
" au FileType * silent execute "!echo " . v:servername . " > ~/servername.txt"
au UIEnter silent execute "!echo " . v:servername . " > ~/servername.txt"
function Server()
   silent execute "!echo " . v:servername . " > ~/servername.txt"
endfunction
nmap <leader>nn :call Server()

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

" open the error console
" move to next error

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

" ,p toggles paste mode
" nmap <leader>p :set paste!<BAR>set paste?<CR>

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

set cot-=preview "disable doc preview in omnicomplete

" make CSS omnicompletion work for SASS and SCSS
" autocmd BufNewFile,BufRead *.scss             set ft=scss.css
" autocmd BufNewFile,BufRead *.sass             set ft=sass.css

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8

"maps remaps mappings  
"
" terminal stuff 
lua <<EOF
vim.keymap.set('t', '<C-r>+', [[getreg('+')]], {expr = true})
EOF
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
nnoremap <leader>f :silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:te pwsh -c lf<cr>i
" nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>t :silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'<cr>:edit term://pwsh<cr><cr>
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
noremap W /\$<CR>
noremap B ?\$<CR>
noremap <m-w>m /\$<CR>
noremap <m-b>m ?\$<CR>
noremap <m-w>o /(\\|)<CR>
noremap <m-b>o /(\\|)<CR>
noremap <m-w>b /{\\|}<CR>
noremap <m-b>b ?{\\|}<CR>
noremap <m-w>w /{\\|}<CR>
noremap <m-b>w ?{\\|}<CR>
noremap <m-w>c /[\\|]<CR>
noremap <m-b>c ?[\\|]<CR>
" noremap <m-w> /{\\|}<CR>
" noremap <m-b> ?{\\|}<CR>
" noremap <m-W> /(\\|)<CR>
" noremap <m-B> ?(\\|)<CR>


" copy paste stuff 
" 
vnoremap p "_dP
inoremap <C-p> <C-r>"+
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

nmap D "0dg$
nmap V vg$
nmap A g$a
map 0 g^
map 9 g$
nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
nnoremap <c-l> :bnext<CR>
nnoremap <c-h> :bprevious<CR>
" tnoremap <Esc> <C-\> 
" nnoremap < :tabp<CR>
" nnoremap > :tabn<CR>
" nnoremap <leader>n :tabedit %<CR>
imap <M-j> <C-j>
" map <M-m> <cmd>HopChar1<cr>$
" map <S-b> ?\$<CR>
map q: nop
map <S-C-q> <Esc>:qa!<CR>
map <m-q> <esc>:wq<cr>
map <m-Q> <esc>:q<cr>
map <m-c> :close<cr>
map <m-d> <Esc>:w<CR>:bdelete<CR>
map <m-D> :bdelete!<CR>
noremap gf gq
noremap f /
noremap F ?
noremap # /\$<CR>v?\$<CR>
noremap $ /\$<CR>gev?\$<CR>l
noremap @ /}<CR>v?{<CR>
map j gj
map k gk
noremap <Space> .
vnoremap <Space> t <cr>
map K <C-u>
map J <C-d>
" map <C-j> zz
" map <C-k> zb
map <C-j> <C-e>jj
map <C-k> <C-y>kk
nnoremap <leader>j J
nnoremap <leader>k K
map ' "
nnoremap <Backspace> i<Backspace><Esc>
nmap <leader>c gc
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

au FileType tex,text,md nmap 0 g^
au FileType tex,text,md noremap 9 g$
" au FileType tex,text,md nnoremap dd "_g^dg$g^

"Neovim mappings
" :tnoremap <S-h> <C-\><C-n><C-w>h
" :tnoremap <S-j> <C-\><C-n><C-w>j
" :tnoremap <S-k> <C-\><C-n><C-w>k
" :tnoremap <S-l> <C-\><C-n><C-w>l
" tnoremap <Left> :tbnext<CR>
" tnoremap <Right> :tbprevious<CR>
" tnoremap <Leader>e <C-\><C-n> 
" imap <Backspace> \
" map t <Plug>Lightspeed_s
" map <C-t> <cmd>HopChar1
" map T <Plug>Lightspeed_S
" map <S-m-Space> <cmd>HopWord<cr>
" map t <ESC>:syntax off <CR>t: syntax on<CR>

" FZF 
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
" let g:fzf_preview_window = []
nnoremap <m-t> :BTags<cr>
nnoremap SS :call Sentence()<cr>
nnoremap S <cr>:call Line()<cr>

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
map <A-e> :FZF ~<CR> 
map <m-f> :FZF ~<CR> 

"miscellaneous

" nmap <leader>p :Denite neoyank -default-action=append<CR>

" Latex stuff
" 
nnoremap <leader>ss :w<cr>:source $MYVIMRC<cr> 
nnoremap <c-e> viwy:cclose<cr>:<c-r>+<cr><cr>
nnoremap <c-p> :<c-r>+<cr>
nnoremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr><cr>
" noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr>

"FZF Neoyank yank     
"
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

function Light()
set background=light
" colorscheme oceanlight 
colorscheme one 
" highlight Normal ctermfg=black
" highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
" hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
endfunction   

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
function Lighter()
   set background=light
   " colorscheme blue-moon
   colorscheme material
   let g:material_style = 'lighter'
endfunction

function Dark()
   set background=dark
   colorscheme one
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

" nnoremap H :LinesWithPreview<CR>
" command! -bang -nargs=* BLinesB
"     \ call fzf#vim#grep(
"     \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')), 1,
"     \   fzf#vim#with_preview({'options': '--keep-right --delimiter : --nth 4.. --preview "bat -p --color always {}"'}, 'right:50%' ))

" command! -bang -nargs=* BLinesB
"      \ call fzf#vim#grep(
"      \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')),,
" "     \   fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.. --delimiter=":"'}, 'right:0%'))
    " \   fzf#vim#with_preview({'options': '--layout reverse  --with-nth=-1.. --delimiter="/"'}, 'right:50%'))
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
  copen
  sleep 600m
  " let b:paste = system('pwsh -c Get-Clipboard')
  " call feedkeys(":BLinesB \<c-r>+\<cr>")
  call feedkeys("zf")
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
  copen
  sleep 600m
  " let b:paste = system('pwsh -c Get-Clipboard')
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
  " let b:paste = system('pwsh -c Get-Clipboard')
  sleep 600m
  call feedkeys("zf")
  call feedkeys("\<c-r>+\<cr>")
endfunction
noremap LL :call SentenceLL()<cr>
" noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr>
function GitAsync()
silent execute "!echo " . v:servername . ' > ~/servername.txt'
let g:bufdude = bufname()
silent te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }
execute "buffer" g:bufdude
endfunction
  
" " AsyncRun -silent if git rev-parse --is-inside-work-"tree 
"|| git rev- parse --git-dir > /dev/null 2>&1 ; then git "add 
". ; git commit -m -a ; git push --all origin; "fi  */
" te if ( (git rev-parse --is-inside-work-tree) -and (git 
"rev-parse --git-dir) ) { git add . ; git commit -m -a ; "git push --all origin } */
" endfunction */

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
        exec "wincmd j"
        exec "/error"
    else
        exec "cclose"
        sleep 1
        endif
endfunction

nnoremap <leader>gs :silent call ToggleQuickFix()<CR>
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
let g:buffmain=bufname()
silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
let buf=bufname()
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
nmap <leader>gtd :call TodoQuickFix<cr>
nmap <leader>ga :TZAtaraxis<CR>
" nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --webtex -o backup.html;  cp backup.html %<cr>:e %<cr>

" nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --mathjax[=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js] -o backup.html;  cp backup.html %<cr>:e %<cr>:w<cr>:qa<cr> 
"" mathml shenanigans

nmap <leader>gm :w<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:w<cr>:qa<cr>






"Autosave and autocommit   
" let g:updatetime = 10000
let g:auto_save = 0
" .vimrc
let g:auto_save_events = ["CursorHold"]
"au FileType vim let g:autosave = 0
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1

"Git autocommit  (private git repo)
autocmd BufWritePost * call GitAsync()
" vsnip stuff 
" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
let g:vsnip_snippet_dir = '~/dotfiles/snippets'  

" imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" 
" " Expand or jump
" imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
  smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

"
" set foldexpr=nvim_treesitter#foldexpr()
"

lua <<EOF
require("nvim-lsp-installer").setup {}
    local lspconfig = require("lspconfig")

    local function on_attach(client, bufnr)
        -- set up buffer keymaps, etc.
    end

    lspconfig.sumneko_lua.setup { on_attach = on_attach }
    lspconfig.tsserver.setup { on_attach = on_attach }
    lspconfig.vimls.setup { on_attach = on_attach }
    lspconfig.ltex.setup { on_attach = on_attach }
    lspconfig.texlab.setup { on_attach = on_attach }
EOF
lua << EOF
local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<S-C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  --buf_set_keymap('n', 'lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end
EOF
nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
"Lsp instal 
"
" inoremap <cr> <cr> <backspace>

set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup cmp.

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local cmp = require'cmp'
cmp.setup ({
snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
  -- ... Your other configuration ...
end,
},

mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
       ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-x>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
-- ... Your other mappings ...
["<Caps>"] = cmp.mapping(function(fallback) 
      if vim.fn["vsnip#expandable"]() == 1
        then
        feedkey("<Plug>(vsnip-expand)", "")
     elseif cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then 
        cmp.complete()
      else 
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),
["<S-Tab>"] = cmp.mapping(function()
      if vim.fn.pumvisible() == 1 then
        feedkey("<C-p>", "n")  
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),
}),
requires = {
    {
      'tzachar/fuzzy.nvim',
      'quangnguyen30192/cmp-nvim-tags',
      -- if you want the sources is available for some file types
      ft = {
        'tex',
        'latex' 
      }
    }
    },
-- ... Your other configuration ...
sources = cmp.config.sources({
      -- For vsnip user. 
{ name = 'vsnip', keyword_length = 1000 },
{ name = 'tags' },
{ name = 'nvim_lsp', keyword_length = 4 },
-- For ultisnips user.
      -- { name = 'ultisnips' },  
{ name = 'omni', keyword_length = 4},
       -- { name = 'spell' }, 
      --{ name = 'treesitter', keyword_length = 4 },
{ name = 'buffer', keyword_length = 4 },
--{ name = 'fuzzy_buffer', keyword_length = 8 }
}),
completion = { autocomplete = false }
})
EOF
" 
" " LSP mappings   
" "" LSP mappings 
noremap <leader>ca  :lua vim.lsp.buf.code_action()<CR>
noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
" 
" 
lua <<EOF
 require('nvim_comment').setup(
{
   -- Linters prefer comment and line to have a space in between markers
   marker_padding = true,
   -- should comment out empty or whitespace only lines
   comment_empty = true,
   -- Should key mappings be created
   create_mappings = true,
   -- Normal mode mapping left hand side
   line_mapping = "gc",
   -- Visual/Operator mapping left hand side
   operator_mapping = "<leader>c",
   -- Hook function to call before commenting takes place
   --hook = nil 
 }
 )
EOF
nmap <leader>c gc
lua <<EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu'},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
  lualine_a = {
        {
          'filename',
          color = 'lualine_a_normal',
          file_status = true,      -- Displays file status (readonly status, modified status)
          newfile_status = false,   -- Display new file status (new file means no write after created)
          path = 3,                -- 0: Just the filename
                                   -- 1: Relative path
                                   -- 2: Absolute path
                                   -- 3: Absolute path, with tilde as the home directory
  
          symbols = {
            modified = '[+]',      -- Text to show when the file is modified.
            readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
            unnamed = '[No Name]', -- Text to show for unnamed buffers.
            newfile = '[New]',     -- Text to show for new created file before first writting
         }
        }
      },
      lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal'}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {{'location', color = 'lualine_z_normal'}}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
EOF

lua <<EOF
require('spellsitter').setup {
  hl = 'SpellBad', 
  captures = {},  -- set to {} to spellcheck everything

  -- Spellchecker to use. values:
  -- * vimfn: built-in spell checker using vim.fn.spellbadword()
  -- * ffi: built-in spell checker using the FFI to access the
  --   internal spell_check() function
spellchecker = 'vimfn'
}
EOF
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
" lua << EOF
" require('fzf-lua').setup{
" -- ...
" }
" EOF
" lua <<EOF
" -- ===========================================
" --  Add user dictionary for ltex-ls
" --  * en.utf-8.add must be created using `zg` when set spell is on
" -- ===========================================
" local path = vim.fn.stdpath 'config' .. '/spell/en.utf-8.add'
" local path = vim.fn.stdpath 'config' .. '/spell/es.utf-8.spl'
" local words = {}
"
" for word in io.open(path, 'r'):lines() do
"   table.insert(words, word)
" end
" require'lspconfig'.ltex.setup{
"   on_attach = on_attach,
"   capabilities = capabilities,
"   settings = {
"     ltex = {
"       disabledRules = {
"         ['en-US'] = { 'PROFANITY' },
"         ['en-GB'] = { 'PROFANITY' },
"       },
"       language="en-US",
"       dictionary = {
"         ['en-US'] = words,
"         ['en-GB'] = words,
"         ['es'] = words,
" },
"     },
"   },
" }
" EOF
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

lua <<EOF
require'nvim-treesitter.configs'.setup {
-- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<m-CR>',
      --scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

lua <<EOF
require('leap').setup {
  max_aot_targets = nil,
  highlight_unlabeled = false,
  max_highlighted_traversal_targets = 10,
  case_sensitive = false,
  -- Sets of characters that should match each other.
  -- Obvious candidates are braces and quotes ('([{', ')]}', '`"\'').
  equivalence_classes =
  {
      {' ', "\r", "\n" },
      {'\'','"', '/', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`', '/', '\\', ',', '.',';', ']', '[', '}', '{', ')', '(', '$'}
    },
  -- Leaving the] $appropriate list emapty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.%
  
}
EOF
lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

lua <<EOF
require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.9 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
EOF
lua <<EOF
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
EOF
" Vim Script
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF


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
"  		tmux = false,
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
lua <<EOF
-- load snippets from path/of/your/nvim/config/my-cool-snippets
vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/friendly-snippets,'
require("luasnip.loaders.from_vscode").load()
EOF
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

