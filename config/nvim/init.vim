call plug#begin('~/.vim/plugged')
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hoob3rt/lualine.nvim', 
Plug 'karb94/neoscroll.nvim' 
Plug 'folke/twilight.nvim', { 'branch': 'main' }
Plug 'f3fora/cmp-spell'    
" Plug 'Pocco81/TrueZen.nvim', { 'branch': 'main' }
Plug 'shaunsingh/nord.nvim'  
"Plug 'vim-commentary'
"Plug 'b3nj5m1n/kommentary'
" Plug 'simnalamburt/vim-mundo'
Plug 'neovim/nvim-lspconfig',  { 'branch': 'main' } 
" Plug 'glepnir/lspsaga.nvim'
" If you are using Vim-Plug
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' } 
Plug 'kdheepak/cmp-latex-symbols', { 'branch': 'main' } 
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' }
Plug 'hrsh7th/vim-vsnip', { 'branch': 'main' } 
Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main' } 
Plug 'ray-x/cmp-treesitter'
" For luasnip user. 
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'steelsojka/completion-buffers'
Plug 'voldikss/vim-floaterm' 
"Plug 'nvim-treesitter/completion-treesitter'
"Plug 'vifm/vifm'
"Plug 'TimUntersberger/neogit' 
" Plug 'tpope/vim-fugitive' 
"Plug 'junegunn/gv.vim'
Plug 'cohama/agit.vim'
Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main' }
"Plug 'pope/vim-obsession'
"Plug 'xolox/vim-easytags'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'
Plug 'xolox/vim-misc'
Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'kevinhwang91/nvim-bqf'
Plug 'justinhoward/fzf-neoyank' 
Plug 'stefanhepp/pplatex'
" lua require("lsp_config")
Plug 'hrsh7th/vim-vsnip'
Plug 'svermeulen/vim-cutlass'
"Plug 'kristijanhusak/completion-tags'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua', 
"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/diagnostic-nvim'
" Plug 'rafamadriz/friendly-snippets'  
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Group dependencies, vim-snippets depends on ultisnips 
 Plug 'tpope/vim-surround'
" Plug 'neovim/node-host'
Plug 'projekt0n/github-nvim-theme',  { 'branch': 'main' }
Plug 'rktjmp/lush.nvim', { 'branch': 'main' } 
Plug 'rakr/vim-one' 
Plug 'adisen99/codeschool.nvim'
" Plug 'brennier/quicktex'
" Plug 'ellisonleao/gruvbox.nvim',  {'branch': 'main' }
" Plug 'cyansprite/Extract'
Plug 'gioele/vim-autoswap'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
" Plug 't9md/vim-smalls'
Plug 'skywind3000/asyncrun.vim'
Plug 'kevinhwang91/nvim-bqf', { 'branch': 'main' }
" if you install fzf as system package like `pacman -S fzf` in ArchLinux,
" please comment next line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" highly recommended
Plug 'sindrets/diffview.nvim', { 'branch': 'main' } 
" Plug 'sindrets/diffview.nvim', { 'branch': 'main' } 
"Plug 'rmagatti/auto-session', { 'branch': 'main' }
Plug 'justinmk/vim-sneak'
Plug 'Shougo/neoyank.vim' 
if has('nvim')
   Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
 else
   Plug 'Shougo/denite.nvim'
   Plug 'roxma/nvim-yarp'
   Plug 'roxma/vim-hug-neovim-rpc'
 endif
" Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj
Plug 'tpope/vim-fugitive'
Plug 'eugen0329/vim-esearch'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Raimondi/vim_search_objects'
Plug 'terryma/vim-multiple-cursors'
" " On-demand loading
Plug 'junegunn/goyo.vim'
" " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'equalsraf/neovim-gui-shim'

"  Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"
"
"  Plug 'ervandew/supertab'
" Plug 'Shougo/vimproc.vim'

Plug 'easymotion/vim-easymotion'

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
 '}

Plug 'lifepillar/vim-solarized8'

Plug 'vim-scripts/AutoTag'

Plug 'vim-scripts/vim-auto-save'

" Plug 'vim-pandoc/vim-pandoc'

Plug 'yashamon/vim-snippets'

Plug 'lervag/vimtex'
" colorschemes
" 
Plug 'kyazdani42/blue-moon'  
Plug 'marko-cerovac/material.nvim', { 'branch': 'main' }

Plug 'reedes/vim-colors-pencil'

Plug 'vim-scripts/oceanlight'

