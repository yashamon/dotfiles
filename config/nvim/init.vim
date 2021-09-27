call plug#begin('~/.vim/plugged')    
Plug 'preservim/nerdcommenter'  

Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'

"Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'kevinhwang91/nvim-bqf'
Plug 'justinhoward/fzf-neoyank' 
Plug 'stefanhepp/pplatex'
" lua require("lsp_config")
Plug 'hrsh7th/vim-vsnip'
Plug 'svermeulen/vim-cutlass'
Plug 'kristijanhusak/completion-tags'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/completion-nvim'
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
" Plug 'sindrets/diffview.nvim', { 'branch': 'main' }
" Plug 'sindrets/diffview.nvim', { 'branch': 'main' }
" Plug 'rmagatti/auto-session', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'justinmk/vim-sneak'
" Plug 'folke/zen-mode.nvim', { 'branch': 'main' }
Plug 'kyazdani42/blue-moon'
"  Plug 'bfredl/nvim-miniyank'
" Plug 'Shougo/neoyank.vim'
" if has('nvim')
"   Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/denite.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
Plug 'Shougo/neoyank.vim'
if has('nvim')
   Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
 else
   Plug 'Shougo/denite.nvim'
   Plug 'roxma/nvim-yarp'
   Plug 'roxma/vim-hug-neovim-rpc'
 endif
" Plug 'SirVer/ultisnips' 
Plug 'tpope/vim-fugitive'
Plug 'eugen0329/vim-esearch'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Raimondi/vim_search_objects'
Plug 'terryma/vim-multiple-cursors'

" " On-demand loading
Plug 'junegunn/goyo.vim'
" " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
"

Plug 'equalsraf/neovim-gui-shim'

"  Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

"  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }

 " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"
" " Plug 'Valloric/YouCompleteMe', {'do': './install.py' }
"
"  Plug 'ervandew/supertab'

" Plug 'vim-scripts/tComment'
" let g:tcommentMapLeaderOp1=';'
"Plug 'b3nj5m1n/kommentary', { 'branch': 'main' }


 " Plug 'Shougo/vimproc.vim'

Plug 'easymotion/vim-easymotion'

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
 '}

Plug 'lifepillar/vim-solarized8'

Plug 'vim-scripts/AutoTag'

Plug 'vim-scripts/vim-auto-save'

Plug 'vim-pandoc/vim-pandoc'

Plug 'yashamon/vim-snippets'

Plug 'lervag/vimtex'
" colorschemes
"
Plug 'altercation/vim-colors-solarized'

Plug 'reedes/vim-colors-pencil'

Plug 'vim-scripts/oceanlight'

Plug 'gosukiwi/vim-atom-dark'

Plug 'dracula/vim'

Plug 'flazz/vim-colorschemes'

Plug 'NLKNguyen/papercolor-theme'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Add plugins to &runtimepath
call plug#end()
syntax on  
" filetype plugin indent on
"  General Settings  
"
set switchbuf=newtab
set t_ut=
" let g:python3_host_prog='/usr/bin/python3.9'
" let g:python3_host_prog='/usr/bin/python3.9'

set clipboard+=unnamedplus	" yank to the system register (*) by default
" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3 
   set shiftwidth=3  
   set termguicolors
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
set tags+=~/Dropbox/workspace/tags
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
  " set t_Co=256          " 256 color mode
" Example config in VimScript
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:github_colors = [hint = "orange", error = "#ff0000"]
" Load the colorscheme
" colorscheme github_dark 
set background=dark
colorscheme blue-moon
" colorscheme gruvbox 
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
au FileType tex set spell  
au FileType tex silent execute "!echo " . v:servername . " > ~/servername.txt"   
au FileType tex hi SpellBad cterm=undercurl
au Filetype tex vmap q xi<CR><CR><CR><CR><ESC>kkicom<tab><esc>p<A-j>

" au FileType tex set background=dark
au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}
" au TextDeletePost * lua vim.highlight.on_delete {higroup="IncSearch", timeout=150, on_visual=true}

au FileType tex autocmd User SneakLeave set syntax=tex
au FileType tex autocmd User SneakEnter set syntax=text
"
"
" FUNCTIONS
"
" I haven't found how to hide this function (yet)
" function! RestoreRegister()
"   let @" = s:restore_reg
"   return ''
" endfunction
"
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
function! Break()
 let n=130-virtcol('.')
 <Esc>ni <Esc><Esc>
endfunction


function Gitview()
   cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages
endfunction
function Light()
set background=light
colorscheme gruvbox
set background=light
   " highlight Normal ctermfg=black
" highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
" hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
endfunction
function Pencil()
   set background=light
   colorscheme pencil
   " highlight Normal ctermfg=black
" highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
" hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
endfunction


