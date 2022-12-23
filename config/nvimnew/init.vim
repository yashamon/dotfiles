call plug#begin('~/.vim/plugged')
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } asdf
Plug 'folke/todo-comments.nvim', { 'branch': 'main' }
" Plug 'folke/noice.nvim', { 'branch': 'main' }
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
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'

" Plug 'lewis6991/gitsigns.nvim', { 'branch': 'main' }
" Plug 'airblade/vim-gitgutter'
" Plug 'https://github.com/machakann/vim-sandwich'
" Plug 'rakr/vim-one'
"" Plug 'hrsh7th/cmp-vsnip', 
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
"" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'
" Plug 'honza/vim-snippets'

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
require('functions')
require('keymaps')
require('set')
-- require('telescope').load_extension('fzf')
EOF
" cmp
let s:timer = 0
autocmd TextChangedI * call s:on_text_changed()
function! s:on_text_changed() abort
  call timer_stop(s:timer)
  let s:timer = timer_start(200, function('s:complete'))
endfunction
function! s:complete(...) abort
  lua require('cmp').complete({ reason = require('cmp').ContextReason.Auto })
endfunction
"Neovide 
"
" let g:neovide_maximized=v:true
let g:neovide_fullscreen=v:true
let g:neovide_floating_blur_amount_x = 3.0
let g:neovide_floating_blur_amount_y = 3.0
" let g:neovide_transparency=0.15

"General Settings    
set title
set cmdheight=0
set signcolumn=yes
set scrolloff=10
" set shell=nu
" let &shell = 'nu'
" let &shellcmdflag = '-c'
" let &shellquote = ""
" let &shellxquote = ""
set indentexpr=
set noshowmatch
set wrap
set pumblend=20
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


au VIMEnter * let g:buffmain=bufname()
au FileType tex, vim, lua * lua GitAsync() 
nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
 au FileType tex setlocal iskeyword+=:
au Filetype tex,text,md set tw=60
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
autocmd BufReadPost,FileReadPost * normal zR
" au FileType tex setlocal indentexpr=
" set foldmethod=expr
" au FileType tex, text, md setlocal foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]
" au FileType lua, vim, c, haskell  set foldexpr=nvim_treesitter#foldexpr()
" let g:tex_conceal = ""
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
set autochdir
set guioptions-=r
set guioptions-=l
set inccommand=split
noremap! <LeftDrag> <nop>
noremap! <RightDrag> <nop>
noremap! <LeftDrag> <nop>
" set selectmode=mouse, key
set undofile                " Save undo's after file closes
set undodir=~/.undo " where to save undo histories
set undolevels=1000000         " How many undos
set undoreload=1000000		
set nohlsearch
" set noswapfile
set showmatch		" Cursor shows matching ) and }
set nocursorline
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
" let maplocalleader = "\\"
" ignore these files while expanding wild chars


" disable sound on errors
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
command! Ser lua Server()

au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp  

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

"maps remaps mappings  
"
" terminal stuff 

