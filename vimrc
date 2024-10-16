" init.vim
" call pathogen#infect()  
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips 
" Plug 'tpope/vim-surround'
" Plug 'neovim/node-host'
 Plug 'justinmk/vim-sneak'
" Plug 'bfredl/nvim-miniyank'
 Plug 'SirVer/ultisnips' 
 Plug 'tpope/vim-fugitive'
 " | Plug 'honza/vim-snippets'
"
" " On-demand loading
 Plug 'junegunn/goyo.vim'
" " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
"

 Plug 'equalsraf/neovim-gui-shim'

 Plug 'morhetz/gruvbox'

 Plug 'vim-pandoc/vim-pandoc'

 Plug 'vim-pandoc/vim-pandoc-syntax' 

 Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }

 " Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

 Plug 'junegunn/fzf.vim'
"
" " Plug 'Valloric/YouCompleteMe', {'do': './install.py' }
"
 Plug 'ervandew/supertab'

 Plug 'vim-scripts/tComment'

 " Plug 'Shougo/vimproc.vim'

" Plug 'Lokaltog/vim-easymotion'

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
set clipboard+=unnamedplus	" yank to the system register (*) by default
" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3 
   set shiftwidth=3  
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
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:tex_flavor = "latex"
let g:tex_isk = '@,48-57,58,_,192-255'
set tags+=~/texmf/bibtex/bib/tags
set tags+=~/Dropbox/workspace/tags
  " set formatoptions=ant
  " set wrapmargin=1
set tw=80
" set shada="NONE"
set hid
set foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]
set autochdir
set guioptions-=r 
set guioptions-=l
set mouse=a
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
autocmd! bufwritepost .vimrc source ~/.vimrc
syntax on		" syntax highlight
" set hlsearch		" search highlighting
"
if has("gui_running")	" GUI color and font settings
  set guifont=Source\ Code\ Pro \Regular:h16
  set background=dark 
"  set cursorline        " highlight current line
  colorscheme solarized8_light_flat 
  highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none
else
" terminal color settings
  set background=light
  " set t_Co=256          " 256 color mode
   colorscheme solarized8_light_flat
  " colorscheme gruvbox
  " highlight Normal ctermbg=none
highlight clear SpellBad
highlight SpellBad cterm=underline
hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
endif

"Autocommands
"
au FileType Makefile set noexpandtab
au FileType tex set spell
" au FileType tex :Goyo
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

function Gitview()
   cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages
endfunction
function Light()
   set background=light
   colorscheme PaperColor
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
   colorscheme coffee
" highlight SpellBad cterm=underline
" hi MatchParen cterm=underline ctermbg=none ctermfg=magenta
   " highlight Normal guibg=#848484
   " highlight normal guifg=grey
endfunction

" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Default Colors for CursorLine_
highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none
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

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

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



" --- Command-T
let g:CommandTMaxHeight = 15

" --- SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery= ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
  
"--NerdTree
let g:NERDTreeMapUpdir="<S-h>"
" Remaps 
" I find default   register behavior uncomfortable 
inoremap <CR> <space>
inoremap \ /
inoremap / \
noremap p "0p 
vnoremap p "0p 
noremap d "dd
noremap D "dD
noremap c "_c
noremap C "_C
noremap s "_x
noremap x "0x
noremap X "0D
" Softwrap 
nmap D "_dg$
" nmap V g$vg^
nmap A g$a
nnoremap dd g^"_dg$i<backspace><ESC><CR>
" nmap dd 0dg$
map 0 g^
map 9 g$

" map p <Plug>(miniyank-startput)
" map P <Plug>(miniyank-startPut)
" nmap p <Plug>(miniyank-autoput)
" nmap P <Plug>(miniyank-autoPut)
" vmap p <Plug>(miniyank-autoput)
" vmap P <Plug>(miniyank-autoPut)
" map <Leader>n <Plug>(miniyank-cycle)
vmap q xi<CR><CR><CR><CR><ESC>kkpvip<leader>c
nnoremap <Left> :bnext<CR>
nnoremap <Right> :bprevious<CR>
" tnoremap <Esc> <C-\> 
nnoremap < :tabp<CR>
nnoremap > :tabn<CR>
" nnoremap <leader>n :tabedit %<CR>
imap <M-j> <C-j>
map <C-q> <Esc>:q<CR>
map <M-S-q> <Esc>:q!<CR>
map <M-q> <C-q>
map <M-d> <Esc>:bdelete<CR>
noremap f /
noremap F ?
inoremap .<Esc> .<CR><Esc>J
inoremap .<Space> .<CR><Esc>J
" noremap S :S 
  " map t <Plug>(easymotion)
  " map T <Plug>(easymotion)