function Dark()
   set background=dark
   colorscheme gruvbox
" highlight SpellBad cterm=underline
" hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
   " highlight Normal guibg=#848484
   " highlight normal guifg=grey
endfunction

" Default Colors for CursorLine_
" highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
" autocmd InsertEnter * set cursorline * 
" " Revert Color to default when leaving Insert Mode
"  autocmd InsertLeave * highlight  CursorLine ctermbg=none ctermfg=None
" if &term =~ "xterm\\|rxvt"
"   " use an orange cursor in insert mode
"      let &t_SI = "\<Esc>]12;orange\x7"
"   "     " use a red cursor otherwise
"          let &t_EI = "\<Esc>]12;white\x7"
"            silent !echo -ne "\033]12;red\007"
"   "           " reset cursor when vim exits
"                autocmd VimLeave * silent !echo -ne "\033]112\007"
"   "               " use \003]12;gray\007 for gnome-terminal
"                  endif
" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3 
   set shiftwidth=3 

   "}      							

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L


"}




"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ; 
let mapleader=';'
let g:mapleader=';'

" open the error console
map <leader>cc :botright cope<CR> 
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" --- move around splits {
" move to and maximize the below split 
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split 
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split 
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split  
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others 
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab 
"map <S-H> gT
" go to next tab
"map <S-L> gt
" new tab
" map <leader>t :tabnew<CR>
" close tab
" map <leader>c :tabclose<CR> 
" ,/ turn off search highlighting
"nmap <leader>/ :nohl<CR>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

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
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufNewFile,BufRead *.sass             set ft=sass.css

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1



"--------------------------------------------------------------------------- 
" PLUGIN SETTINGS
"--------------------------------------------------------------------------- 

         "Easy Motion
" change the default EasyMotion shading to something more readable with Solarized
" hi link EasyMotionTarget ErrorMsg
" hi link EasyMotionShade  Comment
" easymotion highlight colors
hi link EasyMotionTarget Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
hi link EasyMotionShade Comment



" --- AutoClose - Inserts matching bracket, paren, brace or quote 
" fixed the arrow key problems caused by AutoClose
"if !has("gui_running")	
   "set term=linux
   "imap OA <ESC>ki
   "imap OB <ESC>ji
   "imap OC <ESC>li
   "imap OD <ESC>hi

   "nmap OA k
   "nmap OB j
   "nmap OC l
   "nmap OD 
"YankRing
" " --- Command-T
" let g:CommandTMaxHeight = 15
" --- SuperTab
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextDiscoverDiscovery= ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
  
"--NerdTree
let g:NERDTreeMapUpdir="<S-h>"
" General mappings, remaps, maps
"
"
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>e :NvimTreeToggle<CR>


vnoremap <m-s> :s///g<left><left><left>
inoremap <m-s> <esc>:s///g<left><left> 
nnoremap <m-s> :s//g<left><left> 

vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
map <up> <nop>
imap <up> <nop>
imap <down> <nop>
map <down> <nop>
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
noremap  p "+p 
" noremap d "dd
" noremap D "dD
" noremap c "_c
" noremap C "_C
noremap s "_x
noremap x "+x
noremap y "+y 
vnoremap y "+y
" noremap X "0D
" Softwrap 
nmap D dg$
nmap V vg$
nmap A g$a 
map 0 g^
map 9 g$

" map p <Plug>(miniyank-startput)
" map P <Plug>(miniyank-startPut)
" nmap p Plug>(miniyank-autoPut)
" vmap p <Plug>(miniyank-autoput)
" vmap P <Plug>(miniyank-autoPut)

map <Leader>n <Plug>(miniyank-cycle)
nnoremap <Left> :bnext<CR>
nnoremap <Right> :bprevious<CR>
" tnoremap <Esc> <C-\> 
nnoremap < :tabp<CR>
nnoremap > :tabn<CR>
" nnoremap <leader>n :tabedit %<CR>
imap <M-j> <C-j>
map <S-w> /\$<CR>
map <S-b> ?\$<CR>
map <A-w> /}<CR>
map <A-b> ?{<CR>

map <C-q> <Esc>:q<CR>
map <M-S-q> <Esc>:q!<CR>
map <M-q> <C-q>
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
" map n <Plug>Sneak_;
" map N <Plug>Sneak_,
" map t <Plug>(smalls-excursion)
" let g:smalls_auto_jump=1
" let g:smalls_auto_jump_timeout=0



    " xmap t <Plug>Sneak_s
    " xmap T <Plug>Sneak_S
    " omap t <Plug>Sneak_s
    " omap T <Plug>Sneak_S
noremap $ /\$<CR>hv?\$<CR>l
noremap # /\$<CR>v?\$<CR>
noremap @ /}<CR>v?{<CR>
map j gj
map k gk
noremap <Space> .
noremap <S-Space> t<Space><enter>
nmap <S-h> <C-w>h
nmap <S-l> <C-w>l
noremap <leader>r <C-r>
noremap <S-k> <C-u>
noremap <S-j> <C-d>
nnoremap <leader>j J
nnoremap <leader>k K
map ' "
nnoremap <Backspace> i<Backspace><Esc> 
map <leader>c <leader>c<space>
map <A-/> <Leader>__
map <A-r>  <C-r>
map <C-c> gc
nnoremap ` ~
nnoremap . `
nmap 1 <C-o>
nmap 2 <C-i>
nmap <S-CR> k$

noremap <D-d> <C-d>
map ;s <Esc>:w<CR>
noremap <A-d> <C-d>
noremap <M-d> <C-d>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
map <Leader>tt :term CR; ctags -R
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <Leader>y :YRGetElem<CR>
map ' "
inoremap <D-]> <C-x><C-]>
inoremap <C-]> <C-x><C-]>
map <leader>c <Leader>__
" text editting mappings

