1:  call plug#begin('~/.
vim/plugged')    2:  Plug 'folke/zen-mode.
nvim',   'branch': 'main'    3:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   4:  Plug 'vijaymarupudi/nvim-fzf' 5:  Plug 'kyazdani42/nvim-web-devicons' 6:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   7:  Plug 'phaazon/hop.
nvim'     8:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     9:  Plug 'is0n/fm-nvim' 10:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   11:  Plug 'famiu/feline.
nvim' 12:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   13:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    14:  Plug 'hrsh7th/vim-vsnip' 15:  Plug 'hrsh7th/vim-vsnip-integ' 16:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'     17:  Plug 'voldikss/vim-floaterm' 18:  Plug 'voldikss/vim-floaterm' 19:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   20:  Plug 'justinhoward/fzf-neoyank'   21:  Plug 'rakr/vim-one'  22:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'    23:  Plug 'Shougo/neoyank.
vim'  24:  Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'    25:  Plug 'skywind3000/asyncrun.
vim'          26:  Plug 'junegunn/fzf',   'do':   -> fzf#install()      27:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    28:  Plug 'junegunn/fzf.
vim' 29:  " Plug 'vim-scripts/AutoTag' 30:  Plug 'xolox/vim-easytags' 31:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   32:  Plug 'xolox/vim-misc' 33:   34:  " Plug 'rebelot/kanagawa.
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
437:++++ ` 438:  noremap <m-1> <C-o> 439:  noremap <m-2> <C-i> 440:  noremap <D-d> <C-d> 441:  xnoremap ;w <Esc>:w<CR> 442:  xnoremap ;cc <Esc>:AsyncRun ctags -R<CR> 443:  noremap <D-u> <C-u> 444:  noremap <A-u> <C-u> 445:  " this mapping Enter key to <C-y> to chose the current highlight item  446:  " and close he selection list, same as other IDEs.
@??? 447:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 448:  nnoremap <silent> <Leader>y :YRGetElem<CR> 449:  map ' " 450:  inoremap <D-]> <C-x><C-]> 451:  inoremap <C-]> <C-x><C-]> 452:   453:  au FileType tex,text,md nmap 0 g  454:  au FileType tex,text,md noremap 9 g  455:  " au FileType tex,text,md nnoremap dd " g dg g  456:   457:  "Neovim mappings 458:  " :tnoremap <S-h> <C- ><C-n><C-w>h 459:  " :tnoremap <S-j> <C- ><C-n><C-w>j 460:  " :tnoremap <S-k> <C- ><C-n><C-w>k 461:  " :tnoremap <S-l> <C- ><C-n><C-w>l 462:  " tnoremap <Left> :tbnext<CR> 463:  " tnoremap <Right> :tbprevious<CR> 464:  " tnoremap <Leader>e <C- ><C-n>  465:  " imap <Backspace>   466:  map t <cmd>HopChar1AC<cr> 467:  map T <cmd>HopChar1BC<cr> 468:  map <m-.
> <cmd>HopChar1<cr>.
@??? 469:  map <m-space> <cmd>HopWord<cr> 470:  " map <S-m-Space> <cmd>HopWord<cr> 471:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 472:   473:  " FZF  474:  " 475:  noremap <m-t> :BTags<cr> 476:  noremap <m-y> :Tags<cr> 477:  noremap S <Esc> :BLines<CR> 478:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 479:  " Line search mapping  480:  " function! Jumpback()  481:  "   K=bufname() 482:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 483:  " endfunction 484:  noremap <m-b> <Esc>:Buffers<CR> 485:  " noremap F <Esc>:GFiles<CR> 486:  map <A-e> :FZF ~<CR>  487:  map <m-f> :FZF ~<CR>  488:   489:  "miscellaneous 490:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 491:  nmap <leader>g :ZenMode<CR> 492:  " nmap <leader>p :Denite neoyank -default-action=append<CR> 493:   494:  " Latex stuff 495:  "  496:  noremap <leader>ss :w<cr>:source  MYVIMRC<cr>  497:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 498:  noremap <c-p> :<c-r>+<cr> 499:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 500:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 501:   502:  "FZF Neoyank yank      503:  " 504:  nnoremap <leader>y :FZFNeoyank<cr> 505:  nnoremap <leader>Y :FZFNeoyank  P<cr> 506:  vnoremap <leader>y :FZFNeoyankSelection<cr> 507:   508:  nnoremap <leader>p :FZFNeoyank +<cr>  509:  nnoremap <leader>1 :FZFNeoyank 1<cr> 510:  nnoremap <leader>P :FZFNeoyank " P+<cr> 511:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 512:   513:   514:  " Replace the default dictionary completion with fzf-based fuzzy completion 515:   516:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   517:   518:   519:  "Functions 520:   521:  function Light() 522:  set background=light 523:  " colorscheme oceanlight  524:  colorscheme one  525:  " highlight Normal ctermfg=black 526:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 527:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 528:  endfunction    529:   530:  " function Light() 531:  " set background=light 532:  " " colorscheme oceanlight  533:  " colorscheme material  534:  " let g:material style = 'lighter'   535:  "    " highlight Normal ctermfg=black 536:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 537:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 538:  " endfunction    539:  function Bluemoon() 540:     set background=dark 541:     colorscheme blue-moon 542:     " colorscheme material   543:  endfunction 544:   545:  function Deepocean() 546:     set background=dark 547:     colorscheme material   548:     let g:material style = 'deep ocean'   549:  endfunction 550:   551:  function Palenight() 552:     set background=dark 553:     " colorscheme blue-moon 554:     colorscheme material   555:     let g:material style = 'palenight'   556:  endfunction 557:  function Lighter() 558:     set background=light 559:     " colorscheme blue-moon 560:     colorscheme material   561:     let g:material style = 'lighter'   562:  endfunction 563:   564:  function Dark() 565:     set background=dark 566:     colorscheme one   567:  endfunction 568:   569:  function! Profile() 570:  profile start profile.
log 571:  profile func * 572:  profile file * 573:  endfunction  574:   575:  function! Sentence() 576:    let g:buf = bufname() 577:    silent !sentence.
sh   578:    silent echo "Print any character" 579:    " silent call getchar() 580:    e sentence    581:    " echo "Print any character" 582:    " call getchar() 583:    BLines 584:  endfunction 585:  noremap LL :lua require("zen-mode").
close()<cr>:call Sentence()<cr> 586:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 587:  function! Git()  588:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add . 
588:++++ ; git commit -m -a ; git push --all origin; fi  589:  endfunction 590:   591:  function! ToggleQuickFix()  592:        if empty(filter(getwininfo(), 'v:val.
quickfix')) 593:        exec "w" 594:          echo bufname() 595:          " lua require("zen-mode").
close()  596:          echo bufname() 597:          let b:filenamedir=expand(' :p:h')   598:          echo b:filenamedir 599:          let b:filename=expand(' :t:r') 600:          let b:errors=b:filenamedir . 
600:++++ "/buildback/" . 
600:++++ b:filename .
".
log" 601:          echo b:errors 602:          exec "caddf" b:errors 603:          copen 604:          sleep 1 605:          exec "wincmd j" 606:          exec "/error" 607:      else 608:          exec "cclose"  609:          sleep 1 610:          endif 611:  endfunction 612:   613:  nnoremap <leader>s :silent call ToggleQuickFix()<CR> 614:  function! ClearLatex() 615:    silent !rm .
/buildback/*  616:  endfunction  617:   618:  function! CompileLatex() 619:    silent call ClearLatex() 620:    let buf = bufname() 621:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -gg   622:    execute "buffer" buf 623:    call ViewPdf() 624:  endfunction 625:   626:  function! ViewPdf()  627:  wa 628:  silent execute "!echo " . 
628:++++ v:servername . 
628:++++ " > ~/servername.
txt" 629:  let buf = bufname() 630:  let linenumber=line(".
") 631:  let colnumber=col(".
")  632:  let b:filenamedir=expand(' :p:h')   633:  let filenametex=expand(' :p:t')  634:  let filenametexwhole=expand(' :p')  635:  let filenameroot=expand(' :t:r') 636:  " let filenamePDF=filename[:-4].
"pdf" 637:  let filenamePDF=b:filenamedir . 
637:++++ "/build/" . 
637:++++ filenameroot . 
637:++++ ".
pdf"  638:  echo filenamePDF 639:  let execstr="silent !zathura --synctex-forward " . 
639:++++ linenumber . 
639:++++ ":" . 
639:++++ colnumber . 
639:++++ ":" . 
639:++++ filenametexwhole . 
639:++++ " " . 
639:++++ filenamePDF . 
639:++++ " &>/dev/null &"  640:  echo execstr 641:  exec execstr 642:  execute "buffer" buf 643:  endfunction  644:  nmap <leader>v :call ViewPdf()<cr><cr> 645:  " nmap <leader>v :VimtexView<cr> 646:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 647:  nmap <leader>ll :call CompileLatex()<cr> 648:  nmap <leader>cl :call ClearLatex()<cr> 649:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 650:   651:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  652:  "" mathml shenanigans 653:   654:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 655:   656:   657:   658:   659:   660:   661:  "Autosave and autocommit    662:  " let g:updatetime = 10000 663:  let g:auto save = 0 664:  " .
vimrc 665:  let g:auto save events = ["CursorHold"] 666:  "au FileType vim let g:autosave = 0 667:  let g:auto save in insert mode = 0 668:  let g:auto save silent = 1 669:   670:  "Git autocommit  (private git repo) 671:  autocmd BufWritePost * call Git() 672:  lua <<EOF 673:  require'nvim-treesitter.
configs'.
setup    674:      -- 675:      highlight =   enable = true  , 676:      incremental selection =   677:      enable = true, 678:      keymaps =   679:        init selection = '<CR>', 680:        scope incremental = '<CR>', 681:        node incremental = '<TAB>', 682:        node decremental = '<S-TAB>', 683:       , 684:     , 685:      textobjects =   enable = true  , 686:      indent =   enable = false  , 687:    688:  EOF 689:   690:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  691:   692:  " vsnip stuff  693:  " Use <Tab> and <S-Tab> to navigate through popup menu 694:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 695:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 696:   697:  " Set completeopt to have a better completion experience 698:  set completeopt=menuone,noinsert,noselect 699:   700:  " Avoid showing message extra message when using completion 701:  set shortmess+=c 702:  let g:vsnip snippet dir = '~/dotfiles/snippets'   703:   704:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 705:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 706:  "  707:  " " Expand or jump 708:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 709:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 710:   711:  " Jump forward or backward 712:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 713:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 714:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 715:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 716:   717:  " 718:  " set foldexpr=nvim treesitter#foldexpr() 719:  " 720:  lua << EOF 721:  local nvim lsp = require('lspconfig') 722:  -- Use an on attach function to only map the following keys 723:  -- after the language server attaches to the current buffer 724:  local on attach = function(client, bufnr) 725:   local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 726:   local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 727:  -- Enable completion triggered by <c-x><c-o> 728:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 729:   730:    -- Mappings.
@??? 731:    local opts =   noremap=true, silent=true   732:   733:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 734:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 735:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 736:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 737:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 738:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 739:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 740:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 741:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 742:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 743:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 744:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 745:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 746:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 747:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 748:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 749:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 750:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 751:   752:  end 753:  EOF 754:   755:  "Lsp instal  756:  lua <<EOF 757:  local lsp installer = require("nvim-lsp-installer") 758:   759:  -- Register a handler that will be called for all installed servers.
@??? 760:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 761:  lsp installer.
on server ready(function(server) 762:      local opts =    763:   764:      -- (optional) Customize the options passed to the server 765:      -- if server.
name == "tsserver" then 766:      --     opts.
root dir = function() .
.
. 
766:++++ end 767:      -- end 768:   769:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 770:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 771:      server:setup(opts) 772:  end) 773:  EOF 774:   775:  " 776:  " inoremap <cr> <cr> <backspace> 777:   778:  set completeopt=menu,menuone,noselect 779:   780:  lua <<EOF 781:    -- Setup cmp.
@??? 782:   783:  local has words before = function() 784:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 785:      return false 786:    end 787:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 788:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 789:  end 790:   791:  local feedkey = function(key, mode) 792:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 793:  end 794:   795:  local cmp = require('cmp') 796:  cmp.
setup   797:   snippet =   798:        expand = function(args) 799:          -- For `vsnip` user.
@??? 800:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 801:    -- .
.
. 
801:++++ Your other configuration .
.
.
@??? 802:  end, 803:   , 804:  mapping =   805:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 806:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 807:        ['<C-x>'] = cmp.
mapping.
complete(), 808:        ['<C-e>'] = cmp.
mapping.
close(), 809:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 810:  -- .
.
. 
810:++++ Your other mappings .
.
.
@??? 811:  ["<Tab>"] = cmp.
mapping(function(fallback)  812:        if vim.
fn["vsnip#expandable"]() == 1 813:          then 814:          feedkey("<Plug>(vsnip-expand)", "") 815:       elseif cmp.
visible() then 816:          cmp.
select next item() 817:        elseif has words before() then  818:          cmp.
complete() 819:        else  820:          fallback() -- The fallback function sends a already mapped key. 
820:++++ In this case, it's probably `<Tab>`.
@??? 821:        end 822:      end,   "i", "s"  ), 823:  ["<S-Tab>"] = cmp.
mapping(function() 824:        if vim.
fn.
pumvisible() == 1 then 825:          feedkey("<C-p>", "n")   826:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 827:          feedkey("<Plug>(vsnip-jump-prev)", "") 828:        end 829:      end,   "i", "s"  ), 830:  -- .
.
. 
830:++++ Your other mappings .
.
.
@??? 831:   832:   , 833:  requires =   834:        835:        'quangnguyen30192/cmp-nvim-tags', 836:        -- if you want the sources is available for some file types 837:        ft =   838:          'tex', 839:          'latex'  840:          841:        842:       , 843:  -- .
.
. 
843:++++ Your other configuration .
.
.
@??? 844:  sources =   845:        -- For vsnip user.
@??? 846:   847:    name = 'tags', keyword length = 1000  , 848:    name = 'vsnip', keyword length = 1000  , 849:           -- For luasnip user.
@??? 850:        --   name = 'luasnip'  , 851:  -- For ultisnips user.
@??? 852:        --   name = 'ultisnips'  ,   853:       name = 'buffer', keyword length = 1000  , 854:       name = 'omni', keyword length = 4 , 855:         --   name = 'spell'  ,  856:       name = 'nvim lsp', keyword length = 4  , 857:        --  name = 'treesitter', keyword length = 4  , 858:  --  name = 'latex symbols'  , 859:   , 860:  completion =   861:      autocomplete = false  862:        863:    864:  EOF 865:   866:  "  867:  " " LSP mappings    868:  " "" LSP mappings  869:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 870:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 871:  "  872:  "  873:  lua <<EOF 874:   require('nvim comment').
setup( 875:    876:     -- Linters prefer comment and line to have a space in between markers 877:     marker padding = true, 878:     -- should comment out empty or whitespace only lines 879:     comment empty = true, 880:     -- Should key mappings be created 881:     create mappings = true, 882:     -- Normal mode mapping left hand side 883:     line mapping = "gc", 884:     -- Visual/Operator mapping left hand side 885:     operator mapping = "<leader>c", 886:     -- Hook function to call before commenting takes place 887:     --hook = nil  888:     889:   ) 890:  EOF 891:  nmap <leader>c gc 892:  " lua <<EOF 893:  " local true zen = require("true-zen") 894:  " true zen.
setup(  895:  "  	ui =   896:  "  		bottom =   897:  "  			laststatus = 0, 898:  "  			ruler = false, 899:  "  			showmode = false, 900:  "  			showcmd = false, 901:  "  			cmdheight = 1, 902:  "  		 , 903:  "  		top =   904:  "  			showtabline = 0, 905:  "  		 , 906:  "  		left =   907:  "  			number = false, 908:  "  			relativenumber = false, 909:  "  			signcolumn = "no", 910:  "  		 , 911:  "  	 , 912:  "  	modes =   913:  "  		ataraxis =   914:  "  			-- left padding = 20, 915:  "  			-- right padding = 20, 916:  "  			top padding = 0, 917:  "  			bottom padding = 0, 918:  "  			ideal writing area width =  60 , 919:  "  			auto padding = true, 920:  "  			keep default fold fillchars = true, 921:  "  			custom bg =  "none", "" , 922:  "  			bg configuration = true, 923:  "  			quit = "untoggle", 924:  "  			ignore floating windows = true, 925:  "  			affected higroups =   926:  "  				NonText = true, 927:  "  				FoldColumn = true, 928:  "  				ColorColumn = true, 929:  "  				VertSplit = true, 930:  "  				StatusLine = true, 931:  "  				StatusLineNC = true, 932:  "  				SignColumn = true, 933:  "  			 , 934:  "  		 , 935:  "  		focus =   936:  "  			margin of error = 5, 937:  "  			focus method = "experimental" 938:  "  		 , 939:  "  	 , 940:  "  	integrations =   941:  "  		vim gitgutter = false, 942:  "  		galaxyline = false, 943:  "  		tmux = false, 944:  "  		gitsigns = false, 945:  "  		nvim bufferline = false, 946:  "  		limelight = false, 947:  "  		twilight = false, 948:  "  		vim airline = false, 949:  "  		vim powerline = false, 950:  "  		vim signify = false, 951:  "  		express line = false, 952:  "  		lualine = false, 953:  "  		lightline = false, 954:  "  		feline = false, 955:  "  	 , 956:  "  	misc =   957:  "  		on off commands = true, 958:  "  		ui elements commands = false, 959:  "  		cursor by mode = false, 960:  "  	  961:  "   ) 962:  " EOF 963:  lua <<EOF 964:  require('feline').
setup(  965:      preset = 'noicon' 966:       ) 967:  EOF 968:  "  969:  "  970:  "  971:  " " lua <<EOF 972:  " " require('lualine').
setup  973:  " " options =  disabled filetypes =  'txt', 'text'   974:  " "   975:  " " EOF 976:  lua << EOF 977:    require("zen-mode").
setup   978:    window =   979:      backdrop = 1, -- shade the backdrop of the Zen window. 
979:++++ Set to 1 to keep the same as Normal 980:      -- height and width can be: 981:      -- * an absolute number of cells when > 1 982:      -- * a percentage of the width / height of the editor when <= 1 983:      -- * a function that returns the width or the height 984:      width = .
66, -- width of the Zen window 985:      height = 1, -- height of the Zen window 986:      -- by default, no options are changed for the Zen window 987:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 988:      options =   989:        -- signcolumn = "no", -- disable signcolumn 990:        -- number = false, -- disable number column 991:        -- relativenumber = false, -- disable relative numbers 992:        -- cursorline = false, -- disable cursorline 993:        -- cursorcolumn = false, -- disable cursor column 994:        -- foldcolumn = "0", -- disable fold column 995:        -- list = false, -- disable whitespace characters 996:       , 997:     , 998:    plugins =   999:      -- disable some global vim options (vim.
o.
.
.
) 1000:      -- comment the lines to not apply the options 1001:      options =   1002:        enabled = true, 1003:        ruler = false, -- disables the ruler text in the cmd line area 1004:        showcmd = false, -- disables the command in the last line of the screen 1005:       , 1006:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1007:      gitsigns =   enabled = false  , -- disables git signs 1008:      tmux =   enabled = false  , -- disables the tmux statusline 1009:      -- this will change the font size on kitty when in zen mode 1010:      -- to make this work, you need to set the following kitty options: 1011:      -- - allow remote control socket-only 1012:      -- - listen on unix:/tmp/kitty 1013:      kitty =   1014:        enabled = false, 1015:        font = "+4", -- font size increment 1016:       , 1017:     , 1018:    -- callback where you can add custom code when the Zen window opens 1019:    on open = function(win) 1020:    end, 1021:    -- callback where you can add custom code when the Zen window closes 1022:    on close = function() 1023:    end, 1024:    1025:  EOF 1026:  " lua <<EOF 1027:  " require('telescope').
setup  1028:  "   defaults =   1029:  "     -- Default configuration for telescope goes here: 1030:  "     -- config key = value, 1031:  "     mappings =   1032:  "       i =   1033:  "         -- map actions.
which key to <C-h> (default: <C-/>) 1034:  "         -- actions.
which key shows the mappings for your picker, 1035:  "         -- e.
g. 
1035:++++ git  create, delete, .
.
.  
branch for the git branches picker 1036:  "         ["<C-h>"] = "which key" 1037:  "         1038:  "       1039:  "    , 1040:  "   pickers =   1041:  "     -- Default configuration for builtin pickers goes here: 1042:  "     -- picker name =   1043:  "     --   picker config key = value, 1044:  "     --   .
.
.
@??? 1045:  "     --   1046:  "     -- Now the picker config key will be applied every time you call this 1047:  "     -- builtin picker  1048:  "    , 1049:  "   extensions =   1050:  "     -- Your extension configuration goes here: 1051:  "     -- extension name =   1052:  "     --   extension config key = value, 1053:  "     --   1054:  "     -- please take a look at the readme of the extension you want to configure 1055:  "     1056:  "    1057:  " EOF 1058:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1059:  lua <<EOF 1060:  require('fm-nvim').
setup  1061:  	config = 1062:  	  1063:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1064:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1065:  		height   = .
9, 1066:  		width    = .
9, 1067:  	  1068:    1069:  EOF 1070:   1071:  " lua <<EOF 1072:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1073:  " require("prosesitter"):setup(  1074:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1074:++++ "/prosesitter/vale", 1075:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1075:++++ "/prosesitter/vale cfg.
ini", 1076:  " 	--optional extra queries overrides existing queries 1077:  " 	queries =    1078:  " 		-- see the piece on adding queries on how to use this  1079:  " 		-- (not needed if using an out of the box supported language 1080:  " 		py =    1081:  " 			strings = "[(string) ] @capture", 1082:  " 			comments = "[(comment)+ ] @capture", 1083:  " 		 , 1084:  " 	 ,  1085:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1086:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1087:  " 	-- weather to lint strings, comments or both for a language 1088:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1089:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1090:  " 	auto enable = false, -- do not start linting files on open (default = true) 1091:  " 	default cmds = false,  -- do not add commands (default = true) 1092:  "  ) 1093:  " EOF  1094:  " 1095:  " 1096:  " lua <<EOF 1097:  " require('spellsitter').
setup   1098:  "   hl = 'SpellBad',  1099:  "   captures =   ,  -- set to    to spellcheck everything 1100:  " 1101:  "   -- Spellchecker to use. 
1101:++++ values: 1102:  "   -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1103:  "   -- * ffi: built-in spell checker using the FFI to access the 1104:  "   --   internal spell check() function 1105:  " spellchecker = 'vimfn', 1106:  "   1107:  " EOF 1108:   1109:  let g:firenvim config =    1110:        'globalSettings':   1111:            'alt': 'all', 1112:          , 1113:        'localSettings':   1114:            '.
*':   1115:                'cmdline': 'neovim', 1116:                'content': 'text', 1117:                'priority': 0, 1118:                'selector': 'textarea', 1119:                'takeover': 'never', 1120:             , 1121:          1122:      1123:  lua << EOF 1124:  require('fzf-lua').
setup  1125:  -- .
.
.
@??? 1126:    1127:  EOF 1128:   1129:    1130:  " lua << EOF 1131:  " require("stabilize").
setup( 1132:  "   1133:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1134:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1135:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1136:  " --		filetype =   "help", "list", "Trouble"  , 1137:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1138:  " --	  1139:  "   1140:  " ) 1141:  " EOF 1142:  " lua <<EOF 1143:  " require('dd').
setup() 1144:  " EOF 1145:  " lua << EOF 1146:  " local opts =   1147:  "   log level = 'info', 1148:  "   auto session enable last session = false, 1149:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1150:  "   auto session enabled = false, 1151:  "   auto save enabled = nil, 1152:  "   auto restore enabled = nil, 1153:  "   auto session suppress dirs = nil 1154:  "   1155:  " require('auto-session').
setup(opts) 1156:  " EOF 1157:   1158:  " lua << EOF 1159:  " if exists('g:started by firenvim') 1160:  "   ZenMode 1161:  " else 1162:  "   set laststatus=2 1163:  " endif 1164:   1165:  " lua <<EOF 1166:  " require('neoclip').
setup(  1167:  "       history = 1000, 1168:  "       enable persistant history = false, 1169:  "       db path = vim.
fn.
stdpath("data") .
. 
1169:++++ "/databases/neoclip.
sqlite3", 1170:  "       filter = nil, 1171:  "       preview = true, 1172:  "       default register = '"', 1173:  "       content spec column = false, 1174:  "       on paste =   1175:  "         set reg = false, 1176:  "        , 1177:  "       keys =   1178:  "         i =   1179:  "           select = '<cr>', 1180:  "           paste = '<c-p>', 1181:  "           paste behind = '<c-k>', 1182:  "           custom =   , 1183:  "          , 1184:  "         n =   1185:  "           select = '<cr>', 1186:  "           paste = 'p', 1187:  "           paste behind = 'P', 1188:  "           custom =   , 1189:  "          , 1190:  "        , 1191:  "     ) 1192:  " EOF 1193:  " lua <<EOF 1194:  " local saga = require 'lspsaga'  1195:  " saga.
init lsp saga()  1196:  "   1197:  " EOF 1198:   1199:  "au FileType tex autocmd User SneakLeave set syntax=tex 1200:  "au FileType tex autocmd User SneakEnter set syntax=text 1201:  " 1202:  " 1203:  " 1204:   1205:  " 1206:  " 'tCommen20 1207:  " let g:tcommentMapLeaderOp1=';'  1208:  " "map <leader>c <Leader>    1209:  "" function! RestoreRegister() 1210:  "   let @" = s:restore reg 1211:  "   return '' 1212:  " endfunction 1213:  " function! s:Repl() 1214:  "     let s:restore reg = @" 1215:  "     return "p@=RestoreRegister() <cr>" 1216:  " endfunction 1217:  " 1218:  " " NB: this supports "rp that replaces the selection by the contents of @r 1219:  " vnoremap <silent> <expr> p <sid>Repl() 1220:   1221:  " " Change Color when entering 1222:  " Insert Mode augroup CursorLine 1223:  "    au! 1224:  "  if has("gui running") 1225:  "  else 1226:  "      au InsertEnter * setlocal cursorline 1227:  "        au InsertLeave * setlocal nocursorline 1228:  "     endif 1229:  "        augroup END 1230:  " function! DelTagOfFile(file) 1231:  "   let fullpath = a:file 1232:  "   let cwd = getcwd() 1233:  "   let tagfilename = cwd . 
1233:++++ "/tags" 1234:  "   let f = substitute(fullpath, cwd . 
1234:++++ "/", "", "") 1235:  "   let f = escape(f, '.
/') 1236:  "   let cmd = 'sed -i "/' . 
1236:++++ f . 
1236:++++ '/d" "' . 
1236:++++ tagfilename . 
1236:++++ '"' 1237:  "   let resp = system(cmd) 1238:  " endfunction 1239:  " function! Break() 1240:  "  let n=130-virtcol('.
') 1241:  "  <Esc>ni <Esc><Esc> 1242:  " endfunction 1243:  " function Gitview() 1244:  "    cd /root/web2 ; git add . 
1244:++++ ; git commit -m -a ; git push origin gh-pages 1245:  " endfunction 1246:  " fuzzy search 1247:  " function! s:config fuzzyall(.
.
.
) abort 1248:  "   return extend(copy(  1249:  "       'converters': [ 1250:  "         incsearch#config#fuzzy#converter(), 1251:  "         incsearch#config#fuzzyspell#converter() 1252:  "       ], 1253:  "      ), get(a:, 1,    1254:  "   )) 1255:  " endfunction 1256:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1257:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1258:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1259:  " map f <Plug>(incsearch-fuzzyspell-/) 1260:  " map F <Plug>(incsearch-fuzzyspell-?) 1261:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1262:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1263:  " let g:deoplete#enable at startup = 1 1264:  " map <silent> <leader>g :silent call Gitview() 1265:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1266:  "Load some useful plugins with vundle  1267:  " 1268:  "asdf asldfkj 1269:  " hi! link Sneak Normal 1270:  " hi! link SneakScope Normal   test test2 test3 1271:   1272:  " command! -bang -nargs=* Rg 1273:  "     call fzf#vim#grep( 1274:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1275:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1276:  " 1277:  "" au GUIEnter * set fullscreen 1278:  " if has("gui running") 1279:    " set fuoptions=maxvert,maxhorz 1280:    " au GUIEnter * set fullscreen 1281:     " set foldcolumn=10 1282:     " set formatoptions=ant 1283:  " set wrapmargin=0 1284:  " set nohlsearch 1285:  " set tags= ~/workspacemodules/tags 1286:  " highlight SignColumn guibg=bg 1287:  "       endif     1288:  " if has("autocmd") 1289:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1290:  " endif 1291:    " autocmd BufWinLeave *.
* mkview 1292:    " autocmd BufWinEnter *.
* silent loadview 1293:     " set foldcolumn=2 1294:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1295:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1296:  " inoremap <cr> <esc>:w<cr>i<cr>  1297:  "" set tm=500 1298:  " set macmeta 1299:  " auto reload vimrc when editing it 1300:  " let g:github function style = "italic" 1301:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1302:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1303:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1304:  " Load the colorscheme 1305:  " colorscheme github dark 1306:  "" terminal color settings  1307:  " Example config in VimScript 1308:  " let g:github function style = "italic" 1309:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1310:   1311:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1312:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1313:  " Load the colorscheme 1314:  " colorscheme github dark  1315:  " set background=dark  1316:  " if has("gui running")	" GUI color and font settings 1317:  "   set guifont=Fira  Code:h22 1318:  "   " colorscheme gruvbox  1319:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1320:  " else 1321:  "  colorscheme one 1322:  " colorscheme material   1323:  " let g:material style = 'palenight'   1324:  " let g:material style = 'lighter' 1325:  " highlight Normal ctermbg=none  1326:  "   " let g:vimtex quickfix method='pplatex'  1327:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1328:  "    function! UpdateSkim(status) 1329:  "      if !a:status | return | endif 1330:  " 1331:  "      let l:out = b:vimtex.
out() 1332:  "      let l:tex = expand(' :p') 1333:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1334:  "      if !empty(system('pgrep Skim')) 1335:  "        call extend(l:cmd, ['-g']) 1336:  "      endif 1337:  "      if has('nvim') 1338:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1339:  "      elseif has('job') 1340:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1341:  "      else 1342:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1343:  "      endif 1344:  "    endfunction 1345:  " let g:vimtex latexmk build dir = '.
/build' 1346:  "   'build dir' : '.
/build', 1347:  "  1348:  "     let g:vimtex compiler latexmk =   1349:  "       'background' : 0, 1350:  "           'callback' : 1, 1351:  "       'continuous' : 1, 1352:  "       'options' : [ 1353:  "         '-pdf', 1354:  "         '-verbose', 1355:  "         '-file-line-error', 1356:  "         '-synctex=1', 1357:  "         '-interaction=nonstopmode', 1358:  "       ], 1359:  "        1360:  " let g:vimtex compiler progname = 'nvr' 1361:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1362:  " let g:vimtex quickfix mode = 1 1363:  " let g:vimtex fold enabled = 0 1364:  " let g:vimtex fold manual = 1 1365:   1366:   1367:  " let g:vimtex fold types=   1368:  "             'preamble' :   , 1369:  "             'comments' :  'enabled' : 1 , 1370:  "             'markers' :   , 1371:  "             'sections' :   1372:  "               'parse levels' : 0, 1373:  "               'sections' : [       1374:  "                 ' (add)?part', 1375:  "                 ' (chapter|addchap)', 1376:  "                 ' (section|addsec)', 1377:  "                 'subsection', 1378:  "                 'subsubsection', 1379:  "               ], 1380:  "               'parts' : [          1381:  "                 'appendix', 1382:  "                 'frontmatter', 1383:  "                 'mainmatter', 1384:  "                 'backmatter', 1385:  "               ], 1386:  "              , 1387:  "              1388:   1389:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1390:  " lua <<EOF 1391:  " require'nvim-treesitter.
configs'.
setup   1392:  "   incremental selection =   1393:  "     enable = true, 1394:  "     keymaps =   1395:  "       init selection = "gnn", 1396:  "       node incremental = "grn", 1397:  "       scope incremental = "grc", 1398:  "       node decremental = "grm", 1399:  "      , 1400:  "    , 1401:  "   1402:  " EOF 1403:  " lua <<EOF 1404:  " require('neoscroll').
setup  1405:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1406:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1407:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1408:  "     hide cursor = true,          -- Hide cursor while scrolling 1409:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1410:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1411:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1412:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1413:  "     easing function = nil,        -- Default easing function 1414:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1415:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1416:  "       1417:  " EOF 1418:  "  1419:  " " set foldlevel=20 1420:  " " set foldmethod=expr 1421:  " " set foldexpr=nvim treesitter#foldexpr() 1422:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1423:  " inoremap .
<Space> .
<CR><Esc><leader>j 1424:  " noremap S :S  1425:  " 1426:  " 1427:  " function! Sneak() 1428:  "     hi! link Sneak Normal 1429:  "     hi! link SneakScope Normal 1430:  "     execute 'normal!  <Plug>Sneak s' 1431:  "     syntax on 1432:  " endfunction 1433:    1434:  " map N <Plug>Sneak , 1435:  " map t <Plug>(smalls-excursion) 1436:  " let g:smalls auto jump=1 1437:  " let g:smalls auto jump timeout=0 1438:       1439:  "  1440:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1441:  " let g:vimtex view general options = '-r @line @pdf @ 1442:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1443:  " <cr> 1444:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1445:  " NB: this supports "rp that replaces the selection by the contents of @r 1446:  " Auto updating Ctags 1447:  " autocmd VimLeave * exe ":silent ! ctags -R" 1448:  " 1449:  "" lua << EOF 1450:  " local function setup servers() 1451:  "   require'lspinstall'.
setup() 1452:  "   local servers = require'lspinstall'.
installed servers() 1453:  "   for  , server in pairs(servers) do 1454:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1455:  "   end 1456:  " end 1457:  "  1458:  " setup servers() 1459:  "  1460:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1461:  " require'lspinstall'.
post install hook = function () 1462:  "   setup servers() -- reload installed servers 1463:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1464:  " end 1465:  " EOF 1466:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif 1467:   1468:         1469:  "other maps    1470:  inoremap <cr> <cr><space><esc>" s 1471:  nnoremap o o<space><esc>" s 1472:   1473:   1474:   1475:  let g:neovide fullscreen=v:true 1476:  if exists('g:gonvim running') 1477:      "goneovim specific stuff 1478:  elseif exists('g:neovide') 1479:     set guifont=Fira  Code  Light:h20 1480:  end 1481:  " let g:autotagTagsFile="~/workspacemodules/tags" 1482:   1483:  " lua <<EOF 1484:  " -- Installation 1485:  " use    1486:  "   'hrsh7th/nvim-cmp', 1487:  "   requires =   1488:  "       1489:  "       'quangnguyen30192/cmp-nvim-tags', 1490:  "       -- if you want the sources is available for some file types 1491:  "       ft =   1492:  "         'latex', 1493:  "         'tex' 1494:  "         1495:  "       1496:  "    , 1497:  "   config = function () 1498:  "     require'cmp'.
setup   1499:  "     sources =   1500:  "         name = 'tags'  , 1501:  "       -- more sources 1502:  "       1503:  "     1504:  "   end 1505:  "   1506:  " EOF 1507:  " 
