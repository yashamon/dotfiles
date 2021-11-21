1:  call plug#begin('~/.
vim/plugged')  2:  " Plug 'reedes/vim-pencil'  3:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   4:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    5:  Plug 'lewis6991/spellsitter.
nvim' 6:  Plug 'sheerun/vim-polyglot'  7:  Plug 'ibhagwan/fzf-lua',    'branch': 'main'   8:  Plug 'vijaymarupudi/nvim-fzf' 9:  Plug 'kyazdani42/nvim-web-devicons' 10:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   11:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   12:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   13:  Plug 'phaazon/hop.
nvim'     14:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   15:  " Plug 'luukvbaal/stabilize.
nvim'  16:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     17:  Plug 'is0n/fm-nvim' 18:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   19:  Plug 'nvim-lua/plenary.
nvim' 20:  Plug 'nvim-telescope/telescope.
nvim', 21:  " Plug 'nvim-treesitter/playground' 22:  Plug 'famiu/feline.
nvim' 23:  " Plug 'hoob3rt/lualine.
nvim', 24:  " Plug 'karb94/neoscroll.
nvim' 25:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   26:  " Plug 'f3fora/cmp-spell'     27:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   28:  "Plug 'vim-commentary' 29:  "Plug 'b3nj5m1n/kommentary' 30:  " Plug 'simnalamburt/vim-mundo' 31:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    32:  " Plug 'glepnir/lspsaga.
nvim' 33:  " If you are using Vim-Plug 34:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    35:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    36:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   37:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   38:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    39:  Plug 'hrsh7th/vim-vsnip' 40:  Plug 'hrsh7th/vim-vsnip-integ' 41:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    42:  " Plug 'ray-x/cmp-treesitter' 43:  " For luasnip user.
@??? 44:  Plug 'L3MON4D3/LuaSnip' 45:  " Plug 'saadparwaiz1/cmp luasnip' 46:  "Plug 'steelsojka/completion-buffers' 47:  Plug 'voldikss/vim-floaterm' 48:  Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   49:  "Plug 'pope/vim-obsession' 50:  "Plug 'xolox/vim-easytags' 51:  " Plug 'nvim-lua/plenary.
nvim' 52:  " Plug 'windwp/nvim-spectre' 53:  " Plug 'xolox/vim-misc' 54:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   55:  Plug 'kevinhwang91/nvim-bqf' 56:  Plug 'justinhoward/fzf-neoyank'  57:  " Plug 'svermeulen/vim-cutlass' 58:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 59:  " Plug 'kyazdani42/nvim-tree.
lua',  60:  "Plug 'nvim-lua/completion-nvim' 61:  Plug 'hrsh7th/vim-vsnip-integ' 62:  Plug 'neovim/nvim-lspconfig' 63:  Plug 'nvim-lua/diagnostic-nvim' 64:  " Plug 'rafamadriz/friendly-snippets'   65:  " Make sure you use single quotes 66:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 67:  " Plug 'junegunn/vim-easy-align' 68:  " Any valid git URL is allowed 69:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 70:  " Group dependencies, vim-snippets depends on ultisnips  71:   " Plug 'tpope/vim-surround' 72:  " Plug 'neovim/node-host' 73:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   74:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    75:  Plug 'rakr/vim-one'  76:  " Plug 'cyansprite/Extract' 77:  Plug 'gioele/vim-autoswap' 78:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   79:  " Plug 't9md/vim-smalls' 80:  Plug 'skywind3000/asyncrun.
vim' 81:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   82:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 83:  " please comment next line 84:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     85:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    86:  " Plug 'rmagatti/auto-session',    'branch': 'main'  87:  " Plug 'justinmk/vim-sneak' 88:  Plug 'Shougo/neoyank.
vim'  89:  if has('nvim') 90:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   91:   else 92:     Plug 'Shougo/denite.
nvim' 93:     Plug 'roxma/nvim-yarp' 94:     Plug 'roxma/vim-hug-neovim-rpc' 95:   endif 96:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 97:  " Plug 'tpope/vim-fugitive' 98:  Plug 'eugen0329/vim-esearch' 99:  Plug 'haya14busa/incsearch.
vim' 100:  Plug 'haya14busa/incsearch-fuzzy.
vim' 101:  Plug 'Raimondi/vim search objects' 102:  " Plug 'terryma/vim-multiple-cursors' 103:  " " On-demand loading 104:  " Plug 'junegunn/goyo.
vim' 105:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   106:  "  Plug 'morhetz/gruvbox' 107:  Plug 'sainnhe/gruvbox-material' 108:  " Plug 'vim-pandoc/vim-pandoc' 109:  " Plug 'vim-pandoc/vim-pandoc-syntax'  110:  " Plugin outside ~/.
vim/plugged with post-update hook 111:  Plug 'junegunn/fzf',   'do': '.
/install --all'   112:  Plug 'junegunn/fzf.
vim' 113:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   114:   '  115:  Plug 'lifepillar/vim-solarized8' 116:  Plug 'vim-scripts/AutoTag' 117:  Plug 'vim-scripts/vim-auto-save' 118:  " Plug 'vim-pandoc/vim-pandoc' 119:   120:  " Plug 'yashamon/vim-snippets' 121:   122:  " Plug 'lervag/vimtex' 123:  " colorschemes 124:  "  125:  Plug 'kyazdani42/blue-moon'   126:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   127:   128:  Plug 'reedes/vim-colors-pencil' 129:   130:  Plug 'vim-scripts/oceanlight' 131:   132:  Plug 'gosukiwi/vim-atom-dark' 133:   134:  Plug 'dracula/vim' 135:   136:  " Unmanaged plugin (manually installed and updated) 137:  " Plug '~/my-prototype-plugin' 138:  " Add plugins to &runtimepath 139:  call plug#end()  140:   141:  "Neovide  142:  " 143:  " let g:neovide maximized=v:true  144:  " let g:neovide fullscreen=v:true 145:  let g:neovide transparency=0.
15 146:   147:  "General Settings     148:  set title  149:  " set titlestring 150:  " set noshowmode 151:  " set noruler        152:  " set laststatus=1  153:  set noshowcmd    154:  set noshowmatch   155:  set wrap   156:  set pb=10   157:  " set winbl=5 158:  set switchbuf=newtab 159:  " let g:python3 host prog='/usr/bin/python3.
9' 160:  " let g:python3 host prog='/usr/bin/python3.
9' 161:   162:  set clipboard+=unnamedplus	" yank to the system register (*) by default 163:  " TAB setting  164:  set expandtab        "replace <TAB> with spaces 165:  set softtabstop=3  166:  set shiftwidth=3  167:  set termguicolors 168:   169:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 170:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 171:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 172:  set spelllang=en    173:   if exists('g:started by firenvim') 174:         au UIEnter  set noshowmode 175:         au UIEnter  set noruler 176:         au UIEnter  set laststatus=0 177:         au UIEnter  set noshowcmd 178:  "       " au UIEnter set lines=140  179:  "       " au UIEnter set columns=140 180:   else 181:   " autocmd VimEnter * TZAtaraxis 182:   endif 183:  au VIMEnter set spell  184:  set timeoutlen=0 185:  au VIMEnter * let g:surround 108 =   186:        'q':  " `` r''" 187:           188:  let g:tex flavor = "latex" 189:  let g:tex isk = '@,48-57,58, ,192-255' 190:  let g:tex conceal = "" 191:  set tags+=~/workspacemodules/tags 192:  "set tags+=~/Dropbox/workspace/tags 193:  set formatoptions=nt 194:    " set wrapmargin=1 195:  " set shada="NONE"   196:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 197:  set wrap 198:  set linebreak  199:  set formatoptions+=w " set breakat=" " 200:  " set list  " list disables linebreak 201:  set textwidth=0 202:  set wrapmargin=-1 203:  set hid 204:  set autochdir 205:  set guioptions-=r 206:  set guioptions-=l 207:  set inccommand=split 208:  set mouse= 209:  set bs=2		" allow backspacing over everything in insert mode  210:  set undofile                " Save undo's after file closes 211:  set undodir=undo " where to save undo histories 212:  set undolevels=1000000         " How many undos 213:  set undoreload=10000		 214:  set ruler		" show the cursor position all the time 215:  set autoread		" auto read when file is changed from outside 216:  set nohlsearch 217:  " set noswapfile 218:  " set showmatch		" Cursor shows matching ) and   219:  set nocursorline 220:  set showmode		" Show current mode 221:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 222:  set wildmenu            " wild char completion menu 223:  let maplocalleader = "  " 224:  " ignore these files while expanding wild chars 225:  set wildignore=*.
o,*.
class,*.
pyc 226:  set incsearch		" incremental search 227:  set nobackup		" no *~ backup files 228:  set ignorecase		" ignore case when searching 229:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 230:  set smarttab		" insert tabs on the start of a line according to context 231:   232:  " disable sound on errors 233:  set noerrorbells 234:  " set novisualbell  235:  set guifont=Fira  Code  Light:h33 236:   colorscheme blue-moon 237:  " colorscheme material   238:  " let g:material style = 'palenight'   239:  " let g:material style = 'lighter' 240:  " highlight Normal ctermbg=none 241:  set tm=1000 242:  " set macreta  243:  hi clear SpellBad 244:  hi SpellBad cterm=underline 245:  " Set style for gVim 246:  hi SpellBad gui=underline 247:  " 248:  "Autocommands, au 249:  " 250:   251:   252:  autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  253:  au FileType Makefile set noexpandtab 254:  au FileType tex,text set spelllang=en 255:  au FileType tex,text,md set spell  256:  au FileType vim,md set list 257:  au FileType vim,md colorscheme one 258:   259:  " au FileType tex,text,md syntax sync fromstart 260:  au FileType tex,text,md silent execute "!echo " . 
260:++++ v:servername . 
260:++++ " > ~/servername.
txt"    261:  au FileType tex,text,md hi SpellBad cterm=undercurl 262:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 263:  au Filetype tex,text,md set tw=50 264:   265:  " au FileType tex set background=dark  266:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  267:  au TextYankPost * call neoyank# append()  268:   269:           "Some functions 270:  function Light() 271:  set background=light 272:  " colorscheme oceanlight  273:  colorscheme one  274:  " highlight Normal ctermfg=black 275:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 276:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 277:  endfunction    278:   279:  " function Light() 280:  " set background=light 281:  " " colorscheme oceanlight  282:  " colorscheme material  283:  " let g:material style = 'lighter'   284:  "    " highlight Normal ctermfg=black 285:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 286:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 287:  " endfunction    288:  function Bluemoon() 289:     set background=dark 290:     colorscheme blue-moon 291:     " colorscheme material   292:  endfunction 293:   294:  function Deepocean() 295:     set background=dark 296:     colorscheme material   297:     let g:material style = 'deep ocean'   298:  endfunction 299:   300:  function Palenight() 301:     set background=dark 302:     " colorscheme blue-moon 303:     colorscheme material   304:     let g:material style = 'palenight'   305:  endfunction 306:  function Lighter() 307:     set background=light 308:     " colorscheme blue-moon 309:     colorscheme material   310:     let g:material style = 'lighter'   311:  endfunction 312:   313:  function Dark() 314:     set background=dark 315:     colorscheme one   316:  endfunction 317:   318:  set expandtab        "replace <TAB> with spaces 319:  set softtabstop=3  320:  set shiftwidth=3  321:   322:  "---------------------------------------------------------------------------  323:  " USEFUL SHORTCUTS 324:  "---------------------------------------------------------------------------  325:  " set leader to ;  326:  let mapleader=';' 327:  let g:mapleader=';' 328:   329:  " open the error console 330:  " move to next error 331:   332:  " Bash like keys for the command line 333:  cnoremap <C-A>      <Home> 334:  cnoremap <C-E>      <End> 335:  cnoremap <C-K>      <C-U> 336:   337:  " ,p toggles paste mode 338:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 339:   340:  " allow multiple indentation/deindentation in visual mode 341:  vnoremap < <gv 342:  vnoremap > >gv 343:   344:  " :cd. 
344:++++ change working directory to that of the current file 345:  cmap cd. 
345:++++ lcd  :p:h 346:   347:   348:  " Enable omni completion. 
348:++++ (Ctrl-X Ctrl-O) 349:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 350:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 351:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 352:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 353:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 354:  autocmd FileType c set omnifunc=ccomplete#Complete 355:  autocmd FileType java set omnifunc=javacomplete#Complete  356:  autocmd FileType tex set omnifunc=latex#Complete 357:  autocmd Filetype tex setlocal fo=nt 358:  autocmd Filetype tex setlocal wrapmargin=0 359:  " use syntax complete if nothing else available 360:  if has("autocmd") && exists("+omnifunc") 361:    autocmd Filetype * 362:                 	if &omnifunc == "" | 363:                 		setlocal omnifunc=syntaxcomplete#Complete | 364:                 	endif 365:  endif 366:   367:  set cot-=preview "disable doc preview in omnicomplete 368:   369:  " make CSS omnicompletion work for SASS and SCSS 370:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 371:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 372:   373:  "---------------------------------------------------------------------------  374:  " ENCODING SETTINGS 375:  "---------------------------------------------------------------------------  376:  set encoding=utf-8                                   377:  set termencoding=utf-8 378:  set fileencoding=utf-8 379:   380:  "maps remaps mappings   381:  " 382:  " 383:  " terminal mappings 384:  tnoremap <A-Esc> <C- ><C-n> 385:  nmap <A-S-t> :wa<cr>:te<cr> 386:    387:  vnoremap <Leader>U ""y: s/<C-r>" 388:  noremap <leader>r :wa<cr>:e<cr> 389:  noremap <leader>hh :set tw=50<cr> 390:  noremap <leader>w :set tw=0<cr>  391:  " noremap q <nop> 392:  map <leader>q q 393:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 394:  nnoremap <leader>rr :source  MYVIMRC<CR> 395:  "nnoremap <leader>e :NERDTreeFind<CR> 396:  nnoremap <leader>e :wa<cr>:Lf<cr> 397:  nnoremap <leader>t :wa<cr>:FloatermToggle<cr> 398:  nnoremap <c-,> :cprevious<cr> 399:  nnoremap <c-.
> :cnext<cr>  400:  inoremap <cr> <cr> <backspace> 401:  vnoremap <m-s> :s///gc<left><left><left><left> 402:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 403:  nnoremap <m-s> : s///gc<left><left><left><left> 404:  vmap <M-.
> t.
<CR>h 405:  nmap <M-.
> t.
<CR>h 406:  nnoremap <up> 1<C-U> 407:  imap <up> <nop> 408:  nnoremap <down> 1<C-D> 409:  imap <down> <nop> 410:  noremap <ScrollWheelUp>      <nop> 411:  noremap <S-ScrollWheelUp>    <nop> 412:  noremap <C-ScrollWheelUp>    <nop> 413:  noremap <ScrollWheelDown>    <nop> 414:  noremap <S-ScrollWheelDown>  <nop> 415:  noremap <C-ScrollWheelDown>  <nop> 416:  noremap <ScrollWheelLeft>    <nop> 417:  noremap <S-ScrollWheelLeft>  <nop> 418:  noremap <C-ScrollWheelLeft>  <nop> 419:  noremap <ScrollWheelRight>   <nop> 420:  noremap <S-ScrollWheelRight> <nop> 421:  noremap <C-ScrollWheelRight> <nop> 422:  inoremap   / 423:  inoremap /   424:   425:  " copy paste stuff  426:  "  427:  vnoremap p "0dP 428:  noremap D "0D:wa<cr> 429:  noremap d "0d 430:  nnoremap dd "0dd:wa<cr> 431:  noremap c "0c 432:  noremap C " C 433:  noremap x " x 434:  vnoremap x "+x:wa<cr> 435:  vnoremap d "0d:wa<cr> 436:  vnoremap y "+y 437:  nnoremap y "+y 438:  nnoremap p "+p 439:  nnoremap <leader>p p 440:  nnoremap <leader>q q 441:  " Softwrap  442:  nmap D "0dg  443:  nmap V vg  444:  nmap A g a  445:  map 0 g  446:  map 9 g  447:  nmap <m-8> :set lines=200<cr>:set columns=200<cr> 448:  nnoremap <c-l> :wa<cr>:bnext<CR> 449:  nnoremap <c-h> :wa<cr>:bprevious<CR> 450:  " tnoremap <Esc> <C- >  451:  " nnoremap < :tabp<CR> 452:  " nnoremap > :tabn<CR> 453:  " nnoremap <leader>n :tabedit  <CR> 454:  imap <M-j> <C-j> 455:  map <M-m> <cmd>HopChar1<cr>  456:  " map <S-b> ?  <CR> 457:  map <M-w> <cmd>HopChar1<cr>  458:  map <M-b> <cmd>HopChar1<cr>  459:   460:  map <S-C-q> <Esc>:qa!<CR> 461:  map <m-q> <esc>:wq<cr> 462:  " map <S-m-q> <esc>:wq<cr>  463:  map <m-c> <esc>:close<cr> 464:  map <M-d> <Esc>:bdelete<CR> 465:  noremap gf gq 466:  noremap f / 467:  noremap F ? 468:  " inoremap .
<Esc> .
<CR><Esc><leader>j 469:  " inoremap .
<Space> .
<CR><Esc><leader>j 470:  " noremap S :S  471:  " 472:  " 473:  " function! Sneak() 474:  "     hi! link Sneak Normal 475:  "     hi! link SneakScope Normal 476:  "     execute 'normal!  <Plug>Sneak s' 477:  "     syntax on 478:  " endfunction 479:    480:  " map N <Plug>Sneak , 481:  " map t <Plug>(smalls-excursion) 482:  " let g:smalls auto jump=1 483:  " let g:smalls auto jump timeout=0 484:   485:   486:      " xmap t <Plug>Sneak s 487:      " xmap T <Plug>Sneak S 488:     " omap t <Plug>Sneak s 489:      " omap T <Plug>Sneak S  490:      " math maps    491:  noremap # /  <CR>v?  <CR> 492:  noremap   /  <CR>hv?  <CR>l 493:  noremap @ / <CR>v? <CR> 494:  map j gj 495:  map k gk 496:  noremap <Space> .
@??? 497:  vnoremap <Space> t <cr> 498:  map K <C-u> 499:  map J <C-d> 500:  " map <C-j> zz 501:  " map <C-k> zb 502:  map <C-j> <C-e>jj 503:  map <C-k> <C-y>kk 504:  nnoremap <leader>j J 505:  nnoremap <leader>k K 506:  map ' " 507:  nnoremap <Backspace> i<Backspace><Esc> 508:  nmap <leader>c gc 509:  noremap <A-r> <C-r> 510:  nnoremap ` ~ 511:  nnoremap . 
511:++++ ` 512:  noremap <m-1> <C-o> 513:  noremap <m-2> <C-i> 514:  noremap <D-d> <C-d> 515:  map ;s <Esc>:w<CR> 516:  " noremap <A-d> <C-d> 517:  " noremap <M-d> <C-d> 518:  noremap <D-u> <C-u> 519:  noremap <A-u> <C-u> 520:  " this mapping Enter key to <C-y> to chose the current highlight item  521:  " and close the selection list, same as other IDEs.
@??? 522:   523:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 524:  nnoremap <silent> <Leader>y :YRGetElem<CR> 525:  map ' " 526:  inoremap <D-]> <C-x><C-]> 527:  inoremap <C-]> <C-x><C-]> 528:   529:   530:   531:   532:  au FileType tex,text,md nmap 0 g  533:  au FileType tex,text,md noremap 9 g  534:  " au FileType tex,text,md nmap A g a 535:  au FileType tex,text,md nnoremap dd " g dg g  536:  " au FileType tex,text,md inoremap <A-i> <CR> 537:  " au FileType tex,text,md nnoremap <A-i> a<CR> 538:  " au FileType tex,text,md nnoremap <CR> J0 539:   540:  "au FileType tex,text,md inoremap <A><CR> <CR> 541:  " au FileType tex,text,md inoremap <CR> <Esc><CR> 542:  " au FileType tex,text,md inoremap . 
542:++++ .
<CR><ESC>J0i 543:  " au FileType tex,text,md inoremap <leader>. 
543:++++ .
@??? 544:   545:  " au FileType tex,text,md inoremap .
<CR> .
<CR><ESC>J0 546:  " au FileType tex,text,md inoremap .
<Space> .
<CR><ESC>J0 547:  " au FileType tex,text,md inoremap .
<ESC> .
<CR><ESC>J0 548:  " au FileType tex,text,md inoremap <leader>cr <CR> 549:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 550:   551:   552:   553:   554:  "Neovim mappings 555:  " :tnoremap <S-h> <C- ><C-n><C-w>h 556:  " :tnoremap <S-j> <C- ><C-n><C-w>j 557:  " :tnoremap <S-k> <C- ><C-n><C-w>k 558:  " :tnoremap <S-l> <C- ><C-n><C-w>l 559:  " tnoremap <Left> :tbnext<CR> 560:  " tnoremap <Right> :tbprevious<CR> 561:  " tnoremap <Leader>e <C- ><C-n>  562:  " imap <Backspace>   563:  "  Sneak 564:  " let g:sneak#use ic scs = 1 565:   566:  map t <cmd>HopChar1AC<cr> 567:  map T <cmd>HopChar1BC<cr> 568:  map <m-.
> <cmd>HopChar1<cr>.
@??? 569:  map <m-space> <cmd>HopWord<cr> 570:  " map <S-m-Space> <cmd>HopWord<cr> 571:   572:   573:   574:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 575:  "  map t :syntaxoff <Plug>Sneak s 576:  " map T <Plug>Sneak S 577:  " let g:sneak#s next = 1 578:  "  let g:sneak#label = 1 579:   580:  " FZF  581:  " 582:  noremap <m-t> :wa<cr>:BTags<cr> 583:  noremap <m-y> :wa<cr>:Tags<cr> 584:  noremap S <Esc> :wa<cr>:BLines<CR> 585:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 586:  " Line search mapping  587:  " function! Jumpback()  588:  "   K=bufname() 589:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 590:  " endfunction 591:  noremap <m-b> <Esc>:wa<cr>:Buffers<CR> 592:  " noremap F <Esc>:GFiles<CR> 593:  map <A-e> :wa<cr>:FZF ~<CR>  594:  map <m-f> :wa<cr>:FZF ~<CR> 595:   596:   597:  " Latex stuff 598:  "  599:  noremap <leader>ss :wa<cr>:source  MYVIMRC<cr>  600:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 601:  noremap <c-p> :<c-r>+<cr> 602:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 603:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 604:   605:   606:  " vimtex settings 607:  " 608:  " 609:  " 610:  " let g:vimtex view general viewer 611:  "            = '/Applications/Skim.
app/Contents/SharedSupport/displayline' 612:  " let g:vimtex view general options = '-r @line @pdf @tex' 613:  let g:latex view general viewer = 'zathura' 614:  let g:vimtex view method = "zathura" 615:  let g:vimtex view automatic = 0 616:   617:  "fvim 618:  " 619:    620:  function! Profile() 621:  profile start profile.
log 622:  profile func * 623:  profile file * 624:  endfunction  625:   626:  function! Sentence() 627:    let g:buf = bufname() 628:    silent !sentence.
sh   629:    echo "Print any character" 630:    call getchar() 631:    e sentence   632:    " echo "Print any character" 633:    " call getchar() 634:    BLines 635:  endfunction 636:  noremap L :wa<cr>:TZAtaraxisOff<cr><cr>:call Sentence()<cr> 637:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 638:  function! Git()  639:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   640:    AsyncStop 641:  endfunction 642:  " autocmd BufWritePost *  call Git() 643:  "  644:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 645:   646:   647:  function! ToggleQuickFix() 648:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 649:          TZAtaraxisOff  650:          let filename=bufname(" ") 651:          let errors=".
/build/" . 
651:++++ filename[:-4].
"log" 652:          exec "cf" errors  653:          copen 654:      else 655:          cclose  656:          TZAtaraxisOn 657:          endif 658:  endfunction 659:   660:  au filetype tex nnoremap <silent> <leader>s :wa<cr>:call ToggleQuickFix()<cr> 661:   662:      663:  function! ClearLatex()  664:    silent !rm .
/build/* 665:  endfunction 666:   667:  function! CompileLatex()   668:    silent !rm .
/build/* 669:    let buf = bufname() 670:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   671:    execute "buffer" buf 672:    call ViewPdf() 673:  endfunction 674:   675:  function! ViewPdf()  676:  wa 677:  let buf = bufname()  678:  let linenumber=line(".
") 679:  let colnumber=col(".
") 680:  let filename=bufname(" ") 681:  let filenamePDF=".
/build/" . 
681:++++ filename[:-4].
"pdf" 682:  let execstr="silent !zathura --synctex-forward " . 
682:++++ linenumber . 
682:++++ ":" . 
682:++++ colnumber . 
682:++++ ":" . 
682:++++ filename . 
682:++++ " " . 
682:++++ filenamePDF . 
682:++++ " &>/dev/null &" 683:  " . 
683:++++ "&>/dev/null &" 684:  exec execstr 685:  execute "buffer" buf 686:  endfunction  687:  nmap <leader>v :wa<cr>:call ViewPdf()<cr> 688:  " nmap <leader>v :VimtexView<cr> 689:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 690:  nmap <leader>l :wa<cr>:call CompileLatex()<cr> 691:  nmap <leader>cl :call ClearLatex()<cr> 692:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 693:   694:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  695:  "" mathml shenanigans 696:   697:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 698:   699:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  700:   701:  " <cr> 702:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 703:   704:  " nmap <leader>l :VimtexCompile<CR> 705:  " nmap <leader>s <Esc>:VimtexErrors<CR> 706:  " map <leader>g :ZenMode<CR>  707:  nmap <leader>g :w<cr>:TZAtaraxis<CR> 708:  nmap <leader>p :Denite neoyank -default-action=append<CR> 709:   710:  " NB: this supports "rp that replaces the selection by the contents of @r 711:  " Auto updating Ctags 712:  " autocmd VimLeave * exe ":silent ! ctags -R" 713:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 714:   715:  "Nerd Tree 716:  " map <leader>e :NERDTreeFind<CR> 717:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 718:  " 719:  " 720:  " 721:  "Vifm 722:  let g:vifmLiveCwd=1 723:  let g:vifmUseCurrent=1 724:   725:  "Autosave and autocommit    726:  " let g:updatetime = 10000 727:  let g:auto save = 1 728:  " .
vimrc 729:  let g:auto save events = ["CursorHold"] 730:  "au FileType vim let g:autosave = 0 731:  let g:auto save in insert mode = 0 732:  let g:auto save silent = 1 733:   734:  "Git autocommit  (private git repo) 735:   736:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  737:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 738:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 739:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 740:  " "Highlight 741:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 742:  " hi MatchParen guibg=NONE guifg=green gui=NONE 743:      " 744:      " 745:      " 746:      " UndoTree   747:  noremap <Leader>u :TZAtaraxisOff<cr>:wa<cr>:UndotreeToggle<CR> 748:          " If undotree is opened, it is likely one wants to interact with it.
@??? 749:          let g:undotree SetFocusWhenToggle=1 750:          noremap <D-z> u 751:          noremap <S-C-z> <C-r> 752:          " noremap <C-z> u 753:      "   754:   755:   756:  " Latex shortcuts 757:  "Latex compile.
@??? 758:  "them to an external terminal and run there.
@??? 759:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 760:  "Zathura forward search 761:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 762:  "source ~/.
anyname   763:  "au filetype tex filetype indent off 764:  "  GUI Stuff    765:  " command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 766:   767:  " Deoplete 768:   769:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
769:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 770:  set directory= HOME/Downloads 771:   772:   773:  "LUA 774:  " lua <<EOF 775:  " require'nvim-tree'.
setup() 776:  " EOF 777:  lua <<EOF 778:  require'nvim-treesitter.
configs'.
setup    779:      -- 780:      highlight =   enable = true  , 781:      incremental selection =   enable = true  , 782:      textobjects =   enable = true  , 783:      indent =   enable = true  ,  784:    785:  EOF 786:   787:  lua <<EOF 788:  require'nvim-treesitter.
configs'.
setup   789:    incremental selection =   790:      enable = true, 791:      keymaps =   792:        init selection = "gnn", 793:        node incremental = "grn", 794:        scope incremental = "grc", 795:        node decremental = "grm", 796:       , 797:     , 798:    799:  EOF 800:   801:  " lua <<EOF 802:  " require('neoscroll').
setup  803:  "     -- All these keys will be mapped to their corresponding default scrolling animation 804:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 805:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 806:  "     hide cursor = true,          -- Hide cursor while scrolling 807:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 808:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 809:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 810:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 811:  "     easing function = nil,        -- Default easing function 812:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 813:  "     post hook = nil,              -- Function to run after the scrolling animation ends 814:  "       815:  " EOF 816:  "  817:  " " set foldlevel=20 818:  " " set foldmethod=expr 819:  " " set foldexpr=nvim treesitter#foldexpr() 820:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  821:   822:  " vsnip stuff  823:  " Use <Tab> and <S-Tab> to navigate through popup menu 824:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 825:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 826:   827:  " Set completeopt to have a better completion experience 828:  set completeopt=menuone,noinsert,noselect 829:   830:  " Avoid showing message extra message when using completion 831:  set shortmess+=c 832:  let g:vsnip snippet dir = '~/dotfiles/snippets'   833:   834:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 835:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 836:  "  837:  " " Expand or jump 838:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 839:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 840:   841:  " Jump forward or backward 842:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 843:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 844:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 845:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 846:   847:  " 848:  " set foldexpr=nvim treesitter#foldexpr() 849:  " 850:  lua << EOF 851:  local nvim lsp = require('lspconfig') 852:  -- Use an on attach function to only map the following keys 853:  -- after the language server attaches to the current buffer 854:  local on attach = function(client, bufnr) 855:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 856:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 857:  -- Enable completion triggered by <c-x><c-o> 858:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 859:   860:    -- Mappings.
@??? 861:    local opts =   noremap=true, silent=true   862:   863:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 864:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 865:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 866:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 867:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 868:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 869:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 870:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 871:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 872:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 873:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 874:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 875:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 876:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 877:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 878:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 879:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 880:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 881:   882:  end 883:   884:  -- Use a loop to conveniently call 'setup' on multiple servers and 885:  -- map buffer local keybindings when the language server attaches 886:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  887:  --for  , lsp in ipairs(servers) do 888:  --nvim lsp[lsp].
setup   889:   --   on attach = on attach, 890:    --  flags =   891:     --   debounce text changes = 150, 892:     --   893:  --    894:  --end 895:  EOF 896:   897:   898:  "Lsp install 899:   900:  lua << EOF 901:  local function setup servers() 902:    require'lspinstall'.
setup() 903:    local servers = require'lspinstall'.
installed servers() 904:    for  , server in pairs(servers) do 905:      require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  906:    end 907:  end 908:   909:  setup servers() 910:   911:  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 912:  require'lspinstall'.
post install hook = function () 913:    setup servers() -- reload installed servers 914:    vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 915:  end 916:  EOF 917:   918:  nnoremap <leader>y :FZFNeoyank<cr> 919:  nnoremap <leader>Y :FZFNeoyank  P<cr> 920:  vnoremap <leader>y :FZFNeoyankSelection<cr> 921:   922:  nnoremap <leader>p :FZFNeoyank +<cr>  923:  nnoremap <leader>1 :FZFNeoyank 1<cr> 924:  nnoremap <leader>P :FZFNeoyank " P+<cr> 925:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 926:   927:   928:  " Replace the default dictionary completion with fzf-based fuzzy completion 929:   930:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   931:  inoremap <cr> <cr> <backspace> 932:   933:  set completeopt=menu,menuone,noselect 934:   935:  lua <<EOF 936:    -- Setup cmp.
@??? 937:   938:  local has words before = function() 939:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 940:      return false 941:    end 942:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 943:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 944:  end 945:   946:  local feedkey = function(key, mode) 947:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 948:  end 949:   950:  local cmp = require('cmp') 951:  cmp.
setup   952:   snippet =   953:        expand = function(args) 954:          -- For `vsnip` user.
@??? 955:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 956:    -- .
.
. 
956:++++ Your other configuration .
.
.
@??? 957:  end, 958:   , 959:  mapping =   960:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 961:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 962:        ['<C-x>'] = cmp.
mapping.
complete(), 963:        ['<C-e>'] = cmp.
mapping.
close(), 964:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 965:  -- .
.
. 
965:++++ Your other mappings .
.
.
@??? 966:  ["<Tab>"] = cmp.
mapping(function(fallback)  967:        if vim.
fn["vsnip#expandable"]() == 1 968:          then 969:          feedkey("<Plug>(vsnip-expand)", "") 970:       elseif cmp.
visible() then 971:          cmp.
select next item() 972:        elseif has words before() then  973:          cmp.
complete() 974:        else  975:          fallback() -- The fallback function sends a already mapped key. 
975:++++ In this case, it's probably `<Tab>`.
@??? 976:        end 977:      end,   "i", "s"  ), 978:  ["<S-Tab>"] = cmp.
mapping(function() 979:        if vim.
fn.
pumvisible() == 1 then 980:          feedkey("<C-p>", "n")   981:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 982:          feedkey("<Plug>(vsnip-jump-prev)", "") 983:        end 984:      end,   "i", "s"  ), 985:  -- .
.
. 
985:++++ Your other mappings .
.
.
@??? 986:   987:   , 988:  requires =   989:        990:        'quangnguyen30192/cmp-nvim-tags', 991:        -- if you want the sources is available for some file types 992:        ft =   993:          'tex', 994:          'latex'  995:          996:        997:       , 998:  -- .
.
. 
998:++++ Your other configuration .
.
.
@??? 999:  sources =   1000:        -- For vsnip user.
@??? 1001:    name = 'tags', keyword length = 1000  , 1002:     name = 'vsnip', keyword length = 1000  , 1003:           -- For luasnip user.
@??? 1004:        --   name = 'luasnip'  , 1005:  -- For ultisnips user.
@??? 1006:        --   name = 'ultisnips'  ,   1007:       name = 'buffer', keyword length = 1000  , 1008:       name = 'omni', keyword length = 4 , 1009:         --   name = 'spell'  ,  1010:       name = 'nvim lsp', keyword length = 4  , 1011:        --  name = 'treesitter', keyword length = 4  , 1012:  --  name = 'latex symbols'  , 1013:   , 1014:  completion =   1015:      autocomplete = false  1016:        1017:    1018:  EOF 1019:   1020:  "  1021:  " " LSP mappings    1022:  " "" LSP mappings  1023:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1024:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1025:  "  1026:  "  1027:  lua <<EOF 1028:   require('nvim comment').
setup( 1029:    1030:     -- Linters prefer comment and line to have a space in between markers 1031:     marker padding = true, 1032:     -- should comment out empty or whitespace only lines 1033:     comment empty = true, 1034:     -- Should key mappings be created 1035:     create mappings = true, 1036:     -- Normal mode mapping left hand side 1037:     line mapping = "gc", 1038:     -- Visual/Operator mapping left hand side 1039:     operator mapping = "<leader>c", 1040:     -- Hook function to call before commenting takes place 1041:     --hook = nil  1042:     1043:   ) 1044:  EOF 1045:  nmap <leader>c gc 1046:  lua <<EOF 1047:  local true zen = require("true-zen") 1048:  true zen.
setup(  1049:   	ui =   1050:   		bottom =   1051:   			laststatus = 0, 1052:   			ruler = false, 1053:   			showmode = false, 1054:   			showcmd = false, 1055:   			cmdheight = 1, 1056:   		 , 1057:   		top =   1058:   			showtabline = 0, 1059:   		 , 1060:   		left =   1061:   			number = false, 1062:   			relativenumber = false, 1063:   			signcolumn = "no", 1064:   		 , 1065:   	 , 1066:   	modes =   1067:   		ataraxis =   1068:   			-- left padding = 20, 1069:   			-- right padding = 20, 1070:   			top padding = 0, 1071:   			bottom padding = 0, 1072:   			ideal writing area width =  60 , 1073:   			auto padding = true, 1074:   			keep default fold fillchars = true, 1075:   			custom bg =  "none", "" , 1076:   			bg configuration = true, 1077:   			quit = "untoggle", 1078:   			ignore floating windows = true, 1079:   			affected higroups =   1080:   				NonText = true, 1081:   				FoldColumn = true, 1082:   				ColorColumn = true, 1083:   				VertSplit = true, 1084:   				StatusLine = true, 1085:   				StatusLineNC = true, 1086:   				SignColumn = true, 1087:   			 , 1088:   		 , 1089:   		focus =   1090:   			margin of error = 5, 1091:   			focus method = "experimental" 1092:   		 , 1093:   	 , 1094:   	integrations =   1095:   		vim gitgutter = false, 1096:   		galaxyline = false, 1097:   		tmux = false, 1098:   		gitsigns = false, 1099:   		nvim bufferline = false, 1100:   		limelight = false, 1101:   		twilight = false, 1102:   		vim airline = false, 1103:   		vim powerline = false, 1104:   		vim signify = false, 1105:   		express line = false, 1106:   		lualine = false, 1107:   		lightline = false, 1108:   		feline = false, 1109:   	 , 1110:   	misc =   1111:   		on off commands = true, 1112:   		ui elements commands = false, 1113:   		cursor by mode = false, 1114:   	  1115:    ) 1116:  EOF 1117:  lua <<EOF 1118:  require('feline').
setup(  1119:      preset = 'noicon' 1120:       ) 1121:  EOF 1122:  "  1123:  "  1124:  "  1125:  " " lua <<EOF 1126:  " " require('lualine').
setup  1127:  " " options =  disabled filetypes =  'txt', 'text'   1128:  " "   1129:  " " EOF 1130:  " " lua << EOF 1131:  " "   require("zen-mode").
setup   1132:  " "   window =   1133:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1133:++++ Set to 1 to keep the same as Normal 1134:  " "     -- height and width can be: 1135:  " "     -- * an absolute number of cells when > 1 1136:  " "     -- * a percentage of the width / height of the editor when <= 1 1137:  " "     -- * a function that returns the width or the height 1138:  " "     width = .
66, -- width of the Zen window 1139:  " "     height = 1, -- height of the Zen window 1140:  " "     -- by default, no options are changed for the Zen window 1141:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1142:  " "     options =   1143:  " "       -- signcolumn = "no", -- disable signcolumn 1144:  " "       -- number = false, -- disable number column 1145:  " "       -- relativenumber = false, -- disable relative numbers 1146:  " "       -- cursorline = false, -- disable cursorline 1147:  " "       -- cursorcolumn = false, -- disable cursor column 1148:  " "       -- foldcolumn = "0", -- disable fold column 1149:  " "       -- list = false, -- disable whitespace characters 1150:  " "      , 1151:  " "    , 1152:  " "   plugins =   1153:  " "     -- disable some global vim options (vim.
o.
.
.
) 1154:  " "     -- comment the lines to not apply the options 1155:  " "     options =   1156:  " "       enabled = true, 1157:  " "       ruler = false, -- disables the ruler text in the cmd line area 1158:  " "       showcmd = false, -- disables the command in the last line of the screen 1159:  " "      , 1160:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1161:  " "     gitsigns =   enabled = false  , -- disables git signs 1162:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1163:  " "     -- this will change the font size on kitty when in zen mode 1164:  " "     -- to make this work, you need to set the following kitty options: 1165:  " "     -- - allow remote control socket-only 1166:  " "     -- - listen on unix:/tmp/kitty 1167:  " "     kitty =   1168:  " "       enabled = false, 1169:  " "       font = "+4", -- font size increment 1170:  " "      , 1171:  " "    , 1172:  " "   -- callback where you can add custom code when the Zen window opens 1173:  " "   on open = function(win) 1174:  " "   end, 1175:  " "   -- callback where you can add custom code when the Zen window closes 1176:  " "   on close = function() 1177:  " "   end, 1178:  " "   1179:  " " EOF 1180:  lua <<EOF 1181:  require('telescope').
setup  1182:    defaults =   1183:      -- Default configuration for telescope goes here: 1184:      -- config key = value, 1185:      mappings =   1186:        i =   1187:          -- map actions.
which key to <C-h> (default: <C-/>) 1188:          -- actions.
which key shows the mappings for your picker, 1189:          -- e.
g. 
1189:++++ git  create, delete, .
.
.  
branch for the git branches picker 1190:          ["<C-h>"] = "which key" 1191:          1192:        1193:     , 1194:    pickers =   1195:      -- Default configuration for builtin pickers goes here: 1196:      -- picker name =   1197:      --   picker config key = value, 1198:      --   .
.
.
@??? 1199:      --   1200:      -- Now the picker config key will be applied every time you call this 1201:      -- builtin picker  1202:     , 1203:    extensions =   1204:      -- Your extension configuration goes here: 1205:      -- extension name =   1206:      --   extension config key = value, 1207:      --   1208:      -- please take a look at the readme of the extension you want to configure 1209:      1210:     1211:  EOF 1212:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1213:  lua <<EOF 1214:  require('fm-nvim').
setup  1215:  	config = 1216:  	  1217:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1218:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1219:  		height   = .
9, 1220:  		width    = .
9, 1221:  	  1222:    1223:  EOF 1224:   1225:  " lua <<EOF 1226:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1227:  " require("prosesitter"):setup(  1228:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1228:++++ "/prosesitter/vale", 1229:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1229:++++ "/prosesitter/vale cfg.
ini", 1230:  " 	--optional extra queries overrides existing queries 1231:  " 	queries =    1232:  " 		-- see the piece on adding queries on how to use this  1233:  " 		-- (not needed if using an out of the box supported language 1234:  " 		py =    1235:  " 			strings = "[(string) ] @capture", 1236:  " 			comments = "[(comment)+ ] @capture", 1237:  " 		 , 1238:  " 	 ,  1239:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1240:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1241:  " 	-- weather to lint strings, comments or both for a language 1242:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1243:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1244:  " 	auto enable = false, -- do not start linting files on open (default = true) 1245:  " 	default cmds = false,  -- do not add commands (default = true) 1246:  "  ) 1247:  " EOF 1248:  lua <<EOF 1249:  require('spellsitter').
setup   1250:    hl = 'SpellBad',  1251:    captures =   ,  -- set to    to spellcheck everything 1252:   1253:    -- Spellchecker to use. 
1253:++++ values: 1254:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1255:    -- * ffi: built-in spell checker using the FFI to access the 1256:    --   internal spell check() function 1257:    spellchecker = 'vimfn', 1258:    1259:  EOF 1260:  let g:firenvim config =    1261:        'globalSettings':   1262:            'alt': 'all', 1263:          , 1264:        'localSettings':   1265:            '.
*':   1266:                'cmdline': 'neovim', 1267:                'content': 'text', 1268:                'priority': 0, 1269:                'selector': 'textarea', 1270:                'takeover': 'always', 1271:             , 1272:          1273:      1274:   1275:  " lua << EOF 1276:  " require("stabilize").
setup( 1277:  "   1278:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1279:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1280:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1281:  " --		filetype =   "help", "list", "Trouble"  , 1282:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1283:  " --	  1284:  "   1285:  " ) 1286:  " EOF 1287:  " lua <<EOF 1288:  " require('dd').
setup() 1289:  " EOF 1290:  " lua << EOF 1291:  " local opts =   1292:  "   log level = 'info', 1293:  "   auto session enable last session = false, 1294:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1295:  "   auto session enabled = false, 1296:  "   auto save enabled = nil, 1297:  "   auto restore enabled = nil, 1298:  "   auto session suppress dirs = nil 1299:  "   1300:  " require('auto-session').
setup(opts) 1301:  " EOF 1302:   1303:  " lua << EOF 1304:  " if exists('g:started by firenvim') 1305:  "   ZenMode 1306:  " else 1307:  "   set laststatus=2 1308:  " endif 1309:   1310:  " lua <<EOF 1311:  " require('neoclip').
setup(  1312:  "       history = 1000, 1313:  "       enable persistant history = false, 1314:  "       db path = vim.
fn.
stdpath("data") .
. 
1314:++++ "/databases/neoclip.
sqlite3", 1315:  "       filter = nil, 1316:  "       preview = true, 1317:  "       default register = '"', 1318:  "       content spec column = false, 1319:  "       on paste =   1320:  "         set reg = false, 1321:  "        , 1322:  "       keys =   1323:  "         i =   1324:  "           select = '<cr>', 1325:  "           paste = '<c-p>', 1326:  "           paste behind = '<c-k>', 1327:  "           custom =   , 1328:  "          , 1329:  "         n =   1330:  "           select = '<cr>', 1331:  "           paste = 'p', 1332:  "           paste behind = 'P', 1333:  "           custom =   , 1334:  "          , 1335:  "        , 1336:  "     ) 1337:  " EOF 1338:  " lua <<EOF 1339:  " local saga = require 'lspsaga'  1340:  " saga.
init lsp saga()  1341:  "   1342:  " EOF 1343:   1344:  "au FileType tex autocmd User SneakLeave set syntax=tex 1345:  "au FileType tex autocmd User SneakEnter set syntax=text 1346:  " 1347:  " 1348:  " 1349:   1350:  " 1351:  " 'tCommen20 1352:  " let g:tcommentMapLeaderOp1=';'  1353:  " "map <leader>c <Leader>    1354:  "" function! RestoreRegister() 1355:  "   let @" = s:restore reg 1356:  "   return '' 1357:  " endfunction 1358:  " function! s:Repl() 1359:  "     let s:restore reg = @" 1360:  "     return "p@=RestoreRegister() <cr>" 1361:  " endfunction 1362:  " 1363:  " " NB: this supports "rp that replaces the selection by the contents of @r 1364:  " vnoremap <silent> <expr> p <sid>Repl() 1365:   1366:  " " Change Color when entering 1367:  " Insert Mode augroup CursorLine 1368:  "    au! 1369:  "  if has("gui running") 1370:  "  else 1371:  "      au InsertEnter * setlocal cursorline 1372:  "        au InsertLeave * setlocal nocursorline 1373:  "     endif 1374:  "        augroup END 1375:  " function! DelTagOfFile(file) 1376:  "   let fullpath = a:file 1377:  "   let cwd = getcwd() 1378:  "   let tagfilename = cwd . 
1378:++++ "/tags" 1379:  "   let f = substitute(fullpath, cwd . 
1379:++++ "/", "", "") 1380:  "   let f = escape(f, '.
/') 1381:  "   let cmd = 'sed -i "/' . 
1381:++++ f . 
1381:++++ '/d" "' . 
1381:++++ tagfilename . 
1381:++++ '"' 1382:  "   let resp = system(cmd) 1383:  " endfunction 1384:  " function! Break() 1385:  "  let n=130-virtcol('.
') 1386:  "  <Esc>ni <Esc><Esc> 1387:  " endfunction 1388:  " function Gitview() 1389:  "    cd /root/web2 ; git add . 
1389:++++ ; git commit -m -a ; git push origin gh-pages 1390:  " endfunction 1391:  " fuzzy search 1392:  " function! s:config fuzzyall(.
.
.
) abort 1393:  "   return extend(copy(  1394:  "       'converters': [ 1395:  "         incsearch#config#fuzzy#converter(), 1396:  "         incsearch#config#fuzzyspell#converter() 1397:  "       ], 1398:  "      ), get(a:, 1,    1399:  "   )) 1400:  " endfunction 1401:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1402:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1403:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1404:  " map f <Plug>(incsearch-fuzzyspell-/) 1405:  " map F <Plug>(incsearch-fuzzyspell-?) 1406:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1407:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1408:  " let g:deoplete#enable at startup = 1 1409:  " map <silent> <leader>g :silent call Gitview() 1410:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1411:  "Load some useful plugins with vundle  1412:  " 1413:  "asdf asldfkj 1414:  " hi! link Sneak Normal 1415:  " hi! link SneakScope Normal   test test2 test3 1416:   1417:  " command! -bang -nargs=* Rg 1418:  "     call fzf#vim#grep( 1419:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1420:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1421:  " 1422:  "" au GUIEnter * set fullscreen 1423:  " if has("gui running") 1424:    " set fuoptions=maxvert,maxhorz 1425:    " au GUIEnter * set fullscreen 1426:     " set foldcolumn=10 1427:     " set formatoptions=ant 1428:  " set wrapmargin=0 1429:  " set nohlsearch 1430:  " set tags= ~/workspacemodules/tags 1431:  " highlight SignColumn guibg=bg 1432:  "       endif     1433:  " if has("autocmd") 1434:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1435:  " endif 1436:    " autocmd BufWinLeave *.
* mkview 1437:    " autocmd BufWinEnter *.
* silent loadview 1438:     " set foldcolumn=2 1439:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1440:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1441:  " inoremap <cr> <esc>:w<cr>i<cr>  1442:  "" set tm=500 1443:  " set macmeta 1444:  " auto reload vimrc when editing it 1445:  " let g:github function style = "italic" 1446:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1447:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1448:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1449:  " Load the colorscheme 1450:  " colorscheme github dark 1451:  "" terminal color settings  1452:  " Example config in VimScript 1453:  " let g:github function style = "italic" 1454:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1455:   1456:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1457:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1458:  " Load the colorscheme 1459:  " colorscheme github dark  1460:  " set background=dark  1461:  " if has("gui running")	" GUI color and font settings 1462:  "   set guifont=Fira  Code:h22 1463:  "   " colorscheme gruvbox  1464:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1465:  " else 1466:  "  colorscheme one 1467:  " colorscheme material   1468:  " let g:material style = 'palenight'   1469:  " let g:material style = 'lighter' 1470:  " highlight Normal ctermbg=none  1471:  "   " let g:vimtex quickfix method='pplatex'  1472:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1473:  "    function! UpdateSkim(status) 1474:  "      if !a:status | return | endif 1475:  " 1476:  "      let l:out = b:vimtex.
out() 1477:  "      let l:tex = expand(' :p') 1478:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1479:  "      if !empty(system('pgrep Skim')) 1480:  "        call extend(l:cmd, ['-g']) 1481:  "      endif 1482:  "      if has('nvim') 1483:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1484:  "      elseif has('job') 1485:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1486:  "      else 1487:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1488:  "      endif 1489:  "    endfunction 1490:  " let g:vimtex latexmk build dir = '.
/build' 1491:  "   'build dir' : '.
/build', 1492:  "  1493:  "     let g:vimtex compiler latexmk =   1494:  "       'background' : 0, 1495:  "           'callback' : 1, 1496:  "       'continuous' : 1, 1497:  "       'options' : [ 1498:  "         '-pdf', 1499:  "         '-verbose', 1500:  "         '-file-line-error', 1501:  "         '-synctex=1', 1502:  "         '-interaction=nonstopmode', 1503:  "       ], 1504:  "        1505:  " let g:vimtex compiler progname = 'nvr' 1506:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1507:  " let g:vimtex quickfix mode = 1 1508:  " let g:vimtex fold enabled = 0 1509:  " let g:vimtex fold manual = 1 1510:   1511:   1512:  " let g:vimtex fold types=   1513:  "             'preamble' :   , 1514:  "             'comments' :  'enabled' : 1 , 1515:  "             'markers' :   , 1516:  "             'sections' :   1517:  "               'parse levels' : 0, 1518:  "               'sections' : [       1519:  "                 ' (add)?part', 1520:  "                 ' (chapter|addchap)', 1521:  "                 ' (section|addsec)', 1522:  "                 'subsection', 1523:  "                 'subsubsection', 1524:  "               ], 1525:  "               'parts' : [          1526:  "                 'appendix', 1527:  "                 'frontmatter', 1528:  "                 'mainmatter', 1529:  "                 'backmatter', 1530:  "               ], 1531:  "              , 1532:  "              1533:   1534:  " autocmd TermClose * if v:event == 12 || v:event == 0 bdelete endif 1535:   