"Extract mappings
" " mappings for putting
        " nmap p <Plug>(extract-put)
        " nmap P <Plug>(extract-Put)
        " " mappings for cycling
        " map <leader>p <Plug>(extract-sycle)
        " map <leader>S <Plug>(extract-Sycle)
        " map <c-s> <Plug>(extract-cycle)
        " " mappings for visual
        " vmap p <Plug>(extract-put)
        " vmap P <Plug>(extract-Put)
        " " mappings for insert
        " imap <m-v> <Plug>(extract-completeReg)
        " imap <c-v> <Plug>(extract-completeList)
        " imap <c-s> <Plug>(extract-cycle)
        " imap <m-s> <Plug>(extract-sycle)
        " imap <m-S> <Plug>(extract-Sycle) 

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

au FileType tex,text,md inoremap <A><CR> <CR>
" au FileType tex,text,md inoremap <CR> <Esc><CR>
" au FileType tex,text,md inoremap . .<CR><ESC>J0i
" au FileType tex,text,md inoremap <leader>. .

" au FileType tex,text,md inoremap .<CR> .<CR><ESC>J0
" au FileType tex,text,md inoremap .<Space> .<CR><ESC>J0
" au FileType tex,text,md inoremap .<ESC> .<CR><ESC>J0
au FileType tex,text,md inoremap <leader>cr <CR>
au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 
nnoremap <C-j> a<CR><Esc>k$ 

"Neovim mappings
:tnoremap <S-h> <C-\><C-n><C-w>h
:tnoremap <S-j> <C-\><C-n><C-w>j
:tnoremap <S-k> <C-\><C-n><C-w>k
:tnoremap <S-l> <C-\><C-n><C-w>l
tnoremap <Left> :tbnext<CR>
tnoremap <Right> :tbprevious<CR>
tnoremap <Leader>e <C-\><C-n> 
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
"

noremap <C-t> <Esc>:FZF ~/Dropbox/workspace<CR>
noremap <A-t> <Esc>:FZF ~/Dropbox/workspace<CR>
noremap S <Esc>:BLines<CR>   
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
let g:vimtex_indent_enabled =0 
let g:vimtex_syntax_enabled=0 
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        VimtexErrors
    else
        cclose
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
let g:vimtex_quickfix_mode = 0
let g:vimtex_fold_enabled = 1 
let g:vimtex_fold_manual = 1 


let g:vimtex_fold_types= {
          \ 'preamble' : {},
          \ 'items' : {},
          \ 'comments' : {'enabled' : 1},
          \ 'envs' : {
          \   'blacklist' : [],   
          \   'whitelist' : [],   
          \ },
          \ 'env_options' : {},
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
          \ 'cmd_single' : {
          \   'cmds' : [         
          \     'hypersetup',
          \     'tikzset',
          \     'pgfplotstableread',
          \     'lstset',
          \   ],
          \ },
          \ 'cmd_single_opt' : {
          \   'cmds' : [          
          \     'usepackage',
          \     'includepdf',
          \   ],
          \ },
          \ 'cmd_multi' : {
          \   'cmds' : [          
          \     '%(re)?new%(command|environment)',
          \     'providecommand',
          \     'presetkeys',
          \     'Declare%(Multi|Auto)?CiteCommand',
          \     'Declare%(Index)?%(Field|List|Name)%(Format|Alias)',
          \   ],
          \ },
          \ 'cmd_addplot' : {
          \   'cmds' : [          
          \     'addplot[+3]?',
          \   ],
          \ },
          \}



