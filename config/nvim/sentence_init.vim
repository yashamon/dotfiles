1:  call plug#begin('~/.
vim/plugged')    2:  Plug 'folke/zen-mode.
nvim',   'branch': 'main'    3:  Plug 'rebelot/kanagawa.
nvim' 4:  " Plug 'reedes/vim-pencil'  5:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   6:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    7:  Plug 'lewis6991/spellsitter.
nvim' 8:  " Plug 'radenling/vim-dispatch-neovim'   9:  " Plug 'tpope/vim-dispatch' 10:  Plug 'sheerun/vim-polyglot'  11:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   12:  Plug 'vijaymarupudi/nvim-fzf' 13:  Plug 'kyazdani42/nvim-web-devicons' 14:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   15:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   16:  " Plug 'AckslD/nvim-neoclip.
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
15 150:   151:  "General Settings     152:  set title  153:  " set titlestring 154:  " set noshowmode 155:  " set noruler        156:  " set laststatus=1  157:  set noshowcmd    158:  set noshowmatch   159:  set wrap   160:  set pb=10   161:  set winbl=10 162:  set switchbuf=newtab 163:  " let g:python3 host prog='/usr/bin/python3.
9' 164:  " let g:python3 host prog='/usr/bin/python3.
9' 165:   166:  set clipboard+=unnamedplus	" yank to the system register (*) by default 167:  " TAB setting  168:  set expandtab        "replace <TAB> with spaces 169:  set softtabstop=3  170:  set shiftwidth=3  171:  set termguicolors 172:   173:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 174:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 175:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 176:  set spelllang=en    177:  if exists('g:started by firenvim') 178:       autocmd VimEnter set noshowmode 179:       autocmd VimEnter set noruler 180:       autocmd VimEnter set laststatus=0 181:       autocmd VimEnter set noshowcmd 182:       autocmd VimEnter set lines=100  183:       autocmd VimEnter set columns=100 184:  else 185:    " autocmd VimEnter * TZAtaraxis 186:   endif 187:  set timeoutlen=0 188:  au VIMEnter * let g:surround 108 =   189:        'q':  " `` r''" 190:           191:  let g:tex flavor = "latex" 192:  let g:tex isk = '@,48-57,58, ,192-255,:'  193:  au FileType tex setlocal iskeyword+=: 194:  let g:tex conceal = "" 195:  set tags+=~/workspacemodules/tags 196:  "set tags+=~/Dropbox/workspace/tags 197:    " set wrapmargin=1 198:  " set shada="NONE"   199:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 200:  set wrap 201:  set linebreak  202:  set formatoptions+=w " set breakat=" " 203:  " set list  " list disables linebreak 204:  " set textwidth=0 205:  set wrapmargin=-1 206:  set hid 207:  set autochdir 208:  set guioptions-=r 209:  set guioptions-=l 210:  set inccommand=split 211:  set mouse= 212:  set bs=2		" allow backspacing over everything in insert mode  213:  set undofile                " Save undo's after file closes 214:  set undodir=~/.
undo " where to save undo histories 215:  set undolevels=1000000         " How many undos 216:  set undoreload=10000		 217:  set ruler		" show the cursor position all the time 218:  set autoread		" auto read when file is changed from outside 219:  set nohlsearch 220:  " set noswapfile 221:  " set showmatch		" Cursor shows matching ) and   222:  set nocursorline 223:  set showmode		" Show current mode 224:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 225:  set wildmenu            " wild char completion menu 226:  let maplocalleader = "  " 227:  " ignore these files while expanding wild chars 228:  set wildignore=*.
o,*.
class,*.
pyc 229:  set incsearch		" incremental search 230:  set nobackup		" no *~ backup files 231:  set ignorecase		" ignore case when searching 232:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 233:  set smarttab		" insert tabs on the start of a line according to context 234:   235:  " disable sound on errors 236:  set noerrorbells 237:  " set novisualbell  238:  set guifont=Fira  Code  Light:h9 239:  colorscheme one 240:  " colorscheme material   241:  " let g:material style = 'palenight'   242:  " let g:material style = 'lighter' 243:  " highlight Normal ctermbg=none 244:  set tm=1000 245:  " set macreta  246:  hi clear SpellBad 247:  hi SpellBad cterm=underline 248:  " Set style for gVim 249:  hi SpellBad gui=underline 250:  " 251:  "Autocommands, au 252:  au FileType Makefile set noexpandtab 253:  au FileType tex,text set spelllang=en  254:  au FileType tex,text set noai nocin  255:   256:  au FileType tex,text,md set spell    257:  function Reset() 258:  TZAtaraxisOff  259:  TZAtaraxisOn 260:  endfunction    261:  " au FocusLost call TZAtaraxisOff  262:  " au FocusGained call TZAtaraxisOn  263:   264:  " au FileType vim,md set list 265:  " au FileType vim,md colorscheme one 266:   267:  " au FileType tex,text,md syntax sync fromstart  268:  "  269:  " au FileType tex,text,md silent execute "!echo " . 
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
txt" 274:  endfunction 275:  nmap <leader>nn :call Server() 276:   277:  au FileType tex,text,md hi SpellBad cterm=undercurl 278:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp  279:  au Filetype tex,text,md set tw=50  280:  au Filetype tex,text,md set fo=tc 281:  " au FileType tex set background=dark  282:  au TextYankPost * lua vim.
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
ini", 1097:  " 	--optional extra queries overrides existing queries 1098:  " 	queries =    1099:  " 		-- see the piece on adding queries on how to use this  1100:  " 		-- (not needed if using an out of the box supported language 1101:  " 		py =    1102:  " 			strings = "[(string) ] @capture", 1103:  " 			comments = "[(comment)+ ] @capture", 1104:  " 		 , 1105:  " 	 ,  1106:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1107:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1108:  " 	-- weather to lint strings, comments or both for a language 1109:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1110:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1111:  " 	auto enable = false, -- do not start linting files on open (default = true) 1112:  " 	default cmds = false,  -- do not add commands (default = true) 1113:  "  ) 1114:  " EOF  1115:  " 1116:  " 1117:  lua <<EOF 1118:  require('spellsitter').
setup   1119:    hl = 'SpellBad',  1120:    captures =   ,  -- set to    to spellcheck everything 1121:   1122:    -- Spellchecker to use. 
1122:++++ values: 1123:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1124:    -- * ffi: built-in spell checker using the FFI to access the 1125:    --   internal spell check() function 1126:  spellchecker = 'vimfn', 1127:    1128:  EOF 1129:  let g:firenvim config =    1130:        'globalSettings':   1131:            'alt': 'all', 1132:          , 1133:        'localSettings':   1134:            '.
*':   1135:                'cmdline': 'neovim', 1136:                'content': 'text', 1137:                'priority': 0, 1138:                'selector': 'textarea', 1139:                'takeover': 'never', 1140:             , 1141:          1142:      1143:  lua << EOF 1144:  require('fzf-lua').
setup  1145:  -- .
.
.
@??? 1146:    1147:  EOF 1148:  " lua << EOF 1149:  " require("stabilize").
setup( 1150:  "   1151:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1152:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1153:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1154:  " --		filetype =   "help", "list", "Trouble"  , 1155:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1156:  " --	  1157:  "   1158:  " ) 1159:  " EOF 1160:  " lua <<EOF 1161:  " require('dd').
setup() 1162:  " EOF 1163:  " lua << EOF 1164:  " local opts =   1165:  "   log level = 'info', 1166:  "   auto session enable last session = false, 1167:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1168:  "   auto session enabled = false, 1169:  "   auto save enabled = nil, 1170:  "   auto restore enabled = nil, 1171:  "   auto session suppress dirs = nil 1172:  "   1173:  " require('auto-session').
setup(opts) 1174:  " EOF 1175:   1176:  " lua << EOF 1177:  " if exists('g:started by firenvim') 1178:  "   ZenMode 1179:  " else 1180:  "   set laststatus=2 1181:  " endif 1182:   1183:  " lua <<EOF 1184:  " require('neoclip').
setup(  1185:  "       history = 1000, 1186:  "       enable persistant history = false, 1187:  "       db path = vim.
fn.
stdpath("data") .
. 
1187:++++ "/databases/neoclip.
sqlite3", 1188:  "       filter = nil, 1189:  "       preview = true, 1190:  "       default register = '"', 1191:  "       content spec column = false, 1192:  "       on paste =   1193:  "         set reg = false, 1194:  "        , 1195:  "       keys =   1196:  "         i =   1197:  "           select = '<cr>', 1198:  "           paste = '<c-p>', 1199:  "           paste behind = '<c-k>', 1200:  "           custom =   , 1201:  "          , 1202:  "         n =   1203:  "           select = '<cr>', 1204:  "           paste = 'p', 1205:  "           paste behind = 'P', 1206:  "           custom =   , 1207:  "          , 1208:  "        , 1209:  "     ) 1210:  " EOF 1211:  " lua <<EOF 1212:  " local saga = require 'lspsaga'  1213:  " saga.
init lsp saga()  1214:  "   1215:  " EOF 1216:   1217:  "au FileType tex autocmd User SneakLeave set syntax=tex 1218:  "au FileType tex autocmd User SneakEnter set syntax=text 1219:  " 1220:  " 1221:  " 1222:   1223:  " 1224:  " 'tCommen20 1225:  " let g:tcommentMapLeaderOp1=';'  1226:  " "map <leader>c <Leader>    1227:  "" function! RestoreRegister() 1228:  "   let @" = s:restore reg 1229:  "   return '' 1230:  " endfunction 1231:  " function! s:Repl() 1232:  "     let s:restore reg = @" 1233:  "     return "p@=RestoreRegister() <cr>" 1234:  " endfunction 1235:  " 1236:  " " NB: this supports "rp that replaces the selection by the contents of @r 1237:  " vnoremap <silent> <expr> p <sid>Repl() 1238:   1239:  " " Change Color when entering 1240:  " Insert Mode augroup CursorLine 1241:  "    au! 1242:  "  if has("gui running") 1243:  "  else 1244:  "      au InsertEnter * setlocal cursorline 1245:  "        au InsertLeave * setlocal nocursorline 1246:  "     endif 1247:  "        augroup END 1248:  " function! DelTagOfFile(file) 1249:  "   let fullpath = a:file 1250:  "   let cwd = getcwd() 1251:  "   let tagfilename = cwd . 
1251:++++ "/tags" 1252:  "   let f = substitute(fullpath, cwd . 
1252:++++ "/", "", "") 1253:  "   let f = escape(f, '.
/') 1254:  "   let cmd = 'sed -i "/' . 
1254:++++ f . 
1254:++++ '/d" "' . 
1254:++++ tagfilename . 
1254:++++ '"' 1255:  "   let resp = system(cmd) 1256:  " endfunction 1257:  " function! Break() 1258:  "  let n=130-virtcol('.
') 1259:  "  <Esc>ni <Esc><Esc> 1260:  " endfunction 1261:  " function Gitview() 1262:  "    cd /root/web2 ; git add . 
1262:++++ ; git commit -m -a ; git push origin gh-pages 1263:  " endfunction 1264:  " fuzzy search 1265:  " function! s:config fuzzyall(.
.
.
) abort 1266:  "   return extend(copy(  1267:  "       'converters': [ 1268:  "         incsearch#config#fuzzy#converter(), 1269:  "         incsearch#config#fuzzyspell#converter() 1270:  "       ], 1271:  "      ), get(a:, 1,    1272:  "   )) 1273:  " endfunction 1274:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1275:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1276:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1277:  " map f <Plug>(incsearch-fuzzyspell-/) 1278:  " map F <Plug>(incsearch-fuzzyspell-?) 1279:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1280:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1281:  " let g:deoplete#enable at startup = 1 1282:  " map <silent> <leader>g :silent call Gitview() 1283:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1284:  "Load some useful plugins with vundle  1285:  " 1286:  "asdf asldfkj 1287:  " hi! link Sneak Normal 1288:  " hi! link SneakScope Normal   test test2 test3 1289:   1290:  " command! -bang -nargs=* Rg 1291:  "     call fzf#vim#grep( 1292:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1293:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1294:  " 1295:  "" au GUIEnter * set fullscreen 1296:  " if has("gui running") 1297:    " set fuoptions=maxvert,maxhorz 1298:    " au GUIEnter * set fullscreen 1299:     " set foldcolumn=10 1300:     " set formatoptions=ant 1301:  " set wrapmargin=0 1302:  " set nohlsearch 1303:  " set tags= ~/workspacemodules/tags 1304:  " highlight SignColumn guibg=bg 1305:  "       endif     1306:  " if has("autocmd") 1307:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1308:  " endif 1309:    " autocmd BufWinLeave *.
* mkview 1310:    " autocmd BufWinEnter *.
* silent loadview 1311:     " set foldcolumn=2 1312:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1313:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1314:  " inoremap <cr> <esc>:w<cr>i<cr>  1315:  "" set tm=500 1316:  " set macmeta 1317:  " auto reload vimrc when editing it 1318:  " let g:github function style = "italic" 1319:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1320:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1321:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1322:  " Load the colorscheme 1323:  " colorscheme github dark 1324:  "" terminal color settings  1325:  " Example config in VimScript 1326:  " let g:github function style = "italic" 1327:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1328:   1329:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1330:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1331:  " Load the colorscheme 1332:  " colorscheme github dark  1333:  " set background=dark  1334:  " if has("gui running")	" GUI color and font settings 1335:  "   set guifont=Fira  Code:h22 1336:  "   " colorscheme gruvbox  1337:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1338:  " else 1339:  "  colorscheme one 1340:  " colorscheme material   1341:  " let g:material style = 'palenight'   1342:  " let g:material style = 'lighter' 1343:  " highlight Normal ctermbg=none  1344:  "   " let g:vimtex quickfix method='pplatex'  1345:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1346:  "    function! UpdateSkim(status) 1347:  "      if !a:status | return | endif 1348:  " 1349:  "      let l:out = b:vimtex.
out() 1350:  "      let l:tex = expand(' :p') 1351:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1352:  "      if !empty(system('pgrep Skim')) 1353:  "        call extend(l:cmd, ['-g']) 1354:  "      endif 1355:  "      if has('nvim') 1356:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1357:  "      elseif has('job') 1358:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1359:  "      else 1360:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1361:  "      endif 1362:  "    endfunction 1363:  " let g:vimtex latexmk build dir = '.
/build' 1364:  "   'build dir' : '.
/build', 1365:  "  1366:  "     let g:vimtex compiler latexmk =   1367:  "       'background' : 0, 1368:  "           'callback' : 1, 1369:  "       'continuous' : 1, 1370:  "       'options' : [ 1371:  "         '-pdf', 1372:  "         '-verbose', 1373:  "         '-file-line-error', 1374:  "         '-synctex=1', 1375:  "         '-interaction=nonstopmode', 1376:  "       ], 1377:  "        1378:  " let g:vimtex compiler progname = 'nvr' 1379:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1380:  " let g:vimtex quickfix mode = 1 1381:  " let g:vimtex fold enabled = 0 1382:  " let g:vimtex fold manual = 1 1383:   1384:   1385:  " let g:vimtex fold types=   1386:  "             'preamble' :   , 1387:  "             'comments' :  'enabled' : 1 , 1388:  "             'markers' :   , 1389:  "             'sections' :   1390:  "               'parse levels' : 0, 1391:  "               'sections' : [       1392:  "                 ' (add)?part', 1393:  "                 ' (chapter|addchap)', 1394:  "                 ' (section|addsec)', 1395:  "                 'subsection', 1396:  "                 'subsubsection', 1397:  "               ], 1398:  "               'parts' : [          1399:  "                 'appendix', 1400:  "                 'frontmatter', 1401:  "                 'mainmatter', 1402:  "                 'backmatter', 1403:  "               ], 1404:  "              , 1405:  "              1406:   1407:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1408:  " lua <<EOF 1409:  " require'nvim-treesitter.
configs'.
setup   1410:  "   incremental selection =   1411:  "     enable = true, 1412:  "     keymaps =   1413:  "       init selection = "gnn", 1414:  "       node incremental = "grn", 1415:  "       scope incremental = "grc", 1416:  "       node decremental = "grm", 1417:  "      , 1418:  "    , 1419:  "   1420:  " EOF 1421:  " lua <<EOF 1422:  " require('neoscroll').
setup  1423:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1424:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1425:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1426:  "     hide cursor = true,          -- Hide cursor while scrolling 1427:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1428:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1429:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1430:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1431:  "     easing function = nil,        -- Default easing function 1432:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1433:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1434:  "       1435:  " EOF 1436:  "  1437:  " " set foldlevel=20 1438:  " " set foldmethod=expr 1439:  " " set foldexpr=nvim treesitter#foldexpr() 1440:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1441:  " inoremap .
<Space> .
<CR><Esc><leader>j 1442:  " noremap S :S  1443:  " 1444:  " 1445:  " function! Sneak() 1446:  "     hi! link Sneak Normal 1447:  "     hi! link SneakScope Normal 1448:  "     execute 'normal!  <Plug>Sneak s' 1449:  "     syntax on 1450:  " endfunction 1451:    1452:  " map N <Plug>Sneak , 1453:  " map t <Plug>(smalls-excursion) 1454:  " let g:smalls auto jump=1 1455:  " let g:smalls auto jump timeout=0 1456:   1457:   1458:      " xmap t <Plug>Sneak s 1459:      " xmap T <Plug>Sneak S 1460:     " omap t <Plug>Sneak s 1461:      " omap T <Plug>Sneak S    1462:      " >Sneak S+ test 1463:   1464:      " math maps     asdf a;sldfjk test2 spank    1465:  "  1466:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1467:  " let g:vimtex view general options = '-r @line @pdf @ 1468:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1469:   1470:  " <cr> 1471:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1472:  " NB: this supports "rp that replaces the selection by the contents of @r 1473:  " Auto updating Ctags 1474:  " autocmd VimLeave * exe ":silent ! ctags -R" 1475:  "Nerd Tree 1476:  " map <leader>e :NERDTreeFind<CR> 1477:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1478:  " 1479:  "" lua << EOF 1480:  " local function setup servers() 1481:  "   require'lspinstall'.
setup() 1482:  "   local servers = require'lspinstall'.
installed servers() 1483:  "   for  , server in pairs(servers) do 1484:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1485:  "   end 1486:  " end 1487:  "  1488:  " setup servers() 1489:  "  1490:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1491:  " require'lspinstall'.
post install hook = function () 1492:  "   setup servers() -- reload installed servers 1493:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1494:  " end 1495:  " EOF 1496:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 