Plug 'gosukiwi/vim-atom-dark'

Plug 'dracula/vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Add plugins to &runtimepath
call plug#end() 


"General Settings  

set wrap  

set pb=30 
set switchbuf=newtab
" let g:python3_host_prog='/usr/bin/python3.9'
" let g:python3_host_prog='/usr/bin/python3.9'

set clipboard+=unnamedplus	" yank to the system register (*) by default
" TAB setting{
set expandtab        "replace <TAB> with spaces
set softtabstop=3 
set shiftwidth=3 
set termguicolors  
syntax enable
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
" au GUIEnter * set fullscreen
" if has("gui_running")
  " set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
   " set foldcolumn=10
   " set formatoptions=ant
" set wrapmargin=0
" set nohlsearch
" " set tags= ~/.tags
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
set spelllang=en  
autocmd VimEnter * ZenMode
au VIMEnter set spell 
 set timeout
   set timeoutlen=0
     set ttimeoutlen=0

       "NeoVim handles ESC keys as alt+key set this to solve the
       "problem
         if has('nvim')
              set ttimeout
                   set ttimeoutlen=0
                     endif
  au VIMEnter * let g:surround_108 = {
     \'q':  " ``\r''"
     \ }
let g:tex_flavor = "latex"
let g:tex_isk = '@,48-57,58,_,192-255'
let g:tex_conceal = ""

set tags+=~/texmf/bibtex/bib/tags
"set tags+=~/Dropbox/workspace/tags
  " set formatoptions=ant
  " set wrapmargin=1
" set tw=80
" set shada="NONE"
set wrap
set linebreak
" set breakat=" "
" set list  " list disables linebreak
set textwidth=0
set wrapmargin=0
set hid
set autochdir
set guioptions-=r
set guioptions-=l
set inccommand=split
set mouse=
set bs=2		" allow backspacing over everything in insert mode 
set undofile                " Save undo's after file closes
set undodir=~/workspace/undo " where to save undo histories
set undolevels=100000         " How many undos
set undoreload=10000		
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set nohlsearch
set noswapfile
set showmatch		" Cursor shows matching ) and }
set nocursorline
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu
let maplocalleader = "\\"
" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

"set autoindent		" auto indentation
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
"set smarttab		" insert tabs on the start of a line according to context

" disable sound on errors
set noerrorbells
set novisualbell
set tm=500
" set macmeta
" auto reload vimrc when editing it
" autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
syntax on		" syntax highlight
" set hlsearch		" search highlighting
"
if has("gui_running")	" GUI color and font settings
  set guifont=Source\ Code\ Pro \Regular:h16
  set background=dark 
"  set cursorline        " highlight current line
  " colorscheme gruvbox 
  highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none
else
" terminal color settings
set background=dark
" Example config in VimScript
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "vimplug"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:github_colors = [hint = "orange", error = "#ff0000"]
" Load the colorscheme
" colorscheme github_dark 
" set background=dark 
set background=dark
 colorscheme blue-moon
" colorscheme material  
" let g:material_style = 'palenight'  
" let g:material_style = 'lighter'

set background=light
" highlight Normal ctermbg=none
hi clear SpellBad
hi SpellBad cterm=underline
" Set style for gVim
hi SpellBad gui=undercurl
hi MatchParen cterm=undercurl ctermbg=none ctermfg=magenta
endif

"Autocommands
"


autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
au FileType Makefile set noexpandtab  
au FileType tex,text, set spelllang=en
au FileType tex,text,tex set spell    
au FileType tex,text,tex syntax sync fromstart
au FileType tex,text,tex silent execute "!echo " . v:servername . " > ~/servername.txt"   
au FileType tex,text,tex hi SpellBad cterm=undercurl
au Filetype tex,text,tex vmap q xi<CR><CR><CR><CR><ESC>kkicom<tab><esc>p<A-j>

" au FileType tex set background=dark 
au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true} 
au TextYankPost * call neoyank#_append() 

         "Some functions
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
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete 
autocmd FileType tex set omnifunc=latex#Complete
autocmd Filetype tex setlocal fo=nt
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
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1



noremap q <nop> 
map <leader>q q
nnoremap <leader>sv :source $MYVIMRC<CR>
"nnoremap <leader>e :NERDTreeFind<CR> 
nnoremap <leader>e :FloatermNew vifm<cr> 
nnoremap <leader>t :FloatermToggle<cr> 


