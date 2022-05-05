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
pyc 229:  set incsearch		" incremental search 230:  set nobackup		" no *~ backup files 231:  set ignorecase		" ignore case when searching 232:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 233:  set smarttab		" insert tabs on the start of a line according to context 234:   235:  " disable sound on errors 236:  set noerrorbells 237:  " set novisualbell  238:  set guifont=Fira  Code  Light:h20 239:  colorscheme one 240:  " colorscheme material   241:  " let g:material style = 'palenight'   242:  " let g:material style = 'lighter' 243:  " highlight Normal ctermbg=none 244:  set tm=1000 245:  " set macreta  246:  hi clear SpellBad 247:  hi SpellBad cterm=underline 248:  " Set style for gVim 249:  hi SpellBad gui=underline 250:  " 251:  "Autocommands, au 252:  au FileType Makefile set noexpandtab 253:  au FileType tex,text set spelllang=en  254:  au FileType tex,text set noai nocin  255:   256:  au FileType tex,text,md set spell    257:  function Reset() 258:  TZAtaraxisOff  259:  TZAtaraxisOn 260:  endfunction    261:  " au FocusLost call TZAtaraxisOff  262:  " au FocusGained call TZAtaraxisOn  263:   264:  " au FileType vim,md set list 265:  " au FileType vim,md colorscheme one 266:   267:  " au FileType tex,text,md syntax sync fromstart  268:  "  269:  " au FileType tex,text,md silent execute "!echo " . 
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
<CR>h 376:  nnoremap <up> 1<C-U> 377:  imap <up> <nop> 378:  nnoremap <down> 1<C-D> 379:  imap <down> <nop> 380:  noremap <ScrollWheelUp>      <nop> 381:  noremap <S-ScrollWheelUp>    <nop> 382:  noremap <C-ScrollWheelUp>    <nop> 383:  noremap <ScrollWheelDown>    <nop> 384:  noremap <S-ScrollWheelDown>  <nop> 385:  noremap <C-ScrollWheelDown>  <nop> 386:  noremap <ScrollWheelLeft>    <nop> 387:  noremap <S-ScrollWheelLeft>  <nop> 388:  noremap <C-ScrollWheelLeft>  <nop> 389:  noremap <ScrollWheelRight>   <nop> 390:  noremap <S-ScrollWheelRight> <nop> 391:  noremap <C-ScrollWheelRight> <nop> 392:  inoremap   / 393:  inoremap /   394:   395:  " copy paste stuff  396:  "  397:  vnoremap p "0dP  398:  inoremap <C-p> <C-r>"+ 399:  " noremap D "0D:wa<cr> 400:  noremap d "0d 401:  nnoremap dd "0dd 402:  noremap c "0c 403:  noremap C " C 404:  noremap x " x 405:  vnoremap x "+x 406:  vnoremap d " d   407:  vnoremap c " c   408:  vnoremap y "+y 409:  nnoremap y "+y 410:  nnoremap p "+p 411:  nnoremap <leader>q q 412:  " Softwrap  413:  nmap D "0dg  414:  nmap V vg  415:  nmap A g a  416:  map 0 g  417:  map 9 g  418:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 419:  nnoremap <c-l> :bnext<CR> 420:  nnoremap <c-h> :bprevious<CR> 421:  " tnoremap <Esc> <C- >  422:  " nnoremap < :tabp<CR> 423:  " nnoremap > :tabn<CR> 424:  " nnoremap <leader>n :tabedit  <CR> 425:  imap <M-j> <C-j> 426:  map <M-m> <cmd>HopChar1<cr>  427:  " map <S-b> ?  <CR> 428:  map <M-w> <cmd>HopChar1<cr>  429:  map <M-b> <cmd>HopChar1<cr>  430:  map q: nop 431:  map <S-C-q> <Esc>:qa!<CR> 432:  map <m-q> <esc>:wq<cr> 433:  map <m-Q> <esc>:q<cr> 434:  map <m-c> <esc>:w<CR>:close<cr> 435:  map <M-d> <Esc>:w<CR>:bdelete<CR> 436:  noremap gf gq 437:  noremap f / 438:  noremap F ? 439:  noremap # /  <CR>v?  <CR> 440:  noremap   /  <CR>hv?  <CR>l 441:  noremap @ / <CR>v? <CR> 442:  map j gj 443:  map k gk 444:  noremap <Space> .
@??? 445:  vnoremap <Space> t <cr> 446:  map K <C-u> 447:  map J <C-d> 448:  " map <C-j> zz 449:  " map <C-k> zb 450:  map <C-j> <C-e>jj 451:  map <C-k> <C-y>kk 452:  nnoremap <leader>j J 453:  nnoremap <leader>k K 454:  map ' " 455:  nnoremap <Backspace> i<Backspace><Esc> 456:  nmap <leader>c gc 457:  noremap <A-r> <C-r> 458:  nnoremap ` ~ 459:  nnoremap . 
459:++++ ` 460:  noremap <m-1> <C-o> 461:  noremap <m-2> <C-i> 462:  noremap <D-d> <C-d> 463:  map ;s <Esc>:w<CR> 464:  noremap <D-u> <C-u> 465:  noremap <A-u> <C-u> 466:  " this mapping Enter key to <C-y> to chose the current highlight item  467:  " and close the selection list, same as other IDEs.
@??? 468:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 469:  nnoremap <silent> <Leader>y :YRGetElem<CR> 470:  map ' " 471:  inoremap <D-]> <C-x><C-]> 472:  inoremap <C-]> <C-x><C-]> 473:   474:  au FileType tex,text,md nmap 0 g  475:  au FileType tex,text,md noremap 9 g  476:  " au FileType tex,text,md nnoremap dd " g dg g  477:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 478:   479:  "Neovim mappings 480:  " :tnoremap <S-h> <C- ><C-n><C-w>h 481:  " :tnoremap <S-j> <C- ><C-n><C-w>j 482:  " :tnoremap <S-k> <C- ><C-n><C-w>k 483:  " :tnoremap <S-l> <C- ><C-n><C-w>l 484:  " tnoremap <Left> :tbnext<CR> 485:  " tnoremap <Right> :tbprevious<CR> 486:  " tnoremap <Leader>e <C- ><C-n>  487:  " imap <Backspace>   488:  map t <cmd>HopChar1AC<cr> 489:  map T <cmd>HopChar1BC<cr> 490:  map <m-.
> <cmd>HopChar1<cr>.
@??? 491:  map <m-space> <cmd>HopWord<cr> 492:  " map <S-m-Space> <cmd>HopWord<cr> 493:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 494:   495:  " FZF  496:  " 497:  noremap <m-t> :BTags<cr> 498:  noremap <m-y> :Tags<cr> 499:  noremap S <Esc> :BLines<CR> 500:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 501:  " Line search mapping  502:  " function! Jumpback()  503:  "   K=bufname() 504:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 505:  " endfunction 506:  noremap <m-b> <Esc>:Buffers<CR> 507:  " noremap F <Esc>:GFiles<CR> 508:  map <A-e> :FZF ~<CR>  509:  map <m-f> :FZF ~<CR>  510:   511:  "miscellaneous 512:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 513:  nmap <leader>g :ZenMode<CR> 514:  " nmap <leader>p :Denite neoyank -default-action=append<CR> 515:   516:  " Latex stuff 517:  "  518:  noremap <leader>ss :w<cr>:source  MYVIMRC<cr>  519:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 520:  noremap <c-p> :<c-r>+<cr> 521:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 522:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 523:   524:   525:  "Functions 526:   527:  function Light() 528:  set background=light 529:  " colorscheme oceanlight  530:  colorscheme one  531:  " highlight Normal ctermfg=black 532:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 533:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 534:  endfunction    535:   536:  " function Light() 537:  " set background=light 538:  " " colorscheme oceanlight  539:  " colorscheme material  540:  " let g:material style = 'lighter'   541:  "    " highlight Normal ctermfg=black 542:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 543:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 544:  " endfunction    545:  function Bluemoon() 546:     set background=dark 547:     colorscheme blue-moon 548:     " colorscheme material   549:  endfunction 550:   551:  function Deepocean() 552:     set background=dark 553:     colorscheme material   554:     let g:material style = 'deep ocean'   555:  endfunction 556:   557:  function Palenight() 558:     set background=dark 559:     " colorscheme blue-moon 560:     colorscheme material   561:     let g:material style = 'palenight'   562:  endfunction 563:  function Lighter() 564:     set background=light 565:     " colorscheme blue-moon 566:     colorscheme material   567:     let g:material style = 'lighter'   568:  endfunction 569:   570:  function Dark() 571:     set background=dark 572:     colorscheme one   573:  endfunction 574:   575:  function! Profile() 576:  profile start profile.
log 577:  profile func * 578:  profile file * 579:  endfunction  580:   581:  function! Sentence() 582:    let g:buf = bufname() 583:    silent !sentence.
sh   584:    silent echo "Print any character" 585:    silent call getchar() 586:    e sentence   587:    " echo "Print any character" 588:    " call getchar() 589:    BLines 590:  endfunction 591:  noremap L :lua require("zen-mode").
close()<cr>:call Sentence()<cr> 592:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 593:  function! Git()  594:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add . 
594:++++ ; git commit -m -a ; git push --all origin; fi  595:  endfunction 596:   597:  function! ToggleQuickFix()  598:        if empty(filter(getwininfo(), 'v:val.
quickfix')) 599:        exec "w" 600:          echo bufname() 601:          " lua require("zen-mode").
close()  602:          echo bufname() 603:          let b:filenamedir=expand(' :p:h')   604:          echo b:filenamedir 605:          let b:filename=expand(' :t:r') 606:          let b:errors=b:filenamedir . 
606:++++ "/buildback/" . 
606:++++ b:filename .
".
log" 607:          echo b:errors 608:          exec "caddf" b:errors 609:          copen 610:          sleep 1 611:          exec "wincmd j" 612:          exec "/error" 613:      else 614:          exec "cclose"  615:          sleep 1 616:          endif 617:  endfunction 618:   619:  nnoremap <leader>s :silent call ToggleQuickFix()<CR> 620:  function! ClearLatex() 621:    silent !rm .
/buildback/*  622:  endfunction  623:   624:  function! CompileLatex() 625:    silent call ClearLatex() 626:    let buf = bufname() 627:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f -gg   628:    execute "buffer" buf 629:    call ViewPdf() 630:  endfunction 631:   632:  function! ViewPdf()  633:  wa 634:  silent execute "!echo " . 
634:++++ v:servername . 
634:++++ " > ~/servername.
txt" 635:  let buf = bufname() 636:  let linenumber=line(".
") 637:  let colnumber=col(".
")  638:  let b:filenamedir=expand(' :p:h')   639:  let filenametex=expand(' :p:t')  640:  let filenametexwhole=expand(' :p')  641:  let filenameroot=expand(' :t:r') 642:  " let filenamePDF=filename[:-4].
"pdf" 643:  let filenamePDF=b:filenamedir . 
643:++++ "/build/" . 
643:++++ filenameroot . 
643:++++ ".
pdf"  644:  echo filenamePDF 645:  let execstr="silent !zathura --synctex-forward " . 
645:++++ linenumber . 
645:++++ ":" . 
645:++++ colnumber . 
645:++++ ":" . 
645:++++ filenametexwhole . 
645:++++ " " . 
645:++++ filenamePDF . 
645:++++ " &>/dev/null &"  646:  echo execstr 647:  exec execstr 648:  execute "buffer" buf 649:  endfunction  650:  nmap <leader>v :call ViewPdf()<cr><cr> 651:  " nmap <leader>v :VimtexView<cr> 652:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 653:  nmap <leader>ll :call CompileLatex()<cr> 654:  nmap <leader>cl :call ClearLatex()<cr> 655:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 656:   657:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  658:  "" mathml shenanigans 659:   660:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 661:   662:   663:   664:   665:   666:   667:  "Autosave and autocommit    668:  " let g:updatetime = 10000 669:  let g:auto save = 0 670:  " .
vimrc 671:  let g:auto save events = ["CursorHold"] 672:  "au FileType vim let g:autosave = 0 673:  let g:auto save in insert mode = 0 674:  let g:auto save silent = 1 675:   676:  "Git autocommit  (private git repo) 677:  autocmd BufWritePost * call Git() 678:  lua <<EOF 679:  require'nvim-treesitter.
configs'.
setup    680:      -- 681:      highlight =   enable = true  , 682:      incremental selection =   683:      enable = true, 684:      keymaps =   685:        init selection = '<CR>', 686:        scope incremental = '<CR>', 687:        node incremental = '<TAB>', 688:        node decremental = '<S-TAB>', 689:       , 690:     , 691:      textobjects =   enable = true  , 692:      indent =   enable = true  ,  693:    694:  EOF 695:   696:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  697:   698:  " vsnip stuff  699:  " Use <Tab> and <S-Tab> to navigate through popup menu 700:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 701:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 702:   703:  " Set completeopt to have a better completion experience 704:  set completeopt=menuone,noinsert,noselect 705:   706:  " Avoid showing message extra message when using completion 707:  set shortmess+=c 708:  let g:vsnip snippet dir = '~/dotfiles/snippets'   709:   710:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 711:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 712:  "  713:  " " Expand or jump 714:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 715:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 716:   717:  " Jump forward or backward 718:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 719:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 720:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 721:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 722:   723:  " 724:  " set foldexpr=nvim treesitter#foldexpr() 725:  " 726:  lua << EOF 727:  local nvim lsp = require('lspconfig') 728:  -- Use an on attach function to only map the following keys 729:  -- after the language server attaches to the current buffer 730:  local on attach = function(client, bufnr) 731:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 732:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 733:  -- Enable completion triggered by <c-x><c-o> 734:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 735:   736:    -- Mappings.
@??? 737:    local opts =   noremap=true, silent=true   738:   739:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 740:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 741:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 742:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 743:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 744:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 745:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 746:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 747:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 748:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 749:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 750:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 751:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 752:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 753:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 754:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 755:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 756:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 757:   758:  end 759:  EOF 760:   761:  "Lsp instal  762:  lua <<EOF 763:  local lsp installer = require("nvim-lsp-installer") 764:   765:  -- Register a handler that will be called for all installed servers.
@??? 766:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 767:  lsp installer.
on server ready(function(server) 768:      local opts =    769:   770:      -- (optional) Customize the options passed to the server 771:      -- if server.
name == "tsserver" then 772:      --     opts.
root dir = function() .
.
. 
772:++++ end 773:      -- end 774:   775:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 776:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 777:      server:setup(opts) 778:  end) 779:  EOF 780:   781:  " 782:   783:   784:  nnoremap <leader>y :FZFNeoyank<cr> 785:  nnoremap <leader>Y :FZFNeoyank  P<cr> 786:  vnoremap <leader>y :FZFNeoyankSelection<cr> 787:   788:  nnoremap <leader>p :FZFNeoyank +<cr>  789:  nnoremap <leader>1 :FZFNeoyank 1<cr> 790:  nnoremap <leader>P :FZFNeoyank " P+<cr> 791:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 792:   793:   794:  " Replace the default dictionary completion with fzf-based fuzzy completion 795:   796:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   797:  " inoremap <cr> <cr> <backspace> 798:   799:  set completeopt=menu,menuone,noselect 800:   801:  lua <<EOF 802:    -- Setup cmp.
@??? 803:   804:  local has words before = function() 805:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 806:      return false 807:    end 808:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 809:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 810:  end 811:   812:  local feedkey = function(key, mode) 813:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 814:  end 815:   816:  local cmp = require('cmp') 817:  cmp.
setup   818:   snippet =   819:        expand = function(args) 820:          -- For `vsnip` user.
@??? 821:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 822:    -- .
.
. 
822:++++ Your other configuration .
.
.
@??? 823:  end, 824:   , 825:  mapping =   826:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 827:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 828:        ['<C-x>'] = cmp.
mapping.
complete(), 829:        ['<C-e>'] = cmp.
mapping.
close(), 830:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 831:  -- .
.
. 
831:++++ Your other mappings .
.
.
@??? 832:  ["<Tab>"] = cmp.
mapping(function(fallback)  833:        if vim.
fn["vsnip#expandable"]() == 1 834:          then 835:          feedkey("<Plug>(vsnip-expand)", "") 836:       elseif cmp.
visible() then 837:          cmp.
select next item() 838:        elseif has words before() then  839:          cmp.
complete() 840:        else  841:          fallback() -- The fallback function sends a already mapped key. 
841:++++ In this case, it's probably `<Tab>`.
@??? 842:        end 843:      end,   "i", "s"  ), 844:  ["<S-Tab>"] = cmp.
mapping(function() 845:        if vim.
fn.
pumvisible() == 1 then 846:          feedkey("<C-p>", "n")   847:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 848:          feedkey("<Plug>(vsnip-jump-prev)", "") 849:        end 850:      end,   "i", "s"  ), 851:  -- .
.
. 
851:++++ Your other mappings .
.
.
@??? 852:   853:   , 854:  requires =   855:        856:        'quangnguyen30192/cmp-nvim-tags', 857:        -- if you want the sources is available for some file types 858:        ft =   859:          'tex', 860:          'latex'  861:          862:        863:       , 864:  -- .
.
. 
864:++++ Your other configuration .
.
.
@??? 865:  sources =   866:        -- For vsnip user.
@??? 867:    name = 'tags', keyword length = 1000  , 868:     name = 'vsnip', keyword length = 1000  , 869:           -- For luasnip user.
@??? 870:        --   name = 'luasnip'  , 871:  -- For ultisnips user.
@??? 872:        --   name = 'ultisnips'  ,   873:       name = 'buffer', keyword length = 1000  , 874:       name = 'omni', keyword length = 4 , 875:         --   name = 'spell'  ,  876:       name = 'nvim lsp', keyword length = 4  , 877:        --  name = 'treesitter', keyword length = 4  , 878:  --  name = 'latex symbols'  , 879:   , 880:  completion =   881:      autocomplete = false  882:        883:    884:  EOF 885:   886:  "  887:  " " LSP mappings    888:  " "" LSP mappings  889:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 890:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 891:  "  892:  "  893:  lua <<EOF 894:   require('nvim comment').
setup( 895:    896:     -- Linters prefer comment and line to have a space in between markers 897:     marker padding = true, 898:     -- should comment out empty or whitespace only lines 899:     comment empty = true, 900:     -- Should key mappings be created 901:     create mappings = true, 902:     -- Normal mode mapping left hand side 903:     line mapping = "gc", 904:     -- Visual/Operator mapping left hand side 905:     operator mapping = "<leader>c", 906:     -- Hook function to call before commenting takes place 907:     --hook = nil  908:     909:   ) 910:  EOF 911:  nmap <leader>c gc 912:  " lua <<EOF 913:  " local true zen = require("true-zen") 914:  " true zen.
setup(  915:  "  	ui =   916:  "  		bottom =   917:  "  			laststatus = 0, 918:  "  			ruler = false, 919:  "  			showmode = false, 920:  "  			showcmd = false, 921:  "  			cmdheight = 1, 922:  "  		 , 923:  "  		top =   924:  "  			showtabline = 0, 925:  "  		 , 926:  "  		left =   927:  "  			number = false, 928:  "  			relativenumber = false, 929:  "  			signcolumn = "no", 930:  "  		 , 931:  "  	 , 932:  "  	modes =   933:  "  		ataraxis =   934:  "  			-- left padding = 20, 935:  "  			-- right padding = 20, 936:  "  			top padding = 0, 937:  "  			bottom padding = 0, 938:  "  			ideal writing area width =  60 , 939:  "  			auto padding = true, 940:  "  			keep default fold fillchars = true, 941:  "  			custom bg =  "none", "" , 942:  "  			bg configuration = true, 943:  "  			quit = "untoggle", 944:  "  			ignore floating windows = true, 945:  "  			affected higroups =   946:  "  				NonText = true, 947:  "  				FoldColumn = true, 948:  "  				ColorColumn = true, 949:  "  				VertSplit = true, 950:  "  				StatusLine = true, 951:  "  				StatusLineNC = true, 952:  "  				SignColumn = true, 953:  "  			 , 954:  "  		 , 955:  "  		focus =   956:  "  			margin of error = 5, 957:  "  			focus method = "experimental" 958:  "  		 , 959:  "  	 , 960:  "  	integrations =   961:  "  		vim gitgutter = false, 962:  "  		galaxyline = false, 963:  "  		tmux = false, 964:  "  		gitsigns = false, 965:  "  		nvim bufferline = false, 966:  "  		limelight = false, 967:  "  		twilight = false, 968:  "  		vim airline = false, 969:  "  		vim powerline = false, 970:  "  		vim signify = false, 971:  "  		express line = false, 972:  "  		lualine = false, 973:  "  		lightline = false, 974:  "  		feline = false, 975:  "  	 , 976:  "  	misc =   977:  "  		on off commands = true, 978:  "  		ui elements commands = false, 979:  "  		cursor by mode = false, 980:  "  	  981:  "   ) 982:  " EOF 983:  lua <<EOF 984:  require('feline').
setup(  985:      preset = 'noicon' 986:       ) 987:  EOF 988:  "  989:  "  990:  "  991:  " " lua <<EOF 992:  " " require('lualine').
setup  993:  " " options =  disabled filetypes =  'txt', 'text'   994:  " "   995:  " " EOF 996:  lua << EOF 997:    require("zen-mode").
setup   998:    window =   999:      backdrop = 1, -- shade the backdrop of the Zen window. 
999:++++ Set to 1 to keep the same as Normal 1000:      -- height and width can be: 1001:      -- * an absolute number of cells when > 1 1002:      -- * a percentage of the width / height of the editor when <= 1 1003:      -- * a function that returns the width or the height 1004:      width = .
66, -- width of the Zen window 1005:      height = 1, -- height of the Zen window 1006:      -- by default, no options are changed for the Zen window 1007:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 1008:      options =   1009:        -- signcolumn = "no", -- disable signcolumn 1010:        -- number = false, -- disable number column 1011:        -- relativenumber = false, -- disable relative numbers 1012:        -- cursorline = false, -- disable cursorline 1013:        -- cursorcolumn = false, -- disable cursor column 1014:        -- foldcolumn = "0", -- disable fold column 1015:        -- list = false, -- disable whitespace characters 1016:       , 1017:     , 1018:    plugins =   1019:      -- disable some global vim options (vim.
o.
.
.
) 1020:      -- comment the lines to not apply the options 1021:      options =   1022:        enabled = true, 1023:        ruler = false, -- disables the ruler text in the cmd line area 1024:        showcmd = false, -- disables the command in the last line of the screen 1025:       , 1026:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1027:      gitsigns =   enabled = false  , -- disables git signs 1028:      tmux =   enabled = false  , -- disables the tmux statusline 1029:      -- this will change the font size on kitty when in zen mode 1030:      -- to make this work, you need to set the following kitty options: 1031:      -- - allow remote control socket-only 1032:      -- - listen on unix:/tmp/kitty 1033:      kitty =   1034:        enabled = false, 1035:        font = "+4", -- font size increment 1036:       , 1037:     , 1038:    -- callback where you can add custom code when the Zen window opens 1039:    on open = function(win) 1040:    end, 1041:    -- callback where you can add custom code when the Zen window closes 1042:    on close = function() 1043:    end, 1044:    1045:  EOF 1046:  " lua <<EOF 1047:  " require('telescope').
setup  1048:  "   defaults =   1049:  "     -- Default configuration for telescope goes here: 1050:  "     -- config key = value, 1051:  "     mappings =   1052:  "       i =   1053:  "         -- map actions.
which key to <C-h> (default: <C-/>) 1054:  "         -- actions.
which key shows the mappings for your picker, 1055:  "         -- e.
g. 
1055:++++ git  create, delete, .
.
.  
branch for the git branches picker 1056:  "         ["<C-h>"] = "which key" 1057:  "         1058:  "       1059:  "    , 1060:  "   pickers =   1061:  "     -- Default configuration for builtin pickers goes here: 1062:  "     -- picker name =   1063:  "     --   picker config key = value, 1064:  "     --   .
.
.
@??? 1065:  "     --   1066:  "     -- Now the picker config key will be applied every time you call this 1067:  "     -- builtin picker  1068:  "    , 1069:  "   extensions =   1070:  "     -- Your extension configuration goes here: 1071:  "     -- extension name =   1072:  "     --   extension config key = value, 1073:  "     --   1074:  "     -- please take a look at the readme of the extension you want to configure 1075:  "     1076:  "    1077:  " EOF 1078:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1079:  lua <<EOF 1080:  require('fm-nvim').
setup  1081:  	config = 1082:  	  1083:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1084:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1085:  		height   = .
9, 1086:  		width    = .
9, 1087:  	  1088:    1089:  EOF 1090:   1091:  " lua <<EOF 1092:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1093:  " require("prosesitter"):setup(  1094:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1094:++++ "/prosesitter/vale", 1095:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1095:++++ "/prosesitter/vale cfg.
ini", 1096:  " 	--optional extra queries overrides existing queries 1097:  " 	queries =    1098:  " 		-- see the piece on adding queries on how to use this  1099:  " 		-- (not needed if using an out of the box supported language 1100:  " 		py =    1101:  " 			strings = "[(string) ] @capture", 1102:  " 			comments = "[(comment)+ ] @capture", 1103:  " 		 , 1104:  " 	 ,  1105:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1106:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1107:  " 	-- weather to lint strings, comments or both for a language 1108:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1109:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1110:  " 	auto enable = false, -- do not start linting files on open (default = true) 1111:  " 	default cmds = false,  -- do not add commands (default = true) 1112:  "  ) 1113:  " EOF  1114:  " 1115:  " 1116:  lua <<EOF 1117:  require('spellsitter').
setup   1118:    hl = 'SpellBad',  1119:    captures =   ,  -- set to    to spellcheck everything 1120:   1121:    -- Spellchecker to use. 
1121:++++ values: 1122:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1123:    -- * ffi: built-in spell checker using the FFI to access the 1124:    --   internal spell check() function 1125:  spellchecker = 'vimfn', 1126:    1127:  EOF 1128:  let g:firenvim config =    1129:        'globalSettings':   1130:            'alt': 'all', 1131:          , 1132:        'localSettings':   1133:            '.
*':   1134:                'cmdline': 'neovim', 1135:                'content': 'text', 1136:                'priority': 0, 1137:                'selector': 'textarea', 1138:                'takeover': 'never', 1139:             , 1140:          1141:      1142:  lua << EOF 1143:  require('fzf-lua').
setup  1144:  -- .
.
.
@??? 1145:    1146:  EOF 1147:  " lua << EOF 1148:  " require("stabilize").
setup( 1149:  "   1150:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1151:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1152:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1153:  " --		filetype =   "help", "list", "Trouble"  , 1154:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1155:  " --	  1156:  "   1157:  " ) 1158:  " EOF 1159:  " lua <<EOF 1160:  " require('dd').
setup() 1161:  " EOF 1162:  " lua << EOF 1163:  " local opts =   1164:  "   log level = 'info', 1165:  "   auto session enable last session = false, 1166:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1167:  "   auto session enabled = false, 1168:  "   auto save enabled = nil, 1169:  "   auto restore enabled = nil, 1170:  "   auto session suppress dirs = nil 1171:  "   1172:  " require('auto-session').
setup(opts) 1173:  " EOF 1174:   1175:  " lua << EOF 1176:  " if exists('g:started by firenvim') 1177:  "   ZenMode 1178:  " else 1179:  "   set laststatus=2 1180:  " endif 1181:   1182:  " lua <<EOF 1183:  " require('neoclip').
setup(  1184:  "       history = 1000, 1185:  "       enable persistant history = false, 1186:  "       db path = vim.
fn.
stdpath("data") .
. 
1186:++++ "/databases/neoclip.
sqlite3", 1187:  "       filter = nil, 1188:  "       preview = true, 1189:  "       default register = '"', 1190:  "       content spec column = false, 1191:  "       on paste =   1192:  "         set reg = false, 1193:  "        , 1194:  "       keys =   1195:  "         i =   1196:  "           select = '<cr>', 1197:  "           paste = '<c-p>', 1198:  "           paste behind = '<c-k>', 1199:  "           custom =   , 1200:  "          , 1201:  "         n =   1202:  "           select = '<cr>', 1203:  "           paste = 'p', 1204:  "           paste behind = 'P', 1205:  "           custom =   , 1206:  "          , 1207:  "        , 1208:  "     ) 1209:  " EOF 1210:  " lua <<EOF 1211:  " local saga = require 'lspsaga'  1212:  " saga.
init lsp saga()  1213:  "   1214:  " EOF 1215:   1216:  "au FileType tex autocmd User SneakLeave set syntax=tex 1217:  "au FileType tex autocmd User SneakEnter set syntax=text 1218:  " 1219:  " 1220:  " 1221:   1222:  " 1223:  " 'tCommen20 1224:  " let g:tcommentMapLeaderOp1=';'  1225:  " "map <leader>c <Leader>    1226:  "" function! RestoreRegister() 1227:  "   let @" = s:restore reg 1228:  "   return '' 1229:  " endfunction 1230:  " function! s:Repl() 1231:  "     let s:restore reg = @" 1232:  "     return "p@=RestoreRegister() <cr>" 1233:  " endfunction 1234:  " 1235:  " " NB: this supports "rp that replaces the selection by the contents of @r 1236:  " vnoremap <silent> <expr> p <sid>Repl() 1237:   1238:  " " Change Color when entering 1239:  " Insert Mode augroup CursorLine 1240:  "    au! 1241:  "  if has("gui running") 1242:  "  else 1243:  "      au InsertEnter * setlocal cursorline 1244:  "        au InsertLeave * setlocal nocursorline 1245:  "     endif 1246:  "        augroup END 1247:  " function! DelTagOfFile(file) 1248:  "   let fullpath = a:file 1249:  "   let cwd = getcwd() 1250:  "   let tagfilename = cwd . 
1250:++++ "/tags" 1251:  "   let f = substitute(fullpath, cwd . 
1251:++++ "/", "", "") 1252:  "   let f = escape(f, '.
/') 1253:  "   let cmd = 'sed -i "/' . 
1253:++++ f . 
1253:++++ '/d" "' . 
1253:++++ tagfilename . 
1253:++++ '"' 1254:  "   let resp = system(cmd) 1255:  " endfunction 1256:  " function! Break() 1257:  "  let n=130-virtcol('.
') 1258:  "  <Esc>ni <Esc><Esc> 1259:  " endfunction 1260:  " function Gitview() 1261:  "    cd /root/web2 ; git add . 
1261:++++ ; git commit -m -a ; git push origin gh-pages 1262:  " endfunction 1263:  " fuzzy search 1264:  " function! s:config fuzzyall(.
.
.
) abort 1265:  "   return extend(copy(  1266:  "       'converters': [ 1267:  "         incsearch#config#fuzzy#converter(), 1268:  "         incsearch#config#fuzzyspell#converter() 1269:  "       ], 1270:  "      ), get(a:, 1,    1271:  "   )) 1272:  " endfunction 1273:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1274:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1275:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1276:  " map f <Plug>(incsearch-fuzzyspell-/) 1277:  " map F <Plug>(incsearch-fuzzyspell-?) 1278:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1279:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1280:  " let g:deoplete#enable at startup = 1 1281:  " map <silent> <leader>g :silent call Gitview() 1282:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1283:  "Load some useful plugins with vundle  1284:  " 1285:  "asdf asldfkj 1286:  " hi! link Sneak Normal 1287:  " hi! link SneakScope Normal   test test2 test3 1288:   1289:  " command! -bang -nargs=* Rg 1290:  "     call fzf#vim#grep( 1291:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1292:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1293:  " 1294:  "" au GUIEnter * set fullscreen 1295:  " if has("gui running") 1296:    " set fuoptions=maxvert,maxhorz 1297:    " au GUIEnter * set fullscreen 1298:     " set foldcolumn=10 1299:     " set formatoptions=ant 1300:  " set wrapmargin=0 1301:  " set nohlsearch 1302:  " set tags= ~/workspacemodules/tags 1303:  " highlight SignColumn guibg=bg 1304:  "       endif     1305:  " if has("autocmd") 1306:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1307:  " endif 1308:    " autocmd BufWinLeave *.
* mkview 1309:    " autocmd BufWinEnter *.
* silent loadview 1310:     " set foldcolumn=2 1311:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1312:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1313:  " inoremap <cr> <esc>:w<cr>i<cr>  1314:  "" set tm=500 1315:  " set macmeta 1316:  " auto reload vimrc when editing it 1317:  " let g:github function style = "italic" 1318:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1319:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1320:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1321:  " Load the colorscheme 1322:  " colorscheme github dark 1323:  "" terminal color settings  1324:  " Example config in VimScript 1325:  " let g:github function style = "italic" 1326:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1327:   1328:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1329:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1330:  " Load the colorscheme 1331:  " colorscheme github dark  1332:  " set background=dark  1333:  " if has("gui running")	" GUI color and font settings 1334:  "   set guifont=Fira  Code:h22 1335:  "   " colorscheme gruvbox  1336:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1337:  " else 1338:  "  colorscheme one 1339:  " colorscheme material   1340:  " let g:material style = 'palenight'   1341:  " let g:material style = 'lighter' 1342:  " highlight Normal ctermbg=none  1343:  "   " let g:vimtex quickfix method='pplatex'  1344:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1345:  "    function! UpdateSkim(status) 1346:  "      if !a:status | return | endif 1347:  " 1348:  "      let l:out = b:vimtex.
out() 1349:  "      let l:tex = expand(' :p') 1350:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1351:  "      if !empty(system('pgrep Skim')) 1352:  "        call extend(l:cmd, ['-g']) 1353:  "      endif 1354:  "      if has('nvim') 1355:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1356:  "      elseif has('job') 1357:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1358:  "      else 1359:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1360:  "      endif 1361:  "    endfunction 1362:  " let g:vimtex latexmk build dir = '.
/build' 1363:  "   'build dir' : '.
/build', 1364:  "  1365:  "     let g:vimtex compiler latexmk =   1366:  "       'background' : 0, 1367:  "           'callback' : 1, 1368:  "       'continuous' : 1, 1369:  "       'options' : [ 1370:  "         '-pdf', 1371:  "         '-verbose', 1372:  "         '-file-line-error', 1373:  "         '-synctex=1', 1374:  "         '-interaction=nonstopmode', 1375:  "       ], 1376:  "        1377:  " let g:vimtex compiler progname = 'nvr' 1378:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1379:  " let g:vimtex quickfix mode = 1 1380:  " let g:vimtex fold enabled = 0 1381:  " let g:vimtex fold manual = 1 1382:   1383:   1384:  " let g:vimtex fold types=   1385:  "             'preamble' :   , 1386:  "             'comments' :  'enabled' : 1 , 1387:  "             'markers' :   , 1388:  "             'sections' :   1389:  "               'parse levels' : 0, 1390:  "               'sections' : [       1391:  "                 ' (add)?part', 1392:  "                 ' (chapter|addchap)', 1393:  "                 ' (section|addsec)', 1394:  "                 'subsection', 1395:  "                 'subsubsection', 1396:  "               ], 1397:  "               'parts' : [          1398:  "                 'appendix', 1399:  "                 'frontmatter', 1400:  "                 'mainmatter', 1401:  "                 'backmatter', 1402:  "               ], 1403:  "              , 1404:  "              1405:   1406:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1407:  " lua <<EOF 1408:  " require'nvim-treesitter.
configs'.
setup   1409:  "   incremental selection =   1410:  "     enable = true, 1411:  "     keymaps =   1412:  "       init selection = "gnn", 1413:  "       node incremental = "grn", 1414:  "       scope incremental = "grc", 1415:  "       node decremental = "grm", 1416:  "      , 1417:  "    , 1418:  "   1419:  " EOF 1420:  " lua <<EOF 1421:  " require('neoscroll').
setup  1422:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1423:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1424:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1425:  "     hide cursor = true,          -- Hide cursor while scrolling 1426:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1427:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1428:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1429:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1430:  "     easing function = nil,        -- Default easing function 1431:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1432:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1433:  "       1434:  " EOF 1435:  "  1436:  " " set foldlevel=20 1437:  " " set foldmethod=expr 1438:  " " set foldexpr=nvim treesitter#foldexpr() 1439:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1440:  " inoremap .
<Space> .
<CR><Esc><leader>j 1441:  " noremap S :S  1442:  " 1443:  " 1444:  " function! Sneak() 1445:  "     hi! link Sneak Normal 1446:  "     hi! link SneakScope Normal 1447:  "     execute 'normal!  <Plug>Sneak s' 1448:  "     syntax on 1449:  " endfunction 1450:    1451:  " map N <Plug>Sneak , 1452:  " map t <Plug>(smalls-excursion) 1453:  " let g:smalls auto jump=1 1454:  " let g:smalls auto jump timeout=0 1455:   1456:   1457:      " xmap t <Plug>Sneak s 1458:      " xmap T <Plug>Sneak S 1459:     " omap t <Plug>Sneak s 1460:      " omap T <Plug>Sneak S    1461:      " >Sneak S+ test 1462:   1463:      " math maps     asdf a;sldfjk test2 test3 1464:  "  1465:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1466:  " let g:vimtex view general options = '-r @line @pdf @ 1467:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1468:   1469:  " <cr> 1470:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1471:  " NB: this supports "rp that replaces the selection by the contents of @r 1472:  " Auto updating Ctags 1473:  " autocmd VimLeave * exe ":silent ! ctags -R" 1474:  "Nerd Tree 1475:  " map <leader>e :NERDTreeFind<CR> 1476:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1477:  " 1478:  "" lua << EOF 1479:  " local function setup servers() 1480:  "   require'lspinstall'.
setup() 1481:  "   local servers = require'lspinstall'.
installed servers() 1482:  "   for  , server in pairs(servers) do 1483:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1484:  "   end 1485:  " end 1486:  "  1487:  " setup servers() 1488:  "  1489:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1490:  " require'lspinstall'.
post install hook = function () 1491:  "   setup servers() -- reload installed servers 1492:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1493:  " end 1494:  " EOF 1495:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 