1:  call plug#begin('~/.
vim/plugged')    2:  Plug 'folke/zen-mode.
nvim',   'branch': 'main'    3:  Plug 'rebelot/kanagawa.
nvim' 4:  " Plug 'reedes/vim-pencil'  5:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   6:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    7:  " Plug 'lewis6991/spellsitter.
nvim' 8:  " Plug 'radenling/vim-dispatch-neovim'   9:  " Plug 'tpope/vim-dispatch' 10:  " Plug 'sheerun/vim-polyglot'  11:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   12:  Plug 'vijaymarupudi/nvim-fzf' 13:  Plug 'kyazdani42/nvim-web-devicons' 14:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   15:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   16:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   17:  Plug 'phaazon/hop.
nvim'     18:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   19:  " Plug 'luukvbaal/stabilize.
nvim'  20:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     21:  Plug 'is0n/fm-nvim' 22:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   23:  Plug 'nvim-lua/plenary.
nvim' 24:  " Plug 'nvim-telescope/telescope.
nvim', 25:  " Plug 'nvim-treesitter/playground' 26:  Plug 'famiu/feline.
nvim' 27:  " Plug 'hoob3rt/lualine.
nvim', 28:  " Plug 'karb94/neoscroll.
nvim' 29:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   30:  " Plug 'f3fora/cmp-spell'     31:  " Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   32:  "Plug 'vim-commentary' 33:  "Plug 'b3nj5m1n/kommentary' 34:  " Plug 'simnalamburt/vim-mundo' 35:  " Plug 'neovim/nvim-lspconfig',    'branch': 'main'    36:  " Plug 'glepnir/lspsaga.
nvim' 37:  " If you are using Vim-Plug 38:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    39:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    40:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   41:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   42:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    43:  Plug 'hrsh7th/vim-vsnip' 44:  Plug 'hrsh7th/vim-vsnip-integ' 45:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    46:  " Plug 'ray-x/cmp-treesitter' 47:  " For luasnip user.
@??? 48:  Plug 'L3MON4D3/LuaSnip' 49:  " Plug 'saadparwaiz1/cmp luasnip' 50:  "Plug 'steelsojka/completion-buffers' 51:  Plug 'voldikss/vim-floaterm' 52:  " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   53:  "Plug 'pope/vim-obsession' 54:  "Plug 'xolox/vim-easytags' 55:  " Plug 'nvim-lua/plenary.
nvim' 56:  " Plug 'windwp/nvim-spectre' 57:  " Plug 'xolox/vim-misc' 58:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   59:  " Plug 'kevinhwang91/nvim-bqf' 60:  Plug 'justinhoward/fzf-neoyank'  61:  " Plug 'svermeulen/vim-cutlass' 62:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 63:  " Plug 'kyazdani42/nvim-tree.
lua',  64:  "Plug 'nvim-lua/completion-nvim' 65:  Plug 'hrsh7th/vim-vsnip-integ' 66:  Plug 'neovim/nvim-lspconfig' 67:  " Plug 'nvim-lua/diagnostic-nvim' 68:  " Plug 'rafamadriz/friendly-snippets'   69:  " Make sure you use single quotes 70:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 71:  " Plug 'junegunn/vim-easy-align' 72:  " Any valid git URL is allowed 73:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 74:  " Group dependencies, vim-snippets depends on ultisnips  75:   " Plug 'tpope/vim-surround' 76:  " Plug 'neovim/node-host' 77:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   78:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    79:  Plug 'rakr/vim-one'  80:  " Plug 'cyansprite/Extract' 81:  Plug 'gioele/vim-autoswap' 82:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   83:  " Plug 't9md/vim-smalls' 84:  Plug 'skywind3000/asyncrun.
vim' 85:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   86:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 87:  " please comment next line 88:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     89:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    90:  " Plug 'rmagatti/auto-session',    'branch': 'main'  91:  " Plug 'justinmk/vim-sneak' 92:  Plug 'Shougo/neoyank.
vim'  93:  " if has('nvim') 94:  "    Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   95:  "  else 96:  "    Plug 'Shougo/denite.
nvim' 97:  "    Plug 'roxma/nvim-yarp' 98:  "    Plug 'roxma/vim-hug-neovim-rpc' 99:  "  endif 100:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 101:  " Plug 'tpope/vim-fugitive' 102:  Plug 'eugen0329/vim-esearch' 103:  Plug 'haya14busa/incsearch.
vim' 104:  Plug 'haya14busa/incsearch-fuzzy.
vim' 105:  Plug 'Raimondi/vim search objects' 106:  " Plug 'terryma/vim-multiple-cursors' 107:  " " On-demand loading 108:  " Plug 'junegunn/goyo.
vim' 109:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   110:  "  Plug 'morhetz/gruvbox' 111:  Plug 'sainnhe/gruvbox-material' 112:  " Plug 'vim-pandoc/vim-pandoc' 113:  " Plug 'vim-pandoc/vim-pandoc-syntax'  114:  " Plugin outside ~/.
vim/plugged with post-update hook 115:  Plug 'junegunn/fzf',   'do': '.
/install --all'   116:  Plug 'junegunn/fzf.
vim' 117:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   118:   '  119:  Plug 'lifepillar/vim-solarized8' 120:  Plug 'vim-scripts/AutoTag' 121:  Plug 'vim-scripts/vim-auto-save' 122:  " Plug 'vim-pandoc/vim-pandoc' 123:   124:  " Plug 'yashamon/vim-snippets' 125:   126:  " Plug 'lervag/vimtex' 127:  " colorschemes 128:  "  129:  Plug 'kyazdani42/blue-moon'   130:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   131:   132:  Plug 'reedes/vim-colors-pencil' 133:   134:  Plug 'vim-scripts/oceanlight' 135:   136:  Plug 'gosukiwi/vim-atom-dark' 137:   138:  Plug 'dracula/vim' 139:   140:  " Unmanaged plugin (manually installed and updated) 141:  " Plug '~/my-prototype-plugin' 142:  " Add plugins to &runtimepath 143:  call plug#end()  144:   145:  "Neovide  146:  " 147:  " let g:neovide maximized=v:true  148:  let g:neovide fullscreen=v:true 149:  " let g:neovide transparency=0.
15 150:   151:  "General Settings     152:  set title  153:  " set titlestring 154:  " set noshowmode 155:  " set noruler        156:  " set laststatus=1  157:  set noshowcmd     158:  let ind = indent(prevnonblank(v:lnum - 1)) 159:  set noshowmatch   160:  set wrap   161:  set pb=10   162:  set winbl=10 163:  set switchbuf=newtab 164:  " let g:python3 host prog='/usr/bin/python3.
9' 165:  " let g:python3 host prog='/usr/bin/python3.
9' 166:   167:  set clipboard+=unnamedplus	" yank to the system register (*) by default 168:  " TAB setting  169:  set expandtab        "replace <TAB> with spaces 170:  set softtabstop=3  171:  set shiftwidth=3  172:  set termguicolors 173:   174:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 175:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 176:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 177:  set spelllang=en us   178:  if exists('g:started by firenvim') 179:       autocmd VimEnter set noshowmode 180:       autocmd VimEnter set noruler 181:       autocmd VimEnter set laststatus=0 182:       autocmd VimEnter set noshowcmd 183:       autocmd VimEnter set lines=100  184:       autocmd VimEnter set columns=100 185:  else 186:    " autocmd VimEnter * TZAtaraxis 187:   endif 188:  set timeoutlen=0 189:  au VIMEnter * let g:surround 108 =   190:        'q':  " `` r''" 191:           192:  let g:tex flavor = "latex" 193:  let g:tex isk = '@,48-57,58, ,192-255,:'  194:  au FileType tex setlocal iskeyword+=: 195:  let g:tex conceal = "" 196:  set tags+=~/workspacemodules/tags 197:  "set tags+=~/Dropbox/workspace/tags 198:    " set wrapmargin=1 199:  " set shada="NONE"   200:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 201:  set wrap 202:  set linebreak  203:  set formatoptions+=w " set breakat=" " 204:  " set list  " list disables linebreak 205:  " set textwidth=0 206:  set wrapmargin=-1 207:  set hid 208:  set autochdir 209:  set guioptions-=r 210:  set guioptions-=l 211:  set inccommand=split 212:  set mouse= 213:  set bs=2		" allow backspacing over everything in insert mode  214:  set undofile                " Save undo's after file closes 215:  set undodir=~/.
undo " where to save undo histories 216:  set undolevels=1000000         " How many undos 217:  set undoreload=10000		 218:  set ruler		" show the cursor position all the time 219:  set autoread		" auto read when file is changed from outside 220:  set nohlsearch 221:  " set noswapfile 222:  " set showmatch		" Cursor shows matching ) and   223:  set nocursorline 224:  set showmode		" Show current mode 225:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 226:  set wildmenu            " wild char completion menu 227:  let maplocalleader = "  " 228:  " ignore these files while expanding wild chars 229:  set wildignore=*.
o,*.
class,*.
pyc 230:  set incsearch		" incremental search 231:  set nobackup		" no *~ backup files 232:  set ignorecase		" ignore case when searching 233:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 234:  set smarttab		" insert tabs on the start of a line according to context 235:  set spell    236:   237:  " disable sound on errors 238:  set noerrorbells 239:  " set novisualbell  240:  set guifont=Fira  Code  Light:h10 241:  colorscheme one 242:  " colorscheme material   243:  " let g:material style = 'palenight'   244:  " let g:material style = 'lighter' 245:  " highlight Normal ctermbg=none 246:  set tm=1000 247:  " set macreta  248:  hi SpellBad cterm=underline 249:  " Set style for gVim 250:  hi SpellBad gui=underline 251:  " 252:  "Autocommands, au 253:  au FileType Makefile set noexpandtab 254:  au FileType tex,text set spelllang=en us 255:  " au FileType tex,text set noai nocin  256:   257:  function Reset() 258:  TZAtaraxisOff  259:  TZAtaraxisOn 260:  endfunction    261:  " au FocusLost call TZAtaraxisOff  262:  " au FocusGained call TZAtaraxisOn  263:   264:  " au FileType vim,md set list 265:  " au FileType vim,md colorscheme one 266:   267:  " au FileType tex,text,md syntax sync fromstart  268:  "  269:  " au FileType tex,text,md silent execute "!echo " . 
269:++++ v:servername . 
269:++++ " > ~/servername.
txt"     270:  au FileType * silent execute "!echo " . 
270:++++ v:servername . 
270:++++ " > ~/servername.
txt" 271:  au UIEnter silent execute "!echo " . 
271:++++ v:servername . 
271:++++ " > ~/servername.
txt"   272:  function Server() 273:     silent execute "!echo " . 
273:++++ v:servername . 
273:++++ " > ~/servername.
txt" 274:  endfunction 275:  nmap <leader>nn :call Server() 276:   277:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp   278:   279:  au Filetype tex,text,md set tw=50  280:  " au Filetype tex,text,md set fo=tc 281:  " au FileType tex set background=dark  282:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  283:  au TextYankPost * call neoyank# append()  284:   285:  set expandtab        "replace <TAB> with spaces 286:  set softtabstop=3  287:  set shiftwidth=3  288:   289:  "---------------------------------------------------------------------------  290:  " USEFUL SHORTCUTS 291:  "---------------------------------------------------------------------------  292:  " set leader to ;  293:  let mapleader=';' 294:  let g:mapleader=';' 295:   296:  " open the error console 297:  " move to next error 298:   299:  " Bash like keys for the command line 300:  cnoremap <C-A>      <Home> 301:  cnoremap <C-E>      <End> 302:  cnoremap <C-K>      <C-U> 303:   304:  " ,p toggles paste mode 305:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 306:   307:  " allow multiple indentation/deindentation in visual mode 308:  vnoremap < <gv 309:  vnoremap > >gv 310:   311:  " :cd. 
311:++++ change working directory to that of the current file 312:  cmap cd. 
312:++++ lcd  :p:h 313:   314:   315:  " Enable omni completion. 
315:++++ (Ctrl-X Ctrl-O) 316:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 317:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 318:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 319:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 320:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 321:  autocmd FileType c set omnifunc=ccomplete#Complete 322:  autocmd FileType java set omnifunc=javacomplete#Complete  323:  autocmd FileType tex set omnifunc=latex#Complete 324:  autocmd Filetype tex setlocal fo=nt 325:  autocmd Filetype tex setlocal wrapmargin=0 326:  " use syntax complete if nothing else available 327:  if has("autocmd") && exists("+omnifunc") 328:    autocmd Filetype * 329:                 	if &omnifunc == "" | 330:                 		setlocal omnifunc=syntaxcomplete#Complete | 331:                 	endif 332:  endif 333:   334:  set cot-=preview "disable doc preview in omnicomplete 335:   336:  " make CSS omnicompletion work for SASS and SCSS 337:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 338:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 339:   340:  "---------------------------------------------------------------------------  341:  " ENCODING SETTINGS 342:  "---------------------------------------------------------------------------  343:  set encoding=utf-8                                   344:  set termencoding=utf-8 345:  set fileencoding=utf-8 346:   347:  "maps remaps mappings   348:  " 349:  " 350:  " terminal mappings  351:  "  352:  tnoremap <A-Esc> <C- ><C-n> 353:  nmap <A-S-t> :te<cr> 354:   vnoremap <Leader>U ""y: s/<C-r>" 355:  noremap <leader>r :w<cr>:e<cr>  356:  inoremap <cr> <cr><esc>:w<cr>a 357:  inoremap . 
357:++++ .
<esc>:w<cr>a 358:   359:  noremap <leader>hh :set tw=50<cr> 360:  noremap <leader>w :set tw=0<cr>  361:  map q :q<cr> 362:  noremap <leader>q q 363:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 364:  nnoremap <leader>rr :w<cr>:source  MYVIMRC<CR> 365:  nnoremap <leader>u :UndotreeToggle<CR> 366:  nnoremap <leader>e :Lf<cr> 367:  nnoremap <leader>t :FloatermToggle<cr> 368:  nnoremap <c-,> :cprevious<cr> 369:  nnoremap <c-.
> :cnext<cr>  370:  inoremap <cr> <cr> <backspace> 371:  vnoremap <m-s> :s///gc<left><left><left><left> 372:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 373:  nnoremap <m-s> : s///gc<left><left><left><left> 374:  vmap <M-.
> t.
<CR>h 375:  nmap <M-.
> t.
<CR>h 376:  nnoremap <up> 1<C-U> 377:  imap <up> <nop> 378:  nnoremap <down> 1<C-D> 379:  imap <down> <nop> 380:  noremap <ScrollWheelUp>      <nop> 381:  noremap <S-ScrollWheelUp>    <nop> 382:  noremap <C-ScrollWheelUp>    <nop> 383:  noremap <ScrollWheelDown>    <nop> 384:  noremap <S-ScrollWheelDown>  <nop> 385:  noremap <C-ScrollWheelDown>  <nop> 386:  noremap <ScrollWheelLeft>    <nop> 387:  noremap <S-ScrollWheelLeft>  <nop> 388:  noremap <C-ScrollWheelLeft>  <nop> 389:  noremap <ScrollWheelRight>   <nop> 390:  noremap <S-ScrollWheelRight> <nop> 391:  noremap <C-ScrollWheelRight> <nop> 392:  inoremap   / 393:  inoremap /   394:   395:  " copy paste stuff  396:  "  397:  vnoremap p "0dP  398:  inoremap <C-p> <C-r>"+ 399:  " noremap D "0D:wa<cr> 400:  noremap d " d 401:  nnoremap dd " dd 402:  noremap c " c 403:  noremap C " C 404:  noremap x " x 405:  vnoremap x "+x 406:  vnoremap d " d   407:  vnoremap c " c   408:  vnoremap y "+y 409:  nnoremap y "+y 410:  nnoremap p "+p 411:  nnoremap <leader>q q 412:  " Softwrap   413:  nmap D "0dg  414:  nmap V vg  415:  nmap A g a  416:  map 0 g  417:  map 9 g  418:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 419:  nnoremap <c-l> :bnext<CR> 420:  nnoremap <c-h> :bprevious<CR> 421:  " tnoremap <Esc> <C- >  422:  " nnoremap < :tabp<CR> 423:  " nnoremap > :tabn<CR> 424:  " nnoremap <leader>n :tabedit  <CR> 425:  imap <M-j> <C-j> 426:  map <M-m> <cmd>HopChar1<cr>  427:  " map <S-b> ?  <CR> 428:  map <M-w> <cmd>HopChar1<cr>  429:  map <M-b> <cmd>HopChar1<cr>  430:  map q: nop 431:  map <S-C-q> <Esc>:qa!<CR> 432:  map <m-q> <esc>:wq<cr> 433:  map <m-Q> <esc>:q<cr> 434:  map <m-c> <esc>:w<CR>:close<cr> 435:  map <M-d> <Esc>:w<CR>:bdelete<CR> 436:  noremap gf gq 437:  noremap f / 438:  noremap F ? 439:  noremap # /  <CR>v?  <CR> 440:  noremap   /  <CR>hv?  <CR>l 441:  noremap @ / <CR>v? <CR> 442:  map j gj 443:  map k gk 444:  noremap <Space> .
@??? 445:  vnoremap <Space> t <cr> 446:  map K <C-u> 447:  map J <C-d> 448:  " map <C-j> zz 449:  " map <C-k> zb 450:  map <C-j> <C-e>jj 451:  map <C-k> <C-y>kk 452:  nnoremap <leader>j J 453:  nnoremap <leader>k K 454:  map ' " 455:  nnoremap <Backspace> i<Backspace><Esc> 456:  nmap <leader>c gc 457:  noremap <A-r> <C-r> 458:  nnoremap ` ~ 459:  nnoremap . 
459:++++ ` 460:  noremap <m-1> <C-o> 461:  noremap <m-2> <C-i> 462:  noremap <D-d> <C-d> 463:  map ;s <Esc>:w<CR> 464:  noremap <D-u> <C-u> 465:  noremap <A-u> <C-u> 466:  " this mapping Enter key to <C-y> to chose the current highlight item  467:  " and close the selection list, same as other IDEs.
@??? 468:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 469:  nnoremap <silent> <Leader>y :YRGetElem<CR> 470:  map ' " 471:  inoremap <D-]> <C-x><C-]> 472:  inoremap <C-]> <C-x><C-]> 473:   474:  au FileType tex,text,md nmap 0 g  475:  au FileType tex,text,md noremap 9 g  476:  " au FileType tex,text,md nnoremap dd " g dg g  477:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 478:   479:  "Neovim mappings 480:  " :tnoremap <S-h> <C- ><C-n><C-w>h 481:  " :tnoremap <S-j> <C- ><C-n><C-w>j 482:  " :tnoremap <S-k> <C- ><C-n><C-w>k 483:  " :tnoremap <S-l> <C- ><C-n><C-w>l 484:  " tnoremap <Left> :tbnext<CR> 485:  " tnoremap <Right> :tbprevious<CR> 486:  " tnoremap <Leader>e <C- ><C-n>  487:  " imap <Backspace>   488:  map t <cmd>HopChar1AC<cr> 489:  map T <cmd>HopChar1BC<cr> 490:  map <m-.
> <cmd>HopChar1<cr>.
@??? 491:  map <m-space> <cmd>HopWord<cr> 492:  " map <S-m-Space> <cmd>HopWord<cr> 493:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 494:   495:  " FZF  496:  " 497:  noremap <m-t> :BTags<cr> 498:  noremap <m-y> :Tags<cr> 499:  noremap S <Esc> :BLines<CR> 500:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 501:  " Line search mapping  502:  " function! Jumpback()  503:  "   K=bufname() 504:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 505:  " endfunction 506:  noremap <m-b> <Esc>:Buffers<CR> 507:  " noremap F <Esc>:GFiles<CR> 508:  map <A-e> :FZF ~<CR>  509:  map <m-f> :FZF ~<CR>  510:   511:  "miscellaneous 512:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 513:  nmap <leader>g :ZenMode<CR> 514:  " nmap <leader>p :Denite neoyank -default-action=append<CR> 515:   516:  " Latex stuff 517:  "  518:  noremap <leader>ss :w<cr>:source  MYVIMRC<cr>  519:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 520:  noremap <c-p> :<c-r>+<cr> 521:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 522:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 523:   524:  "FZF Neoyank yank      525:  " 526:  nnoremap <leader>y :FZFNeoyank<cr> 527:  nnoremap <leader>Y :FZFNeoyank  P<cr> 528:  vnoremap <leader>y :FZFNeoyankSelection<cr> 529:   530:  nnoremap <leader>p :FZFNeoyank +<cr>  531:  nnoremap <leader>1 :FZFNeoyank 1<cr> 532:  nnoremap <leader>P :FZFNeoyank " P+<cr> 533:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 534:   535:   536:  " Replace the default dictionary completion with fzf-based fuzzy completion 537:   538:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   539:   540:   541:  "Functions 542:   543:  function Light() 544:  set background=light 545:  " colorscheme oceanlight  546:  colorscheme one  547:  " highlight Normal ctermfg=black 548:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 549:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 550:  endfunction    551:   552:  " function Light() 553:  " set background=light 554:  " " colorscheme oceanlight  555:  " colorscheme material  556:  " let g:material style = 'lighter'   557:  "    " highlight Normal ctermfg=black 558:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 559:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 560:  " endfunction    561:  function Bluemoon() 562:     set background=dark 563:     colorscheme blue-moon 564:     " colorscheme material   565:  endfunction 566:   567:  function Deepocean() 568:     set background=dark 569:     colorscheme material   570:     let g:material style = 'deep ocean'   571:  endfunction 572:   573:  function Palenight() 574:     set background=dark 575:     " colorscheme blue-moon 576:     colorscheme material   577:     let g:material style = 'palenight'   578:  endfunction 579:  function Lighter() 580:     set background=light 581:     " colorscheme blue-moon 582:     colorscheme material   583:     let g:material style = 'lighter'   584:  endfunction 585:   586:  function Dark() 587:     set background=dark 588:     colorscheme one   589:  endfunction 590:   591:  function! Profile() 592:  profile start profile.
log 593:  profile func * 594:  profile file * 595:  endfunction  596:   597:  function! Sentence() 598:    let g:buf = bufname() 599:    silent !sentence.
sh   600:    silent echo "Print any character" 601:    " silent call getchar() 602:    e sentence   603:    " echo "Print any character" 604:    " call getchar() 605:    BLines 606:  endfunction 607:  noremap L :lua require("zen-mode").
close()<cr>:call Sentence()<cr> 608:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 609:  function! Git()  610:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add . 
610:++++ ; git commit -m -a ; git push --all origin; fi  611:  endfunction 612:   613:  function! ToggleQuickFix()  614:        if empty(filter(getwininfo(), 'v:val.
quickfix')) 615:        exec "w" 616:          echo bufname() 617:          " lua require("zen-mode").
close()  618:          echo bufname() 619:          let b:filenamedir=expand(' :p:h')   620:          echo b:filenamedir 621:          let b:filename=expand(' :t:r') 622:          let b:errors=b:filenamedir . 
622:++++ "/buildback/" . 
622:++++ b:filename .
".
log" 623:          echo b:errors 624:          exec "caddf" b:errors 625:          copen 626:          sleep 1 627:          exec "wincmd j" 628:          exec "/error" 629:      else 630:          exec "cclose"  631:          sleep 1 632:          endif 633:  endfunction 634:   635:  nnoremap <leader>s :silent call ToggleQuickFix()<CR> 636:  function! ClearLatex() 637:    silent !rm .
/buildback/*  638:  endfunction  639:   640:  function! CompileLatex() 641:    silent call ClearLatex() 642:    let buf = bufname() 643:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -gg   644:    execute "buffer" buf 645:    call ViewPdf() 646:  endfunction 647:   648:  function! ViewPdf()  649:  wa 650:  silent execute "!echo " . 
650:++++ v:servername . 
650:++++ " > ~/servername.
txt" 651:  let buf = bufname() 652:  let linenumber=line(".
") 653:  let colnumber=col(".
")  654:  let b:filenamedir=expand(' :p:h')   655:  let filenametex=expand(' :p:t')  656:  let filenametexwhole=expand(' :p')  657:  let filenameroot=expand(' :t:r') 658:  " let filenamePDF=filename[:-4].
"pdf" 659:  let filenamePDF=b:filenamedir . 
659:++++ "/build/" . 
659:++++ filenameroot . 
659:++++ ".
pdf"  660:  echo filenamePDF 661:  let execstr="silent !zathura --synctex-forward " . 
661:++++ linenumber . 
661:++++ ":" . 
661:++++ colnumber . 
661:++++ ":" . 
661:++++ filenametexwhole . 
661:++++ " " . 
661:++++ filenamePDF . 
661:++++ " &>/dev/null &"  662:  echo execstr 663:  exec execstr 664:  execute "buffer" buf 665:  endfunction  666:  nmap <leader>v :call ViewPdf()<cr><cr> 667:  " nmap <leader>v :VimtexView<cr> 668:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 669:  nmap <leader>ll :call CompileLatex()<cr> 670:  nmap <leader>cl :call ClearLatex()<cr> 671:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 672:   673:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  674:  "" mathml shenanigans 675:   676:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 677:   678:   679:   680:   681:   682:   683:  "Autosave and autocommit    684:  " let g:updatetime = 10000 685:  let g:auto save = 0 686:  " .
vimrc 687:  let g:auto save events = ["CursorHold"] 688:  "au FileType vim let g:autosave = 0 689:  let g:auto save in insert mode = 0 690:  let g:auto save silent = 1 691:   692:  "Git autocommit  (private git repo) 693:  autocmd BufWritePost * call Git() 694:  lua <<EOF 695:  require'nvim-treesitter.
configs'.
setup    696:      -- 697:      highlight =   enable = true  , 698:      incremental selection =   699:      enable = true, 700:      keymaps =   701:        init selection = '<CR>', 702:        scope incremental = '<CR>', 703:        node incremental = '<TAB>', 704:        node decremental = '<S-TAB>', 705:       , 706:     , 707:      textobjects =   enable = true  , 708:      indent =   enable = true  ,  709:    710:  EOF 711:   712:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  713:   714:  " vsnip stuff  715:  " Use <Tab> and <S-Tab> to navigate through popup menu 716:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 717:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 718:   719:  " Set completeopt to have a better completion experience 720:  set completeopt=menuone,noinsert,noselect 721:   722:  " Avoid showing message extra message when using completion 723:  set shortmess+=c 724:  let g:vsnip snippet dir = '~/dotfiles/snippets'   725:   726:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 727:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 728:  "  729:  " " Expand or jump 730:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 731:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 732:   733:  " Jump forward or backward 734:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 735:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 736:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 737:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 738:   739:  " 740:  " set foldexpr=nvim treesitter#foldexpr() 741:  " 742:  lua << EOF 743:  local nvim lsp = require('lspconfig') 744:  -- Use an on attach function to only map the following keys 745:  -- after the language server attaches to the current buffer 746:  local on attach = function(client, bufnr) 747:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 748:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 749:  -- Enable completion triggered by <c-x><c-o> 750:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 751:   752:    -- Mappings.
@??? 753:    local opts =   noremap=true, silent=true   754:   755:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 756:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 757:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 758:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 759:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 760:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 761:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 762:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 763:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 764:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 765:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 766:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 767:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 768:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 769:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 770:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 771:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 772:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 773:   774:  end 775:  EOF 776:   777:  "Lsp instal  778:  lua <<EOF 779:  local lsp installer = require("nvim-lsp-installer") 780:   781:  -- Register a handler that will be called for all installed servers.
@??? 782:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 783:  lsp installer.
on server ready(function(server) 784:      local opts =    785:   786:      -- (optional) Customize the options passed to the server 787:      -- if server.
name == "tsserver" then 788:      --     opts.
root dir = function() .
.
. 
788:++++ end 789:      -- end 790:   791:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 792:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 793:      server:setup(opts) 794:  end) 795:  EOF 796:   797:  " 798:  " inoremap <cr> <cr> <backspace> 799:   800:  set completeopt=menu,menuone,noselect 801:   802:  lua <<EOF 803:    -- Setup cmp.
@??? 804:   805:  local has words before = function() 806:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 807:      return false 808:    end 809:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 810:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 811:  end 812:   813:  local feedkey = function(key, mode) 814:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 815:  end 816:   817:  local cmp = require('cmp') 818:  cmp.
setup   819:   snippet =   820:        expand = function(args) 821:          -- For `vsnip` user.
@??? 822:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 823:    -- .
.
. 
823:++++ Your other configuration .
.
.
@??? 824:  end, 825:   , 826:  mapping =   827:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 828:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 829:        ['<C-x>'] = cmp.
mapping.
complete(), 830:        ['<C-e>'] = cmp.
mapping.
close(), 831:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 832:  -- .
.
. 
832:++++ Your other mappings .
.
.
@??? 833:  ["<Tab>"] = cmp.
mapping(function(fallback)  834:        if vim.
fn["vsnip#expandable"]() == 1 835:          then 836:          feedkey("<Plug>(vsnip-expand)", "") 837:       elseif cmp.
visible() then 838:          cmp.
select next item() 839:        elseif has words before() then  840:          cmp.
complete() 841:        else  842:          fallback() -- The fallback function sends a already mapped key. 
842:++++ In this case, it's probably `<Tab>`.
@??? 843:        end 844:      end,   "i", "s"  ), 845:  ["<S-Tab>"] = cmp.
mapping(function() 846:        if vim.
fn.
pumvisible() == 1 then 847:          feedkey("<C-p>", "n")   848:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 849:          feedkey("<Plug>(vsnip-jump-prev)", "") 850:        end 851:      end,   "i", "s"  ), 852:  -- .
.
. 
852:++++ Your other mappings .
.
.
@??? 853:   854:   , 855:  requires =   856:        857:        'quangnguyen30192/cmp-nvim-tags', 858:        -- if you want the sources is available for some file types 859:        ft =   860:          'tex', 861:          'latex'  862:          863:        864:       , 865:  -- .
.
. 
865:++++ Your other configuration .
.
.
@??? 866:  sources =   867:        -- For vsnip user.
@??? 868:    name = 'tags', keyword length = 1000  , 869:     name = 'vsnip', keyword length = 1000  , 870:           -- For luasnip user.
@??? 871:        --   name = 'luasnip'  , 872:  -- For ultisnips user.
@??? 873:        --   name = 'ultisnips'  ,   874:       name = 'buffer', keyword length = 1000  , 875:       name = 'omni', keyword length = 4 , 876:         --   name = 'spell'  ,  877:       name = 'nvim lsp', keyword length = 4  , 878:        --  name = 'treesitter', keyword length = 4  , 879:  --  name = 'latex symbols'  , 880:   , 881:  completion =   882:      autocomplete = false  883:        884:    885:  EOF 886:   887:  "  888:  " " LSP mappings    889:  " "" LSP mappings  890:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 891:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 892:  "  893:  "  894:  lua <<EOF 895:   require('nvim comment').
setup( 896:    897:     -- Linters prefer comment and line to have a space in between markers 898:     marker padding = true, 899:     -- should comment out empty or whitespace only lines 900:     comment empty = true, 901:     -- Should key mappings be created 902:     create mappings = true, 903:     -- Normal mode mapping left hand side 904:     line mapping = "gc", 905:     -- Visual/Operator mapping left hand side 906:     operator mapping = "<leader>c", 907:     -- Hook function to call before commenting takes place 908:     --hook = nil  909:     910:   ) 911:  EOF 912:  nmap <leader>c gc 913:  " lua <<EOF 914:  " local true zen = require("true-zen") 915:  " true zen.
setup(  916:  "  	ui =   917:  "  		bottom =   918:  "  			laststatus = 0, 919:  "  			ruler = false, 920:  "  			showmode = false, 921:  "  			showcmd = false, 922:  "  			cmdheight = 1, 923:  "  		 , 924:  "  		top =   925:  "  			showtabline = 0, 926:  "  		 , 927:  "  		left =   928:  "  			number = false, 929:  "  			relativenumber = false, 930:  "  			signcolumn = "no", 931:  "  		 , 932:  "  	 , 933:  "  	modes =   934:  "  		ataraxis =   935:  "  			-- left padding = 20, 936:  "  			-- right padding = 20, 937:  "  			top padding = 0, 938:  "  			bottom padding = 0, 939:  "  			ideal writing area width =  60 , 940:  "  			auto padding = true, 941:  "  			keep default fold fillchars = true, 942:  "  			custom bg =  "none", "" , 943:  "  			bg configuration = true, 944:  "  			quit = "untoggle", 945:  "  			ignore floating windows = true, 946:  "  			affected higroups =   947:  "  				NonText = true, 948:  "  				FoldColumn = true, 949:  "  				ColorColumn = true, 950:  "  				VertSplit = true, 951:  "  				StatusLine = true, 952:  "  				StatusLineNC = true, 953:  "  				SignColumn = true, 954:  "  			 , 955:  "  		 , 956:  "  		focus =   957:  "  			margin of error = 5, 958:  "  			focus method = "experimental" 959:  "  		 , 960:  "  	 , 961:  "  	integrations =   962:  "  		vim gitgutter = false, 963:  "  		galaxyline = false, 964:  "  		tmux = false, 965:  "  		gitsigns = false, 966:  "  		nvim bufferline = false, 967:  "  		limelight = false, 968:  "  		twilight = false, 969:  "  		vim airline = false, 970:  "  		vim powerline = false, 971:  "  		vim signify = false, 972:  "  		express line = false, 973:  "  		lualine = false, 974:  "  		lightline = false, 975:  "  		feline = false, 976:  "  	 , 977:  "  	misc =   978:  "  		on off commands = true, 979:  "  		ui elements commands = false, 980:  "  		cursor by mode = false, 981:  "  	  982:  "   ) 983:  " EOF 984:  lua <<EOF 985:  require('feline').
setup(  986:      preset = 'noicon' 987:       ) 988:  EOF 989:  "  990:  "  991:  "  992:  " " lua <<EOF 993:  " " require('lualine').
setup  994:  " " options =  disabled filetypes =  'txt', 'text'   995:  " "   996:  " " EOF 997:  lua << EOF 998:    require("zen-mode").
setup   999:    window =   1000:      backdrop = 1, -- shade the backdrop of the Zen window. 
1000:++++ Set to 1 to keep the same as Normal 1001:      -- height and width can be: 1002:      -- * an absolute number of cells when > 1 1003:      -- * a percentage of the width / height of the editor when <= 1 1004:      -- * a function that returns the width or the height 1005:      width = .
66, -- width of the Zen window 1006:      height = 1, -- height of the Zen window 1007:      -- by default, no options are changed for the Zen window 1008:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 1009:      options =   1010:        -- signcolumn = "no", -- disable signcolumn 1011:        -- number = false, -- disable number column 1012:        -- relativenumber = false, -- disable relative numbers 1013:        -- cursorline = false, -- disable cursorline 1014:        -- cursorcolumn = false, -- disable cursor column 1015:        -- foldcolumn = "0", -- disable fold column 1016:        -- list = false, -- disable whitespace characters 1017:       , 1018:     , 1019:    plugins =   1020:      -- disable some global vim options (vim.
o.
.
.
) 1021:      -- comment the lines to not apply the options 1022:      options =   1023:        enabled = true, 1024:        ruler = false, -- disables the ruler text in the cmd line area 1025:        showcmd = false, -- disables the command in the last line of the screen 1026:       , 1027:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1028:      gitsigns =   enabled = false  , -- disables git signs 1029:      tmux =   enabled = false  , -- disables the tmux statusline 1030:      -- this will change the font size on kitty when in zen mode 1031:      -- to make this work, you need to set the following kitty options: 1032:      -- - allow remote control socket-only 1033:      -- - listen on unix:/tmp/kitty 1034:      kitty =   1035:        enabled = false, 1036:        font = "+4", -- font size increment 1037:       , 1038:     , 1039:    -- callback where you can add custom code when the Zen window opens 1040:    on open = function(win) 1041:    end, 1042:    -- callback where you can add custom code when the Zen window closes 1043:    on close = function() 1044:    end, 1045:    1046:  EOF 1047:  " lua <<EOF 1048:  " require('telescope').
setup  1049:  "   defaults =   1050:  "     -- Default configuration for telescope goes here: 1051:  "     -- config key = value, 1052:  "     mappings =   1053:  "       i =   1054:  "         -- map actions.
which key to <C-h> (default: <C-/>) 1055:  "         -- actions.
which key shows the mappings for your picker, 1056:  "         -- e.
g. 
1056:++++ git  create, delete, .
.
.  
branch for the git branches picker 1057:  "         ["<C-h>"] = "which key" 1058:  "         1059:  "       1060:  "    , 1061:  "   pickers =   1062:  "     -- Default configuration for builtin pickers goes here: 1063:  "     -- picker name =   1064:  "     --   picker config key = value, 1065:  "     --   .
.
.
@??? 1066:  "     --   1067:  "     -- Now the picker config key will be applied every time you call this 1068:  "     -- builtin picker  1069:  "    , 1070:  "   extensions =   1071:  "     -- Your extension configuration goes here: 1072:  "     -- extension name =   1073:  "     --   extension config key = value, 1074:  "     --   1075:  "     -- please take a look at the readme of the extension you want to configure 1076:  "     1077:  "    1078:  " EOF 1079:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1080:  lua <<EOF 1081:  require('fm-nvim').
setup  1082:  	config = 1083:  	  1084:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1085:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1086:  		height   = .
9, 1087:  		width    = .
9, 1088:  	  1089:    1090:  EOF 1091:   1092:  " lua <<EOF 1093:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1094:  " require("prosesitter"):setup(  1095:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1095:++++ "/prosesitter/vale", 1096:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1096:++++ "/prosesitter/vale cfg.
ini", 1097:  " 	--optional extra queries overrides existing queries 1098:  " 	queries =    1099:  " 		-- see the piece on adding queries on how to use this  1100:  " 		-- (not needed if using an out of the box supported language 1101:  " 		py =    1102:  " 			strings = "[(string) ] @capture", 1103:  " 			comments = "[(comment)+ ] @capture", 1104:  " 		 , 1105:  " 	 ,  1106:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1107:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1108:  " 	-- weather to lint strings, comments or both for a language 1109:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1110:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1111:  " 	auto enable = false, -- do not start linting files on open (default = true) 1112:  " 	default cmds = false,  -- do not add commands (default = true) 1113:  "  ) 1114:  " EOF  1115:  " 1116:  " 1117:  " lua <<EOF 1118:  " require('spellsitter').
setup   1119:  "   hl = 'SpellBad',  1120:  "   captures =   ,  -- set to    to spellcheck everything 1121:  " 1122:  "   -- Spellchecker to use. 
1122:++++ values: 1123:  "   -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1124:  "   -- * ffi: built-in spell checker using the FFI to access the 1125:  "   --   internal spell check() function 1126:  " spellchecker = 'vimfn', 1127:  "   1128:  " EOF 1129:   1130:  let g:firenvim config =    1131:        'globalSettings':   1132:            'alt': 'all', 1133:          , 1134:        'localSettings':   1135:            '.
*':   1136:                'cmdline': 'neovim', 1137:                'content': 'text', 1138:                'priority': 0, 1139:                'selector': 'textarea', 1140:                'takeover': 'never', 1141:             , 1142:          1143:      1144:  lua << EOF 1145:  require('fzf-lua').
setup  1146:  -- .
.
.
@??? 1147:    1148:  EOF 1149:  " lua << EOF 1150:  " require("stabilize").
setup( 1151:  "   1152:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1153:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1154:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1155:  " --		filetype =   "help", "list", "Trouble"  , 1156:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1157:  " --	  1158:  "   1159:  " ) 1160:  " EOF 1161:  " lua <<EOF 1162:  " require('dd').
setup() 1163:  " EOF 1164:  " lua << EOF 1165:  " local opts =   1166:  "   log level = 'info', 1167:  "   auto session enable last session = false, 1168:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1169:  "   auto session enabled = false, 1170:  "   auto save enabled = nil, 1171:  "   auto restore enabled = nil, 1172:  "   auto session suppress dirs = nil 1173:  "   1174:  " require('auto-session').
setup(opts) 1175:  " EOF 1176:   1177:  " lua << EOF 1178:  " if exists('g:started by firenvim') 1179:  "   ZenMode 1180:  " else 1181:  "   set laststatus=2 1182:  " endif 1183:   1184:  " lua <<EOF 1185:  " require('neoclip').
setup(  1186:  "       history = 1000, 1187:  "       enable persistant history = false, 1188:  "       db path = vim.
fn.
stdpath("data") .
. 
1188:++++ "/databases/neoclip.
sqlite3", 1189:  "       filter = nil, 1190:  "       preview = true, 1191:  "       default register = '"', 1192:  "       content spec column = false, 1193:  "       on paste =   1194:  "         set reg = false, 1195:  "        , 1196:  "       keys =   1197:  "         i =   1198:  "           select = '<cr>', 1199:  "           paste = '<c-p>', 1200:  "           paste behind = '<c-k>', 1201:  "           custom =   , 1202:  "          , 1203:  "         n =   1204:  "           select = '<cr>', 1205:  "           paste = 'p', 1206:  "           paste behind = 'P', 1207:  "           custom =   , 1208:  "          , 1209:  "        , 1210:  "     ) 1211:  " EOF 1212:  " lua <<EOF 1213:  " local saga = require 'lspsaga'  1214:  " saga.
init lsp saga()  1215:  "   1216:  " EOF 1217:   1218:  "au FileType tex autocmd User SneakLeave set syntax=tex 1219:  "au FileType tex autocmd User SneakEnter set syntax=text 1220:  " 1221:  " 1222:  " 1223:   1224:  " 1225:  " 'tCommen20 1226:  " let g:tcommentMapLeaderOp1=';'  1227:  " "map <leader>c <Leader>    1228:  "" function! RestoreRegister() 1229:  "   let @" = s:restore reg 1230:  "   return '' 1231:  " endfunction 1232:  " function! s:Repl() 1233:  "     let s:restore reg = @" 1234:  "     return "p@=RestoreRegister() <cr>" 1235:  " endfunction 1236:  " 1237:  " " NB: this supports "rp that replaces the selection by the contents of @r 1238:  " vnoremap <silent> <expr> p <sid>Repl() 1239:   1240:  " " Change Color when entering 1241:  " Insert Mode augroup CursorLine 1242:  "    au! 1243:  "  if has("gui running") 1244:  "  else 1245:  "      au InsertEnter * setlocal cursorline 1246:  "        au InsertLeave * setlocal nocursorline 1247:  "     endif 1248:  "        augroup END 1249:  " function! DelTagOfFile(file) 1250:  "   let fullpath = a:file 1251:  "   let cwd = getcwd() 1252:  "   let tagfilename = cwd . 
1252:++++ "/tags" 1253:  "   let f = substitute(fullpath, cwd . 
1253:++++ "/", "", "") 1254:  "   let f = escape(f, '.
/') 1255:  "   let cmd = 'sed -i "/' . 
1255:++++ f . 
1255:++++ '/d" "' . 
1255:++++ tagfilename . 
1255:++++ '"' 1256:  "   let resp = system(cmd) 1257:  " endfunction 1258:  " function! Break() 1259:  "  let n=130-virtcol('.
') 1260:  "  <Esc>ni <Esc><Esc> 1261:  " endfunction 1262:  " function Gitview() 1263:  "    cd /root/web2 ; git add . 
1263:++++ ; git commit -m -a ; git push origin gh-pages 1264:  " endfunction 1265:  " fuzzy search 1266:  " function! s:config fuzzyall(.
.
.
) abort 1267:  "   return extend(copy(  1268:  "       'converters': [ 1269:  "         incsearch#config#fuzzy#converter(), 1270:  "         incsearch#config#fuzzyspell#converter() 1271:  "       ], 1272:  "      ), get(a:, 1,    1273:  "   )) 1274:  " endfunction 1275:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1276:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1277:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1278:  " map f <Plug>(incsearch-fuzzyspell-/) 1279:  " map F <Plug>(incsearch-fuzzyspell-?) 1280:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1281:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1282:  " let g:deoplete#enable at startup = 1 1283:  " map <silent> <leader>g :silent call Gitview() 1284:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1285:  "Load some useful plugins with vundle  1286:  " 1287:  "asdf asldfkj 1288:  " hi! link Sneak Normal 1289:  " hi! link SneakScope Normal   test test2 test3 1290:   1291:  " command! -bang -nargs=* Rg 1292:  "     call fzf#vim#grep( 1293:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1294:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1295:  " 1296:  "" au GUIEnter * set fullscreen 1297:  " if has("gui running") 1298:    " set fuoptions=maxvert,maxhorz 1299:    " au GUIEnter * set fullscreen 1300:     " set foldcolumn=10 1301:     " set formatoptions=ant 1302:  " set wrapmargin=0 1303:  " set nohlsearch 1304:  " set tags= ~/workspacemodules/tags 1305:  " highlight SignColumn guibg=bg 1306:  "       endif     1307:  " if has("autocmd") 1308:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1309:  " endif 1310:    " autocmd BufWinLeave *.
* mkview 1311:    " autocmd BufWinEnter *.
* silent loadview 1312:     " set foldcolumn=2 1313:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1314:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1315:  " inoremap <cr> <esc>:w<cr>i<cr>  1316:  "" set tm=500 1317:  " set macmeta 1318:  " auto reload vimrc when editing it 1319:  " let g:github function style = "italic" 1320:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1321:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1322:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1323:  " Load the colorscheme 1324:  " colorscheme github dark 1325:  "" terminal color settings  1326:  " Example config in VimScript 1327:  " let g:github function style = "italic" 1328:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1329:   1330:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1331:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1332:  " Load the colorscheme 1333:  " colorscheme github dark  1334:  " set background=dark  1335:  " if has("gui running")	" GUI color and font settings 1336:  "   set guifont=Fira  Code:h22 1337:  "   " colorscheme gruvbox  1338:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1339:  " else 1340:  "  colorscheme one 1341:  " colorscheme material   1342:  " let g:material style = 'palenight'   1343:  " let g:material style = 'lighter' 1344:  " highlight Normal ctermbg=none  1345:  "   " let g:vimtex quickfix method='pplatex'  1346:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1347:  "    function! UpdateSkim(status) 1348:  "      if !a:status | return | endif 1349:  " 1350:  "      let l:out = b:vimtex.
out() 1351:  "      let l:tex = expand(' :p') 1352:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1353:  "      if !empty(system('pgrep Skim')) 1354:  "        call extend(l:cmd, ['-g']) 1355:  "      endif 1356:  "      if has('nvim') 1357:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1358:  "      elseif has('job') 1359:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1360:  "      else 1361:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1362:  "      endif 1363:  "    endfunction 1364:  " let g:vimtex latexmk build dir = '.
/build' 1365:  "   'build dir' : '.
/build', 1366:  "  1367:  "     let g:vimtex compiler latexmk =   1368:  "       'background' : 0, 1369:  "           'callback' : 1, 1370:  "       'continuous' : 1, 1371:  "       'options' : [ 1372:  "         '-pdf', 1373:  "         '-verbose', 1374:  "         '-file-line-error', 1375:  "         '-synctex=1', 1376:  "         '-interaction=nonstopmode', 1377:  "       ], 1378:  "        1379:  " let g:vimtex compiler progname = 'nvr' 1380:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1381:  " let g:vimtex quickfix mode = 1 1382:  " let g:vimtex fold enabled = 0 1383:  " let g:vimtex fold manual = 1 1384:   1385:   1386:  " let g:vimtex fold types=   1387:  "             'preamble' :   , 1388:  "             'comments' :  'enabled' : 1 , 1389:  "             'markers' :   , 1390:  "             'sections' :   1391:  "               'parse levels' : 0, 1392:  "               'sections' : [       1393:  "                 ' (add)?part', 1394:  "                 ' (chapter|addchap)', 1395:  "                 ' (section|addsec)', 1396:  "                 'subsection', 1397:  "                 'subsubsection', 1398:  "               ], 1399:  "               'parts' : [          1400:  "                 'appendix', 1401:  "                 'frontmatter', 1402:  "                 'mainmatter', 1403:  "                 'backmatter', 1404:  "               ], 1405:  "              , 1406:  "              1407:   1408:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1409:  " lua <<EOF 1410:  " require'nvim-treesitter.
configs'.
setup   1411:  "   incremental selection =   1412:  "     enable = true, 1413:  "     keymaps =   1414:  "       init selection = "gnn", 1415:  "       node incremental = "grn", 1416:  "       scope incremental = "grc", 1417:  "       node decremental = "grm", 1418:  "      , 1419:  "    , 1420:  "   1421:  " EOF 1422:  " lua <<EOF 1423:  " require('neoscroll').
setup  1424:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1425:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1426:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1427:  "     hide cursor = true,          -- Hide cursor while scrolling 1428:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1429:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1430:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1431:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1432:  "     easing function = nil,        -- Default easing function 1433:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1434:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1435:  "       1436:  " EOF 1437:  "  1438:  " " set foldlevel=20 1439:  " " set foldmethod=expr 1440:  " " set foldexpr=nvim treesitter#foldexpr() 1441:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1442:  " inoremap .
<Space> .
<CR><Esc><leader>j 1443:  " noremap S :S  1444:  " 1445:  " 1446:  " function! Sneak() 1447:  "     hi! link Sneak Normal 1448:  "     hi! link SneakScope Normal 1449:  "     execute 'normal!  <Plug>Sneak s' 1450:  "     syntax on 1451:  " endfunction 1452:    1453:  " map N <Plug>Sneak , 1454:  " map t <Plug>(smalls-excursion) 1455:  " let g:smalls auto jump=1 1456:  " let g:smalls auto jump timeout=0 1457:       1458:  "  1459:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1460:  " let g:vimtex view general options = '-r @line @pdf @ 1461:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1462:  " <cr> 1463:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1464:  " NB: this supports "rp that replaces the selection by the contents of @r 1465:  " Auto updating Ctags 1466:  " autocmd VimLeave * exe ":silent ! ctags -R" 1467:  "Nerd Tree 1468:  " map <leader>e :NERDTreeFind<CR> 1469:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1470:  " 1471:  "" lua << EOF 1472:  " local function setup servers() 1473:  "   require'lspinstall'.
setup() 1474:  "   local servers = require'lspinstall'.
installed servers() 1475:  "   for  , server in pairs(servers) do 1476:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1477:  "   end 1478:  " end 1479:  "  1480:  " setup servers() 1481:  "  1482:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1483:  " require'lspinstall'.
post install hook = function () 1484:  "   setup servers() -- reload installed servers 1485:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1486:  " end 1487:  " EOF 1488:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 