vnoremap <m-s> :s///gc<left><left><left><left> 
inoremap <m-s> <esc>:%s///gc<left><left><left><left>
nnoremap <m-s> :%s///gc<left><left><left> 
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
map <up> 1<C-y>
imap <up> <nop>
map <down> 1<C-e>
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
vnoremap p "0dP   
noremap D "0D
nnoremap dd "0dd
noremap c "0c
noremap C "_C
" noremap s "_x
vnoremap x "+x
vnoremap y "+y 
nnoremap y "+y 
nnoremap p "+p 
nnoremap q p
" Softwrap 
nmap D "0dg$
nmap V vg$
nmap A g$a 
map 0 g^
map 9 g$

map <Leader>n <Plug>(miniyank-cycle)
nnoremap <Left> :bnext<CR>
nnoremap <Right> :bprevious<CR>
" tnoremap <Esc> <C-\> 
noremap < :tabp<CR>
nnoremap > :tabn<CR>
" nnoremap <leader>n :tabedit %<CR>
imap <M-j> <C-j>
map <S-w> /\$<CR>
map <S-b> ?\$<CR>
map <A-w> /}<CR>
map <A-b> ?{<CR>

map <C-q> <Esc>:qa!<CR> 
map <m-q> <esc>:wqa<cr>  
" map <S-m-q> <esc>:wq<cr> 
map <m-c> <esc>:close<cr>  
map <M-d> <Esc>:bdelete<CR>
noremap f /
noremap F ?
" inoremap .<Esc> .<CR><Esc><leader>j
" inoremap .<Space> .<CR><Esc><leader>j
" noremap S :S 
"
"
" function! Sneak()
"     syntax off
"     hi! link Sneak Normal
"     hi! link SneakScope Normal
"     execute 'normal! \<Plug>Sneak_s'
"     syntax on
" endfunction
 map n <Plug>Sneak_;
" map N <Plug>Sneak_,
" map t <Plug>(smalls-excursion)
" let g:smalls_auto_jump=1
" let g:smalls_auto_jump_timeout=0


    " xmap t <Plug>Sneak_s
    " xmap T <Plug>Sneak_S
   " omap t <Plug>Sneak_s
    " omap T <Plug>Sneak_S
noremap # /\$<CR>v?\$<CR>
noremap @ /}<CR>v?{<CR>
map j gj
map k gk
noremap <Space> .
vnoremap <Space> t <cr>
noremap <leader>r <C-r>
map K <C-u>
map J <C-d>
map <C-j> <C-e>
map <C-k> <C-y>
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
map ;s <Esc>:w<CR>
noremap <A-d> <C-d>
noremap <M-d> <C-d>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
map <Leader>tt :term CR; etags -R
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <Leader>y :YRGetElem<CR>
map ' "
inoremap <D-]> <C-x><C-]>
inoremap <C-]> <C-x><C-]> 


" text editting mappings

 " " au FileType tex,text,md noremap <CR> <Esc>a<Space><Esc>80i <Esc><Esc>vg0di
" <<<<<<< HEAD
 " au FileType tex,text,md inoremap <CR> <Space><Space><Esc>80i <Esc><Esc>vg0di
" =======
"
" "  au FileType tex,text,md inoremap <CR> <Space><Space><Esc>80i <Esc><Esc>vg0di
"
" " au FileType tex,text,md inoremap <CR> <Space><Space><Esc>80i <Esc><Esc>vg0di
"
" >>>>>>> d28191cda0221ed8f5d2a044c7f97c403c6ed642

au FileType tex,text,md nmap 0 g^
au FileType tex,text,md noremap 9 g$
" au FileType tex,text,md nmap A g_a
au FileType tex,text,md nnoremap dd "_g^dg$g^
" au FileType tex,text,md inoremap <A-i> <CR>
" au FileType tex,text,md nnoremap <A-i> a<CR>
" au FileType tex,text,md nnoremap <CR> J0

"au FileType tex,text,md inoremap <A><CR> <CR>
" au FileType tex,text,md inoremap <CR> <Esc><CR>
" au FileType tex,text,md inoremap . .<CR><ESC>J0i
" au FileType tex,text,md inoremap <leader>. .

" au FileType tex,text,md inoremap .<CR> .<CR><ESC>J0
" au FileType tex,text,md inoremap .<Space> .<CR><ESC>J0
" au FileType tex,text,md inoremap .<ESC> .<CR><ESC>J0
au FileType tex,text,md inoremap <leader>cr <CR>
au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 