map t <Plug>Sneak_s
map T <Plug>Sneak_S
    " xmap t <Plug>Sneak_s
    " xmap T <Plug>Sneak_S
    " omap t <Plug>Sneak_s
    " omap T <Plug>Sneak_S
noremap $ /\$<CR>hv?\$<CR>l
noremap # /\$<CR>v?\$<CR>
noremap @ /)<CR>v?(<CR>
 map j gj
 map k gk
 noremap <Space> .
 noremap <S-Space> ?<Space><enter>
nmap <S-h> <C-w>h
nmap <S-l> <C-w>l
noremap <leader>r <C-r>
noremap <S-k> <C-u>
noremap <S-j> <C-d>
nnoremap <leader>j J
nnoremap <leader>k K
map ' "
" nnoremap <Backspace> i<Backspace><Esc> 
map <leader>c <Leader>__
map <A-/> <Leader>__
map <A-r>  <C-r>
map <C-c> gc
nmap gc gcc
nnoremap ` ~
nnoremap . `
nmap 1 <C-o>
nmap 2 <C-i>
nmap <S-CR> k$
noremap <Leader>1 :buffer 1<CR>
nnoremap <silent> <Leader>b :Buffer<CR>
 noremap <Leader>2 :buffer 2<CR>
 noremap <Leader>3 :buffer 3<CR>
noremap <Leader>4 :buffer 4<CR>
noremap <Leader>5 :buffer 5<CR>
noremap <Leader>7 :buffer 7<CR>
noremap <Leader>6 :buffer 6<CR>
noremap <Leader>8 :buffer 8<CR>
noremap <Leader>9 :buffer 9<CR>
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

    let g:vimtex_compiler_latexmk = {
    \ 'background' : 0,
    \ 'build_dir' : './build',
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
let g:vimtex_latexmk_progname = 'nvr'
nmap  <leader>v <Esc>:w<CR>:VimtexView<CR>
let g:vimtex_quickfix_mode = 0
let g:vimtex_fold_enabled =0
nmap <leader>l <Esc>:VimtexCompile<CR>
nmap <leader>s <Esc>:VimtexErrors<CR><Goyo><Goyo>
nmap <leader>x <Esc>:VimtexErrors<CR>

" "Neovim mappings
" :tnoremap <S-h> <C-\><C-n><C-w>h
" :tnoremap <S-j> <C-\><C-n><C-w>j
" :tnoremap <S-k> <C-\><C-n><C-w>k
" :tnoremap <S-l> <C-\><C-n><C-w>l
" tnoremap <Left> :tbnext<CR>
" tnoremap <Right> :tbprevious<CR>
" tnoremap <Leader>e <C-\><C-n> 
" imap <Backspace> \
"set inccommand=split
" NB: this supports "rp that replaces the selection by the contents of @r
" Auto updating Ctags
" autocmd VimLeave * exe ":silent ! /usr/local/bin/ctags -R"
map :tags  exe ":silent ! /usr/local/bin/ctags -R"

"Nerd Tree
map <leader>e :NERDTreeFind<CR>
" map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
"
"
"
"Vifm
let g:vifmLiveCwd=1
let g:vifmUseCurrent=1
"Autosave and autocommit
let g:auto_save = 1
 let g:auto_save_in_insert_mode = 1
 let g:auto_save_silent = 1
" autocmd BufWritePost * silent execute '! if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m %; fi'

"Highlight
hi MatchParen cterm=underline ctermbg=none ctermfg=none
hi MatchParen guibg=NONE guifg=green gui=NONE
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

" FZF
"
"

noremap <C-t> <Esc>:FZF ~/Dropbox/workspace<CR>
noremap <A-t> <Esc>:FZF ~/Dropbox/workspace<CR>
noremap S <Esc>:BLines<CR>
map <A-e> :FZF ~<CR>


" YouCompleteMe  usage is tied to Supertab, this is a little weird but 
" seems necessary for full interoperability with ultisnipps
let g:ycm_auto_trigger = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion = '<C-n>'
 let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsJumpForwardTrigger="<D-j>"
let g:UltiSnipsJumpForwardTrigger="<M-j>" 
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsListSnippets="<D-e>"
let g:UltiSnipsListSnippets="<-e>"
let g:sneak#s_next = 1
 let g:sneak#label = 1

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

map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR>

" map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR>
" let g:deoplete#enable_at_startup = 1

" map <silent> <leader>g :silent call Gitview()
" map <silent> <leader>g :silent !cd /root/web2 ; git add .<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR>
