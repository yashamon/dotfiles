1:  call plug#begin('~/.
vim/plugged')    2:  Plug 'folke/zen-mode.
nvim' 3:  " Plug 'reedes/vim-pencil'  4:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   5:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    6:  Plug 'lewis6991/spellsitter.
nvim' 7:  Plug 'radenling/vim-dispatch-neovim'   8:  Plug 'tpope/vim-dispatch' 9:  Plug 'sheerun/vim-polyglot'  10:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   11:  Plug 'vijaymarupudi/nvim-fzf' 12:  Plug 'kyazdani42/nvim-web-devicons' 13:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   14:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   15:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   16:  Plug 'phaazon/hop.
nvim'     17:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   18:  " Plug 'luukvbaal/stabilize.
nvim'  19:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     20:  Plug 'is0n/fm-nvim' 21:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   22:  Plug 'nvim-lua/plenary.
nvim' 23:  Plug 'nvim-telescope/telescope.
nvim', 24:  " Plug 'nvim-treesitter/playground' 25:  Plug 'famiu/feline.
nvim' 26:  " Plug 'hoob3rt/lualine.
nvim', 27:  " Plug 'karb94/neoscroll.
nvim' 28:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   29:  " Plug 'f3fora/cmp-spell'     30:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   31:  "Plug 'vim-commentary' 32:  "Plug 'b3nj5m1n/kommentary' 33:  " Plug 'simnalamburt/vim-mundo' 34:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    35:  " Plug 'glepnir/lspsaga.
nvim' 36:  " If you are using Vim-Plug 37:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    38:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    39:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   40:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   41:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    42:  Plug 'hrsh7th/vim-vsnip' 43:  Plug 'hrsh7th/vim-vsnip-integ' 44:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    45:  " Plug 'ray-x/cmp-treesitter' 46:  " For luasnip user.
@??? 47:  Plug 'L3MON4D3/LuaSnip' 48:  " Plug 'saadparwaiz1/cmp luasnip' 49:  "Plug 'steelsojka/completion-buffers' 50:  Plug 'voldikss/vim-floaterm' 51:  " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   52:  "Plug 'pope/vim-obsession' 53:  "Plug 'xolox/vim-easytags' 54:  " Plug 'nvim-lua/plenary.
nvim' 55:  " Plug 'windwp/nvim-spectre' 56:  " Plug 'xolox/vim-misc' 57:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   58:  Plug 'kevinhwang91/nvim-bqf' 59:  Plug 'justinhoward/fzf-neoyank'  60:  " Plug 'svermeulen/vim-cutlass' 61:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 62:  " Plug 'kyazdani42/nvim-tree.
lua',  63:  "Plug 'nvim-lua/completion-nvim' 64:  Plug 'hrsh7th/vim-vsnip-integ' 65:  Plug 'neovim/nvim-lspconfig' 66:  Plug 'nvim-lua/diagnostic-nvim' 67:  " Plug 'rafamadriz/friendly-snippets'   68:  " Make sure you use single quotes 69:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 70:  " Plug 'junegunn/vim-easy-align' 71:  " Any valid git URL is allowed 72:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 73:  " Group dependencies, vim-snippets depends on ultisnips  74:   " Plug 'tpope/vim-surround' 75:  " Plug 'neovim/node-host' 76:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   77:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    78:  Plug 'rakr/vim-one'  79:  " Plug 'cyansprite/Extract' 80:  Plug 'gioele/vim-autoswap' 81:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   82:  " Plug 't9md/vim-smalls' 83:  Plug 'skywind3000/asyncrun.
vim' 84:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   85:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 86:  " please comment next line 87:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     88:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    89:  " Plug 'rmagatti/auto-session',    'branch': 'main'  90:  " Plug 'justinmk/vim-sneak' 91:  Plug 'Shougo/neoyank.
vim'  92:  if has('nvim') 93:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   94:   else 95:     Plug 'Shougo/denite.
nvim' 96:     Plug 'roxma/nvim-yarp' 97:     Plug 'roxma/vim-hug-neovim-rpc' 98:   endif 99:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 100:  " Plug 'tpope/vim-fugitive' 101:  Plug 'eugen0329/vim-esearch' 102:  Plug 'haya14busa/incsearch.
vim' 103:  Plug 'haya14busa/incsearch-fuzzy.
vim' 104:  Plug 'Raimondi/vim search objects' 105:  " Plug 'terryma/vim-multiple-cursors' 106:  " " On-demand loading 107:  " Plug 'junegunn/goyo.
vim' 108:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   109:  "  Plug 'morhetz/gruvbox' 110:  Plug 'sainnhe/gruvbox-material' 111:  " Plug 'vim-pandoc/vim-pandoc' 112:  " Plug 'vim-pandoc/vim-pandoc-syntax'  113:  " Plugin outside ~/.
vim/plugged with post-update hook 114:  Plug 'junegunn/fzf',   'do': '.
/install --all'   115:  Plug 'junegunn/fzf.
vim' 116:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   117:   '  118:  Plug 'lifepillar/vim-solarized8' 119:  Plug 'vim-scripts/AutoTag' 120:  Plug 'vim-scripts/vim-auto-save' 121:  " Plug 'vim-pandoc/vim-pandoc' 122:   123:  " Plug 'yashamon/vim-snippets' 124:   125:  " Plug 'lervag/vimtex' 126:  " colorschemes 127:  "  128:  Plug 'kyazdani42/blue-moon'   129:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   130:   131:  Plug 'reedes/vim-colors-pencil' 132:   133:  Plug 'vim-scripts/oceanlight' 134:   135:  Plug 'gosukiwi/vim-atom-dark' 136:   137:  Plug 'dracula/vim' 138:   139:  " Unmanaged plugin (manually installed and updated) 140:  " Plug '~/my-prototype-plugin' 141:  " Add plugins to &runtimepath 142:  call plug#end()  143:   144:  "Neovide  145:  " 146:  " let g:neovide maximized=v:true  147:  " let g:neovide fullscreen=v:true 148:  let g:neovide transparency=0.
15 149:   150:  "General Settings     151:  set title  152:  " set titlestring 153:  " set noshowmode 154:  " set noruler        155:  " set laststatus=1  156:  set noshowcmd    157:  set noshowmatch   158:  set wrap   159:  set pb=10   160:  set winbl=10 161:  set switchbuf=newtab 162:  " let g:python3 host prog='/usr/bin/python3.
9' 163:  " let g:python3 host prog='/usr/bin/python3.
9' 164:   165:  set clipboard+=unnamedplus	" yank to the system register (*) by default 166:  " TAB setting  167:  set expandtab        "replace <TAB> with spaces 168:  set softtabstop=3  169:  set shiftwidth=3  170:  set termguicolors 171:   172:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 173:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 174:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 175:  set spelllang=en    176:  if exists('g:started by firenvim') 177:       autocmd VimEnter set noshowmode 178:       autocmd VimEnter set noruler 179:       autocmd VimEnter set laststatus=0 180:       autocmd VimEnter set noshowcmd 181:       autocmd VimEnter set lines=100  182:       autocmd VimEnter set columns=100 183:  else 184:    " autocmd VimEnter * TZAtaraxis 185:   endif 186:  set timeoutlen=0 187:  au VIMEnter * let g:surround 108 =   188:        'q':  " `` r''" 189:           190:  let g:tex flavor = "latex" 191:  let g:tex isk = '@,48-57,58, ,192-255' 192:  let g:tex conceal = "" 193:  set tags+=~/workspacemodules/tags 194:  "set tags+=~/Dropbox/workspace/tags 195:  set formatoptions=nt 196:    " set wrapmargin=1 197:  " set shada="NONE"   198:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 199:  set wrap 200:  set linebreak  201:  set formatoptions+=w " set breakat=" " 202:  " set list  " list disables linebreak 203:  set textwidth=0 204:  set wrapmargin=-1 205:  set hid 206:  set autochdir 207:  set guioptions-=r 208:  set guioptions-=l 209:  set inccommand=split 210:  set mouse= 211:  set bs=2		" allow backspacing over everything in insert mode  212:  set undofile                " Save undo's after file closes 213:  set undodir=undo " where to save undo histories 214:  set undolevels=1000000         " How many undos 215:  set undoreload=10000		 216:  set ruler		" show the cursor position all the time 217:  set autoread		" auto read when file is changed from outside 218:  set nohlsearch 219:  " set noswapfile 220:  " set showmatch		" Cursor shows matching ) and   221:  set nocursorline 222:  set showmode		" Show current mode 223:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 224:  set wildmenu            " wild char completion menu 225:  let maplocalleader = "  " 226:  " ignore these files while expanding wild chars 227:  set wildignore=*.
o,*.
class,*.
pyc 228:  set incsearch		" incremental search 229:  set nobackup		" no *~ backup files 230:  set ignorecase		" ignore case when searching 231:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 232:  set smarttab		" insert tabs on the start of a line according to context 233:   234:  " disable sound on errors 235:  set noerrorbells 236:  " set novisualbell  237:  set guifont=Fira  Code  Light:h20 238:   colorscheme blue-moon 239:  " colorscheme material   240:  " let g:material style = 'palenight'   241:  " let g:material style = 'lighter' 242:  " highlight Normal ctermbg=none 243:  set tm=1000 244:  " set macreta  245:  hi clear SpellBad 246:  hi SpellBad cterm=underline 247:  " Set style for gVim 248:  hi SpellBad gui=underline 249:  " 250:  "Autocommands, au 251:  au FileType Makefile set noexpandtab 252:  au FileType tex,text set spelllang=en 253:  au FileType tex,text,md set spell    254:  function Reset() 255:  TZAtaraxisOff  256:  TZAtaraxisOn 257:  endfunction    258:  " au FocusLost call TZAtaraxisOff  259:  " au FocusGained call TZAtaraxisOn  260:   261:  " au FileType vim,md set list 262:  " au FileType vim,md colorscheme one 263:   264:  " au FileType tex,text,md syntax sync fromstart  265:  "  266:  " au FileType tex,text,md silent execute "!echo " . 
266:++++ v:servername . 
266:++++ " > ~/servername.
txt"     267:  au FileType * silent execute "!echo " . 
267:++++ v:servername . 
267:++++ " > ~/servername.
txt" 268:  au UIEnter silent execute "!echo " . 
268:++++ v:servername . 
268:++++ " > ~/servername.
txt" 269:  au FileType tex,text,md hi SpellBad cterm=undercurl 270:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 271:  au Filetype tex,text,md set tw=50 272:   273:  " au FileType tex set background=dark  274:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  275:  au TextYankPost * call neoyank# append()  276:   277:  set expandtab        "replace <TAB> with spaces 278:  set softtabstop=3  279:  set shiftwidth=3  280:   281:  "---------------------------------------------------------------------------  282:  " USEFUL SHORTCUTS 283:  "---------------------------------------------------------------------------  284:  " set leader to ;  285:  let mapleader=';' 286:  let g:mapleader=';' 287:   288:  " open the error console 289:  " move to next error 290:   291:  " Bash like keys for the command line 292:  cnoremap <C-A>      <Home> 293:  cnoremap <C-E>      <End> 294:  cnoremap <C-K>      <C-U> 295:   296:  " ,p toggles paste mode 297:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 298:   299:  " allow multiple indentation/deindentation in visual mode 300:  vnoremap < <gv 301:  vnoremap > >gv 302:   303:  " :cd. 
303:++++ change working directory to that of the current file 304:  cmap cd. 
304:++++ lcd  :p:h 305:   306:   307:  " Enable omni completion. 
307:++++ (Ctrl-X Ctrl-O) 308:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 309:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 310:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 311:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 312:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 313:  autocmd FileType c set omnifunc=ccomplete#Complete 314:  autocmd FileType java set omnifunc=javacomplete#Complete  315:  autocmd FileType tex set omnifunc=latex#Complete 316:  autocmd Filetype tex setlocal fo=nt 317:  autocmd Filetype tex setlocal wrapmargin=0 318:  " use syntax complete if nothing else available 319:  if has("autocmd") && exists("+omnifunc") 320:    autocmd Filetype * 321:                 	if &omnifunc == "" | 322:                 		setlocal omnifunc=syntaxcomplete#Complete | 323:                 	endif 324:  endif 325:   326:  set cot-=preview "disable doc preview in omnicomplete 327:   328:  " make CSS omnicompletion work for SASS and SCSS 329:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 330:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 331:   332:  "---------------------------------------------------------------------------  333:  " ENCODING SETTINGS 334:  "---------------------------------------------------------------------------  335:  set encoding=utf-8                                   336:  set termencoding=utf-8 337:  set fileencoding=utf-8 338:   339:  "maps remaps mappings   340:  " 341:  " 342:  " terminal mappings  343:  "  344:  tnoremap <A-Esc> <C- ><C-n> 345:  nmap <A-S-t> :te<cr> 346:   vnoremap <Leader>U ""y: s/<C-r>" 347:  noremap <leader>r :e<cr> 348:  noremap <leader>hh :set tw=50<cr> 349:  noremap <leader>w :set tw=0<cr>  350:  map q :q<cr> 351:  noremap <leader>q q 352:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 353:  nnoremap <leader>rr :source  MYVIMRC<CR> 354:  "nnoremap <leader>e :NERDTreeFind<CR> 355:  nnoremap <leader>e :Lf<cr> 356:  nnoremap <leader>t :FloatermToggle<cr> 357:  nnoremap <c-,> :cprevious<cr> 358:  nnoremap <c-.
> :cnext<cr>  359:  inoremap <cr> <cr> <backspace> 360:  vnoremap <m-s> :s///gc<left><left><left><left> 361:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 362:  nnoremap <m-s> : s///gc<left><left><left><left> 363:  vmap <M-.
> t.
<CR>h 364:  nmap <M-.
> t.
<CR>h 365:  nnoremap <up> 1<C-U> 366:  imap <up> <nop> 367:  nnoremap <down> 1<C-D> 368:  imap <down> <nop> 369:  noremap <ScrollWheelUp>      <nop> 370:  noremap <S-ScrollWheelUp>    <nop> 371:  noremap <C-ScrollWheelUp>    <nop> 372:  noremap <ScrollWheelDown>    <nop> 373:  noremap <S-ScrollWheelDown>  <nop> 374:  noremap <C-ScrollWheelDown>  <nop> 375:  noremap <ScrollWheelLeft>    <nop> 376:  noremap <S-ScrollWheelLeft>  <nop> 377:  noremap <C-ScrollWheelLeft>  <nop> 378:  noremap <ScrollWheelRight>   <nop> 379:  noremap <S-ScrollWheelRight> <nop> 380:  noremap <C-ScrollWheelRight> <nop> 381:  inoremap   / 382:  inoremap /   383:   384:  " copy paste stuff  385:  "  386:  vnoremap p "0dP 387:  " noremap D "0D:wa<cr> 388:  noremap d "0d 389:  nnoremap dd "0dd 390:  noremap c "0c 391:  noremap C " C 392:  noremap x " x 393:  " nnoremap v "+v 394:  vnoremap x "+x 395:  vnoremap d "0d 396:  vnoremap c "0d 397:  vnoremap y "+y 398:  nnoremap y "+y 399:  nnoremap p "+p 400:  nnoremap <leader>p p 401:  nnoremap <leader>q q 402:  " Softwrap  403:  nmap D "0dg  404:  nmap V vg  405:  nmap A g a  406:  map 0 g  407:  map 9 g  408:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 409:  nnoremap <c-l> :bnext<CR> 410:  nnoremap <c-h> :bprevious<CR> 411:  " tnoremap <Esc> <C- >  412:  " nnoremap < :tabp<CR> 413:  " nnoremap > :tabn<CR> 414:  " nnoremap <leader>n :tabedit  <CR> 415:  imap <M-j> <C-j> 416:  map <M-m> <cmd>HopChar1<cr>  417:  " map <S-b> ?  <CR> 418:  map <M-w> <cmd>HopChar1<cr>  419:  map <M-b> <cmd>HopChar1<cr>  420:  map q: nop 421:  map <S-C-q> <Esc>:qa!<CR> 422:  map <m-q> <esc>:wq<cr> 423:  map <m-Q> <esc>:q<cr> 424:  map <m-c> <esc>:close<cr> 425:  map <M-d> <Esc>:bdelete<CR> 426:  noremap gf gq 427:  noremap f / 428:  noremap F ? 429:  noremap # /  <CR>v?  <CR> 430:  noremap   /  <CR>hv?  <CR>l 431:  noremap @ / <CR>v? <CR> 432:  map j gj 433:  map k gk 434:  noremap <Space> .
@??? 435:  vnoremap <Space> t <cr> 436:  map K <C-u> 437:  map J <C-d> 438:  " map <C-j> zz 439:  " map <C-k> zb 440:  map <C-j> <C-e>jj 441:  map <C-k> <C-y>kk 442:  nnoremap <leader>j J 443:  nnoremap <leader>k K 444:  map ' " 445:  nnoremap <Backspace> i<Backspace><Esc> 446:  nmap <leader>c gc 447:  noremap <A-r> <C-r> 448:  nnoremap ` ~ 449:  nnoremap . 
449:++++ ` 450:  noremap <m-1> <C-o> 451:  noremap <m-2> <C-i> 452:  noremap <D-d> <C-d> 453:  map ;s <Esc>:w<CR> 454:  noremap <D-u> <C-u> 455:  noremap <A-u> <C-u> 456:  " this mapping Enter key to <C-y> to chose the current highlight item  457:  " and close the selection list, same as other IDEs.
@??? 458:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 459:  nnoremap <silent> <Leader>y :YRGetElem<CR> 460:  map ' " 461:  inoremap <D-]> <C-x><C-]> 462:  inoremap <C-]> <C-x><C-]> 463:   464:  au FileType tex,text,md nmap 0 g  465:  au FileType tex,text,md noremap 9 g  466:  " au FileType tex,text,md nnoremap dd " g dg g  467:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 468:   469:  "Neovim mappings 470:  " :tnoremap <S-h> <C- ><C-n><C-w>h 471:  " :tnoremap <S-j> <C- ><C-n><C-w>j 472:  " :tnoremap <S-k> <C- ><C-n><C-w>k 473:  " :tnoremap <S-l> <C- ><C-n><C-w>l 474:  " tnoremap <Left> :tbnext<CR> 475:  " tnoremap <Right> :tbprevious<CR> 476:  " tnoremap <Leader>e <C- ><C-n>  477:  " imap <Backspace>   478:  map t <cmd>HopChar1AC<cr> 479:  map T <cmd>HopChar1BC<cr> 480:  map <m-.
> <cmd>HopChar1<cr>.
@??? 481:  map <m-space> <cmd>HopWord<cr> 482:  " map <S-m-Space> <cmd>HopWord<cr> 483:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 484:   485:  " FZF  486:  " 487:  noremap <m-t> :BTags<cr> 488:  noremap <m-y> :Tags<cr> 489:  noremap S <Esc> :BLines<CR> 490:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 491:  " Line search mapping  492:  " function! Jumpback()  493:  "   K=bufname() 494:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 495:  " endfunction 496:  noremap <m-b> <Esc>:Buffers<CR> 497:  " noremap F <Esc>:GFiles<CR> 498:  map <A-e> :FZF ~<CR>  499:  map <m-f> :FZF ~<CR>  500:   501:  "miscellaneous 502:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 503:  nmap <leader>g :ZenMode<CR> 504:  nmap <leader>p :Denite neoyank -default-action=append<CR> 505:   506:  " Latex stuff 507:  "  508:  noremap <leader>ss :source  MYVIMRC<cr>  509:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:ZenMode<cr><cr> 510:  noremap <c-p> :<c-r>+<cr> 511:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:ZenMode<cr><cr> 512:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 513:   514:   515:  "Functions 516:   517:  function Light() 518:  set background=light 519:  " colorscheme oceanlight  520:  colorscheme one  521:  " highlight Normal ctermfg=black 522:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 523:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 524:  endfunction    525:   526:  " function Light() 527:  " set background=light 528:  " " colorscheme oceanlight  529:  " colorscheme material  530:  " let g:material style = 'lighter'   531:  "    " highlight Normal ctermfg=black 532:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 533:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 534:  " endfunction    535:  function Bluemoon() 536:     set background=dark 537:     colorscheme blue-moon 538:     " colorscheme material   539:  endfunction 540:   541:  function Deepocean() 542:     set background=dark 543:     colorscheme material   544:     let g:material style = 'deep ocean'   545:  endfunction 546:   547:  function Palenight() 548:     set background=dark 549:     " colorscheme blue-moon 550:     colorscheme material   551:     let g:material style = 'palenight'   552:  endfunction 553:  function Lighter() 554:     set background=light 555:     " colorscheme blue-moon 556:     colorscheme material   557:     let g:material style = 'lighter'   558:  endfunction 559:   560:  function Dark() 561:     set background=dark 562:     colorscheme one   563:  endfunction 564:   565:  function! Profile() 566:  profile start profile.
log 567:  profile func * 568:  profile file * 569:  endfunction  570:   571:  function! Sentence() 572:    let g:buf = bufname() 573:    silent !sentence.
sh   574:    silent echo "Print any character" 575:    silent call getchar() 576:    e sentence   577:    " echo "Print any character" 578:    " call getchar() 579:    BLines 580:  endfunction 581:  noremap L :call Sentence()<cr> 582:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 583:  function! Git()  584:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi  585:  endfunction 586:   587:  function! ToggleQuickFix() 588:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 589:          ZenMode  590:          let filename=bufname(" ") 591:          let errors=".
/buildback/" . 
591:++++ filename[:-4].
"log" 592:          exec "cf" errors  593:          copen 594:      else 595:          cclose  596:          ZenMode  597:          endif 598:  endfunction 599:   600:  au filetype tex nnoremap <silent> <leader>s :call ToggleQuickFix()<cr> 601:   602:  function! ClearLatex()  603:    silent !rm .
/build/*.
log 604:    silent !rm .
/build/*.
aux  605:    silent !rm .
/build/*.
fls 606:  endfunction 607:   608:  function! CompileLatex() 609:    silent call ClearLatex() 610:    let buf = bufname() 611:    silent te latexmk -pvc -halt-on-error -synctex=1 -file-line-error -gg   612:    execute "buffer" buf 613:    call ViewPdf() 614:  endfunction 615:   616:  function! ViewPdf()  617:  wa 618:  let buf = bufname() 619:  let linenumber=line(".
") 620:  let colnumber=col(".
") 621:  let filename=bufname(" ")  622:  " let filenamePDF=filename[:-4].
"pdf" 623:  let filenamePDF="build/" . 
623:++++ filename[:-4].
"pdf" 624:  let execstr="silent !zathura --synctex-forward " . 
624:++++ linenumber . 
624:++++ ":" . 
624:++++ colnumber . 
624:++++ ":" . 
624:++++ filename . 
624:++++ " " . 
624:++++ filenamePDF . 
624:++++ " &>/dev/null &" 625:  " . 
625:++++ "&>/dev/null &" 626:  exec execstr 627:  execute "buffer" buf 628:  endfunction  629:  nmap <leader>v :call ViewPdf()<cr> 630:  " nmap <leader>v :VimtexView<cr> 631:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 632:  nmap <leader>ll :call CompileLatex()<cr> 633:  nmap <leader>cl :call ClearLatex()<cr> 634:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 635:   636:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  637:  "" mathml shenanigans 638:   639:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 640:   641:   642:   643:   644:   645:   646:  "Autosave and autocommit    647:  " let g:updatetime = 10000 648:  let g:auto save = 1 649:  " .
vimrc 650:  let g:auto save events = ["CursorHold"] 651:  "au FileType vim let g:autosave = 0 652:  let g:auto save in insert mode = 0 653:  let g:auto save silent = 1 654:   655:  "Git autocommit  (private git repo) 656:  autocmd BufWritePost * call Git() 657:  " execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git add build/* git commit -m -a ; git push --all origin; fi' 658:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 659:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 660:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 661:  " "Highlight 662:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 663:  " hi MatchParen guibg=NONE guifg=green gui=NONE 664:      " 665:      " 666:      " 667:      " UndoTree   668:  noremap <Leader>u :UndotreeToggle<CR> 669:          " If undotree is opened, it is likely one wants to interact with it.
@??? 670:          let g:undotree SetFocusWhenToggle=1 671:          noremap <D-z> u 672:          noremap <S-C-z> <C-r> 673:          " noremap <C-z> u 674:      "   675:   676:   677:  " Latex shortcuts 678:  "Latex compile.
@??? 679:  "them to an external terminal and run there.
@??? 680:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 681:  "Zathura forward search 682:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 683:  "source ~/.
anyname   684:  "au filetype tex filetype indent off 685:  "  GUI Stuff    686:  " command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 687:   688:  " Deoplete 689:   690:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
690:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 691:  set directory= HOME/Downloads 692:   693:   694:  "LUA 695:  " lua <<EOF 696:  " require'nvim-tree'.
setup() 697:  " EOF 698:  lua <<EOF 699:  require'nvim-treesitter.
configs'.
setup    700:      -- 701:      highlight =   enable = true  , 702:      incremental selection =   703:      enable = true, 704:      keymaps =   705:        init selection = '<CR>', 706:        scope incremental = '<CR>', 707:        node incremental = '<TAB>', 708:        node decremental = '<S-TAB>', 709:       , 710:     , 711:      textobjects =   enable = true  , 712:      indent =   enable = true  ,  713:    714:  EOF 715:   716:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  717:   718:  " vsnip stuff  719:  " Use <Tab> and <S-Tab> to navigate through popup menu 720:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 721:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 722:   723:  " Set completeopt to have a better completion experience 724:  set completeopt=menuone,noinsert,noselect 725:   726:  " Avoid showing message extra message when using completion 727:  set shortmess+=c 728:  let g:vsnip snippet dir = '~/dotfiles/snippets'   729:   730:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 731:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 732:  "  733:  " " Expand or jump 734:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 735:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 736:   737:  " Jump forward or backward 738:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 739:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 740:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 741:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 742:   743:  " 744:  " set foldexpr=nvim treesitter#foldexpr() 745:  " 746:  lua << EOF 747:  local nvim lsp = require('lspconfig') 748:  -- Use an on attach function to only map the following keys 749:  -- after the language server attaches to the current buffer 750:  local on attach = function(client, bufnr) 751:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 752:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 753:  -- Enable completion triggered by <c-x><c-o> 754:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 755:   756:    -- Mappings.
@??? 757:    local opts =   noremap=true, silent=true   758:   759:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 760:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 761:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 762:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 763:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 764:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 765:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 766:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 767:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 768:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 769:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 770:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 771:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 772:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 773:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 774:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 775:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 776:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 777:   778:  end 779:  EOF 780:   781:  "Lsp instal  782:  lua <<EOF 783:  local lsp installer = require("nvim-lsp-installer") 784:   785:  -- Register a handler that will be called for all installed servers.
@??? 786:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 787:  lsp installer.
on server ready(function(server) 788:      local opts =    789:   790:      -- (optional) Customize the options passed to the server 791:      -- if server.
name == "tsserver" then 792:      --     opts.
root dir = function() .
.
. 
792:++++ end 793:      -- end 794:   795:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 796:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 797:      server:setup(opts) 798:  end) 799:  EOF 800:   801:  " 802:   803:   804:  nnoremap <leader>y :FZFNeoyank<cr> 805:  nnoremap <leader>Y :FZFNeoyank  P<cr> 806:  vnoremap <leader>y :FZFNeoyankSelection<cr> 807:   808:  nnoremap <leader>p :FZFNeoyank +<cr>  809:  nnoremap <leader>1 :FZFNeoyank 1<cr> 810:  nnoremap <leader>P :FZFNeoyank " P+<cr> 811:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 812:   813:   814:  " Replace the default dictionary completion with fzf-based fuzzy completion 815:   816:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   817:  inoremap <cr> <cr> <backspace> 818:   819:  set completeopt=menu,menuone,noselect 820:   821:  lua <<EOF 822:    -- Setup cmp.
@??? 823:   824:  local has words before = function() 825:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 826:      return false 827:    end 828:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 829:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 830:  end 831:   832:  local feedkey = function(key, mode) 833:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 834:  end 835:   836:  local cmp = require('cmp') 837:  cmp.
setup   838:   snippet =   839:        expand = function(args) 840:          -- For `vsnip` user.
@??? 841:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 842:    -- .
.
. 
842:++++ Your other configuration .
.
.
@??? 843:  end, 844:   , 845:  mapping =   846:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 847:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 848:        ['<C-x>'] = cmp.
mapping.
complete(), 849:        ['<C-e>'] = cmp.
mapping.
close(), 850:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 851:  -- .
.
. 
851:++++ Your other mappings .
.
.
@??? 852:  ["<Tab>"] = cmp.
mapping(function(fallback)  853:        if vim.
fn["vsnip#expandable"]() == 1 854:          then 855:          feedkey("<Plug>(vsnip-expand)", "") 856:       elseif cmp.
visible() then 857:          cmp.
select next item() 858:        elseif has words before() then  859:          cmp.
complete() 860:        else  861:          fallback() -- The fallback function sends a already mapped key. 
861:++++ In this case, it's probably `<Tab>`.
@??? 862:        end 863:      end,   "i", "s"  ), 864:  ["<S-Tab>"] = cmp.
mapping(function() 865:        if vim.
fn.
pumvisible() == 1 then 866:          feedkey("<C-p>", "n")   867:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 868:          feedkey("<Plug>(vsnip-jump-prev)", "") 869:        end 870:      end,   "i", "s"  ), 871:  -- .
.
. 
871:++++ Your other mappings .
.
.
@??? 872:   873:   , 874:  requires =   875:        876:        'quangnguyen30192/cmp-nvim-tags', 877:        -- if you want the sources is available for some file types 878:        ft =   879:          'tex', 880:          'latex'  881:          882:        883:       , 884:  -- .
.
. 
884:++++ Your other configuration .
.
.
@??? 885:  sources =   886:        -- For vsnip user.
@??? 887:    name = 'tags', keyword length = 1000  , 888:     name = 'vsnip', keyword length = 1000  , 889:           -- For luasnip user.
@??? 890:        --   name = 'luasnip'  , 891:  -- For ultisnips user.
@??? 892:        --   name = 'ultisnips'  ,   893:       name = 'buffer', keyword length = 1000  , 894:       name = 'omni', keyword length = 4 , 895:         --   name = 'spell'  ,  896:       name = 'nvim lsp', keyword length = 4  , 897:        --  name = 'treesitter', keyword length = 4  , 898:  --  name = 'latex symbols'  , 899:   , 900:  completion =   901:      autocomplete = false  902:        903:    904:  EOF 905:   906:  "  907:  " " LSP mappings    908:  " "" LSP mappings  909:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 910:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 911:  "  912:  "  913:  lua <<EOF 914:   require('nvim comment').
setup( 915:    916:     -- Linters prefer comment and line to have a space in between markers 917:     marker padding = true, 918:     -- should comment out empty or whitespace only lines 919:     comment empty = true, 920:     -- Should key mappings be created 921:     create mappings = true, 922:     -- Normal mode mapping left hand side 923:     line mapping = "gc", 924:     -- Visual/Operator mapping left hand side 925:     operator mapping = "<leader>c", 926:     -- Hook function to call before commenting takes place 927:     --hook = nil  928:     929:   ) 930:  EOF 931:  nmap <leader>c gc 932:  lua <<EOF 933:  local true zen = require("true-zen") 934:  true zen.
setup(  935:   	ui =   936:   		bottom =   937:   			laststatus = 0, 938:   			ruler = false, 939:   			showmode = false, 940:   			showcmd = false, 941:   			cmdheight = 1, 942:   		 , 943:   		top =   944:   			showtabline = 0, 945:   		 , 946:   		left =   947:   			number = false, 948:   			relativenumber = false, 949:   			signcolumn = "no", 950:   		 , 951:   	 , 952:   	modes =   953:   		ataraxis =   954:   			-- left padding = 20, 955:   			-- right padding = 20, 956:   			top padding = 0, 957:   			bottom padding = 0, 958:   			ideal writing area width =  60 , 959:   			auto padding = true, 960:   			keep default fold fillchars = true, 961:   			custom bg =  "none", "" , 962:   			bg configuration = true, 963:   			quit = "untoggle", 964:   			ignore floating windows = true, 965:   			affected higroups =   966:   				NonText = true, 967:   				FoldColumn = true, 968:   				ColorColumn = true, 969:   				VertSplit = true, 970:   				StatusLine = true, 971:   				StatusLineNC = true, 972:   				SignColumn = true, 973:   			 , 974:   		 , 975:   		focus =   976:   			margin of error = 5, 977:   			focus method = "experimental" 978:   		 , 979:   	 , 980:   	integrations =   981:   		vim gitgutter = false, 982:   		galaxyline = false, 983:   		tmux = false, 984:   		gitsigns = false, 985:   		nvim bufferline = false, 986:   		limelight = false, 987:   		twilight = false, 988:   		vim airline = false, 989:   		vim powerline = false, 990:   		vim signify = false, 991:   		express line = false, 992:   		lualine = false, 993:   		lightline = false, 994:   		feline = false, 995:   	 , 996:   	misc =   997:   		on off commands = true, 998:   		ui elements commands = false, 999:   		cursor by mode = false, 1000:   	  1001:    ) 1002:  EOF 1003:  lua <<EOF 1004:  require('feline').
setup(  1005:      preset = 'noicon' 1006:       ) 1007:  EOF 1008:  "  1009:  "  1010:  "  1011:  " " lua <<EOF 1012:  " " require('lualine').
setup  1013:  " " options =  disabled filetypes =  'txt', 'text'   1014:  " "   1015:  " " EOF 1016:  lua << EOF 1017:    require("zen-mode").
setup   1018:    window =   1019:      backdrop = 1, -- shade the backdrop of the Zen window. 
1019:++++ Set to 1 to keep the same as Normal 1020:      -- height and width can be: 1021:      -- * an absolute number of cells when > 1 1022:      -- * a percentage of the width / height of the editor when <= 1 1023:      -- * a function that returns the width or the height 1024:      width = .
66, -- width of the Zen window 1025:      height = 1, -- height of the Zen window 1026:      -- by default, no options are changed for the Zen window 1027:      -- uncomment any of the options below, or add other vim.
wo options you want to apply 1028:      options =   1029:        -- signcolumn = "no", -- disable signcolumn 1030:        -- number = false, -- disable number column 1031:        -- relativenumber = false, -- disable relative numbers 1032:        -- cursorline = false, -- disable cursorline 1033:        -- cursorcolumn = false, -- disable cursor column 1034:        -- foldcolumn = "0", -- disable fold column 1035:        -- list = false, -- disable whitespace characters 1036:       , 1037:     , 1038:    plugins =   1039:      -- disable some global vim options (vim.
o.
.
.
) 1040:      -- comment the lines to not apply the options 1041:      options =   1042:        enabled = true, 1043:        ruler = false, -- disables the ruler text in the cmd line area 1044:        showcmd = false, -- disables the command in the last line of the screen 1045:       , 1046:      twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1047:      gitsigns =   enabled = false  , -- disables git signs 1048:      tmux =   enabled = false  , -- disables the tmux statusline 1049:      -- this will change the font size on kitty when in zen mode 1050:      -- to make this work, you need to set the following kitty options: 1051:      -- - allow remote control socket-only 1052:      -- - listen on unix:/tmp/kitty 1053:      kitty =   1054:        enabled = false, 1055:        font = "+4", -- font size increment 1056:       , 1057:     , 1058:    -- callback where you can add custom code when the Zen window opens 1059:    on open = function(win) 1060:    end, 1061:    -- callback where you can add custom code when the Zen window closes 1062:    on close = function() 1063:    end, 1064:    1065:  EOF 1066:  lua <<EOF 1067:  require('telescope').
setup  1068:    defaults =   1069:      -- Default configuration for telescope goes here: 1070:      -- config key = value, 1071:      mappings =   1072:        i =   1073:          -- map actions.
which key to <C-h> (default: <C-/>) 1074:          -- actions.
which key shows the mappings for your picker, 1075:          -- e.
g. 
1075:++++ git  create, delete, .
.
.  
branch for the git branches picker 1076:          ["<C-h>"] = "which key" 1077:          1078:        1079:     , 1080:    pickers =   1081:      -- Default configuration for builtin pickers goes here: 1082:      -- picker name =   1083:      --   picker config key = value, 1084:      --   .
.
.
@??? 1085:      --   1086:      -- Now the picker config key will be applied every time you call this 1087:      -- builtin picker  1088:     , 1089:    extensions =   1090:      -- Your extension configuration goes here: 1091:      -- extension name =   1092:      --   extension config key = value, 1093:      --   1094:      -- please take a look at the readme of the extension you want to configure 1095:      1096:     1097:  EOF 1098:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1099:  lua <<EOF 1100:  require('fm-nvim').
setup  1101:  	config = 1102:  	  1103:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1104:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1105:  		height   = .
9, 1106:  		width    = .
9, 1107:  	  1108:    1109:  EOF 1110:   1111:  " lua <<EOF 1112:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1113:  " require("prosesitter"):setup(  1114:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1114:++++ "/prosesitter/vale", 1115:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1115:++++ "/prosesitter/vale cfg.
ini", 1116:  " 	--optional extra queries overrides existing queries 1117:  " 	queries =    1118:  " 		-- see the piece on adding queries on how to use this  1119:  " 		-- (not needed if using an out of the box supported language 1120:  " 		py =    1121:  " 			strings = "[(string) ] @capture", 1122:  " 			comments = "[(comment)+ ] @capture", 1123:  " 		 , 1124:  " 	 ,  1125:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1126:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1127:  " 	-- weather to lint strings, comments or both for a language 1128:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1129:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1130:  " 	auto enable = false, -- do not start linting files on open (default = true) 1131:  " 	default cmds = false,  -- do not add commands (default = true) 1132:  "  ) 1133:  " EOF 1134:  lua <<EOF 1135:  require('spellsitter').
setup   1136:    hl = 'SpellBad',  1137:    captures =   ,  -- set to    to spellcheck everything 1138:   1139:    -- Spellchecker to use. 
1139:++++ values: 1140:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1141:    -- * ffi: built-in spell checker using the FFI to access the 1142:    --   internal spell check() function 1143:  spellchecker = 'vimfn', 1144:    1145:  EOF 1146:  let g:firenvim config =    1147:        'globalSettings':   1148:            'alt': 'all', 1149:          , 1150:        'localSettings':   1151:            '.
*':   1152:                'cmdline': 'neovim', 1153:                'content': 'text', 1154:                'priority': 0, 1155:                'selector': 'textarea', 1156:                'takeover': 'never', 1157:             , 1158:          1159:      1160:  lua << EOF 1161:  require('fzf-lua').
setup  1162:  -- .
.
.
@??? 1163:    1164:  EOF 1165:  " lua << EOF 1166:  " require("stabilize").
setup( 1167:  "   1168:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1169:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1170:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1171:  " --		filetype =   "help", "list", "Trouble"  , 1172:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1173:  " --	  1174:  "   1175:  " ) 1176:  " EOF 1177:  " lua <<EOF 1178:  " require('dd').
setup() 1179:  " EOF 1180:  " lua << EOF 1181:  " local opts =   1182:  "   log level = 'info', 1183:  "   auto session enable last session = false, 1184:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1185:  "   auto session enabled = false, 1186:  "   auto save enabled = nil, 1187:  "   auto restore enabled = nil, 1188:  "   auto session suppress dirs = nil 1189:  "   1190:  " require('auto-session').
setup(opts) 1191:  " EOF 1192:   1193:  " lua << EOF 1194:  " if exists('g:started by firenvim') 1195:  "   ZenMode 1196:  " else 1197:  "   set laststatus=2 1198:  " endif 1199:   1200:  " lua <<EOF 1201:  " require('neoclip').
setup(  1202:  "       history = 1000, 1203:  "       enable persistant history = false, 1204:  "       db path = vim.
fn.
stdpath("data") .
. 
1204:++++ "/databases/neoclip.
sqlite3", 1205:  "       filter = nil, 1206:  "       preview = true, 1207:  "       default register = '"', 1208:  "       content spec column = false, 1209:  "       on paste =   1210:  "         set reg = false, 1211:  "        , 1212:  "       keys =   1213:  "         i =   1214:  "           select = '<cr>', 1215:  "           paste = '<c-p>', 1216:  "           paste behind = '<c-k>', 1217:  "           custom =   , 1218:  "          , 1219:  "         n =   1220:  "           select = '<cr>', 1221:  "           paste = 'p', 1222:  "           paste behind = 'P', 1223:  "           custom =   , 1224:  "          , 1225:  "        , 1226:  "     ) 1227:  " EOF 1228:  " lua <<EOF 1229:  " local saga = require 'lspsaga'  1230:  " saga.
init lsp saga()  1231:  "   1232:  " EOF 1233:   1234:  "au FileType tex autocmd User SneakLeave set syntax=tex 1235:  "au FileType tex autocmd User SneakEnter set syntax=text 1236:  " 1237:  " 1238:  " 1239:   1240:  " 1241:  " 'tCommen20 1242:  " let g:tcommentMapLeaderOp1=';'  1243:  " "map <leader>c <Leader>    1244:  "" function! RestoreRegister() 1245:  "   let @" = s:restore reg 1246:  "   return '' 1247:  " endfunction 1248:  " function! s:Repl() 1249:  "     let s:restore reg = @" 1250:  "     return "p@=RestoreRegister() <cr>" 1251:  " endfunction 1252:  " 1253:  " " NB: this supports "rp that replaces the selection by the contents of @r 1254:  " vnoremap <silent> <expr> p <sid>Repl() 1255:   1256:  " " Change Color when entering 1257:  " Insert Mode augroup CursorLine 1258:  "    au! 1259:  "  if has("gui running") 1260:  "  else 1261:  "      au InsertEnter * setlocal cursorline 1262:  "        au InsertLeave * setlocal nocursorline 1263:  "     endif 1264:  "        augroup END 1265:  " function! DelTagOfFile(file) 1266:  "   let fullpath = a:file 1267:  "   let cwd = getcwd() 1268:  "   let tagfilename = cwd . 
1268:++++ "/tags" 1269:  "   let f = substitute(fullpath, cwd . 
1269:++++ "/", "", "") 1270:  "   let f = escape(f, '.
/') 1271:  "   let cmd = 'sed -i "/' . 
1271:++++ f . 
1271:++++ '/d" "' . 
1271:++++ tagfilename . 
1271:++++ '"' 1272:  "   let resp = system(cmd) 1273:  " endfunction 1274:  " function! Break() 1275:  "  let n=130-virtcol('.
') 1276:  "  <Esc>ni <Esc><Esc> 1277:  " endfunction 1278:  " function Gitview() 1279:  "    cd /root/web2 ; git add . 
1279:++++ ; git commit -m -a ; git push origin gh-pages 1280:  " endfunction 1281:  " fuzzy search 1282:  " function! s:config fuzzyall(.
.
.
) abort 1283:  "   return extend(copy(  1284:  "       'converters': [ 1285:  "         incsearch#config#fuzzy#converter(), 1286:  "         incsearch#config#fuzzyspell#converter() 1287:  "       ], 1288:  "      ), get(a:, 1,    1289:  "   )) 1290:  " endfunction 1291:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1292:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1293:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1294:  " map f <Plug>(incsearch-fuzzyspell-/) 1295:  " map F <Plug>(incsearch-fuzzyspell-?) 1296:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1297:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1298:  " let g:deoplete#enable at startup = 1 1299:  " map <silent> <leader>g :silent call Gitview() 1300:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1301:  "Load some useful plugins with vundle  1302:  " 1303:  "asdf asldfkj 1304:  " hi! link Sneak Normal 1305:  " hi! link SneakScope Normal   test test2 test3 1306:   1307:  " command! -bang -nargs=* Rg 1308:  "     call fzf#vim#grep( 1309:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1310:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1311:  " 1312:  "" au GUIEnter * set fullscreen 1313:  " if has("gui running") 1314:    " set fuoptions=maxvert,maxhorz 1315:    " au GUIEnter * set fullscreen 1316:     " set foldcolumn=10 1317:     " set formatoptions=ant 1318:  " set wrapmargin=0 1319:  " set nohlsearch 1320:  " set tags= ~/workspacemodules/tags 1321:  " highlight SignColumn guibg=bg 1322:  "       endif     1323:  " if has("autocmd") 1324:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1325:  " endif 1326:    " autocmd BufWinLeave *.
* mkview 1327:    " autocmd BufWinEnter *.
* silent loadview 1328:     " set foldcolumn=2 1329:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1330:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1331:  " inoremap <cr> <esc>:w<cr>i<cr>  1332:  "" set tm=500 1333:  " set macmeta 1334:  " auto reload vimrc when editing it 1335:  " let g:github function style = "italic" 1336:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1337:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1338:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1339:  " Load the colorscheme 1340:  " colorscheme github dark 1341:  "" terminal color settings  1342:  " Example config in VimScript 1343:  " let g:github function style = "italic" 1344:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1345:   1346:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1347:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1348:  " Load the colorscheme 1349:  " colorscheme github dark  1350:  " set background=dark  1351:  " if has("gui running")	" GUI color and font settings 1352:  "   set guifont=Fira  Code:h22 1353:  "   " colorscheme gruvbox  1354:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1355:  " else 1356:  "  colorscheme one 1357:  " colorscheme material   1358:  " let g:material style = 'palenight'   1359:  " let g:material style = 'lighter' 1360:  " highlight Normal ctermbg=none  1361:  "   " let g:vimtex quickfix method='pplatex'  1362:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1363:  "    function! UpdateSkim(status) 1364:  "      if !a:status | return | endif 1365:  " 1366:  "      let l:out = b:vimtex.
out() 1367:  "      let l:tex = expand(' :p') 1368:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1369:  "      if !empty(system('pgrep Skim')) 1370:  "        call extend(l:cmd, ['-g']) 1371:  "      endif 1372:  "      if has('nvim') 1373:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1374:  "      elseif has('job') 1375:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1376:  "      else 1377:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1378:  "      endif 1379:  "    endfunction 1380:  " let g:vimtex latexmk build dir = '.
/build' 1381:  "   'build dir' : '.
/build', 1382:  "  1383:  "     let g:vimtex compiler latexmk =   1384:  "       'background' : 0, 1385:  "           'callback' : 1, 1386:  "       'continuous' : 1, 1387:  "       'options' : [ 1388:  "         '-pdf', 1389:  "         '-verbose', 1390:  "         '-file-line-error', 1391:  "         '-synctex=1', 1392:  "         '-interaction=nonstopmode', 1393:  "       ], 1394:  "        1395:  " let g:vimtex compiler progname = 'nvr' 1396:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1397:  " let g:vimtex quickfix mode = 1 1398:  " let g:vimtex fold enabled = 0 1399:  " let g:vimtex fold manual = 1 1400:   1401:   1402:  " let g:vimtex fold types=   1403:  "             'preamble' :   , 1404:  "             'comments' :  'enabled' : 1 , 1405:  "             'markers' :   , 1406:  "             'sections' :   1407:  "               'parse levels' : 0, 1408:  "               'sections' : [       1409:  "                 ' (add)?part', 1410:  "                 ' (chapter|addchap)', 1411:  "                 ' (section|addsec)', 1412:  "                 'subsection', 1413:  "                 'subsubsection', 1414:  "               ], 1415:  "               'parts' : [          1416:  "                 'appendix', 1417:  "                 'frontmatter', 1418:  "                 'mainmatter', 1419:  "                 'backmatter', 1420:  "               ], 1421:  "              , 1422:  "              1423:   1424:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1425:  " lua <<EOF 1426:  " require'nvim-treesitter.
configs'.
setup   1427:  "   incremental selection =   1428:  "     enable = true, 1429:  "     keymaps =   1430:  "       init selection = "gnn", 1431:  "       node incremental = "grn", 1432:  "       scope incremental = "grc", 1433:  "       node decremental = "grm", 1434:  "      , 1435:  "    , 1436:  "   1437:  " EOF 1438:  " lua <<EOF 1439:  " require('neoscroll').
setup  1440:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1441:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1442:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1443:  "     hide cursor = true,          -- Hide cursor while scrolling 1444:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1445:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1446:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1447:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1448:  "     easing function = nil,        -- Default easing function 1449:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1450:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1451:  "       1452:  " EOF 1453:  "  1454:  " " set foldlevel=20 1455:  " " set foldmethod=expr 1456:  " " set foldexpr=nvim treesitter#foldexpr() 1457:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1458:  " inoremap .
<Space> .
<CR><Esc><leader>j 1459:  " noremap S :S  1460:  " 1461:  " 1462:  " function! Sneak() 1463:  "     hi! link Sneak Normal 1464:  "     hi! link SneakScope Normal 1465:  "     execute 'normal!  <Plug>Sneak s' 1466:  "     syntax on 1467:  " endfunction 1468:    1469:  " map N <Plug>Sneak , 1470:  " map t <Plug>(smalls-excursion) 1471:  " let g:smalls auto jump=1 1472:  " let g:smalls auto jump timeout=0 1473:   1474:   1475:      " xmap t <Plug>Sneak s 1476:      " xmap T <Plug>Sneak S 1477:     " omap t <Plug>Sneak s 1478:      " omap T <Plug>Sneak S  1479:      " math maps     asdf a;sldfjk test2 test3 1480:  "  1481:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1482:  " let g:vimtex view general options = '-r @line @pdf @ 1483:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1484:   1485:  " <cr> 1486:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1487:  " NB: this supports "rp that replaces the selection by the contents of @r 1488:  " Auto updating Ctags 1489:  " autocmd VimLeave * exe ":silent ! ctags -R" 1490:  "Nerd Tree 1491:  " map <leader>e :NERDTreeFind<CR> 1492:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1493:  " 1494:  "" lua << EOF 1495:  " local function setup servers() 1496:  "   require'lspinstall'.
setup() 1497:  "   local servers = require'lspinstall'.
installed servers() 1498:  "   for  , server in pairs(servers) do 1499:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1500:  "   end 1501:  " end 1502:  "  1503:  " setup servers() 1504:  "  1505:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1506:  " require'lspinstall'.
post install hook = function () 1507:  "   setup servers() -- reload installed servers 1508:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1509:  " end 1510:  " EOF 1511:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 