"Neovim mappings
" :tnoremap <S-h> <C-\><C-n><C-w>h
" :tnoremap <S-j> <C-\><C-n><C-w>j
" :tnoremap <S-k> <C-\><C-n><C-w>k
" :tnoremap <S-l> <C-\><C-n><C-w>l
" tnoremap <Left> :tbnext<CR>
" tnoremap <Right> :tbprevious<CR>
" tnoremap <Leader>e <C-\><C-n> 
" imap <Backspace> \

"  Sneak
let g:sneak#use_ic_scs = 1

map t <Plug>Sneak_s
" map t <ESC>:syntax off <CR>t: syntax on<CR>
"  map t :syntaxoff <Plug>Sneak_s
map T <Plug>Sneak_S
let g:sneak#s_next = 1
 let g:sneak#label = 1

" FZF 
"
noremap <m-t> :BTags<cr>
noremap S <Esc>:BLines<CR>    
"noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr>
" Line search mapping
noremap <m-l> viwhy<esc>:bdelete<cr>:<c-r>+<cr>:ZenMode<cr>  
noremap <m-b> <Esc>:Buffers<CR> 
noremap F <Esc>:GFiles<CR> 
map <A-e> :FZF ~<CR>

" vimtex settings
"
"
"
" let g:vimtex_view_general_viewer
"          \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = "zathura"
let g:vimtex_indent_enabled =1
let g:vimtex_syntax_enabled=1
"noremap L <Esc>:AsyncRun sentence.sh %;nvr sentence_%<cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 
function! Sentence() 
  AsyncRun sentence.sh %; nvr sentence_%  
  echo "Print any character"
  call getchar()
  BLines
endfunction
noremap L <esc>:call Sentence()<cr>


function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        VimtexErrors
    else
        cclose 
        ZenMode
        endif
endfunction

au filetype tex nnoremap <silent> <leader>s :call ToggleQuickFix()<cr>

" let g:vimtex_quickfix_method='pplatex' 
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

    let g:vimtex_compiler_latexmk = {
    \ 'background' : 0,
        \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:vimtex_compiler_progname = 'nvr'
nmap  <leader>v <Esc>:w<CR>:VimtexView<CR>
let g:vimtex_quickfix_mode = 1
let g:vimtex_fold_enabled = 0
let g:vimtex_fold_manual = 1


let g:vimtex_fold_types= {
          \ 'preamble' : {},
          \ 'comments' : {'enabled' : 1},
          \ 'markers' : {},
          \ 'sections' : {
          \   'parse_levels' : 0,
          \   'sections' : [      
          \     '%(add)?part',
          \     '%(chapter|addchap)',
          \     '%(section|addsec)',
          \     'subsection',
          \     'subsubsection',
          \   ],
          \   'parts' : [         
          \     'appendix',
          \     'frontmatter',
          \     'mainmatter',
          \     'backmatter',
          \   ],
          \ },
          \}



" let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
" nmap <leader>l :silent execute "AsyncRun latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder %"<CR>
nmap <leader>l :VimtexCompile<CR>
" nmap <leader>s <Esc>:VimtexErrors<CR>
map <leader>g :ZenMode<CR>
nmap <leader>p :Denite neoyank -default-action=append<CR>

" NB: this supports "rp that replaces the selection by the contents of @r
" Auto updating Ctags
" autocmd VimLeave * exe ":silent ! ctags -R"
map :tags  exe ":silent ! /usr/local/bin/ctags -R"

"Nerd Tree
" map <leader>e :NERDTreeFind<CR>
" map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
"
"
"
"Vifm
let g:vifmLiveCwd=1
let g:vifmUseCurrent=1

"Autosave and autocommit   alsdfj

let g:auto_save = 1  
"au FileType vim let g:autosave = 0
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 0
autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m -a ; git push --all origin; fi'

" let inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
" autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add % ; git commit -m -a ; git push --all origin; fi'
" autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m ; git push --all origin; fi'
" "Highlight
" hi MatchParen cterm=underline ctermbg=none ctermfg=none
" hi MatchParen guibg=NONE guifg=green gui=NONE
    "
    "
    "
    " UndoTree {
        noremap <Leader>u <esc>:UndotreeToggle<CR>
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
        noremap <D-z> u
        noremap <S-C-z> <C-r>
        " noremap <C-z> u
    " }

" Latex shortcuts
"Latex compile. 
"them to an external terminal and run there.
" map <Leader>l :tabe %<CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder %<CR><leader>e
"Zathura forward search
" map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.'):1:%:p %:p:h/build/%:r.pdf<CR><CR>
"source ~/.anyname  
"au filetype tex filetype indent off
"  GUI Stuff   
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "\<args\>") | let g:Guifont="<args>"
let g:Guifont="Source Code Pro Light:h16"

