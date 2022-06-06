call plug#begin('~/.vim/plugged')
Plug 'folke/zen-mode.nvim', { 'branch': 'main' } 
Plug 'ibhagwan/fzf-lua', { 'branch': 'main' }
Plug 'vijaymarupudi/nvim-fzf'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'metalelf0/nvim-floatedit',  { 'branch': 'main' }
Plug 'phaazon/hop.nvim'    
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'is0n/fm-nvim'
Plug 'williamboman/nvim-lsp-installer', { 'branch': 'main' }
Plug 'famiu/feline.nvim'
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' } 
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' } 
Plug 'ray-x/cmp-treesitter'
Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main' }  
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/vim-floaterm'
Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'justinhoward/fzf-neoyank'  
Plug 'rakr/vim-one' 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'Shougo/neoyank.vim' 
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'skywind3000/asyncrun.vim'         
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'neovim/nvim-lspconfig',  { 'branch': 'main' } 
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Plug 'xolox/vim-misc'
" Plug 'vim-scripts/AutoTag'
" Plug 'xolox/vim-easy'

" Plug 'rebelot/kanagawa.nvim'
" Plug 'reedes/vim-pencil' 
" Plug 'folke/which-key.nvim', { 'branch': 'main' }
" Plug 'folke/zen-mode.nvim', {  'branch': 'main' } 
" Plug 'lewis6991/spellsitter.nvim'
" Plug 'radenling/vim-dispatch-neovim'  
" Plug 'tpope/vim-dispatch'
" Plug 'sheerun/vim-polyglot' 
" Plug 'https://gitlab.com/yorickpeterse/nvim-dd.git',  { 'branch': 'main' }
" Plug 'luukvbaal/stabilize.nvim' 
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim',
" Plug 'nvim-treesitter/playground
" Plug 'Pocco81/TrueZen.nvim', { 'branch': 'main' }
" Plug 'glepnir/lspsaga.nvim'
" If you are using Vim-Plug
" " Plug 'kdheepak/cmp-latex-symbols', { 'branch': 'main' } 
" " Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main' }
" "Plug 'pope/vim-obsession'
" " Plug 'nvim-lua/plenary.nvim'
" " Plug 'windwp/nvim-spectre'
" " For luasnip user. 
" Plug 'L3MON4D3/LuaSnip'
" " Plug 'saadparwaiz1/cmp_luasnip'
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
" Plug 'kyazdani42/blue-moon'  
" Plug 'marko-cerovac/material.nvim', { 'branch': 'main' }
"
" Plug 'reedes/vim-colors-pencil'
"
" Plug 'vim-scripts/oceanlight'
"
" Plug 'gosukiwi/vim-atom-dark'
"
" Plug 'dracula/vim'
" " Plug 'kevinhwang91/nvim-bqf'
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
set title
" set titlestring
" set noshowmode
" set noruler       
" set laststatus=1 
set noshowcmd    
set indentexpr=
set noshowmatch  
set wrap  
set pb=10  
set winbl=10
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
if exists('g:started_by_firenvim')
     autocmd VimEnter set noshowmode
     autocmd VimEnter set noruler
     autocmd VimEnter set laststatus=0
     autocmd VimEnter set noshowcmd
     autocmd VimEnter set lines=100 
     autocmd VimEnter set columns=100
else
  " autocmd VimEnter * TZAtaraxis
 endif
set timeoutlen=0

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
au FileType tex setlocal indentexpr=

let g:tex_conceal = ""
set tags+=~/workspacemodules/tags
set tags+=~\workspacemodules\tags
set tags+=.\tags
set tags+=./tags
"set +=~/Dropbox/workspace/tags
  " set wrapmargin=1