autocmd TermClose * if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif
tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
tnoremap <A-`> <C-\><C-n>
tnoremap <A-Esc> <C-\><C-n>
nmap <A-S-t> :te<cr>
" other mappings 
noremap <leader>r :up<cr>:e<cr> 
" inoremap . .<esc>:up<cr>a
command Tw50 set tw=50
command Tw0 set tw=0
noremap q :q<cr>
noremap <leader>q q
nmap <m-7> :ZenMode<cr>:mksession!<cr>
nnoremap <leader>u <cr>:UndotreeToggle<CR>
noremap <leader>c :'<,'>CommentToggle<cr>

" language
command! ES set spelllang=es
" cmap ES set spelllang=es<cr>
command! EN set spelllang=en_us
" LSP
command! LT LspStart ltex
command! LTo LspStop ltex

nnoremap <leader>f :up<cr>:lua Server()<cr>:te pwsh -c lf<cr>i
nnoremap <leader>lg :up<cr>:lua Server()<cr>:te pwsh -c lazygit<cr>i
" nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://pwsh<cr><cr>
nnoremap <c-,> :cprevious<cr>
nnoremap <c-.> :cnext<cr> 
inoremap <m-h> <left>
inoremap <m-l> <right>
" vnoremap <m-s> :s///gc<left><left><left><left>
" inoremap <m-s> <esc>:%s///gc<left><left><left><left>
" nnoremap <m-s> :%s///gc<left><left><left><left> 
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
nnoremap <up> 1<C-U>
nnoremap <m-g> gqip
" imap <up> <nop>
nnoremap <down> 1<C-D>
" imap <down> <nop>
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
" command! -bar SA saveas

noremap <m-p> <c-r>+
inoremap <m-p> <c-r>+
" noremap D "0D:wa<cr>
noremap d "_d
noremap cg "_cgn
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
map <m-d> <Esc>:up<CR>:bdelete<CR>
map <m-D> :bdelete!<CR>
noremap gf gq
nmap f /
nmap gv \\/ 
vmap s \\/
" vim-multiple-\cursors
nnoremap <m-n> <c-n>

" vnoremap f /\%V\%V<left><left><left>
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
noremap ;w <Esc>:up<CR>
noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
" windows stuff, comment out on windows
" nnoremap ;ww :%s///gc
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close he selection list, same as other IDEs.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <Leader>y :YRGetElem<CR>
map ' "
inoremap <D-]> <C-x><C-]>
inoremap <C-]> <C-x><C-]>

" FZF 
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
" let g:fzf_preview_window = []
nnoremap <m-t> :up<cr>:BTags<cr>:call feedkeys("\<c-a>\<c-q>")<cr>:copen<cr>
nnoremap <m-s> :up<cr>:lua Sentence()<cr>
nnoremap S :up<cr>:lua Line()<cr>
" TODO:Add :up
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
" map <A-e> :FZF ~<CR> test test2 test3
map <m-f> :FZF ~<CR> 
" map <m-f> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}}) ~<CR> 
"miscellaneous

" nmap <leader>p :Denite neoyank -default-action=append<CR>

" Latex stuff
" 
nnoremap <leader>gs :up<cr>:source $MYVIMRC<cr> 
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

" function GitAsync()
" silent execute "!echo " . v:servername . ' > ~/servername.txt'
" let g:bufdude = bufname()
" silent te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }
" execute "buffer" g:bufdude
" endfunction
  
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
        " lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
        lua <<EOF
        if vim.w.bqf_enabled then
    local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zffatal', 'im', false)
        end)
    end)
end
EOF
        endif
endfunction 

nnoremap <leader>e :silent call ToggleQuickFix()<CR>
function! ClearLatex()
  silent !rm ./build/* 
endfunction 
command! SEND call Send()
function! Send()
  " silent call ClearLatex()
  let b:filenamedir=expand('%:p:h')
  let b:filename=expand('%:t:r')
  let buf=bufname()
  let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
  let execstr="silent te pwsh -c send " . b:pdf
  echo execstr
  exec execstr
  silent execute "buffer" buf
  " call feedkeys("\<cr>")
endfunction
function! CompileLatex()
  " silent call ClearLatex()
  let buf=bufname()
  silent te pwsh -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f %
  silent execute "buffer" buf
  call ViewPdf()
  call feedkeys("\<cr>")
endfunction

function! ViewPdf() 
wa
" let g:buffmain=bufname()
" silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
let buf=bufname()
lua Server()
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
silent execute "buffer" buf
endfunction
nmap <leader>v :call ViewPdf()<cr><cr>
map <m-v> <esc>:call ViewPdf()<cr><cr>

" nmap <leader>v :VimtexView<cr>
" let  g:vimtex_fold_types_defaults = 'preamble, sections, comments'
nmap <leader>ll :call CompileLatex()<cr>
nmap <leader>lcl :call ClearLatex()<cr>
nmap gtd :TodoQuickFix<cr>
nmap <leader>ga :TZAtaraxis<CR>
nmap <leader>gm :up<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>

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
autocmd BufWritePost * lua GitAsync()
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
" au VIMEnter * let g:surround_108 = {
     " \'q':  " ``\r''"
  " let g:tex_flavor = "latex"
" let g:tex_isk = '@,48-57,58,_,192-255,:'   " \ }
