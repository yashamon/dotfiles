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
9' 165:   166:  set clipboard+=unnamedplus	" yank to the system register (*) by default 167:  " TAB setting  168:  set expandtab        "replace <TAB> with spaces 169:  set softtabstop=3  170:  set shiftwidth=3  171:  set termguicolors 172:   173:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 174:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 175:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 176:  set spelllang=en    177:  if exists('g:started by firenvim') 178:       autocmd VimEnter set noshowmode 179:       autocmd VimEnter set noruler 180:       autocmd VimEnter set laststatus=0 181:       autocmd VimEnter set noshowcmd 182:       autocmd VimEnter set lines=100  183:       autocmd VimEnter set columns=100 184:  else 185:    " autocmd VimEnter * TZAtaraxis 186:   endif 187:  set timeoutlen=0 188:  au VIMEnter * let g:surround 108 =   189:        'q':  " `` r''" 190:           191:  let g:tex flavor = "latex" 192:  let g:tex isk = '@,48-57,58, ,192-255'  193:  let g:tex isk +=: 194:  let g:tex conceal = "" 195:  set tags+=~/workspacemodules/tags 196:  "set tags+=~/Dropbox/workspace/tags 197:    " set wrapmargin=1 198:  " set shada="NONE"   199:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 200:  set wrap 201:  set linebreak  202:  set formatoptions+=w " set breakat=" " 203:  " set list  " list disables linebreak 204:  " set textwidth=0 205:  set wrapmargin=-1 206:  set hid 207:  set autochdir 208:  set guioptions-=r 209:  set guioptions-=l 210:  set inccommand=split 211:  set mouse= 212:  set bs=2		" allow backspacing over everything in insert mode  213:  set undofile                " Save undo's after file closes 214:  set undodir=~/.
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
<CR>h 376:  nnoremap <up> 1<C-U> 377:  imap <up> <nop> 378:  nnoremap <down> 1<C-D> 379:  imap <down> <nop> 380:  noremap <ScrollWheelUp>      <nop> 381:  noremap <S-ScrollWheelUp>    <nop> 382:  noremap <C-ScrollWheelUp>    <nop> 383:  noremap <ScrollWheelDown>    <nop> 384:  noremap <S-ScrollWheelDown>  <nop> 385:  noremap <C-ScrollWheelDown>  <nop> 386:  noremap <ScrollWheelLeft>    <nop> 387:  noremap <S-ScrollWheelLeft>  <nop> 388:  noremap <C-ScrollWheelLeft>  <nop> 389:  noremap <ScrollWheelRight>   <nop> 390:  noremap <S-ScrollWheelRight> <nop> 391:  noremap <C-ScrollWheelRight> <nop> 392:  inoremap   / 393:  inoremap /   394:   395:  " copy paste stuff  396:  "  397:  vnoremap p "0dP  398:  inoremap <C-p> <C-r>"+ 399:  " noremap D "0D:wa<cr> 400:  noremap d "0d 401:  nnoremap dd "0dd 402:  noremap c "0c 403:  noremap C " C 404:  noremap x " x 405:  " nnoremap v "+v 406:  vnoremap x "+x 407:  vnoremap d "0d 408:  vnoremap c "0c   409:  vnoremap y "+y 410:  nnoremap y "+y 411:  nnoremap p "+p 412:  nnoremap <leader>p p 413:  nnoremap <leader>q q 414:  " Softwrap  415:  nmap D "0dg  416:  nmap V vg  417:  nmap A g a  418:  map 0 g  419:  map 9 g  420:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 421:  nnoremap <c-l> :bnext<CR> 422:  nnoremap <c-h> :bprevious<CR> 423:  " tnoremap <Esc> <C- >  424:  " nnoremap < :tabp<CR> 425:  " nnoremap > :tabn<CR> 426:  " nnoremap <leader>n :tabedit  <CR> 427:  imap <M-j> <C-j> 428:  map <M-m> <cmd>HopChar1<cr>  429:  " map <S-b> ?  <CR> 430:  map <M-w> <cmd>HopChar1<cr>  431:  map <M-b> <cmd>HopChar1<cr>  432:  map q: nop 433:  map <S-C-q> <Esc>:qa!<CR> 434:  map <m-q> <esc>:wq<cr> 435:  map <m-Q> <esc>:q<cr> 436:  map <m-c> <esc>:w<CR>:close<cr> 437:  map <M-d> <Esc>:w<CR>:bdelete<CR> 438:  noremap gf gq 439:  noremap f / 440:  noremap F ? 441:  noremap # /  <CR>v?  <CR> 442:  noremap   /  <CR>hv?  <CR>l 443:  noremap @ / <CR>v? <CR> 444:  map j gj 445:  map k gk 446:  noremap <Space> .
@??? 447:  vnoremap <Space> t <cr> 448:  map K <C-u> 449:  map J <C-d> 450:  " map <C-j> zz 451:  " map <C-k> zb 452:  map <C-j> <C-e>jj 453:  map <C-k> <C-y>kk 454:  nnoremap <leader>j J 455:  nnoremap <leader>k K 456:  map ' " 457:  nnoremap <Backspace> i<Backspace><Esc> 458:  nmap <leader>c gc 459:  noremap <A-r> <C-r> 460:  nnoremap ` ~ 461:  nnoremap . 
461:++++ ` 462:  noremap <m-1> <C-o> 463:  noremap <m-2> <C-i> 464:  noremap <D-d> <C-d> 465:  map ;s <Esc>:w<CR> 466:  noremap <D-u> <C-u> 467:  noremap <A-u> <C-u> 468:  " this mapping Enter key to <C-y> to chose the current highlight item  469:  " and close the selection list, same as other IDEs.
@??? 470:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 471:  nnoremap <silent> <Leader>y :YRGetElem<CR> 472:  map ' " 473:  inoremap <D-]> <C-x><C-]> 474:  inoremap <C-]> <C-x><C-]> 475:   476:  au FileType tex,text,md nmap 0 g  477:  au FileType tex,text,md noremap 9 g  478:  " au FileType tex,text,md nnoremap dd " g dg g  479:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 480:   481:  "Neovim mappings 482:  " :tnoremap <S-h> <C- ><C-n><C-w>h 483:  " :tnoremap <S-j> <C- ><C-n><C-w>j 484:  " :tnoremap <S-k> <C- ><C-n><C-w>k 485:  " :tnoremap <S-l> <C- ><C-n><C-w>l 486:  " tnoremap <Left> :tbnext<CR> 487:  " tnoremap <Right> :tbprevious<CR> 488:  " tnoremap <Leader>e <C- ><C-n>  489:  " imap <Backspace>   490:  map t <cmd>HopChar1AC<cr> 491:  map T <cmd>HopChar1BC<cr> 492:  map <m-.
> <cmd>HopChar1<cr>.
@??? 493:  map <m-space> <cmd>HopWord<cr> 494:  " map <S-m-Space> <cmd>HopWord<cr> 495:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 496:   497:  " FZF  498:  " 499:  noremap <m-t> :BTags<cr> 500:  noremap <m-y> :Tags<cr> 501:  noremap S <Esc> :BLines<CR> 502:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 503:  " Line search mapping  504:  " function! Jumpback()  505:  "   K=bufname() 506:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 507:  " endfunction 508:  noremap <m-b> <Esc>:Buffers<CR> 509:  " noremap F <Esc>:GFiles<CR> 510:  map <A-e> :FZF ~<CR>  511:  map <m-f> :FZF ~<CR>  512:   513:  "miscellaneous 514:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 515:  nmap <leader>g :ZenMode<CR> 516:  " nmap <leader>p :Denite neoyank -default-action=append<CR> 517:   518:  " Latex stuff 519:  "  520:  noremap <leader>ss :w<cr>:source  MYVIMRC<cr>  521:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 522:  noremap <c-p> :<c-r>+<cr> 523:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 524:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 525:   526:   527:  "Functions 528:   529:  function Light() 530:  set background=light 531:  " colorscheme oceanlight  532:  colorscheme one  533:  " highlight Normal ctermfg=black 534:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 535:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 536:  endfunction    537:   538:  " function Light() 539:  " set background=light 540:  " " colorscheme oceanlight  541:  " colorscheme material  542:  " let g:material style = 'lighter'   543:  "    " highlight Normal ctermfg=black 544:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 545:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 546:  " endfunction    547:  function Bluemoon() 548:     set background=dark 549:     colorscheme blue-moon 550:     " colorscheme material   551:  endfunction 552:   553:  function Deepocean() 554:     set background=dark 555:     colorscheme material   556:     let g:material style = 'deep ocean'   557:  endfunction 558:   559:  function Palenight() 560:     set background=dark 561:     " colorscheme blue-moon 562:     colorscheme material   563:     let g:material style = 'palenight'   564:  endfunction 565:  function Lighter() 566:     set background=light 567:     " colorscheme blue-moon 568:     colorscheme material   569:     let g:material style = 'lighter'   570:  endfunction 571:   572:  function Dark() 573:     set background=dark 574:     colorscheme one   575:  endfunction 576:   577:  function! Profile() 578:  profile start profile.
log 579:  profile func * 580:  profile file * 581:  endfunction  582:   583:  function! Sentence() 584:    let g:buf = bufname() 585:    silent !sentence.
sh   586:    silent echo "Print any character" 587:    silent call getchar() 588:    e sentence   589:    " echo "Print any character" 590:    " call getchar() 591:    BLines 592:  endfunction 593:  noremap L :lua require("zen-mode").
close()<cr>:call Sentence()<cr> 594:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 595:  function! Git()  596:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add . 
596:++++ ; git commit -m -a ; git push --all origin; fi  597:  endfunction 598:   599:  function! ToggleQuickFix()  600:        if empty(filter(getwininfo(), 'v:val.
quickfix')) 601:        exec "w" 602:          echo bufname() 603:          " lua require("zen-mode").
close()  604:          echo bufname() 605:          let b:filenamedir=expand(' :p:h')   606:          echo b:filenamedir 607:          let b:filename=expand(' :t:r') 608:          let b:errors=b:filenamedir . 
608:++++ "/buildback/" . 
608:++++ b:filename .
".
log" 609:          echo b:errors 610:          exec "caddf" b:errors 611:          copen 612:          sleep 1 613:          exec "wincmd j" 614:          exec "/error" 615:      else 616:          exec "cclose" 617:          endif 618:  endfunction 619:   620:  nnoremap <leader>s :silent call ToggleQuickFix()<CR> 621:  function! ClearLatex() 622:    silent !rm .
/buildback/*  623:  endfunction  624:   625:  function! CompileLatexAndView() 626:    silent call ClearLatex() 627:    let buf = bufname() 628:    " silent te latexmk -halt-on-error -synctex=1 -file-line-error -gg    629:    silent lat -halt-on-error   630:    execute "buffer" buf 631:    call ViewPdf() 632:  endfunction 633:   634:  function! CompileLatex() 635:    silent call ClearLatex() 636:    let buf = bufname() 637:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -gg   638:    execute "buffer" buf 639:    call ViewPdf() 640:  endfunction 641:   642:  function! ViewPdf()  643:  wa 644:  silent execute "!echo " . 
644:++++ v:servername . 
644:++++ " > ~/servername.
txt" 645:  let buf = bufname() 646:  let linenumber=line(".
") 647:  let colnumber=col(".
")  648:  let b:filenamedir=expand(' :p:h')   649:  let filenametex=expand(' :p:t')  650:  let filenametexwhole=expand(' :p')  651:  let filenameroot=expand(' :t:r') 652:  " let filenamePDF=filename[:-4].
"pdf" 653:  let filenamePDF=b:filenamedir . 
653:++++ "/build/" . 
653:++++ filenameroot . 
653:++++ ".
pdf"  654:  echo filenamePDF 655:  let execstr="silent !zathura --synctex-forward " . 
655:++++ linenumber . 
655:++++ ":" . 
655:++++ colnumber . 
655:++++ ":" . 
655:++++ filenametexwhole . 
655:++++ " " . 
655:++++ filenamePDF . 
655:++++ " &>/dev/null &"  656:  echo execstr 657:  exec execstr 658:  execute "buffer" buf 659:  endfunction  660:  nmap <leader>v :call ViewPdf()<cr><cr> 661:  " nmap <leader>v :VimtexView<cr> 662:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 663:  nmap <leader>ll :call CompileLatex()<cr> 664:  nmap <leader>cl :call ClearLatex()<cr> 665:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 666:   667:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  668:  "" mathml shenanigans 669:   670:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 671:   672:   673:   674:   675:   676:   677:  "Autosave and autocommit    678:  " let g:updatetime = 10000 679:  let g:auto save = 0 680:  " .
vimrc 681:  let g:auto save events = ["CursorHold"] 682:  "au FileType vim let g:autosave = 0 683:  let g:auto save in insert mode = 0 684:  let g:auto save silent = 1 685:   686:  "Git autocommit  (private git repo) 687:  autocmd BufWritePost * call Git() 688:  lua <<EOF 689:  require'nvim-treesitter.
configs'.
setup    690:      -- 691:      highlight =   enable = true  , 692:      incremental selection =   693:      enable = true, 694:      keymaps =   695:        init selection = '<CR>', 696:        scope incremental = '<CR>', 697:        node incremental = '<TAB>', 698:        node decremental = '<S-TAB>', 699:       , 700:     , 701:      textobjects =   enable = true  , 702:      indent =   enable = true  ,  703:    704:  EOF 705:   706:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  707:   708:  " vsnip stuff  709:  " Use <Tab> and <S-Tab> to navigate through popup menu 710:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 711:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 712:   713:  " Set completeopt to have a better completion experience 714:  set completeopt=menuone,noinsert,noselect 715:   716:  " Avoid showing message extra message when using completion 717:  set shortmess+=c 718:  let g:vsnip snippet dir = '~/dotfiles/snippets'   719:   720:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 721:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 722:  "  723:  " " Expand or jump 724:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 725:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 726:   727:  " Jump forward or backward 728:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 729:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 730:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 731:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 732:   733:  " 734:  " set foldexpr=nvim treesitter#foldexpr() 735:  " 736:  lua << EOF 737:  local nvim lsp = require('lspconfig') 738:  -- Use an on attach function to only map the following keys 739:  -- after the language server attaches to the current buffer 740:  local on attach = function(client, bufnr) 741:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 742:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 743:  -- Enable completion triggered by <c-x><c-o> 744:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 745:   746:    -- Mappings.
@??? 747:    local opts =   noremap=true, silent=true   748:   749:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 750:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 751:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 752:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 753:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 754:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 755:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 756:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 757:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 758:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 759:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 760:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 761:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 762:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 763:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 764:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 765:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 766:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 767:   768:  end 769:  EOF 770:   771:  "Lsp instal  772:  lua <<EOF 773:  local lsp installer = require("nvim-lsp-installer") 774:   775:  -- Register a handler that will be called for all installed servers.
@??? 776:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 777:  lsp installer.
on server ready(function(server) 778:      local opts =    779:   780:      -- (optional) Customize the options passed to the server 781:      -- if server.
name == "tsserver" then 782:      --     opts.
root dir = function() .
.
. 
782:++++ end 783:      -- end 784:   785:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 786:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 787:      server:setup(opts) 788:  end) 789:  EOF 790:   791:  " 792:   793:   794:  nnoremap <leader>y :FZFNeoyank<cr> 795:  nnoremap <leader>Y :FZFNeoyank  P<cr> 796:  vnoremap <leader>y :FZFNeoyankSelection<cr> 797:   798:  nnoremap <leader>p :FZFNeoyank +<cr>  799:  nnoremap <leader>1 :FZFNeoyank 1<cr> 800:  nnoremap <leader>P :FZFNeoyank " P+<cr> 801:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 802:   803:   804:  " Replace the default dictionary completion with fzf-based fuzzy completion 805:   806:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   807:  " inoremap <cr> <cr> <backspace> 808:   809:  set completeopt=menu,menuone,noselect 810:   811:  lua <<EOF 812:    -- Setup cmp.
@??? 813:   814:  local has words before = function() 815:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 816:      return false 817:    end 818:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 819:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 820:  end 821:   822:  local feedkey = function(key, mode) 823:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 824:  end 825:   826:  local cmp = require('cmp') 827:  cmp.
setup   828:   snippet =   829:        expand = function(args) 830:          -- For `vsnip` user.
@??? 831:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 832:    -- .
.
. 
832:++++ Your other configuration .
.
.
@??? 833:  end, 834:   , 835:  mapping =   836:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 837:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 838:        ['<C-x>'] = cmp.
mapping.
complete(), 839:        ['<C-e>'] = cmp.
mapping.
close(), 840:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 841:  -- .
.
. 
841:++++ Your other mappings .
.
.
@??? 842:  ["<Tab>"] = cmp.
mapping(function(fallback)  843:        if vim.
fn["vsnip#expandable"]() == 1 844:          then 845:          feedkey("<Plug>(vsnip-expand)", "") 846:       elseif cmp.
visible() then 847:          cmp.
select next item() 848:        elseif has words before() then  849:          cmp.
complete() 850:        else  851:          fallback() -- The fallback function sends a already mapped key. 
851:++++ In this case, it's probably `<Tab>`.
@??? 852:        end 853:      end,   "i", "s"  ), 854:  ["<S-Tab>"] = cmp.
mapping(function() 855:        if vim.
fn.
pumvisible() == 1 then 856:          feedkey("<C-p>", "n")   857:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 858:          feedkey("<Plug>(vsnip-jump-prev)", "") 859:        end 860:      end,   "i", "s"  ), 861:  -- .
.
. 
861:++++ Your other mappings .
.
.
@??? 862:   863:   , 864:  requires =   865:        866:        'quangnguyen30192/cmp-nvim-tags', 867:        -- if you want the sources is available for some file types 868:        ft =   869:          'tex', 870:          'latex'  871:          872:        873:       , 874:  -- .
.
. 
874:++++ Your other configuration .
.
.
@??? 875:  sources =   876:        -- For vsnip user.
@??? 877:    name = 'tags', keyword length = 1000  , 878:     name = 'vsnip', keyword length = 1000  , 879:           -- For luasnip user.
@??? 880:        --   name = 'luasnip'  , 881:  -- For ultisnips user.
@??? 882:        --   name = 'ultisnips'  ,   883:       name = 'buffer', keyword length = 1000  , 884:       name = 'omni', keyword length = 4 , 885:         --   name = 'spell'  ,  886:       name = 'nvim lsp', keyword length = 4  , 887:        --  name = 'treesitter', keyword length = 4  , 888:  --  name = 'latex symbols'  , 889:   , 890:  completion =   891:      autocomplete = false  892:        893:    894:  EOF 895:   896:  "  897:  " " LSP mappings    898:  " "" LSP mappings  899:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 900:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 901:  "  902:  "  903:  lua <<EOF 904:   require('nvim comment').
setup( 905:    906:     -- Linters prefer comment and line to have a space in between markers 907:     marker padding = true, 908:     -- should comment out empty or whitespace only lines 909:     comment empty = true, 910:     -- Should key mappings be created 911:     create mappings = true, 912:     -- Normal mode mapping left hand side 913:     line mapping = "gc", 914:     -- Visual/Operator mapping left hand side 915:     operator mapping = "<leader>c", 916:     -- Hook function to call before commenting takes place 917:     --hook = nil  918:     919:   ) 920:  EOF 921:  nmap <leader>c gc 922:  " lua <<EOF 923:  " local true zen = require("true-zen") 924:  " true zen.
setup(  925:  "  	ui =   926:  "  		bottom =   927:  "  			laststatus = 0, 928:  "  			ruler = false, 929:  "  			showmode = false, 930:  "  			showcmd = false, 931:  "  			cmdheight = 1, 932:  "  		 , 933:  "  		top =   934:  "  			showtabline = 0, 935:  "  		 , 936:  "  		left =   937:  "  			number = false, 938:  "  			relativenumber = false, 939:  "  			signcolumn = "no", 940:  "  		 , 941:  "  	 , 942:  "  	modes =   943:  "  		ataraxis =   944:  "  			-- left padding = 20, 945:  "  			-- right padding = 20, 946:  "  			top padding = 0, 947:  "  			bottom padding = 0, 948:  "  			ideal writing area width =  60 , 949:  "  			auto padding = true, 950:  "  			keep default fold fillchars = true, 951:  "  			custom bg =  "none", "" , 952:  "  			bg configuration = true, 953:  "  			quit = "untoggle", 954:  "  			ignore floating windows = true, 955:  "  			affected higroups =   956:  "  				NonText = true, 957:  "  				FoldColumn = true, 958:  "  				ColorColumn = true, 959:  "  				VertSplit = true, 960:  "  				StatusLine = true, 961:  "  				StatusLineNC = true, 962:  "  				SignColumn = true, 963:  "  			 , 964:  "  		 , 965:  "  		focus =   966:  "  			margin of error = 5, 967:  "  			focus method = "experimental" 968:  "  		 , 969:  "  	 , 970:  "  	integrations =   971:  "  		vim gitgutter = false, 972:  "  		galaxyline = false, 973:  "  		tmux = false, 974:  "  		gitsigns = false, 975:  "  		nvim bufferline = false, 976:  "  		limelight = false, 977:  "  		twilight = false, 978:  "  		vim airline = false, 979:  "  		vim powerline = false, 980:  "  		vim signify = false, 981:  "  		express line = false, 982:  "  		lualine = false, 983:  "  		lightline = false, 984:  "  		feline = false, 985:  "  	 , 986:  "  	misc =   987:  "  		on off commands = true, 988:  "  		ui elements commands = false, 989:  "  		cursor by mode = false, 990:  "  	  991:  "   ) 992:  " EOF 993:  lua <<EOF 994:  require('feline').
setup(  995:      preset = 'noicon' 996:       ) 997:  EOF 998:  "  999:  "  1000:  "  1001:  " " lua <<EOF 1002:  " " require('lualine').
setup  1003:  " " options =  disabled filetypes =  'txt', 'text'   1004:  " "   1005:  " " EOF 1006:  lua << EOF 1007:    require("zen-mode").
setup   1008:    window =   1009:      backdrop = 1, -- shade the backdrop of the Zen window. 
1009:++++ Set to 1 to keep the same as Normal 1010:      -- height and width can be: 1011:      -- * an absolute number of cells when > 1 1012:      -- * a percentage of the width / height of the editor when <= 1 1013:      -- * a function that returns the width or the height 1014:      width = .
66, -- width of the Zen window 1015:      height = 1, -- height of the Zen window 1016:      -- by default, no options are changed for the Zen window 1017:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 1018:      options =   1019:        -- signcolumn = "no", -- disable signcolumn 1020:        -- number = false, -- disable number column 1021:        -- relativenumber = false, -- disable relative numbers 1022:        -- cursorline = false, -- disable cursorline 1023:        -- cursorcolumn = false, -- disable cursor column 1024:        -- foldcolumn = "0", -- disable fold column 1025:        -- list = false, -- disable whitespace characters 1026:       , 1027:     , 1028:    plugins =   1029:      -- disable some global vim options (vim.
o.
.
.
) 1030:      -- comment the lines to not apply the options 1031:      options =   1032:        enabled = true, 1033:        ruler = false, -- disables the ruler text in the cmd line area 1034:        showcmd = false, -- disables the command in the last line of the screen 1035:       , 1036:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1037:      gitsigns =   enabled = false  , -- disables git signs 1038:      tmux =   enabled = false  , -- disables the tmux statusline 1039:      -- this will change the font size on kitty when in zen mode 1040:      -- to make this work, you need to set the following kitty options: 1041:      -- - allow remote control socket-only 1042:      -- - listen on unix:/tmp/kitty 1043:      kitty =   1044:        enabled = false, 1045:        font = "+4", -- font size increment 1046:       , 1047:     , 1048:    -- callback where you can add custom code when the Zen window opens 1049:    on open = function(win) 1050:    end, 1051:    -- callback where you can add custom code when the Zen window closes 1052:    on close = function() 1053:    end, 1054:    1055:  EOF 1056:  " lua <<EOF 1057:  " require('telescope').
setup  1058:  "   defaults =   1059:  "     -- Default configuration for telescope goes here: 1060:  "     -- config key = value, 1061:  "     mappings =   1062:  "       i =   1063:  "         -- map actions.
which key to <C-h> (default: <C-/>) 1064:  "         -- actions.
which key shows the mappings for your picker, 1065:  "         -- e.
g. 
1065:++++ git  create, delete, .
.
.  
branch for the git branches picker 1066:  "         ["<C-h>"] = "which key" 1067:  "         1068:  "       1069:  "    , 1070:  "   pickers =   1071:  "     -- Default configuration for builtin pickers goes here: 1072:  "     -- picker name =   1073:  "     --   picker config key = value, 1074:  "     --   .
.
.
@??? 1075:  "     --   1076:  "     -- Now the picker config key will be applied every time you call this 1077:  "     -- builtin picker  1078:  "    , 1079:  "   extensions =   1080:  "     -- Your extension configuration goes here: 1081:  "     -- extension name =   1082:  "     --   extension config key = value, 1083:  "     --   1084:  "     -- please take a look at the readme of the extension you want to configure 1085:  "     1086:  "    1087:  " EOF 1088:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1089:  lua <<EOF 1090:  require('fm-nvim').
setup  1091:  	config = 1092:  	  1093:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1094:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1095:  		height   = .
9, 1096:  		width    = .
9, 1097:  	  1098:    1099:  EOF 1100:   1101:  " lua <<EOF 1102:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1103:  " require("prosesitter"):setup(  1104:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1104:++++ "/prosesitter/vale", 1105:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1105:++++ "/prosesitter/vale cfg.
ini", 1106:  " 	--optional extra queries overrides existing queries 1107:  " 	queries =    1108:  " 		-- see the piece on adding queries on how to use this  1109:  " 		-- (not needed if using an out of the box supported language 1110:  " 		py =    1111:  " 			strings = "[(string) ] @capture", 1112:  " 			comments = "[(comment)+ ] @capture", 1113:  " 		 , 1114:  " 	 ,  1115:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1116:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1117:  " 	-- weather to lint strings, comments or both for a language 1118:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1119:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1120:  " 	auto enable = false, -- do not start linting files on open (default = true) 1121:  " 	default cmds = false,  -- do not add commands (default = true) 1122:  "  ) 1123:  " EOF  1124:  " 1125:  " 1126:  lua <<EOF 1127:  require('spellsitter').
setup   1128:    hl = 'SpellBad',  1129:    captures =   ,  -- set to    to spellcheck everything 1130:   1131:    -- Spellchecker to use. 
1131:++++ values: 1132:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1133:    -- * ffi: built-in spell checker using the FFI to access the 1134:    --   internal spell check() function 1135:  spellchecker = 'vimfn', 1136:    1137:  EOF 1138:  let g:firenvim config =    1139:        'globalSettings':   1140:            'alt': 'all', 1141:          , 1142:        'localSettings':   1143:            '.
*':   1144:                'cmdline': 'neovim', 1145:                'content': 'text', 1146:                'priority': 0, 1147:                'selector': 'textarea', 1148:                'takeover': 'never', 1149:             , 1150:          1151:      1152:  lua << EOF 1153:  require('fzf-lua').
setup  1154:  -- .
.
.
@??? 1155:    1156:  EOF 1157:  " lua << EOF 1158:  " require("stabilize").
setup( 1159:  "   1160:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1161:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1162:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1163:  " --		filetype =   "help", "list", "Trouble"  , 1164:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1165:  " --	  1166:  "   1167:  " ) 1168:  " EOF 1169:  " lua <<EOF 1170:  " require('dd').
setup() 1171:  " EOF 1172:  " lua << EOF 1173:  " local opts =   1174:  "   log level = 'info', 1175:  "   auto session enable last session = false, 1176:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1177:  "   auto session enabled = false, 1178:  "   auto save enabled = nil, 1179:  "   auto restore enabled = nil, 1180:  "   auto session suppress dirs = nil 1181:  "   1182:  " require('auto-session').
setup(opts) 1183:  " EOF 1184:   1185:  " lua << EOF 1186:  " if exists('g:started by firenvim') 1187:  "   ZenMode 1188:  " else 1189:  "   set laststatus=2 1190:  " endif 1191:   1192:  " lua <<EOF 1193:  " require('neoclip').
setup(  1194:  "       history = 1000, 1195:  "       enable persistant history = false, 1196:  "       db path = vim.
fn.
stdpath("data") .
. 
1196:++++ "/databases/neoclip.
sqlite3", 1197:  "       filter = nil, 1198:  "       preview = true, 1199:  "       default register = '"', 1200:  "       content spec column = false, 1201:  "       on paste =   1202:  "         set reg = false, 1203:  "        , 1204:  "       keys =   1205:  "         i =   1206:  "           select = '<cr>', 1207:  "           paste = '<c-p>', 1208:  "           paste behind = '<c-k>', 1209:  "           custom =   , 1210:  "          , 1211:  "         n =   1212:  "           select = '<cr>', 1213:  "           paste = 'p', 1214:  "           paste behind = 'P', 1215:  "           custom =   , 1216:  "          , 1217:  "        , 1218:  "     ) 1219:  " EOF 1220:  " lua <<EOF 1221:  " local saga = require 'lspsaga'  1222:  " saga.
init lsp saga()  1223:  "   1224:  " EOF 1225:   1226:  "au FileType tex autocmd User SneakLeave set syntax=tex 1227:  "au FileType tex autocmd User SneakEnter set syntax=text 1228:  " 1229:  " 1230:  " 1231:   1232:  " 1233:  " 'tCommen20 1234:  " let g:tcommentMapLeaderOp1=';'  1235:  " "map <leader>c <Leader>    1236:  "" function! RestoreRegister() 1237:  "   let @" = s:restore reg 1238:  "   return '' 1239:  " endfunction 1240:  " function! s:Repl() 1241:  "     let s:restore reg = @" 1242:  "     return "p@=RestoreRegister() <cr>" 1243:  " endfunction 1244:  " 1245:  " " NB: this supports "rp that replaces the selection by the contents of @r 1246:  " vnoremap <silent> <expr> p <sid>Repl() 1247:   1248:  " " Change Color when entering 1249:  " Insert Mode augroup CursorLine 1250:  "    au! 1251:  "  if has("gui running") 1252:  "  else 1253:  "      au InsertEnter * setlocal cursorline 1254:  "        au InsertLeave * setlocal nocursorline 1255:  "     endif 1256:  "        augroup END 1257:  " function! DelTagOfFile(file) 1258:  "   let fullpath = a:file 1259:  "   let cwd = getcwd() 1260:  "   let tagfilename = cwd . 
1260:++++ "/tags" 1261:  "   let f = substitute(fullpath, cwd . 
1261:++++ "/", "", "") 1262:  "   let f = escape(f, '.
/') 1263:  "   let cmd = 'sed -i "/' . 
1263:++++ f . 
1263:++++ '/d" "' . 
1263:++++ tagfilename . 
1263:++++ '"' 1264:  "   let resp = system(cmd) 1265:  " endfunction 1266:  " function! Break() 1267:  "  let n=130-virtcol('.
') 1268:  "  <Esc>ni <Esc><Esc> 1269:  " endfunction 1270:  " function Gitview() 1271:  "    cd /root/web2 ; git add . 
1271:++++ ; git commit -m -a ; git push origin gh-pages 1272:  " endfunction 1273:  " fuzzy search 1274:  " function! s:config fuzzyall(.
.
.
) abort 1275:  "   return extend(copy(  1276:  "       'converters': [ 1277:  "         incsearch#config#fuzzy#converter(), 1278:  "         incsearch#config#fuzzyspell#converter() 1279:  "       ], 1280:  "      ), get(a:, 1,    1281:  "   )) 1282:  " endfunction 1283:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1284:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1285:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1286:  " map f <Plug>(incsearch-fuzzyspell-/) 1287:  " map F <Plug>(incsearch-fuzzyspell-?) 1288:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1289:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1290:  " let g:deoplete#enable at startup = 1 1291:  " map <silent> <leader>g :silent call Gitview() 1292:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1293:  "Load some useful plugins with vundle  1294:  " 1295:  "asdf asldfkj 1296:  " hi! link Sneak Normal 1297:  " hi! link SneakScope Normal   test test2 test3 1298:   1299:  " command! -bang -nargs=* Rg 1300:  "     call fzf#vim#grep( 1301:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1302:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1303:  " 1304:  "" au GUIEnter * set fullscreen 1305:  " if has("gui running") 1306:    " set fuoptions=maxvert,maxhorz 1307:    " au GUIEnter * set fullscreen 1308:     " set foldcolumn=10 1309:     " set formatoptions=ant 1310:  " set wrapmargin=0 1311:  " set nohlsearch 1312:  " set tags= ~/workspacemodules/tags 1313:  " highlight SignColumn guibg=bg 1314:  "       endif     1315:  " if has("autocmd") 1316:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1317:  " endif 1318:    " autocmd BufWinLeave *.
* mkview 1319:    " autocmd BufWinEnter *.
* silent loadview 1320:     " set foldcolumn=2 1321:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1322:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1323:  " inoremap <cr> <esc>:w<cr>i<cr>  1324:  "" set tm=500 1325:  " set macmeta 1326:  " auto reload vimrc when editing it 1327:  " let g:github function style = "italic" 1328:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1329:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1330:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1331:  " Load the colorscheme 1332:  " colorscheme github dark 1333:  "" terminal color settings  1334:  " Example config in VimScript 1335:  " let g:github function style = "italic" 1336:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1337:   1338:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1339:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1340:  " Load the colorscheme 1341:  " colorscheme github dark  1342:  " set background=dark  1343:  " if has("gui running")	" GUI color and font settings 1344:  "   set guifont=Fira  Code:h22 1345:  "   " colorscheme gruvbox  1346:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1347:  " else 1348:  "  colorscheme one 1349:  " colorscheme material   1350:  " let g:material style = 'palenight'   1351:  " let g:material style = 'lighter' 1352:  " highlight Normal ctermbg=none  1353:  "   " let g:vimtex quickfix method='pplatex'  1354:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1355:  "    function! UpdateSkim(status) 1356:  "      if !a:status | return | endif 1357:  " 1358:  "      let l:out = b:vimtex.
out() 1359:  "      let l:tex = expand(' :p') 1360:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1361:  "      if !empty(system('pgrep Skim')) 1362:  "        call extend(l:cmd, ['-g']) 1363:  "      endif 1364:  "      if has('nvim') 1365:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1366:  "      elseif has('job') 1367:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1368:  "      else 1369:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1370:  "      endif 1371:  "    endfunction 1372:  " let g:vimtex latexmk build dir = '.
/build' 1373:  "   'build dir' : '.
/build', 1374:  "  1375:  "     let g:vimtex compiler latexmk =   1376:  "       'background' : 0, 1377:  "           'callback' : 1, 1378:  "       'continuous' : 1, 1379:  "       'options' : [ 1380:  "         '-pdf', 1381:  "         '-verbose', 1382:  "         '-file-line-error', 1383:  "         '-synctex=1', 1384:  "         '-interaction=nonstopmode', 1385:  "       ], 1386:  "        1387:  " let g:vimtex compiler progname = 'nvr' 1388:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1389:  " let g:vimtex quickfix mode = 1 1390:  " let g:vimtex fold enabled = 0 1391:  " let g:vimtex fold manual = 1 1392:   1393:   1394:  " let g:vimtex fold types=   1395:  "             'preamble' :   , 1396:  "             'comments' :  'enabled' : 1 , 1397:  "             'markers' :   , 1398:  "             'sections' :   1399:  "               'parse levels' : 0, 1400:  "               'sections' : [       1401:  "                 ' (add)?part', 1402:  "                 ' (chapter|addchap)', 1403:  "                 ' (section|addsec)', 1404:  "                 'subsection', 1405:  "                 'subsubsection', 1406:  "               ], 1407:  "               'parts' : [          1408:  "                 'appendix', 1409:  "                 'frontmatter', 1410:  "                 'mainmatter', 1411:  "                 'backmatter', 1412:  "               ], 1413:  "              , 1414:  "              1415:   1416:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1417:  " lua <<EOF 1418:  " require'nvim-treesitter.
configs'.
setup   1419:  "   incremental selection =   1420:  "     enable = true, 1421:  "     keymaps =   1422:  "       init selection = "gnn", 1423:  "       node incremental = "grn", 1424:  "       scope incremental = "grc", 1425:  "       node decremental = "grm", 1426:  "      , 1427:  "    , 1428:  "   1429:  " EOF 1430:  " lua <<EOF 1431:  " require('neoscroll').
setup  1432:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1433:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1434:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1435:  "     hide cursor = true,          -- Hide cursor while scrolling 1436:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1437:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1438:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1439:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1440:  "     easing function = nil,        -- Default easing function 1441:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1442:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1443:  "       1444:  " EOF 1445:  "  1446:  " " set foldlevel=20 1447:  " " set foldmethod=expr 1448:  " " set foldexpr=nvim treesitter#foldexpr() 1449:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1450:  " inoremap .
<Space> .
<CR><Esc><leader>j 1451:  " noremap S :S  1452:  " 1453:  " 1454:  " function! Sneak() 1455:  "     hi! link Sneak Normal 1456:  "     hi! link SneakScope Normal 1457:  "     execute 'normal!  <Plug>Sneak s' 1458:  "     syntax on 1459:  " endfunction 1460:    1461:  " map N <Plug>Sneak , 1462:  " map t <Plug>(smalls-excursion) 1463:  " let g:smalls auto jump=1 1464:  " let g:smalls auto jump timeout=0 1465:   1466:   1467:      " xmap t <Plug>Sneak s 1468:      " xmap T <Plug>Sneak S 1469:     " omap t <Plug>Sneak s 1470:      " omap T <Plug>Sneak S    1471:      " >Sneak S+ test 1472:   1473:      " math maps     asdf a;sldfjk test2 test3 1474:  "  1475:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1476:  " let g:vimtex view general options = '-r @line @pdf @ 1477:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1478:   1479:  " <cr> 1480:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1481:  " NB: this supports "rp that replaces the selection by the contents of @r 1482:  " Auto updating Ctags 1483:  " autocmd VimLeave * exe ":silent ! ctags -R" 1484:  "Nerd Tree 1485:  " map <leader>e :NERDTreeFind<CR> 1486:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1487:  " 1488:  "" lua << EOF 1489:  " local function setup servers() 1490:  "   require'lspinstall'.
setup() 1491:  "   local servers = require'lspinstall'.
installed servers() 1492:  "   for  , server in pairs(servers) do 1493:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1494:  "   end 1495:  " end 1496:  "  1497:  " setup servers() 1498:  "  1499:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1500:  " require'lspinstall'.
post install hook = function () 1501:  "   setup servers() -- reload installed servers 1502:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1503:  " end 1504:  " EOF 1505:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 