" Deoplete

" map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR>
set directory=$HOME/Downloads


"LUA
lua <<EOF
require'nvim-tree'.setup()
EOF
lua <<EOF
require'nvim-treesitter.configs'.setup { 
    --
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    indent = { enable = true },
}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF

lua <<EOF
require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,        -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,              -- Function to run after the scrolling animation ends
})
EOF

" set foldlevel=20
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]


" Quicktex
" let g:quicktex_trigger="\t"
" let g:quicktex_tex = {
"     \' ' : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
"     \'m'   : '\( <+++> \) <++>',
"     \'prf' : "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
" \}
"
" let g:quicktex_math = {
"     \' ': "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
"     \'fr'   : '\mathcal{R} ',
"     \'eq'   : '= ',
"     \'set'  : '\{ <+++> \} <++>',
"     \'frac' : '\frac{<+++>}{<++>} <++>',
"     \'one'  : '1 ',
"     \'st'   : ': ',
"     \'in'   : '\in ',
"     \'bn'   : '\mathbb{N} ',
" \}
"
" NOTE: You can use other key to expand snippet.

" vsnip stuff 
"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <A-space> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-space> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
"imap <tab> <Plug>(completion_smart_tab)
"imap <s-tab> <Plug>(completion_smart_s_tab)
"let g:completion_enable_snippet = 'vim-vsnip'
"let g:vsnip_snippet_dir = '$HOME/dotfiles/snippets' 
"let g:completion_trigger_keyword_length = 3
" completion nvim
"
"
"
"
"function! PackagerInit()
  "call packager#add('kristijanhusak/vim-packager')
  "call packager#add('nvim-lua/completion-nvim')
  "call packager#add('hrsh7th/vim-vsnip-integ')
"endfunction

" let g:completion_chain_complete_list = {
"       \ 'default': [
"       \    {'complete_items': ['lsp']},
"       \    {'complete_items': ['tags']},
"       \    {'complete_items': ['snippet']}, 
"       \    ]}

" Or combine with lsp completion-nvim
"let g:completion_chain_complete_list = {
      "\ 'default': [
      "\    {'complete_items': ['snippet', 'treesitter', 'buffers', 'tags']},  
      "\  ]}
"let g:completion_enable_auto_popup = 1
"imap <silent> <M-Space> <Plug>(completion_trigger) 

let g:vsnip_snippet_dir = '~/dotfiles/snippets'
" imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" 
" " Expand or jump
" imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
  smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
"
lua << EOF
require'lspconfig'.texlab.setup{}

EOF
lua << EOF
require'lspconfig'.jsonls.setup{}
EOF



lua << EOF
require'lspconfig'.rust_analyzer.setup{}
EOF
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

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {'pyright', 'tsserver', 'texlab', 'jsonls'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF

"lua require'lspconfig'.texlab.setup{on_attach=require'completion'.on_attach}

"Lsp install

lua << EOF
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
EOF

nnoremap <leader>y :FZFNeoyank<cr>
nnoremap <leader>Y :FZFNeoyank  P<cr>
vnoremap <leader>y :FZFNeoyankSelection<cr>

nnoremap <leader>p :FZFNeoyank +<cr> 
nnoremap <leader>1 :FZFNeoyank 1<cr>
nnoremap <leader>P :FZFNeoyank " P+<cr>
vnoremap <leader>p :FZFNeoyankSelection +<cr>
" map <leader>c <Plug>NERDCommenterToggle

" Replace the default dictionary completion with fzf-based fuzzy completion

" inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')  


let g:agit_enable_auto_refresh = 1
let g:agit_max_author_name_width =1
let g:agit_log_width = 10 

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

local cmp = require('cmp')
cmp.setup {
 snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
  -- ... Your other configuration ...
end,
},
mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-x>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
-- ... Your other mappings ...
["<Tab>"] = cmp.mapping(function(fallback) 
      if vim.fn["vsnip#available"]() == 1
        then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
     elseif vim.fn.pumvisible() == 1 then
        feedkey("<C-n>", "n")
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
-- ... Your other mappings ...

},
-- ... Your other configuration ...
sources = {
      -- For vsnip user.
      { name = 'vsnip', keyword_length = 4 },
         -- For luasnip user.
      -- { name = 'luasnip' },
-- For ultisnips user.
      -- { name = 'ultisnips' },  
   
    { name = 'buffer', keyword_length = 4 },
    { name = 'omni' , keyword_length = 4},
       -- { name = 'spell' }, 
    { name = 'treesitter', keyword_length = 4  },
    { name = 'tags' , keyword_length = 4 }, 
    { name = 'nvim_lsp', keyword_length = 4 },      
--{ name = 'latex_symbols' },
} 
--{ completion.keyword_length = 3 }
} 
EOF