" set shada="NONE"  
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set wrap
set linebreak 
set formatoptions+=w " set breakat=" "
" set list  " list disables linebreak whitespace
" set textwidth=0
set wrapmargin=-1
set hid
set autochdir
set guioptions-=r
set guioptions-=l
set inccommand=split
set mouse=a
noremap <LeftDrag> <LeftMouse>
noremap! <LeftDrag> <LeftMouse>
" set selectmode=mouse, key
set bs=2		" allow backspacing over everything in insert mode 
set undofile                " Save undo's after file closes
set undodir=~/.undo " where to save undo histories
set undolevels=1000000         " How many undos
set undoreload=10000		
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
set guifont=Fira\ Code\ Light:h10
colorscheme one
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
function Reset()
TZAtaraxisOff 
TZAtaraxisOn
endfunction   
" au FocusLost call TZAtaraxisOff 
" au FocusGained call TZAtaraxisOn 

au FileType vim,md set list
" au FileType vim,md colorscheme one

" au FileType tex,text,md syntax sync fromstart 
" 
" au FileType tex,text,md silent execute "!echo " . v:servername . " > ~/servername.txt"    
au FileType * silent execute "!echo " . v:servername . " > ~/servername.txt"
au UIEnter silent execute "!echo " . v:servername . " > ~/servername.txt"
function Server()
   silent execute "!echo " . v:servername . " > ~/servername.txt"
endfunction
nmap <leader>nn :call Server()

au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp  

au Filetype tex,text,md set tw=50
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


" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete 
autocmd FileType tex set omnifunc=latex#Complete
" autocmd Filetype tex setlocal fo=nt
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
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>e :Lf<cr>
nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>t :edit term://pwsh<cr>
nnoremap <c-,> :cprevious<cr>
nnoremap <c-.> :cnext<cr> 
vnoremap <m-s> :s///gc<left><left><left><left>
inoremap <m-s> <esc>:%s///gc<left><left><left><left>
nnoremap <m-s> :%s///gc<left><left><left><left>
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
nnoremap <up> 1<C-U>
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
nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>
nnoremap <c-l> :bnext<CR>
nnoremap <c-h> :bprevious<CR>
" tnoremap <Esc> <C-\> 
" nnoremap < :tabp<CR>
" nnoremap > :tabn<CR>
" nnoremap <leader>n :tabedit %<CR>
imap <M-j> <C-j>
map <M-m> <cmd>HopChar1<cr>$
" map <S-b> ?\$<CR>
map <M-w> <cmd>HopChar1<cr>}
map <M-b> <cmd>HopChar1<cr>{
map q: nop
map <S-C-q> <Esc>:qa!<CR>
map <m-q> <esc>:wq<cr>
map <m-Q> <esc>:q<cr>
map <m-c> :close<cr>
map <m-d> <Esc>:w<CR>:bdelete<CR>
noremap gf gq
noremap f /
noremap F ?
noremap # /\$<CR>v?\$<CR>
noremap $ /\$<CR>hv?\$<CR>l
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
noremap <D-d> <C-d>
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
map t <cmd>HopChar1AC<cr>
map T <cmd>HopChar1BC<cr>
map <m-.> <cmd>HopChar1<cr>.
map <m-space> <cmd>HopWord<cr>
" map <S-m-Space> <cmd>HopWord<cr>
" map t <ESC>:syntax off <CR>t: syntax on<CR>

" FZF 
"
noremap <m-t> :BTags<cr>
noremap S <Esc> :BLines<CR>
"noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
" Line search mapping 
" function! Jumpback() 
"   K=bufname()
"   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr>
" endfunction
noremap <m-b> <Esc>:Buffers<CR>
" noremap F <Esc>:GFiles<CR>
map <A-e> :FZF ~<CR> 
map <m-f> :FZF ~<CR> 

"miscellaneous
nmap <leader>g :ZenMode<CR>
" nmap <leader>p :Denite neoyank -default-action=append<CR>

" Latex stuff
" 
noremap <leader>ss :w<cr>:source $MYVIMRC<cr> 
noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr>
noremap <c-p> :<c-r>+<cr>
noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr>
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

function Sentence()
  let g:buf = bufname()
  te pwsh -c sentence.sh %
  silent echo "Print any character"
  " silent call getchar()
  e sentence_%
  " echo "Print any character"
  " call getchar()
  BLines
endfunction
noremap LL :lua require("zen-mode").close()<cr>:call Sentence()<cr>
" noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr>
function GitAsync()
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
        echo bufname()
        " lua require("zen-mode").close() 
        echo bufname()
        let b:filenamedir=expand('%:p:h')  
        echo b:filenamedir
        let b:filename=expand('%:t:r')
        let b:errors=b:filenamedir . "/buildback/" . b:filename .".log"
        echo b:errors
        exec "caddf" b:errors
        copen
        sleep 1
        exec "wincmd j"
        exec "/error"
    else
        exec "cclose" 
        sleep 1
        endif
endfunction

nnoremap <leader>s :silent call ToggleQuickFix()<CR>
function! ClearLatex()
  silent !rm ./buildback/* 
endfunction 

function! CompileLatex()
  silent call ClearLatex()
  let buf=bufname()
  silent te pwsh -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -output-directory="buildback" %
  execute "buffer" buf
  call ViewPdf()
endfunction

function! ViewPdf() 
wa
let g:buffmain=bufname()
silent execute "!echo " . v:servername . ' > ~/servername.txt'
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
let b:filenamePDFWindows="buildback\\" . filenameroot . ".pdf"
" echo b:filenamePDFWindows
let execstrLinux="silent te zathura --synctex-forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
let execstrWindows="silent te pwsh -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
exec execstrWindows
execute "buffer" buf
endfunction
nmap <leader>v :call ViewPdf()<cr><cr>
" nmap <leader>v :VimtexView<cr>
" let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
nmap <leader>ll :call CompileLatex()<cr>
nmap <leader>cl :call ClearLatex()<cr>
" nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --webtex -o backup.html;  cp backup.html %<cr>:e %<cr>

" nmap <leader>m :silent ! cp % backup;  pandoc  backup -s --mathjax[=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js] -o backup.html;  cp backup.html %<cr>:e %<cr>:w<cr>:qa<cr> 
"" mathml shenanigans

nmap <leader>m :w<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:w<cr>:qa<cr>






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
lua <<EOF
require'nvim-treesitter.configs'.setup { 
    --
    highlight = { enable = false },
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
    textobjects = { enable = true },
    indent = { enable = false },
}
EOF

set foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0] 

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

"Lsp instal 
lua <<EOF
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
EOF

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
["<Tab>"] = cmp.mapping(function(fallback) 
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
{ name = 'tags' },
{ name = 'vsnip', keyword_length = 1000 },
-- For ultisnips user.
      -- { name = 'ultisnips' },  
{ name = 'buffer', keyword_length = 1000 },
{ name = 'omni', keyword_length = 4},
       -- { name = 'spell' }, 
{ name = 'nvim_lsp', keyword_length = 4 },
      --{ name = 'treesitter', keyword_length = 4 },
--{ name = 'latex_symbols' },
}),
completion = {
    autocomplete = false 
    }
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
" lua <<EOF
" local true_zen = require("true-zen")
" true_zen.setup({
"  	ui = {
"  		bottom = {
"  			laststatus = 0,
"  			ruler = false,
"  			showmode = false,
"  			showcmd = false,
"  			cmdheight = 1,
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
" EOF
lua <<EOF
require('feline').setup({
    preset = 'noicon'
    })
EOF
" 
" 
" 
" " lua <<EOF
" " require('lualine').setup{
" " options = {disabled_filetypes = {'txt', 'text'}}
" " }
" " EOF
lua << EOF
  require("zen-mode").setup {
  window = {
    backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = .66, -- width of the Zen window
    height = 1, -- height of the Zen window
    -- by default, no options are changed for the Zen window
    -- uncomment any of the options below, or add other vim.wo options you want to apply
    options = {
      -- signcolumn = "no", -- disable signcolumn
      -- number = false, -- disable number column
      -- relativenumber = false, -- disable relative numbers
      -- cursorline = false, -- disable cursorline
      -- cursorcolumn = false, -- disable cursor column
      -- foldcolumn = "0", -- disable fold column
      -- list = false, -- disable whitespace characters
    },
  },
  plugins = {
    -- disable some global vim options (vim.o...)
    -- comment the lines to not apply the options
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
    gitsigns = { enabled = false }, -- disables git signs
    tmux = { enabled = false }, -- disables the tmux statusline
    -- this will change the font size on kitty when in zen mode
    -- to make this work, you need to set the following kitty options:
    -- - allow_remote_control socket-only
    -- - listen_on unix:/tmp/kitty
    kitty = {
      enabled = false,
      font = "+4", -- font size increment
    },
  },
  -- callback where you can add custom code when the Zen window opens
  on_open = function(win)
  end,
  -- callback where you can add custom code when the Zen window closes
  on_close = function()
  end,
}
EOF
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
" EOF
lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 } 
lua <<EOF
require('fm-nvim').setup{
	config =
	{
		edit_cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc...
		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow'
		height   = .9,
		width    = .9,
	}
}
EOF

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
"
" lua <<EOF
" require('spellsitter').setup {
"   hl = 'SpellBad', 
"   captures = {},  -- set to {} to spellcheck everything
"
"   -- Spellchecker to use. values:
"   -- * vimfn: built-in spell checker using vim.fn.spellbadword()
"   -- * ffi: built-in spell checker using the FFI to access the
"   --   internal spell_check() function
" spellchecker = 'vimfn',
" }
" EOF

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
lua << EOF
require('fzf-lua').setup{
-- ...
}
EOF

 
" lua << EOF
" require("stabilize").setup(
" {
"       force = true, -- stabilize window even when current cursor position will be hidden behind new window
" 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark>
" 	--ignore = {  -- do not manage windows matching these file/buftypes
" --		filetype = { "help", "list", "Trouble" },
" --		buftype = { "terminal", "quickfix", -- "loclist" }
" --	}
" }
" )
" EOF
" lua <<EOF
" require('dd').setup()
" EOF
" lua << EOF
" local opts = {
"   log_level = 'info',
"   auto_session_enable_last_session = false,
"   auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
"   auto_session_enabled = false,
"   auto_save_enabled = nil,
"   auto_restore_enabled = nil,
"   auto_session_suppress_dirs = nil
" }
" require('auto-session').setup(opts)
" EOF

" lua << EOF
" if exists('g:started_by_firenvim')
"   ZenMode
" else
"   set laststatus=2
" endif

" lua <<EOF
" require('neoclip').setup({
"       history = 1000,
"       enable_persistant_history = false,
"       db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
"       filter = nil,
"       preview = true,
"       default_register = '"',
"       content_spec_column = false,
"       on_paste = {
"         set_reg = false,
"       },
"       keys = {
"         i = {
"           select = '<cr>',
"           paste = '<c-p>',
"           paste_behind = '<c-k>',
"           custom = {},
"         },
"         n = {
"           select = '<cr>',
"           paste = 'p',
"           paste_behind = 'P',
"           custom = {},
"         },
"       },
"    })
" EOF
" lua <<EOF
" local saga = require 'lspsaga'{
" saga.init_lsp_saga() 
" }
" EOF

"au FileType tex autocmd User SneakLeave set syntax=tex
"au FileType tex autocmd User SneakEnter set syntax=text
"
"
"

"
" 'tCommen20
" let g:tcommentMapLeaderOp1=';' 
" "map <leader>c <Leader>__ 
"" function! RestoreRegister()
"   let @" = s:restore_reg
"   return ''
" endfunction
" function! s:Repl()
"     let s:restore_reg = @"
"     return "p@=RestoreRegister()\<cr>"
" endfunction
"
" " NB: this supports "rp that replaces the selection by the contents of @r
" vnoremap <silent> <expr> p <sid>Repl()

" " Change Color when entering
" Insert Mode augroup CursorLine
"    au!
"  if has("gui_running")
"  else
"      au InsertEnter * setlocal cursorline
"        au InsertLeave * setlocal nocursorline
"     endif
"        augroup END
" function! DelTagOfFile(file)
"   let fullpath = a:file
"   let cwd = getcwd()
"   let tagfilename = cwd . "/"
"   let f = substitute(fullpath, cwd . "/", "", "")
"   let f = escape(f, './')
"   let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
"   let resp = system(cmd)
" endfunction
" function! Break()
"  let n=130-virtcol('.')
"  <Esc>ni <Esc><Esc>
" endfunction
" function Gitview()
"    cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages
" endfunction
" fuzzy search
" function! s:config_fuzzyall(...) abort
"   return extend(copy({
"   \   'converters': [
"   \     incsearch#config#fuzzy#converter(),
"   \     incsearch#config#fuzzyspell#converter()
"   \   ],
"   \ }), get(a:, 1, {}
"   ))
" endfunction
" noremap <silent><expr> f incsearch#go(<SID>config_fuzzyall())
" noremap <silent><expr> F  incsearch#go(<SID>config_fuzzyall({'command': '?'}))
" noremap <silent><expr> gF incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))
" map f <Plug>(incsearch-fuzzyspell-/)
" map F <Plug>(incsearch-fuzzyspell-?)
" map gF <Plug>(incsearch-fuzzyspell-stay)
" map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR>
" let g:deoplete#enable_at_startup = 1
" map <silent> <leader>g :silent call Gitview()
" map <silent> <leader>g :silent !cd /root/web2 ; git add .<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox. 
"Load some useful plugins with vundle 
"
"asdf asldfkj
" hi! link Sneak Normal
" hi! link SneakScope Normal   test test2 test3

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \ "rg --column --line-number --no-heading --color=always --smart-case " .
"   \ <q-args>, 1, fzf#vim#with_preview(), <bang>0)
"
"" au GUIEnter * set fullscreen
" if has("gui_running")
  " set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
   " set foldcolumn=10
   " set formatoptions=ant
" set wrapmargin=0
" set nohlsearch
" set = ~/workspacemodules/tags
" highlight SignColumn guibg=bg
"       endif    
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
  " autocmd BufWinLeave *.* mkview
  " autocmd BufWinEnter *.* silent loadview
   " set foldcolumn=2
"  highlight foldcolumn ctermfg=256 ctermbg=bg
" autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg 
" inoremap <cr> <esc>:w<cr>i<cr> 
"" set tm=500
" set macmeta
" auto reload vimrc when editing it
" let g:github_function_style = "italic"
" let g:github_sidebars = ["qf", "vista_kind", "terminal", "vimplug"]
" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:github_colors = [hint = "orange", error = "#ff0000"]
" Load the colorscheme
" colorscheme github_dark
"" terminal color settings 
" Example config in VimScript
" let g:github_function_style = "italic"
" let g:github_sidebars = ["qf", "vista_kind", "terminal", "vimplug"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:github_colors = [hint = "orange", error = "#ff0000"]
" Load the colorscheme
" colorscheme github_dark 
" set background=dark 
" if has("gui_running")	" GUI color and font settings
"   set guifont=Fira\ Code:h22
"   " colorscheme gruvbox 
"   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none
" else
"  colorscheme one
" colorscheme material  
" let g:material_style = 'palenight'  
" let g:material_style = 'lighter'
" highlight Normal ctermbg=none 
"   " let g:vimtex_quickfix_method='pplatex' 
" let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
"    function! UpdateSkim(status)
"      if !a:status | return | endif
"
"      let l:out = b:vimtex.out()
"      let l:tex = expand('%:p')
"      let l:cmd = [g:vimtex_view_general_viewer, '-r']
"      if !empty(system('pgrep Skim'))
"        call extend(l:cmd, ['-g'])
"      endif
"      if has('nvim')
"        call jobstart(l:cmd + [line('.'), l:out, l:tex])
"      elseif has('job')
"        call job_start(l:cmd + [line('.'), l:out, l:tex])
"      else
"        call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
"      endif
"    endfunction
" let g:vimtex_latexmk_build_dir = './build'
" \ 'build_dir' : './build',
" 
"     let g:vimtex_compiler_latexmk = {
"     \ 'background' : 0,
"         \ 'callback' : 1,
"     \ 'continuous' : 1,
"     \ 'options' : [
"     \   '-pdf',
"     \   '-verbose',
"     \   '-file-line-error',
"     \   '-synctex=1',
"     \   '-interaction=nonstopmode',
"     \ ],
"     \}
" let g:vimtex_compiler_progname = 'nvr'
" " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR>
" let g:vimtex_quickfix_mode = 1
" let g:vimtex_fold_enabled = 0
" let g:vimtex_fold_manual = 1


" let g:vimtex_fold_types= {
"           \ 'preamble' : {},
"           \ 'comments' : {'enabled' : 1},
"           \ 'markers' : {},
"           \ 'sections' : {
"           \   'parse_levels' : 0,
"           \   'sections' : [      
"           \     '%(add)?part',
"           \     '%(chapter|addchap)',
"           \     '%(section|addsec)',
"           \     'subsection',
"           \     'subsubsection',
"           \   ],
"           \   'parts' : [         
"           \     'appendix',
"           \     'frontmatter',
"           \     'mainmatter',
"           \     'backmatter',
"           \   ],
"           \ },
"           \}

"  TermClose * if v:event == 12 || v:event == 0 bdelete endif
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   incremental_selection = {
"     enable = true,
"     keymaps = {
"       init_selection = "gnn",
"       node_incremental = "grn",
"       scope_incremental = "grc",
"       node_decremental = "grm",
"     },
"   },
" }
" EOF
" lua <<EOF
" require('neoscroll').setup{
"     -- All these keys will be mapped to their corresponding default scrolling animation
"     mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
"                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
"     hide_cursor = true,          -- Hide cursor while scrolling
"     stop_eof = true,             -- Stop at <EOF> when scrolling downwards
"     use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
"     respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
"     cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
"     easing_function = nil,        -- Default easing function
"     pre_hook = nil,              -- Function to run before the scrolling animation starts
"     post_hook = nil,              -- Function to run after the scrolling animation ends
"     }
" EOF
" 
" " set foldlevel=20
" " set foldmethod=expr
" " set foldexpr=nvim_treesitter#foldexpr()
" inoremap .<Esc> .<CR><Esc><leader>j
" inoremap .<Space> .<CR><Esc><leader>j
" noremap S :S 
"
"
" function! Sneak()
"     hi! link Sneak Normal
"     hi! link SneakScope Normal
"     execute 'normal! \<Plug>Sneak_s'
"     syntax on
" endfunction
 
" map N <Plug>Sneak_,
" map t <Plug>(smalls-excursion)
" let g:smalls_auto_jump=1
" let g:smalls_auto_jump_timeout=0
    
" 
" silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m -a ; git push --all origin; fi'
" let g:vimtex_view_general_options = '-r @line @pdf @
""" pandoc backup -s html -o markdown cp backup.html %<cr>:e %<cr>:w<cr>:qa<cr>  asldkfj
" <cr>
" ; pandoc backup.html > backup.md; cp backup.md %<cr>:e %<cr>
" NB: this supports "rp that replaces the selection by the contents of @r
" Auto updating C
" autocmd VimLeave * exe ":silent ! c -R"
"
"" lua << EOF
" local function setup_servers()
"   require'lspinstall'.setup()
"   local servers = require'lspinstall'.installed_servers()
"   for _, server in pairs(servers) do
"     require'lspconfig'[server].setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}
"   end
" end
" 
" setup_servers()
" 
" -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
" require'lspinstall'.post_install_hook = function ()
"   setup_servers() -- reload installed servers
"   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
" end
" EOF
" autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

      
"other maps   
inoremap <cr> <cr><space><esc>"_s
nnoremap o o<space><esc>"_s
" map cr
" inoremap <cr> <esc>$a<cr><space><esc>"_s
" inoremap <m-cr> <cr><space><esc>"_s
let g:neovide_fullscreen=v:true
if exists('g:gonvim_running')
    "goneovim specific stuff
elseif exists('g:neovide')
   set guifont=Fira\ Code\ Light:h20
end

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
"
