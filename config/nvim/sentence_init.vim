1:  call plug#begin('~/.
vim/plugged')    2:  Plug 'folke/zen-mode.
nvim',   'branch': 'main'    3:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   4:  Plug 'vijaymarupudi/nvim-fzf' 5:  Plug 'kyazdani42/nvim-web-devicons' 6:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   7:  Plug 'phaazon/hop.
nvim'     8:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     9:  Plug 'is0n/fm-nvim' 10:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   11:  Plug 'famiu/feline.
nvim' 12:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   13:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    14:  Plug 'hrsh7th/vim-vsnip' 15:  Plug 'hrsh7th/vim-vsnip-integ' 16:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'     17:  Plug 'voldikss/vim-floaterm' 18:  Plug 'voldikss/vim-floaterm' 19:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   20:  Plug 'justinhoward/fzf-neoyank'   21:  Plug 'rakr/vim-one'  22:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'    23:  Plug 'Shougo/neoyank.
vim'  24:  Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'    25:  Plug 'skywind3000/asyncrun.
vim'          26:  Plug 'junegunn/fzf',   'do':   -> fzf#install()      27:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    28:  Plug 'junegunn/fzf.
vim' 29:  Plug 'vim-scripts/AutoTag' 30:  Plug 'xolox/vim-easytags' 31:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   32:  Plug 'xolox/vim-misc' 33:   34:  " Plug 'rebelot/kanagawa.
nvim' 35:  " Plug 'reedes/vim-pencil'  36:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   37:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    38:  " Plug 'lewis6991/spellsitter.
nvim' 39:  " Plug 'radenling/vim-dispatch-neovim'   40:  " Plug 'tpope/vim-dispatch' 41:  " Plug 'sheerun/vim-polyglot'  42:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   43:  " Plug 'luukvbaal/stabilize.
nvim'  44:  " Plug 'nvim-lua/plenary.
nvim' 45:  " Plug 'nvim-telescope/telescope.
nvim', 46:  " Plug 'nvim-treesitter/playground 47:  " Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   48:  " Plug 'glepnir/lspsaga.
nvim' 49:  " If you are using Vim-Plug 50:  " Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    51:  " " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    52:  " Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   53:  " " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   54:  " "Plug 'pope/vim-obsession' 55:  " " Plug 'nvim-lua/plenary.
nvim' 56:  " " Plug 'windwp/nvim-spectre' 57:  " " Plug 'ray-x/cmp-treesitter' 58:  " " For luasnip user.
@??? 59:  " Plug 'L3MON4D3/LuaSnip' 60:  " " Plug 'saadparwaiz1/cmp luasnip' 61:  " "Plug 'steelsojka/completion-buffers' 62:  " " Plug 'neovim/node-host' 63:  " Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   64:  " Plug 'rktjmp/lush.
nvim',   'branch': 'main'   65:  " " Plug 'cyansprite/Extract' 66:  " Plug 'gioele/vim-autoswap' 67:  " " Plug 't9md/vim-smalls' 68:  " Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   69:  " " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 70:  " " please comment next line 71:  " " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    72:  " " Plug 'rmagatti/auto-session',    'branch': 'main'  73:  " " Plug 'justinmk/vim-sneak' 74:  " " Plug 'SirVer/ultisnips'   75:  " " Plug 'tpope/vim-fugitive' 76:  " Plug 'eugen0329/vim-esearch' 77:  " Plug 'haya14busa/incsearch.
vim' 78:  " Plug 'haya14busa/incsearch-fuzzy.
vim' 79:  " Plug 'Raimondi/vim search objects' 80:  " " Plug 'terryma/vim-multiple-cursors' 81:  " " " On-demand loading 82:  " " Plug 'junegunn/goyo.
vim' 83:  " " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   84:  " "  Plug 'morhetz/gruvbox' 85:  " Plug 'sainnhe/gruvbox-material' 86:  " " Plug 'vim-pandoc/vim-pandoc' 87:  " " Plug 'vim-pandoc/vim-pandoc-syntax'  88:  " " Plugin outside ~/.
vim/plugged with post-update hook 89:  " Plug 'junegunn/fzf',   'do': '.
/install --all'   90:  "  '  91:  " Plug 'lifepillar/vim-solarized8' 92:  " " Plug 'vim-scripts/vim-auto-save' 93:  " " Plug 'vim-pandoc/vim-pandoc' 94:  " 95:  " " Plug 'yashamon/vim-snippets' 96:  " " colorschemes 97:  " "  98:  " Plug 'kyazdani42/blue-moon'   99:  " Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   100:  " 101:  " Plug 'reedes/vim-colors-pencil' 102:  " 103:  " Plug 'vim-scripts/oceanlight' 104:  " 105:  " Plug 'gosukiwi/vim-atom-dark' 106:  " 107:  " Plug 'dracula/vim' 108:  " " Plug 'kevinhwang91/nvim-bqf' 109:  " " Plug 'svermeulen/vim-cutlass' 110:  " Plug 'kyazdani42/nvim-web-devicons' " for file icons 111:  " " Plug 'kyazdani42/nvim-tree.
lua',  112:  " "Plug 'nvim-lua/completion-nvim' 113:  " Plug 'neovim/nvim-lspconfig' 114:  " " Plug 'nvim-lua/diagnostic-nvim' 115:  " " Plug 'rafamadriz/friendly-snippets'   116:   "  " Plug 'tpope/vim-surround' 117:  " Unmanaged plugin (manually installed and updated) 118:  " Plug '~/my-prototype-plugin' 119:  " Add plugins to &runtimepath  120:  call plug#end()  121:   122:  "Neovide  123:  " 124:  " let g:neovide maximized=v:true  125:  let g:neovide fullscreen=v:true 126:  " let g:neovide transparency=0.
15 127:   128:  "General Settings     129:  set title  130:  " set titlestring 131:  " set noshowmode 132:  " set noruler        133:  " set laststatus=1  134:  set noshowcmd     135:  set noshowmatch   136:  set wrap   137:  set pb=10   138:  set winbl=10 139:  set switchbuf=newtab 140:  " let g:python3 host prog='/usr/bin/python3.
9' 141:  " let g:python3 host prog='/usr/bin/python3.
9' 142:   143:  set clipboard+=unnamedplus	" yank to the system register (*) by default 144:  " TAB setting  145:  set expandtab        "replace <TAB> with spaces 146:  set softtabstop=3  147:  set shiftwidth=3  148:  set termguicolors 149:   150:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 151:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 152:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 153:  set spelllang=en us   154:  if exists('g:started by firenvim') 155:       autocmd VimEnter set noshowmode 156:       autocmd VimEnter set noruler 157:       autocmd VimEnter set laststatus=0 158:       autocmd VimEnter set noshowcmd 159:       autocmd VimEnter set lines=100  160:       autocmd VimEnter set columns=100 161:  else 162:    " autocmd VimEnter * TZAtaraxis 163:   endif 164:  set timeoutlen=0 165:  au VIMEnter * let g:surround 108 =   166:        'q':  " `` r''" 167:           168:  let g:tex flavor = "latex" 169:  let g:tex isk = '@,48-57,58, ,192-255,:'  170:  au FileType tex setlocal iskeyword+=: 171:  let g:tex conceal = "" 172:  set tags+=~/workspacemodules/tags 173:  "set tags+=~/Dropbox/workspace/tags 174:    " set wrapmargin=1 175:  " set shada="NONE"   176:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 177:  set wrap 178:  set linebreak  179:  set formatoptions+=w " set breakat=" " 180:  " set list  " list disables linebreak whitespace 181:  " set textwidth=0 182:  set wrapmargin=-1 183:  set hid 184:  set autochdir 185:  set guioptions-=r 186:  set guioptions-=l 187:  set inccommand=split 188:  set mouse= 189:  set bs=2		" allow backspacing over everything in insert mode  190:  set undofile                " Save undo's after file closes 191:  set undodir=~/.
undo " where to save undo histories 192:  set undolevels=1000000         " How many undos 193:  set undoreload=10000		 194:  set ruler		" show the cursor position all the time 195:  set autoread		" auto read when file is changed from outside 196:  set nohlsearch 197:  " set noswapfile 198:  " set showmatch		" Cursor shows matching ) and   199:  set nocursorline 200:  set showmode		" Show current mode 201:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 202:  set wildmenu            " wild char completion menu 203:  let maplocalleader = "  " 204:  " ignore these files while expanding wild chars 205:  set wildignore=*.
o,*.
class,*.
pyc 206:  set incsearch		" incremental search 207:  set nobackup		" no *~ backup files 208:  set ignorecase		" ignore case when searching 209:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 210:  set smarttab		" insert tabs on the start of a line according to context 211:  set spell    212:   213:  " disable sound on errors 214:  set noerrorbells 215:  " set novisualbell  216:  set guifont=Fira  Code  Light:h10 217:  colorscheme one 218:  " colorscheme material   219:  " let g:material style = 'palenight'   220:  " let g:material style = 'lighter' 221:  " highlight Normal ctermbg=none 222:  set tm=1000 223:  " set macreta  224:  hi SpellBad cterm=underline 225:  " Set style for gVim 226:  hi SpellBad gui=underline 227:  " 228:  "Autocommands, au 229:  au FileType Makefile set noexpandtab 230:  au FileType tex,text set spelllang=en us 231:  " au FileType tex,text set noai nocin  232:   233:  function Reset() 234:  TZAtaraxisOff  235:  TZAtaraxisOn 236:  endfunction    237:  " au FocusLost call TZAtaraxisOff  238:  " au FocusGained call TZAtaraxisOn  239:   240:  " au FileType vim,md set list 241:  " au FileType vim,md colorscheme one 242:   243:  " au FileType tex,text,md syntax sync fromstart  244:  "  245:  " au FileType tex,text,md silent execute "!echo " . 
245:++++ v:servername . 
245:++++ " > ~/servername.
txt"     246:  au FileType * silent execute "!echo " . 
246:++++ v:servername . 
246:++++ " > ~/servername.
txt" 247:  au UIEnter silent execute "!echo " . 
247:++++ v:servername . 
247:++++ " > ~/servername.
txt"   248:  function Server() 249:     silent execute "!echo " . 
249:++++ v:servername . 
249:++++ " > ~/servername.
txt" 250:  endfunction 251:  nmap <leader>nn :call Server() 252:   253:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp   254:   255:  au Filetype tex,text,md set tw=50  256:  " au Filetype tex,text,md set fo=tc 257:  " au FileType tex set background=dark  258:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  259:  au TextYankPost * call neoyank# append()  260:   261:  set expandtab        "replace <TAB> with spaces 262:  set softtabstop=3  263:  set shiftwidth=3  264:   265:  "---------------------------------------------------------------------------  266:  " USEFUL SHORTCUTS 267:  "---------------------------------------------------------------------------  268:  " set leader to ;  269:  let mapleader=';' 270:  let g:mapleader=';' 271:   272:  " open the error console 273:  " move to next error 274:   275:  " Bash like keys for the command line 276:  cnoremap <C-A>      <Home> 277:  cnoremap <C-E>      <End> 278:  cnoremap <C-K>      <C-U> 279:   280:  " ,p toggles paste mode 281:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 282:   283:  " allow multiple indentation/deindentation in visual mode 284:  vnoremap < <gv 285:  vnoremap > >gv 286:   287:  " :cd. 
287:++++ change working directory to that of the current file 288:  cmap cd. 
288:++++ lcd  :p:h 289:   290:   291:  " Enable omni completion. 
291:++++ (Ctrl-X Ctrl-O) 292:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 293:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 294:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 295:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 296:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 297:  autocmd FileType c set omnifunc=ccomplete#Complete 298:  autocmd FileType java set omnifunc=javacomplete#Complete  299:  autocmd FileType tex set omnifunc=latex#Complete 300:  " autocmd Filetype tex setlocal fo=nt 301:  autocmd Filetype tex setlocal wrapmargin=0 302:  " use syntax complete if nothing else available 303:  if has("autocmd") && exists("+omnifunc") 304:    autocmd Filetype * 305:                 	if &omnifunc == "" | 306:                 		setlocal omnifunc=syntaxcomplete#Complete | 307:                 	endif 308:  endif 309:   310:  set cot-=preview "disable doc preview in omnicomplete 311:   312:  " make CSS omnicompletion work for SASS and SCSS 313:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 314:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 315:   316:  "---------------------------------------------------------------------------  317:  " ENCODING SETTINGS 318:  "---------------------------------------------------------------------------  319:  set encoding=utf-8                                   320:  set termencoding=utf-8 321:  set fileencoding=utf-8 322:   323:  "maps remaps mappings   324:  " 325:  " 326:  " terminal mappings  327:  "  328:  tnoremap <A-Esc> <C- ><C-n> 329:  nmap <A-S-t> :te<cr> 330:  vnoremap <Leader>U ""y: s/<C-r>" 331:  noremap <leader>r :w<cr>:e<cr>  332:  " inoremap . 
332:++++ .
<esc>:w<cr>a 333:   334:  noremap <leader>hh :set tw=50<cr> 335:  noremap <leader>w :set tw=0<cr>  336:  map q :q<cr> 337:  noremap <leader>q q 338:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 339:  nnoremap <leader>rr :w<cr>:source  MYVIMRC<CR> 340:  nnoremap <leader>u :UndotreeToggle<CR> 341:  nnoremap <leader>e :Lf<cr> 342:  nnoremap <leader>t :FloatermToggle<cr> 343:  nnoremap <c-,> :cprevious<cr> 344:  nnoremap <c-.
> :cnext<cr>  345:  vnoremap <m-s> :s///gc<left><left><left><left> 346:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 347:  nnoremap <m-s> : s///gc<left><left><left><left> 348:  vmap <M-.
> t.
<CR>h 349:  nmap <M-.
> t.
<CR>h 350:  nnoremap <up> 1<C-U> 351:  imap <up> <nop> 352:  nnoremap <down> 1<C-D> 353:  imap <down> <nop> 354:  noremap <ScrollWheelUp>      <nop> 355:  noremap <S-ScrollWheelUp>    <nop> 356:  noremap <C-ScrollWheelUp>    <nop> 357:  noremap <ScrollWheelDown>    <nop> 358:  noremap <S-ScrollWheelDown>  <nop> 359:  noremap <C-ScrollWheelDown>  <nop> 360:  noremap <ScrollWheelLeft>    <nop> 361:  noremap <S-ScrollWheelLeft>  <nop> 362:  noremap <C-ScrollWheelLeft>  <nop> 363:  noremap <ScrollWheelRight>   <nop> 364:  noremap <S-ScrollWheelRight> <nop> 365:  noremap <C-ScrollWheelRight> <nop> 366:  inoremap   / 367:  inoremap /   368:   369:  " copy paste stuff  370:  "  371:  vnoremap p " dP 372:  inoremap <C-p> <C-r>"+ 373:  " noremap D "0D:wa<cr> 374:  noremap d " d 375:  nnoremap dd " dd 376:  noremap c " c 377:  noremap c " c 378:  noremap s " s 379:  noremap C " C 380:  noremap x " x 381:  vnoremap x "+x 382:  vnoremap d " d 383:  vnoremap c " c 384:  vnoremap y "+y 385:  nnoremap y "+y 386:  nnoremap p "+p 387:  nnoremap <leader>q q 388:  inoremap <cr> <cr><space><esc>" s 389:  " Softwrap   390:   391:  nmap D "0dg  392:  nmap V vg  393:  nmap A g a 394:  map 0 g  395:  map 9 g  396:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 397:  nnoremap <c-l> :bnext<CR> 398:  nnoremap <c-h> :bprevious<CR> 399:  " tnoremap <Esc> <C- >  400:  " nnoremap < :tabp<CR> 401:  " nnoremap > :tabn<CR> 402:  " nnoremap <leader>n :tabedit  <CR> 403:  imap <M-j> <C-j> 404:  map <M-m> <cmd>HopChar1<cr>  405:  " map <S-b> ?  <CR> 406:  map <M-w> <cmd>HopChar1<cr>  407:  map <M-b> <cmd>HopChar1<cr>  408:  map q: nop 409:  map <S-C-q> <Esc>:qa!<CR> 410:  map <m-q> <esc>:wq<cr> 411:  map <m-Q> <esc>:q<cr> 412:  map <m-c> :close<cr> 413:  map <m-d> <Esc>:w<CR>:bdelete<CR> 414:  noremap gf gq 415:  noremap f / 416:  noremap F ? 417:  noremap # /  <CR>v?  <CR> 418:  noremap   /  <CR>hv?  <CR>l 419:  noremap @ / <CR>v? <CR> 420:  map j gj 421:  map k gk 422:  noremap <Space> .
@??? 423:  vnoremap <Space> t <cr> 424:  map K <C-u> 425:  map J <C-d> 426:  " map <C-j> zz 427:  " map <C-k> zb 428:  map <C-j> <C-e>jj 429:  map <C-k> <C-y>kk 430:  nnoremap <leader>j J 431:  nnoremap <leader>k K 432:  map ' " 433:  nnoremap <Backspace> i<Backspace><Esc> 434:  nmap <leader>c gc 435:  noremap <A-r> <C-r> 436:  nnoremap ` ~ 437:  nnoremap . 
437:++++ ` 438:  noremap <m-1> <C-o> 439:  noremap <m-2> <C-i> 440:  noremap <D-d> <C-d>  441:  map ;w <Esc>:w<CR> 442:  noremap <D-u> <C-u> 443:  noremap <A-u> <C-u>  444:  " this mapping Enter key to <C-y> to chose the current highlight item  445:  " and close he selection list, same as other IDEs.
@??? 446:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 447:  nnoremap <silent> <Leader>y :YRGetElem<CR> 448:  map ' " 449:  inoremap <D-]> <C-x><C-]> 450:  inoremap <C-]> <C-x><C-]> 451:   452:  au FileType tex,text,md nmap 0 g  453:  au FileType tex,text,md noremap 9 g  454:  " au FileType tex,text,md nnoremap dd " g dg g  455:   456:  "Neovim mappings 457:  " :tnoremap <S-h> <C- ><C-n><C-w>h 458:  " :tnoremap <S-j> <C- ><C-n><C-w>j 459:  " :tnoremap <S-k> <C- ><C-n><C-w>k 460:  " :tnoremap <S-l> <C- ><C-n><C-w>l 461:  " tnoremap <Left> :tbnext<CR> 462:  " tnoremap <Right> :tbprevious<CR> 463:  " tnoremap <Leader>e <C- ><C-n>  464:  " imap <Backspace>   465:  map t <cmd>HopChar1AC<cr> 466:  map T <cmd>HopChar1BC<cr> 467:  map <m-.
> <cmd>HopChar1<cr>.
@??? 468:  map <m-space> <cmd>HopWord<cr> 469:  " map <S-m-Space> <cmd>HopWord<cr> 470:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 471:   472:  " FZF  473:  " 474:  noremap <m-t> :BTags<cr> 475:  noremap <m-y> :Tags<cr> 476:  noremap S <Esc> :BLines<CR> 477:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 478:  " Line search mapping  479:  " function! Jumpback()  480:  "   K=bufname() 481:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 482:  " endfunction 483:  noremap <m-b> <Esc>:Buffers<CR> 484:  " noremap F <Esc>:GFiles<CR> 485:  map <A-e> :FZF ~<CR>  486:  map <m-f> :FZF ~<CR>  487:   488:  "miscellaneous 489:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 490:  nmap <leader>g :ZenMode<CR> 491:  " nmap <leader>p :Denite neoyank -default-action=append<CR> 492:   493:  " Latex stuff 494:  "  495:  noremap <leader>ss :w<cr>:source  MYVIMRC<cr>  496:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 497:  noremap <c-p> :<c-r>+<cr> 498:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 499:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 500:   501:  "FZF Neoyank yank      502:  " 503:  nnoremap <leader>y :FZFNeoyank<cr> 504:  nnoremap <leader>Y :FZFNeoyank  P<cr> 505:  vnoremap <leader>y :FZFNeoyankSelection<cr> 506:   507:  nnoremap <leader>p :FZFNeoyank +<cr>  508:  nnoremap <leader>1 :FZFNeoyank 1<cr> 509:  nnoremap <leader>P :FZFNeoyank " P+<cr> 510:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 511:   512:   513:  " Replace the default dictionary completion with fzf-based fuzzy completion 514:   515:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   516:   517:   518:  "Functions 519:   520:  function Light() 521:  set background=light 522:  " colorscheme oceanlight  523:  colorscheme one  524:  " highlight Normal ctermfg=black 525:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 526:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 527:  endfunction    528:   529:  " function Light() 530:  " set background=light 531:  " " colorscheme oceanlight  532:  " colorscheme material  533:  " let g:material style = 'lighter'   534:  "    " highlight Normal ctermfg=black 535:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 536:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 537:  " endfunction    538:  function Bluemoon() 539:     set background=dark 540:     colorscheme blue-moon 541:     " colorscheme material   542:  endfunction 543:   544:  function Deepocean() 545:     set background=dark 546:     colorscheme material   547:     let g:material style = 'deep ocean'   548:  endfunction 549:   550:  function Palenight() 551:     set background=dark 552:     " colorscheme blue-moon 553:     colorscheme material   554:     let g:material style = 'palenight'   555:  endfunction 556:  function Lighter() 557:     set background=light 558:     " colorscheme blue-moon 559:     colorscheme material   560:     let g:material style = 'lighter'   561:  endfunction 562:   563:  function Dark() 564:     set background=dark 565:     colorscheme one   566:  endfunction 567:   568:  function! Profile() 569:  profile start profile.
log 570:  profile func * 571:  profile file * 572:  endfunction  573:   574:  function! Sentence() 575:    let g:buf = bufname() 576:    silent !sentence.
sh   577:    silent echo "Print any character" 578:    " silent call getchar() 579:    e sentence    580:    " echo "Print any character" 581:    " call getchar() 582:    BLines 583:  endfunction 584:  noremap L :lua require("zen-mode").
close()<cr>:call Sentence()<cr> 585:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 586:  function! Git()  587:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add . 
587:++++ ; git commit -m -a ; git push --all origin; fi  588:  endfunction 589:   590:  function! ToggleQuickFix()  591:        if empty(filter(getwininfo(), 'v:val.
quickfix')) 592:        exec "w" 593:          echo bufname() 594:          " lua require("zen-mode").
close()  595:          echo bufname() 596:          let b:filenamedir=expand(' :p:h')   597:          echo b:filenamedir 598:          let b:filename=expand(' :t:r') 599:          let b:errors=b:filenamedir . 
599:++++ "/buildback/" . 
599:++++ b:filename .
".
log" 600:          echo b:errors 601:          exec "caddf" b:errors 602:          copen 603:          sleep 1 604:          exec "wincmd j" 605:          exec "/error" 606:      else 607:          exec "cclose"  608:          sleep 1 609:          endif 610:  endfunction 611:   612:  nnoremap <leader>s :silent call ToggleQuickFix()<CR> 613:  function! ClearLatex() 614:    silent !rm .
/buildback/*  615:  endfunction  616:   617:  function! CompileLatex() 618:    silent call ClearLatex() 619:    let buf = bufname() 620:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -gg   621:    execute "buffer" buf 622:    call ViewPdf() 623:  endfunction 624:   625:  function! ViewPdf()  626:  wa 627:  silent execute "!echo " . 
627:++++ v:servername . 
627:++++ " > ~/servername.
txt" 628:  let buf = bufname() 629:  let linenumber=line(".
") 630:  let colnumber=col(".
")  631:  let b:filenamedir=expand(' :p:h')   632:  let filenametex=expand(' :p:t')  633:  let filenametexwhole=expand(' :p')  634:  let filenameroot=expand(' :t:r') 635:  " let filenamePDF=filename[:-4].
"pdf" 636:  let filenamePDF=b:filenamedir . 
636:++++ "/build/" . 
636:++++ filenameroot . 
636:++++ ".
pdf"  637:  echo filenamePDF 638:  let execstr="silent !zathura --synctex-forward " . 
638:++++ linenumber . 
638:++++ ":" . 
638:++++ colnumber . 
638:++++ ":" . 
638:++++ filenametexwhole . 
638:++++ " " . 
638:++++ filenamePDF . 
638:++++ " &>/dev/null &"  639:  echo execstr 640:  exec execstr 641:  execute "buffer" buf 642:  endfunction  643:  nmap <leader>v :call ViewPdf()<cr><cr> 644:  " nmap <leader>v :VimtexView<cr> 645:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 646:  nmap <leader>ll :call CompileLatex()<cr> 647:  nmap <leader>cl :call ClearLatex()<cr> 648:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 649:   650:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  651:  "" mathml shenanigans 652:   653:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 654:   655:   656:   657:   658:   659:   660:  "Autosave and autocommit    661:  " let g:updatetime = 10000 662:  let g:auto save = 0 663:  " .
vimrc 664:  let g:auto save events = ["CursorHold"] 665:  "au FileType vim let g:autosave = 0 666:  let g:auto save in insert mode = 0 667:  let g:auto save silent = 1 668:   669:  "Git autocommit  (private git repo) 670:  autocmd BufWritePost * call Git() 671:  lua <<EOF 672:  require'nvim-treesitter.
configs'.
setup    673:      -- 674:      highlight =   enable = true  , 675:      incremental selection =   676:      enable = true, 677:      keymaps =   678:        init selection = '<CR>', 679:        scope incremental = '<CR>', 680:        node incremental = '<TAB>', 681:        node decremental = '<S-TAB>', 682:       , 683:     , 684:      textobjects =   enable = true  , 685:      indent =   enable = false  , 686:    687:  EOF 688:   689:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  690:   691:  " vsnip stuff  692:  " Use <Tab> and <S-Tab> to navigate through popup menu 693:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 694:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 695:   696:  " Set completeopt to have a better completion experience 697:  set completeopt=menuone,noinsert,noselect 698:   699:  " Avoid showing message extra message when using completion 700:  set shortmess+=c 701:  let g:vsnip snippet dir = '~/dotfiles/snippets'   702:   703:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 704:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 705:  "  706:  " " Expand or jump 707:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 708:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 709:   710:  " Jump forward or backward 711:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 712:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 713:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 714:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 715:   716:  " 717:  " set foldexpr=nvim treesitter#foldexpr() 718:  " 719:  lua << EOF 720:  local nvim lsp = require('lspconfig') 721:  -- Use an on attach function to only map the following keys 722:  -- after the language server attaches to the current buffer 723:  local on attach = function(client, bufnr) 724:   local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 725:   local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 726:  -- Enable completion triggered by <c-x><c-o> 727:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 728:   729:    -- Mappings.
@??? 730:    local opts =   noremap=true, silent=true   731:   732:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 733:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 734:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 735:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 736:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 737:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 738:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 739:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 740:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 741:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 742:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 743:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 744:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 745:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 746:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 747:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 748:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 749:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 750:   751:  end 752:  EOF 753:   754:  "Lsp instal  755:  lua <<EOF 756:  local lsp installer = require("nvim-lsp-installer") 757:   758:  -- Register a handler that will be called for all installed servers.
@??? 759:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 760:  lsp installer.
on server ready(function(server) 761:      local opts =    762:   763:      -- (optional) Customize the options passed to the server 764:      -- if server.
name == "tsserver" then 765:      --     opts.
root dir = function() .
.
. 
765:++++ end 766:      -- end 767:   768:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 769:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 770:      server:setup(opts) 771:  end) 772:  EOF 773:   774:  " 775:  " inoremap <cr> <cr> <backspace> 776:   777:  set completeopt=menu,menuone,noselect 778:   779:  lua <<EOF 780:    -- Setup cmp.
@??? 781:   782:  local has words before = function() 783:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 784:      return false 785:    end 786:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 787:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 788:  end 789:   790:  local feedkey = function(key, mode) 791:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 792:  end 793:   794:  local cmp = require('cmp') 795:  cmp.
setup   796:   snippet =   797:        expand = function(args) 798:          -- For `vsnip` user.
@??? 799:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 800:    -- .
.
. 
800:++++ Your other configuration .
.
.
@??? 801:  end, 802:   , 803:  mapping =   804:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 805:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 806:        ['<C-x>'] = cmp.
mapping.
complete(), 807:        ['<C-e>'] = cmp.
mapping.
close(), 808:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 809:  -- .
.
. 
809:++++ Your other mappings .
.
.
@??? 810:  ["<Tab>"] = cmp.
mapping(function(fallback)  811:        if vim.
fn["vsnip#expandable"]() == 1 812:          then 813:          feedkey("<Plug>(vsnip-expand)", "") 814:       elseif cmp.
visible() then 815:          cmp.
select next item() 816:        elseif has words before() then  817:          cmp.
complete() 818:        else  819:          fallback() -- The fallback function sends a already mapped key. 
819:++++ In this case, it's probably `<Tab>`.
@??? 820:        end 821:      end,   "i", "s"  ), 822:  ["<S-Tab>"] = cmp.
mapping(function() 823:        if vim.
fn.
pumvisible() == 1 then 824:          feedkey("<C-p>", "n")   825:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 826:          feedkey("<Plug>(vsnip-jump-prev)", "") 827:        end 828:      end,   "i", "s"  ), 829:  -- .
.
. 
829:++++ Your other mappings .
.
.
@??? 830:   831:   , 832:  requires =   833:        834:        'quangnguyen30192/cmp-nvim-tags', 835:        -- if you want the sources is available for some file types 836:        ft =   837:          'tex', 838:          'latex'  839:          840:        841:       , 842:  -- .
.
. 
842:++++ Your other configuration .
.
.
@??? 843:  sources =   844:        -- For vsnip user.
@??? 845:   846:    name = 'tags', keyword length = 1000  , 847:    name = 'vsnip', keyword length = 1000  , 848:           -- For luasnip user.
@??? 849:        --   name = 'luasnip'  , 850:  -- For ultisnips user.
@??? 851:        --   name = 'ultisnips'  ,   852:       name = 'buffer', keyword length = 1000  , 853:       name = 'omni', keyword length = 4 , 854:         --   name = 'spell'  ,  855:       name = 'nvim lsp', keyword length = 4  , 856:        --  name = 'treesitter', keyword length = 4  , 857:  --  name = 'latex symbols'  , 858:   , 859:  completion =   860:      autocomplete = false  861:        862:    863:  EOF 864:   865:  "  866:  " " LSP mappings    867:  " "" LSP mappings  868:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 869:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 870:  "  871:  "  872:  lua <<EOF 873:   require('nvim comment').
setup( 874:    875:     -- Linters prefer comment and line to have a space in between markers 876:     marker padding = true, 877:     -- should comment out empty or whitespace only lines 878:     comment empty = true, 879:     -- Should key mappings be created 880:     create mappings = true, 881:     -- Normal mode mapping left hand side 882:     line mapping = "gc", 883:     -- Visual/Operator mapping left hand side 884:     operator mapping = "<leader>c", 885:     -- Hook function to call before commenting takes place 886:     --hook = nil  887:     888:   ) 889:  EOF 890:  nmap <leader>c gc 891:  " lua <<EOF 892:  " local true zen = require("true-zen") 893:  " true zen.
setup(  894:  "  	ui =   895:  "  		bottom =   896:  "  			laststatus = 0, 897:  "  			ruler = false, 898:  "  			showmode = false, 899:  "  			showcmd = false, 900:  "  			cmdheight = 1, 901:  "  		 , 902:  "  		top =   903:  "  			showtabline = 0, 904:  "  		 , 905:  "  		left =   906:  "  			number = false, 907:  "  			relativenumber = false, 908:  "  			signcolumn = "no", 909:  "  		 , 910:  "  	 , 911:  "  	modes =   912:  "  		ataraxis =   913:  "  			-- left padding = 20, 914:  "  			-- right padding = 20, 915:  "  			top padding = 0, 916:  "  			bottom padding = 0, 917:  "  			ideal writing area width =  60 , 918:  "  			auto padding = true, 919:  "  			keep default fold fillchars = true, 920:  "  			custom bg =  "none", "" , 921:  "  			bg configuration = true, 922:  "  			quit = "untoggle", 923:  "  			ignore floating windows = true, 924:  "  			affected higroups =   925:  "  				NonText = true, 926:  "  				FoldColumn = true, 927:  "  				ColorColumn = true, 928:  "  				VertSplit = true, 929:  "  				StatusLine = true, 930:  "  				StatusLineNC = true, 931:  "  				SignColumn = true, 932:  "  			 , 933:  "  		 , 934:  "  		focus =   935:  "  			margin of error = 5, 936:  "  			focus method = "experimental" 937:  "  		 , 938:  "  	 , 939:  "  	integrations =   940:  "  		vim gitgutter = false, 941:  "  		galaxyline = false, 942:  "  		tmux = false, 943:  "  		gitsigns = false, 944:  "  		nvim bufferline = false, 945:  "  		limelight = false, 946:  "  		twilight = false, 947:  "  		vim airline = false, 948:  "  		vim powerline = false, 949:  "  		vim signify = false, 950:  "  		express line = false, 951:  "  		lualine = false, 952:  "  		lightline = false, 953:  "  		feline = false, 954:  "  	 , 955:  "  	misc =   956:  "  		on off commands = true, 957:  "  		ui elements commands = false, 958:  "  		cursor by mode = false, 959:  "  	  960:  "   ) 961:  " EOF 962:  lua <<EOF 963:  require('feline').
setup(  964:      preset = 'noicon' 965:       ) 966:  EOF 967:  "  968:  "  969:  "  970:  " " lua <<EOF 971:  " " require('lualine').
setup  972:  " " options =  disabled filetypes =  'txt', 'text'   973:  " "   974:  " " EOF 975:  lua << EOF 976:    require("zen-mode").
setup   977:    window =   978:      backdrop = 1, -- shade the backdrop of the Zen window. 
978:++++ Set to 1 to keep the same as Normal 979:      -- height and width can be: 980:      -- * an absolute number of cells when > 1 981:      -- * a percentage of the width / height of the editor when <= 1 982:      -- * a function that returns the width or the height 983:      width = .
66, -- width of the Zen window 984:      height = 1, -- height of the Zen window 985:      -- by default, no options are changed for the Zen window 986:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 987:      options =   988:        -- signcolumn = "no", -- disable signcolumn 989:        -- number = false, -- disable number column 990:        -- relativenumber = false, -- disable relative numbers 991:        -- cursorline = false, -- disable cursorline 992:        -- cursorcolumn = false, -- disable cursor column 993:        -- foldcolumn = "0", -- disable fold column 994:        -- list = false, -- disable whitespace characters 995:       , 996:     , 997:    plugins =   998:      -- disable some global vim options (vim.
o.
.
.
) 999:      -- comment the lines to not apply the options 1000:      options =   1001:        enabled = true, 1002:        ruler = false, -- disables the ruler text in the cmd line area 1003:        showcmd = false, -- disables the command in the last line of the screen 1004:       , 1005:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1006:      gitsigns =   enabled = false  , -- disables git signs 1007:      tmux =   enabled = false  , -- disables the tmux statusline 1008:      -- this will change the font size on kitty when in zen mode 1009:      -- to make this work, you need to set the following kitty options: 1010:      -- - allow remote control socket-only 1011:      -- - listen on unix:/tmp/kitty 1012:      kitty =   1013:        enabled = false, 1014:        font = "+4", -- font size increment 1015:       , 1016:     , 1017:    -- callback where you can add custom code when the Zen window opens 1018:    on open = function(win) 1019:    end, 1020:    -- callback where you can add custom code when the Zen window closes 1021:    on close = function() 1022:    end, 1023:    1024:  EOF 1025:  " lua <<EOF 1026:  " require('telescope').
setup  1027:  "   defaults =   1028:  "     -- Default configuration for telescope goes here: 1029:  "     -- config key = value, 1030:  "     mappings =   1031:  "       i =   1032:  "         -- map actions.
which key to <C-h> (default: <C-/>) 1033:  "         -- actions.
which key shows the mappings for your picker, 1034:  "         -- e.
g. 
1034:++++ git  create, delete, .
.
.  
branch for the git branches picker 1035:  "         ["<C-h>"] = "which key" 1036:  "         1037:  "       1038:  "    , 1039:  "   pickers =   1040:  "     -- Default configuration for builtin pickers goes here: 1041:  "     -- picker name =   1042:  "     --   picker config key = value, 1043:  "     --   .
.
.
@??? 1044:  "     --   1045:  "     -- Now the picker config key will be applied every time you call this 1046:  "     -- builtin picker  1047:  "    , 1048:  "   extensions =   1049:  "     -- Your extension configuration goes here: 1050:  "     -- extension name =   1051:  "     --   extension config key = value, 1052:  "     --   1053:  "     -- please take a look at the readme of the extension you want to configure 1054:  "     1055:  "    1056:  " EOF 1057:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1058:  lua <<EOF 1059:  require('fm-nvim').
setup  1060:  	config = 1061:  	  1062:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1063:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1064:  		height   = .
9, 1065:  		width    = .
9, 1066:  	  1067:    1068:  EOF 1069:   1070:  " lua <<EOF 1071:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1072:  " require("prosesitter"):setup(  1073:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1073:++++ "/prosesitter/vale", 1074:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1074:++++ "/prosesitter/vale cfg.
ini", 1075:  " 	--optional extra queries overrides existing queries 1076:  " 	queries =    1077:  " 		-- see the piece on adding queries on how to use this  1078:  " 		-- (not needed if using an out of the box supported language 1079:  " 		py =    1080:  " 			strings = "[(string) ] @capture", 1081:  " 			comments = "[(comment)+ ] @capture", 1082:  " 		 , 1083:  " 	 ,  1084:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1085:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1086:  " 	-- weather to lint strings, comments or both for a language 1087:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1088:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1089:  " 	auto enable = false, -- do not start linting files on open (default = true) 1090:  " 	default cmds = false,  -- do not add commands (default = true) 1091:  "  ) 1092:  " EOF  1093:  " 1094:  " 1095:  " lua <<EOF 1096:  " require('spellsitter').
setup   1097:  "   hl = 'SpellBad',  1098:  "   captures =   ,  -- set to    to spellcheck everything 1099:  " 1100:  "   -- Spellchecker to use. 
1100:++++ values: 1101:  "   -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1102:  "   -- * ffi: built-in spell checker using the FFI to access the 1103:  "   --   internal spell check() function 1104:  " spellchecker = 'vimfn', 1105:  "   1106:  " EOF 1107:   1108:  let g:firenvim config =    1109:        'globalSettings':   1110:            'alt': 'all', 1111:          , 1112:        'localSettings':   1113:            '.
*':   1114:                'cmdline': 'neovim', 1115:                'content': 'text', 1116:                'priority': 0, 1117:                'selector': 'textarea', 1118:                'takeover': 'never', 1119:             , 1120:          1121:      1122:  lua << EOF 1123:  require('fzf-lua').
setup  1124:  -- .
.
.
@??? 1125:    1126:  EOF 1127:   1128:    1129:  " lua << EOF 1130:  " require("stabilize").
setup( 1131:  "   1132:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1133:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1134:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1135:  " --		filetype =   "help", "list", "Trouble"  , 1136:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1137:  " --	  1138:  "   1139:  " ) 1140:  " EOF 1141:  " lua <<EOF 1142:  " require('dd').
setup() 1143:  " EOF 1144:  " lua << EOF 1145:  " local opts =   1146:  "   log level = 'info', 1147:  "   auto session enable last session = false, 1148:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1149:  "   auto session enabled = false, 1150:  "   auto save enabled = nil, 1151:  "   auto restore enabled = nil, 1152:  "   auto session suppress dirs = nil 1153:  "   1154:  " require('auto-session').
setup(opts) 1155:  " EOF 1156:   1157:  " lua << EOF 1158:  " if exists('g:started by firenvim') 1159:  "   ZenMode 1160:  " else 1161:  "   set laststatus=2 1162:  " endif 1163:   1164:  " lua <<EOF 1165:  " require('neoclip').
setup(  1166:  "       history = 1000, 1167:  "       enable persistant history = false, 1168:  "       db path = vim.
fn.
stdpath("data") .
. 
1168:++++ "/databases/neoclip.
sqlite3", 1169:  "       filter = nil, 1170:  "       preview = true, 1171:  "       default register = '"', 1172:  "       content spec column = false, 1173:  "       on paste =   1174:  "         set reg = false, 1175:  "        , 1176:  "       keys =   1177:  "         i =   1178:  "           select = '<cr>', 1179:  "           paste = '<c-p>', 1180:  "           paste behind = '<c-k>', 1181:  "           custom =   , 1182:  "          , 1183:  "         n =   1184:  "           select = '<cr>', 1185:  "           paste = 'p', 1186:  "           paste behind = 'P', 1187:  "           custom =   , 1188:  "          , 1189:  "        , 1190:  "     ) 1191:  " EOF 1192:  " lua <<EOF 1193:  " local saga = require 'lspsaga'  1194:  " saga.
init lsp saga()  1195:  "   1196:  " EOF 1197:   1198:  "au FileType tex autocmd User SneakLeave set syntax=tex 1199:  "au FileType tex autocmd User SneakEnter set syntax=text 1200:  " 1201:  " 1202:  " 1203:   1204:  " 1205:  " 'tCommen20 1206:  " let g:tcommentMapLeaderOp1=';'  1207:  " "map <leader>c <Leader>    1208:  "" function! RestoreRegister() 1209:  "   let @" = s:restore reg 1210:  "   return '' 1211:  " endfunction 1212:  " function! s:Repl() 1213:  "     let s:restore reg = @" 1214:  "     return "p@=RestoreRegister() <cr>" 1215:  " endfunction 1216:  " 1217:  " " NB: this supports "rp that replaces the selection by the contents of @r 1218:  " vnoremap <silent> <expr> p <sid>Repl() 1219:   1220:  " " Change Color when entering 1221:  " Insert Mode augroup CursorLine 1222:  "    au! 1223:  "  if has("gui running") 1224:  "  else 1225:  "      au InsertEnter * setlocal cursorline 1226:  "        au InsertLeave * setlocal nocursorline 1227:  "     endif 1228:  "        augroup END 1229:  " function! DelTagOfFile(file) 1230:  "   let fullpath = a:file 1231:  "   let cwd = getcwd() 1232:  "   let tagfilename = cwd . 
1232:++++ "/tags" 1233:  "   let f = substitute(fullpath, cwd . 
1233:++++ "/", "", "") 1234:  "   let f = escape(f, '.
/') 1235:  "   let cmd = 'sed -i "/' . 
1235:++++ f . 
1235:++++ '/d" "' . 
1235:++++ tagfilename . 
1235:++++ '"' 1236:  "   let resp = system(cmd) 1237:  " endfunction 1238:  " function! Break() 1239:  "  let n=130-virtcol('.
') 1240:  "  <Esc>ni <Esc><Esc> 1241:  " endfunction 1242:  " function Gitview() 1243:  "    cd /root/web2 ; git add . 
1243:++++ ; git commit -m -a ; git push origin gh-pages 1244:  " endfunction 1245:  " fuzzy search 1246:  " function! s:config fuzzyall(.
.
.
) abort 1247:  "   return extend(copy(  1248:  "       'converters': [ 1249:  "         incsearch#config#fuzzy#converter(), 1250:  "         incsearch#config#fuzzyspell#converter() 1251:  "       ], 1252:  "      ), get(a:, 1,    1253:  "   )) 1254:  " endfunction 1255:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1256:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1257:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1258:  " map f <Plug>(incsearch-fuzzyspell-/) 1259:  " map F <Plug>(incsearch-fuzzyspell-?) 1260:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1261:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1262:  " let g:deoplete#enable at startup = 1 1263:  " map <silent> <leader>g :silent call Gitview() 1264:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1265:  "Load some useful plugins with vundle  1266:  " 1267:  "asdf asldfkj 1268:  " hi! link Sneak Normal 1269:  " hi! link SneakScope Normal   test test2 test3 1270:   1271:  " command! -bang -nargs=* Rg 1272:  "     call fzf#vim#grep( 1273:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1274:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1275:  " 1276:  "" au GUIEnter * set fullscreen 1277:  " if has("gui running") 1278:    " set fuoptions=maxvert,maxhorz 1279:    " au GUIEnter * set fullscreen 1280:     " set foldcolumn=10 1281:     " set formatoptions=ant 1282:  " set wrapmargin=0 1283:  " set nohlsearch 1284:  " set tags= ~/workspacemodules/tags 1285:  " highlight SignColumn guibg=bg 1286:  "       endif     1287:  " if has("autocmd") 1288:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1289:  " endif 1290:    " autocmd BufWinLeave *.
* mkview 1291:    " autocmd BufWinEnter *.
* silent loadview 1292:     " set foldcolumn=2 1293:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1294:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1295:  " inoremap <cr> <esc>:w<cr>i<cr>  1296:  "" set tm=500 1297:  " set macmeta 1298:  " auto reload vimrc when editing it 1299:  " let g:github function style = "italic" 1300:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1301:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1302:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1303:  " Load the colorscheme 1304:  " colorscheme github dark 1305:  "" terminal color settings  1306:  " Example config in VimScript 1307:  " let g:github function style = "italic" 1308:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1309:   1310:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1311:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1312:  " Load the colorscheme 1313:  " colorscheme github dark  1314:  " set background=dark  1315:  " if has("gui running")	" GUI color and font settings 1316:  "   set guifont=Fira  Code:h22 1317:  "   " colorscheme gruvbox  1318:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1319:  " else 1320:  "  colorscheme one 1321:  " colorscheme material   1322:  " let g:material style = 'palenight'   1323:  " let g:material style = 'lighter' 1324:  " highlight Normal ctermbg=none  1325:  "   " let g:vimtex quickfix method='pplatex'  1326:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1327:  "    function! UpdateSkim(status) 1328:  "      if !a:status | return | endif 1329:  " 1330:  "      let l:out = b:vimtex.
out() 1331:  "      let l:tex = expand(' :p') 1332:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1333:  "      if !empty(system('pgrep Skim')) 1334:  "        call extend(l:cmd, ['-g']) 1335:  "      endif 1336:  "      if has('nvim') 1337:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1338:  "      elseif has('job') 1339:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1340:  "      else 1341:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1342:  "      endif 1343:  "    endfunction 1344:  " let g:vimtex latexmk build dir = '.
/build' 1345:  "   'build dir' : '.
/build', 1346:  "  1347:  "     let g:vimtex compiler latexmk =   1348:  "       'background' : 0, 1349:  "           'callback' : 1, 1350:  "       'continuous' : 1, 1351:  "       'options' : [ 1352:  "         '-pdf', 1353:  "         '-verbose', 1354:  "         '-file-line-error', 1355:  "         '-synctex=1', 1356:  "         '-interaction=nonstopmode', 1357:  "       ], 1358:  "        1359:  " let g:vimtex compiler progname = 'nvr' 1360:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1361:  " let g:vimtex quickfix mode = 1 1362:  " let g:vimtex fold enabled = 0 1363:  " let g:vimtex fold manual = 1 1364:   1365:   1366:  " let g:vimtex fold types=   1367:  "             'preamble' :   , 1368:  "             'comments' :  'enabled' : 1 , 1369:  "             'markers' :   , 1370:  "             'sections' :   1371:  "               'parse levels' : 0, 1372:  "               'sections' : [       1373:  "                 ' (add)?part', 1374:  "                 ' (chapter|addchap)', 1375:  "                 ' (section|addsec)', 1376:  "                 'subsection', 1377:  "                 'subsubsection', 1378:  "               ], 1379:  "               'parts' : [          1380:  "                 'appendix', 1381:  "                 'frontmatter', 1382:  "                 'mainmatter', 1383:  "                 'backmatter', 1384:  "               ], 1385:  "              , 1386:  "              1387:   1388:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1389:  " lua <<EOF 1390:  " require'nvim-treesitter.
configs'.
setup   1391:  "   incremental selection =   1392:  "     enable = true, 1393:  "     keymaps =   1394:  "       init selection = "gnn", 1395:  "       node incremental = "grn", 1396:  "       scope incremental = "grc", 1397:  "       node decremental = "grm", 1398:  "      , 1399:  "    , 1400:  "   1401:  " EOF 1402:  " lua <<EOF 1403:  " require('neoscroll').
setup  1404:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1405:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1406:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1407:  "     hide cursor = true,          -- Hide cursor while scrolling 1408:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1409:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1410:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1411:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1412:  "     easing function = nil,        -- Default easing function 1413:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1414:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1415:  "       1416:  " EOF 1417:  "  1418:  " " set foldlevel=20 1419:  " " set foldmethod=expr 1420:  " " set foldexpr=nvim treesitter#foldexpr() 1421:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1422:  " inoremap .
<Space> .
<CR><Esc><leader>j 1423:  " noremap S :S  1424:  " 1425:  " 1426:  " function! Sneak() 1427:  "     hi! link Sneak Normal 1428:  "     hi! link SneakScope Normal 1429:  "     execute 'normal!  <Plug>Sneak s' 1430:  "     syntax on 1431:  " endfunction 1432:    1433:  " map N <Plug>Sneak , 1434:  " map t <Plug>(smalls-excursion) 1435:  " let g:smalls auto jump=1 1436:  " let g:smalls auto jump timeout=0 1437:       1438:  "  1439:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1440:  " let g:vimtex view general options = '-r @line @pdf @ 1441:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1442:  " <cr> 1443:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1444:  " NB: this supports "rp that replaces the selection by the contents of @r 1445:  " Auto updating Ctags 1446:  " autocmd VimLeave * exe ":silent ! ctags -R" 1447:  " 1448:  "" lua << EOF 1449:  " local function setup servers() 1450:  "   require'lspinstall'.
setup() 1451:  "   local servers = require'lspinstall'.
installed servers() 1452:  "   for  , server in pairs(servers) do 1453:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1454:  "   end 1455:  " end 1456:  "  1457:  " setup servers() 1458:  "  1459:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1460:  " require'lspinstall'.
post install hook = function () 1461:  "   setup servers() -- reload installed servers 1462:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1463:  " end 1464:  " EOF 1465:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif 1466:   1467:         1468:  "other maps    1469:  inoremap <cr> <cr><space><esc>" s 1470:  nnoremap o o<space><esc>" s 1471:   1472:   1473:   1474:  let g:neovide fullscreen=v:true 1475:  if exists('g:gonvim running') 1476:      "goneovim specific stuff 1477:  elseif exists('g:neovide') 1478:     set guifont=Fira  Code  Light:h20 1479:  end 1480:  let g:autotagTagsFile=".
tags"2 1481:  " lua <<EOF 1482:  " -- Installation 1483:  " use    1484:  "   'hrsh7th/nvim-cmp', 1485:  "   requires =   1486:  "       1487:  "       'quangnguyen30192/cmp-nvim-tags', 1488:  "       -- if you want the sources is available for some file types 1489:  "       ft =   1490:  "         'latex', 1491:  "         'tex' 1492:  "         1493:  "       1494:  "    , 1495:  "   config = function () 1496:  "     require'cmp'.
setup   1497:  "     sources =   1498:  "         name = 'tags'  , 1499:  "       -- more sources 1500:  "       1501:  "     1502:  "   end 1503:  "   1504:  " EOF 1505:  " 