" LSP mappings   
"" LSP mappings 
noremap <leader>ca  :lua vim.lsp.buf.code_action()<CR>
noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>


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
" 	ui = {
" 		bottom = {
" 			laststatus = 0,
" 			ruler = false,
" 			showmode = false,
" 			showcmd = false,
" 			cmdheight = 1,
" 		},
" 		top = {
" 			showtabline = 0,
" 		},
" 		left = {
" 			number = false,
" 			relativenumber = false,
" 			signcolumn = "no",
" 		},
" 	},
" 	modes = {
" 		ataraxis = {
" 			-- left_padding = 20,
" 			-- right_padding = 20,
" 			top_padding = 0,
" 			bottom_padding = 0,
" 			ideal_writing_area_width = {60},
" 			auto_padding = true,
" 			keep_default_fold_fillchars = true,
" 			custom_bg = {"none", ""},
" 			bg_configuration = true,
" 			quit = "untoggle",
" 			ignore_floating_windows = true,
" 			affected_higroups = {
" 				NonText = true,
" 				FoldColumn = true,
" 				ColorColumn = true,
" 				VertSplit = true,
" 				StatusLine = true,
" 				StatusLineNC = true,
" 				SignColumn = true,
" 			},
" 		},
" 		focus = {
" 			margin_of_error = 5,
" 			focus_method = "experimental"
" 		},
" 	},
" 	integrations = {
" 		vim_gitgutter = false,
" 		galaxyline = false,
" 		tmux = false,
" 		gitsigns = false,
" 		nvim_bufferline = false,
" 		limelight = false,
" 		twilight = false,
" 		vim_airline = false,
" 		vim_powerline = false,
" 		vim_signify = false,
" 		express_line = false,
" 		lualine = true,
" 		lightline = false,
" 		feline = false
" 	},
" 	misc = {
" 		on_off_commands = false,
" 		ui_elements_commands = false,
" 		cursor_by_mode = false,
" 	}
" })
" EOF
lua <<EOF
require('lualine').setup()
EOF
lua <<EOF
require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = true,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,        -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,              -- Function to run after the scrolling animation ends
})

EOF
lua << EOF
  require("zen-mode").setup {
  window = {
    backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = .70, -- width of the Zen window
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
lua <<EOF
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
EOF




lua <<EOF 
vim.o.background = "dark" -- or "light" for light mode
vim.cmd(colorscheme codeschool)
EOF

" lua <<EOF
" local saga = require 'lspsaga'
" 
" -- add your config value here
" -- default value
" -- use_saga_diagnostic_sign = true
" -- error_sign = '',
" -- warn_sign = '',
" -- hint_sign = '',
" -- infor_sign = '',
" -- dianostic_header_icon = '   ',
" -- code_action_icon = ' ',
" -- code_action_prompt = {
" --   enable = true,
" --   sign = true,
" --   sign_priority = 20,
" --   virtual_text = true,
" -- },
" -- finder_definition_icon = '  ',
" -- finder_reference_icon = '  ',
" -- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
" -- finder_action_keys = {
" --   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
" -- },
" -- code_action_keys = {
" --   quit = 'q',exec = '<CR>'
" -- },
" -- rename_action_keys = {
" --   quit = '<C-c>',exec = '<CR>'  -- quit can be a table
" -- },
" -- definition_preview_icon = '  '
" -- "single" "double" "round" "plus"
" -- border_style = "single"
" -- rename_prompt_prefix = '➤',
" -- if you don't use nvim-lspconfig you must pass your server name and
" -- the related filetypes into this table
" -- like server_filetype_map = {metals = {'sbt', 'scala'}}
" -- server_filetype_map = {}
" 
" saga.init_lsp_saga {
"   your custom option here
" }
" 
" or --use default config
" saga.init_lsp_saga()
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
"   let tagfilename = cwd . "/tags"
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
"
" hi! link Sneak Normal
" hi! link SneakScope Normal 

 " let g:material_style = 'palenight'  