" let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
" nmap <leader>l :silent execute "AsyncRun latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder %"<CR>
nmap <leader>l :VimtexCompile<CR>
" nmap <leader>s <Esc>:VimtexErrors<CR>
" nmap <leader>x <C-w><up><Esc>:VimtexErrors<CR>:Goyo x<CR>
nmap <leader>g :Goyo x<CR>
nmap <leader>G :Goyo<CR>
nmap <leader>p :Denite neoyank -default-action=append<CR>

" NB: this supports "rp that replaces the selection by the contents of @r
" Auto updating Ctags
" autocmd VimLeave * exe ":silent ! /usr/local/bin/ctags -R"
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

"Autosave and autocommit

let g:auto_save = 1
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
        noremap <Leader>u :UndotreeToggle<CR>
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
        noremap <D-z> u
        noremap <S-C-z> <C-r>
        " noremap <C-z> u
    " }
nnoremap <C-e> :let g:ctrlp_match_window =
         \ 'bottom,order:btt,min:1,max:1000,results:1000'<CR>:CtrlPTag<CR>

" YouCompleteMe usage is tied to Supertab, this is a little weird but 
" seems necessary for full interoperability with ultisnipps
" let g:ycm_auto_trigger = 0
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_key_invoke_completion = '<C-n>'
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" " let g:UltiSnipsSnippetDirectories=['Ultisnips']
" let g:UltiSnipsJumpForwardTrigger="<D-j>"
" let g:UltiSnipsJumpForwardTrigger="<M-j>" 
" let g:UltiSnipsJumpForwardTrigger="<C-j>"
" let g:UltiSnipsListSnippets="<D-e>"
" " let g:UltiSnipsListSnippets="<-e>"

autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T:Goyo x<CR>
autocmd FileType qf nnoremap  <buffer> <A>-q :q:Goyo x<CR>

   " Latex shortcuts
   "Latex compile. 
   "them to an external terminal and run there.
" map <Leader>l :tabe %<CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder %<CR><leader>e
"Zathura forward search
" map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.'):1:%:p %:p:h/build/%:r.pdf<CR><CR>
"source ~/.anyname  
au filetype tex filetype indent off
"       GUI Stuff   
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "\<args\>") | let g:Guifont="<args>"
let g:Guifont="Source Code Pro Light:h16"

" Deoplete

" map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR>
set directory=$HOME/Downloads
let g:goyo_width=60
" fuzzy search
" function! s:config_fuzzyall(...) abort
"   return extend(copy({
"   \   'converters': [
"   \     incsearch#config#fuzzy#converter(),
"   \     incsearch#config#fuzzyspell#converter()
"   \   ],
"   \ }), get(a:, 1, {}))
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
" map <silent> <leader>g :silent !cd /root/web2 ; git add .<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR>
" This is how I use PDFViewer with Neovim and LaTexBox. 
"
"Load some useful plugins with vundle
"
"
" hi! link Sneak Normal
" hi! link SneakScope Normal

"LUA

lua <<EOF
require'nvim-treesitter.configs'.setup {
    --highlight = { enable = true },
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
" set foldlevel=20
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
" set foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]


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
let g:vsnip_snippet_dir = '~/dotfiles/snippets'
imap <expr> <Tab>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <Tab>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

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
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'rust_analyzer', 'tsserver', 'texlab', 'jsonls'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF

lua require'lspconfig'.texlab.setup{on_attach=require'completion'.on_attach}

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <up> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <down> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
" imap <tab> <Plug>(completion_smart_tab)
" imap <s-tab> <Plug>(completion_smart_s_tab)
let g:completion_enable_snippet = 'vim-vsnip'
let g:vsnip_snippet_dir = '$HOME/dotfiles/snippets'

function! PackagerInit()
  call packager#add('kristijanhusak/vim-packager')
  call packager#add('nvim-lua/completion-nvim')
  call packager#add('hrsh7th/vim-vsnip-integ')
endfunction

" let g:completion_chain_complete_list = {
"       \ 'default': [
"       \    {'complete_items': ['lsp']},
"       \    {'complete_items': ['tags']},
"       \    {'complete_items': ['snippet']}, 
"       \    ]}

" Or combine with lsp
let g:completion_chain_complete_list = {
      \ 'default': [
      \    {'complete_items': ['snippet', 'tags', 'lsp']},
      \  ]}
let g:completion_enable_auto_popup = 0
imap <silent> <M-Space> <Plug>(completion_trigger)


nnoremap <leader>y :FZFNeoyank<cr>
nnoremap <leader>Y :FZFNeoyank " P<cr>
vnoremap <leader>y :FZFNeoyankSelection<cr>

nnoremap <leader>p :FZFNeoyank +<cr> 
nnoremap <leader>1 :FZFNeoyank 1<cr>
nnoremap <leader>P :FZFNeoyank " P+<cr>
vnoremap <leader>p :FZFNeoyankSelection +<cr>

