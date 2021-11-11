1:  call plug#begin('~/.
vim/plugged')  2:  " Plug 'reedes/vim-pencil'  3:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   4:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    5:  Plug 'lewis6991/spellsitter.
nvim' 6:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   7:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   8:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   9:  Plug 'phaazon/hop.
nvim'     10:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   11:  " Plug 'luukvbaal/stabilize.
nvim'  12:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     13:  Plug 'is0n/fm-nvim' 14:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   15:  Plug 'nvim-lua/plenary.
nvim' 16:  Plug 'nvim-telescope/telescope.
nvim', 17:  " Plug 'nvim-treesitter/playground' 18:  Plug 'famiu/feline.
nvim' 19:  " Plug 'hoob3rt/lualine.
nvim', 20:  " Plug 'karb94/neoscroll.
nvim' 21:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   22:  " Plug 'f3fora/cmp-spell'     23:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   24:  "Plug 'vim-commentary' 25:  "Plug 'b3nj5m1n/kommentary' 26:  " Plug 'simnalamburt/vim-mundo' 27:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    28:  " Plug 'glepnir/lspsaga.
nvim' 29:  " If you are using Vim-Plug 30:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    31:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    32:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   33:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   34:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    35:  Plug 'hrsh7th/vim-vsnip' 36:  Plug 'hrsh7th/vim-vsnip-integ' 37:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    38:  " Plug 'ray-x/cmp-treesitter' 39:  " For luasnip user.
@??? 40:  Plug 'L3MON4D3/LuaSnip' 41:  " Plug 'saadparwaiz1/cmp luasnip' 42:  "Plug 'steelsojka/completion-buffers' 43:  Plug 'voldikss/vim-floaterm' 44:  " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   45:  "Plug 'pope/vim-obsession' 46:  "Plug 'xolox/vim-easytags' 47:  " Plug 'nvim-lua/plenary.
nvim' 48:  " Plug 'windwp/nvim-spectre' 49:  " Plug 'xolox/vim-misc' 50:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   51:  Plug 'kevinhwang91/nvim-bqf' 52:  Plug 'justinhoward/fzf-neoyank'  53:  " Plug 'svermeulen/vim-cutlass' 54:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 55:  " Plug 'kyazdani42/nvim-tree.
lua',  56:  "Plug 'nvim-lua/completion-nvim' 57:  Plug 'hrsh7th/vim-vsnip-integ' 58:  Plug 'neovim/nvim-lspconfig' 59:  Plug 'nvim-lua/diagnostic-nvim' 60:  " Plug 'rafamadriz/friendly-snippets'   61:  " Make sure you use single quotes 62:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 63:  " Plug 'junegunn/vim-easy-align' 64:  " Any valid git URL is allowed 65:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 66:  " Group dependencies, vim-snippets depends on ultisnips  67:   " Plug 'tpope/vim-surround' 68:  " Plug 'neovim/node-host' 69:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   70:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    71:  Plug 'rakr/vim-one'  72:  " Plug 'cyansprite/Extract' 73:  Plug 'gioele/vim-autoswap' 74:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   75:  " Plug 't9md/vim-smalls' 76:  Plug 'skywind3000/asyncrun.
vim' 77:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   78:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 79:  " please comment next line 80:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     81:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    82:  " Plug 'rmagatti/auto-session',    'branch': 'main'  83:  " Plug 'justinmk/vim-sneak' 84:  Plug 'Shougo/neoyank.
vim'  85:  if has('nvim') 86:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   87:   else 88:     Plug 'Shougo/denite.
nvim' 89:     Plug 'roxma/nvim-yarp' 90:     Plug 'roxma/vim-hug-neovim-rpc' 91:   endif 92:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 93:  " Plug 'tpope/vim-fugitive' 94:  Plug 'eugen0329/vim-esearch' 95:  Plug 'haya14busa/incsearch.
vim' 96:  Plug 'haya14busa/incsearch-fuzzy.
vim' 97:  Plug 'Raimondi/vim search objects' 98:  " Plug 'terryma/vim-multiple-cursors' 99:  " " On-demand loading 100:  " Plug 'junegunn/goyo.
vim' 101:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   102:  "  Plug 'morhetz/gruvbox' 103:  Plug 'sainnhe/gruvbox-material' 104:  " Plug 'vim-pandoc/vim-pandoc' 105:  " Plug 'vim-pandoc/vim-pandoc-syntax'  106:  " Plugin outside ~/.
vim/plugged with post-update hook 107:  Plug 'junegunn/fzf',   'do': '.
/install --all'   108:  Plug 'junegunn/fzf.
vim' 109:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   110:   '  111:  Plug 'lifepillar/vim-solarized8' 112:  Plug 'vim-scripts/AutoTag' 113:  " Plug 'vim-scripts/vim-auto-save' 114:  " Plug 'vim-pandoc/vim-pandoc' 115:   116:  " Plug 'yashamon/vim-snippets' 117:   118:  " Plug 'lervag/vimtex' 119:  " colorschemes 120:  "  121:  Plug 'kyazdani42/blue-moon'   122:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   123:   124:  Plug 'reedes/vim-colors-pencil' 125:   126:  Plug 'vim-scripts/oceanlight' 127:   128:  Plug 'gosukiwi/vim-atom-dark' 129:   130:  Plug 'dracula/vim' 131:   132:  " Unmanaged plugin (manually installed and updated) 133:  " Plug '~/my-prototype-plugin' 134:  " Add plugins to &runtimepath 135:  call plug#end()  136:   137:  "Neovide  138:  " 139:  " let g:neovide maximized=v:true  140:  " let g:neovide fullscreen=v:true 141:  let g:neovide transparency=0.
15 142:   143:  "General Settings     144:  set title  145:  set titlestring 146:  " set noshowmode 147:  " set noruler        148:  " set laststatus=1  149:  set noshowcmd    150:  set noshowmatch   151:  set wrap   152:  set pb=10  153:  set switchbuf=newtab 154:  " let g:python3 host prog='/usr/bin/python3.
9' 155:  " let g:python3 host prog='/usr/bin/python3.
9' 156:   157:  set clipboard+=unnamedplus	" yank to the system register (*) by default 158:  " TAB setting  159:  set expandtab        "replace <TAB> with spaces 160:  set softtabstop=3  161:  set shiftwidth=3  162:  set termguicolors   163:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 164:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 165:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 166:  set spelllang=en    167:   if exists('g:started by firenvim') 168:         au UIEnter  set noshowmode 169:         au UIEnter  set noruler 170:         au UIEnter  set laststatus=0 171:         au UIEnter  set noshowcmd 172:  "       " au UIEnter set lines=140  173:  "       " au UIEnter set columns=140 174:   else 175:   " autocmd VimEnter * TZAtaraxis 176:   endif 177:  au VIMEnter set spell  178:  set timeoutlen=0 179:  au VIMEnter * let g:surround 108 =   180:        'q':  " `` r''" 181:           182:  let g:tex flavor = "latex" 183:  let g:tex isk = '@,48-57,58, ,192-255' 184:  let g:tex conceal = "" 185:  set tags+=~/workspacemodules/tags 186:  "set tags+=~/Dropbox/workspace/tags 187:    " set formatoptions=ant 188:    " set wrapmargin=1 189:  " set shada="NONE"   190:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 191:  set wrap 192:  set linebreak  193:  set formatoptions+=w " set breakat=" " 194:  " set list  " list disables linebreak 195:  set textwidth=0 196:  set wrapmargin=-1 197:  set hid 198:  set autochdir 199:  set guioptions-=r 200:  set guioptions-=l 201:  set inccommand=split 202:  set mouse= 203:  set bs=2		" allow backspacing over everything in insert mode  204:  set undofile                " Save undo's after file closes 205:  set undodir=undo " where to save undo histories 206:  set undolevels=1000000         " How many undos 207:  set undoreload=10000		 208:  set ruler		" show the cursor position all the time 209:  set autoread		" auto read when file is changed from outside 210:  set nohlsearch 211:  " set noswapfile 212:  " set showmatch		" Cursor shows matching ) and   213:  set nocursorline 214:  set showmode		" Show current mode 215:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 216:  set wildmenu            " wild char completion menu 217:  let maplocalleader = "  " 218:  " ignore these files while expanding wild chars 219:  set wildignore=*.
o,*.
class,*.
pyc 220:  set incsearch		" incremental search 221:  set nobackup		" no *~ backup files 222:  set ignorecase		" ignore case when searching 223:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 224:  set smarttab		" insert tabs on the start of a line according to context 225:   226:  " disable sound on errors 227:  set noerrorbells 228:  " set novisualbell  229:  set guifont=Fira  Code:h18 230:   colorscheme one 231:  " colorscheme material   232:  " let g:material style = 'palenight'   233:  " let g:material style = 'lighter' 234:  " highlight Normal ctermbg=none 235:  set tm=1000 236:  " set macreta  237:  hi clear SpellBad 238:  hi SpellBad cterm=underline 239:  " Set style for gVim 240:  hi SpellBad gui=underline 241:  " 242:  "Autocommands, au 243:  " 244:   245:   246:  autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  247:  au FileType Makefile set noexpandtab 248:  au FileType tex,text set spelllang=en 249:  au FileType tex,text,md set spell 250:  au FileType vim,md set list 251:  " au FileType tex,text,md syntax sync fromstart 252:  au FileType tex,text,md silent execute "!echo " . 
252:++++ v:servername . 
252:++++ " > ~/servername.
txt"    253:  au FileType tex,text,md hi SpellBad cterm=undercurl 254:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 255:  au Filetype tex,text,md set tw=50 256:   257:  " au FileType tex set background=dark  258:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  259:  au TextYankPost * call neoyank# append()  260:   261:           "Some functions 262:  function Light() 263:  set background=light 264:  " colorscheme oceanlight  265:  colorscheme one  266:  " highlight Normal ctermfg=black 267:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 268:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 269:  endfunction    270:   271:  " function Light() 272:  " set background=light 273:  " " colorscheme oceanlight  274:  " colorscheme material  275:  " let g:material style = 'lighter'   276:  "    " highlight Normal ctermfg=black 277:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 278:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 279:  " endfunction    280:  function Bluemoon() 281:     set background=dark 282:     colorscheme blue-moon 283:     " colorscheme material   284:  endfunction 285:   286:  function Deepocean() 287:     set background=dark 288:     colorscheme material   289:     let g:material style = 'deep ocean'   290:  endfunction 291:   292:  function Palenight() 293:     set background=dark 294:     " colorscheme blue-moon 295:     colorscheme material   296:     let g:material style = 'palenight'   297:  endfunction 298:  function Lighter() 299:     set background=light 300:     " colorscheme blue-moon 301:     colorscheme material   302:     let g:material style = 'lighter'   303:  endfunction 304:   305:  function Dark() 306:     set background=dark 307:     colorscheme one   308:  endfunction 309:   310:  set expandtab        "replace <TAB> with spaces 311:  set softtabstop=3  312:  set shiftwidth=3  313:   314:  "---------------------------------------------------------------------------  315:  " USEFUL SHORTCUTS 316:  "---------------------------------------------------------------------------  317:  " set leader to ;  318:  let mapleader=';' 319:  let g:mapleader=';' 320:   321:  " open the error console 322:  " move to next error 323:   324:  " Bash like keys for the command line 325:  cnoremap <C-A>      <Home> 326:  cnoremap <C-E>      <End> 327:  cnoremap <C-K>      <C-U> 328:   329:  " ,p toggles paste mode 330:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 331:   332:  " allow multiple indentation/deindentation in visual mode 333:  vnoremap < <gv 334:  vnoremap > >gv 335:   336:  " :cd. 
336:++++ change working directory to that of the current file 337:  cmap cd. 
337:++++ lcd  :p:h 338:   339:   340:  " Enable omni completion. 
340:++++ (Ctrl-X Ctrl-O) 341:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 342:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 343:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 344:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 345:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 346:  autocmd FileType c set omnifunc=ccomplete#Complete 347:  autocmd FileType java set omnifunc=javacomplete#Complete  348:  autocmd FileType tex set omnifunc=latex#Complete 349:  autocmd Filetype tex setlocal fo=nt 350:  autocmd Filetype tex setlocal wrapmargin=0 351:  " use syntax complete if nothing else available 352:  if has("autocmd") && exists("+omnifunc") 353:    autocmd Filetype * 354:                 	if &omnifunc == "" | 355:                 		setlocal omnifunc=syntaxcomplete#Complete | 356:                 	endif 357:  endif 358:   359:  set cot-=preview "disable doc preview in omnicomplete 360:   361:  " make CSS omnicompletion work for SASS and SCSS 362:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 363:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 364:   365:  "---------------------------------------------------------------------------  366:  " ENCODING SETTINGS 367:  "---------------------------------------------------------------------------  368:  set encoding=utf-8                                   369:  set termencoding=utf-8 370:  set fileencoding=utf-8 371:   372:  "maps remaps mappings   373:  " 374:  " 375:  " terminal mappings 376:  tnoremap <A-Esc> <C- ><C-n> 377:  nmap <A-S-t> :wa<cr>:te<cr> 378:    379:  vnoremap <Leader>U ""y: s/<C-r>" 380:  noremap <leader>r :wa<cr>:e<cr> 381:  noremap <leader>hh :set tw=50<cr> 382:  noremap <leader>w :set tw=0<cr>  383:  " noremap q <nop> 384:  map <leader>q q 385:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 386:  nnoremap <leader>rr :source  MYVIMRC<CR> 387:  "nnoremap <leader>e :NERDTreeFind<CR> 388:  nnoremap <leader>e :wa<cr>:Vifm<cr> 389:  nnoremap <leader>t :wa<cr>:FloatermToggle<cr> 390:  nnoremap <c-,> :cprevious<cr> 391:  nnoremap <c-.
> :cnext<cr>  392:  inoremap <cr> <cr> <backspace> 393:  vnoremap <m-s> :s///gc<left><left><left><left> 394:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 395:  nnoremap <m-s> : s///gc<left><left><left><left> 396:  vmap <M-.
> t.
<CR>h 397:  nmap <M-.
> t.
<CR>h 398:  nnoremap <up> 1<C-U> 399:  imap <up> <nop> 400:  nnoremap <down> 1<C-D> 401:  imap <down> <nop> 402:  noremap <ScrollWheelUp>      <nop> 403:  noremap <S-ScrollWheelUp>    <nop> 404:  noremap <C-ScrollWheelUp>    <nop> 405:  noremap <ScrollWheelDown>    <nop> 406:  noremap <S-ScrollWheelDown>  <nop> 407:  noremap <C-ScrollWheelDown>  <nop> 408:  noremap <ScrollWheelLeft>    <nop> 409:  noremap <S-ScrollWheelLeft>  <nop> 410:  noremap <C-ScrollWheelLeft>  <nop> 411:  noremap <ScrollWheelRight>   <nop> 412:  noremap <S-ScrollWheelRight> <nop> 413:  noremap <C-ScrollWheelRight> <nop> 414:  inoremap   / 415:  inoremap /   416:   417:  " copy paste stuff  418:  "  419:  vnoremap p "0dP 420:  noremap D "0D:wa<cr> 421:  noremap d "0d 422:  nnoremap dd "0dd:wa<cr> 423:  noremap c "0c 424:  noremap C " C 425:  noremap x " x 426:  vnoremap x "+x:wa<cr> 427:  vnoremap d "0d:wa<cr> 428:  vnoremap y "+y 429:  nnoremap y "+y 430:  nnoremap p "+p 431:  nnoremap <leader>p p 432:  nnoremap <leader>q q 433:  " Softwrap  434:  nmap D "0dg  435:  nmap V vg  436:  nmap A g a  437:  map 0 g  438:  map 9 g  439:  nmap <m-8> :set lines=200<cr>:set columns=200<cr> 440:  nnoremap <c-l> :wa<cr>:bnext<CR> 441:  nnoremap <c-h> :wa<cr>:bprevious<CR> 442:  " tnoremap <Esc> <C- >  443:  " nnoremap < :tabp<CR> 444:  " nnoremap > :tabn<CR> 445:  " nnoremap <leader>n :tabedit  <CR> 446:  imap <M-j> <C-j> 447:  map <S-m> <cmd>HopChar1<cr>  448:  " map <S-b> ?  <CR> 449:  map <S-w> <cmd>HopChar1<cr>  450:  map <S-b> <cmd>HopChar1<cr>  451:   452:  map <S-C-q> <Esc>:qa!<CR> 453:  map <m-q> <esc>:wq<cr> 454:  " map <S-m-q> <esc>:wq<cr>  455:  map <m-c> <esc>:close<cr> 456:  map <M-d> <Esc>:bdelete<CR> 457:  noremap gf gq 458:  noremap f / 459:  noremap F ? 460:  " inoremap .
<Esc> .
<CR><Esc><leader>j 461:  " inoremap .
<Space> .
<CR><Esc><leader>j 462:  " noremap S :S  463:  " 464:  " 465:  " function! Sneak() 466:  "     hi! link Sneak Normal 467:  "     hi! link SneakScope Normal 468:  "     execute 'normal!  <Plug>Sneak s' 469:  "     syntax on 470:  " endfunction 471:    472:  " map N <Plug>Sneak , 473:  " map t <Plug>(smalls-excursion) 474:  " let g:smalls auto jump=1 475:  " let g:smalls auto jump timeout=0 476:   477:   478:      " xmap t <Plug>Sneak s 479:      " xmap T <Plug>Sneak S 480:     " omap t <Plug>Sneak s 481:      " omap T <Plug>Sneak S  482:      " math maps    483:  noremap # /  <CR>v?  <CR> 484:  noremap   /  <CR>hv?  <CR>l 485:  noremap @ / <CR>v? <CR> 486:  map j gj 487:  map k gk 488:  noremap <Space> .
@??? 489:  vnoremap <Space> t <cr> 490:  map K <C-u> 491:  map J <C-d> 492:  " map <C-j> zz 493:  " map <C-k> zb 494:  map <C-j> <C-e>jj 495:  map <C-k> <C-y>kk 496:  nnoremap <leader>j J 497:  nnoremap <leader>k K 498:  map ' " 499:  nnoremap <Backspace> i<Backspace><Esc> 500:  nmap <leader>c gc 501:  noremap <A-r> <C-r> 502:  nnoremap ` ~ 503:  nnoremap . 
503:++++ ` 504:  noremap <m-1> <C-o> 505:  noremap <m-2> <C-i> 506:  noremap <D-d> <C-d> 507:  map ;s <Esc>:w<CR> 508:  " noremap <A-d> <C-d> 509:  " noremap <M-d> <C-d> 510:  noremap <D-u> <C-u> 511:  noremap <A-u> <C-u> 512:  " this mapping Enter key to <C-y> to chose the current highlight item  513:  " and close the selection list, same as other IDEs.
@??? 514:   515:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 516:  nnoremap <silent> <Leader>y :YRGetElem<CR> 517:  map ' " 518:  inoremap <D-]> <C-x><C-]> 519:  inoremap <C-]> <C-x><C-]> 520:   521:   522:   523:   524:  au FileType tex,text,md nmap 0 g  525:  au FileType tex,text,md noremap 9 g  526:  " au FileType tex,text,md nmap A g a 527:  au FileType tex,text,md nnoremap dd " g dg g  528:  " au FileType tex,text,md inoremap <A-i> <CR> 529:  " au FileType tex,text,md nnoremap <A-i> a<CR> 530:  " au FileType tex,text,md nnoremap <CR> J0 531:   532:  "au FileType tex,text,md inoremap <A><CR> <CR> 533:  " au FileType tex,text,md inoremap <CR> <Esc><CR> 534:  " au FileType tex,text,md inoremap . 
534:++++ .
<CR><ESC>J0i 535:  " au FileType tex,text,md inoremap <leader>. 
535:++++ .
@??? 536:   537:  " au FileType tex,text,md inoremap .
<CR> .
<CR><ESC>J0 538:  " au FileType tex,text,md inoremap .
<Space> .
<CR><ESC>J0 539:  " au FileType tex,text,md inoremap .
<ESC> .
<CR><ESC>J0 540:  " au FileType tex,text,md inoremap <leader>cr <CR> 541:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 542:   543:   544:   545:   546:  "Neovim mappings 547:  " :tnoremap <S-h> <C- ><C-n><C-w>h 548:  " :tnoremap <S-j> <C- ><C-n><C-w>j 549:  " :tnoremap <S-k> <C- ><C-n><C-w>k 550:  " :tnoremap <S-l> <C- ><C-n><C-w>l 551:  " tnoremap <Left> :tbnext<CR> 552:  " tnoremap <Right> :tbprevious<CR> 553:  " tnoremap <Leader>e <C- ><C-n>  554:  " imap <Backspace>   555:  "  Sneak 556:  " let g:sneak#use ic scs = 1 557:   558:  map t <cmd>HopChar1AC<cr> 559:  map T <cmd>HopChar1BC<cr> 560:  map <m-.
> <cmd>HopChar1<cr>.
@??? 561:  map <m-Space> <cmd>HopWord<cr> 562:  " map <S-m-Space> <cmd>HopWord<cr> 563:   564:   565:   566:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 567:  "  map t :syntaxoff <Plug>Sneak s 568:  " map T <Plug>Sneak S 569:  " let g:sneak#s next = 1 570:  "  let g:sneak#label = 1 571:   572:  " FZF  573:  " 574:  noremap <m-t> :wa<cr>:BTags<cr> 575:  noremap <m-y> :wa<cr>:Tags<cr> 576:  noremap S <Esc> :wa<cr>:BLines<CR> 577:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 578:  " Line search mapping  579:  " function! Jumpback()  580:  "   K=bufname() 581:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 582:  " endfunction 583:  noremap <leader>ss :wa<cr>:source  MYVIMRC<cr>  584:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 585:  noremap <c-p> :<c-r>+<cr> 586:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 587:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 588:  noremap <m-b> <Esc>:wa<cr>:Buffers<CR> 589:  " noremap F <Esc>:GFiles<CR> 590:  map <A-e> :wa<cr>:FZF ~<CR> 591:   592:  " vimtex settings 593:  " 594:  " 595:  " 596:  " let g:vimtex view general viewer 597:  "            = '/Applications/Skim.
app/Contents/SharedSupport/displayline' 598:  " let g:vimtex view general options = '-r @line @pdf @tex' 599:  let g:latex view general viewer = 'zathura' 600:  let g:vimtex view method = "zathura" 601:  let g:vimtex view automatic = 0 602:   603:  "fvim 604:  " 605:    606:  function! Profile() 607:  profile start profile.
log 608:  profile func * 609:  profile file * 610:  endfunction  611:   612:  function! Sentence() 613:    let g:buf = bufname() 614:    silent !sentence.
sh   615:    echo "Print any character" 616:    call getchar() 617:    e sentence   618:    " echo "Print any character" 619:    " call getchar() 620:    BLines 621:  endfunction 622:  noremap L :wa<cr>:TZAtaraxisOff<cr><cr>:call Sentence()<cr> 623:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 624:  function! Git()  625:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   626:    AsyncStop 627:  endfunction 628:  " autocmd BufWritePost *  call Git() 629:  "  630:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 631:   632:   633:  function! ToggleQuickFix() 634:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 635:          TZAtaraxisOff  636:          let filename=bufname(" ") 637:          let errors=".
/build/" . 
637:++++ filename[:-4].
"log" 638:          exec "cf" errors  639:          copen 640:      else 641:          cclose  642:          TZAtaraxisOn 643:          endif 644:  endfunction 645:   646:  au filetype tex nnoremap <silent> <leader>s :wa<cr>:call ToggleQuickFix()<cr> 647:   648:      649:  function! ClearLatex()  650:    silent !rm .
/build/* 651:  endfunction 652:   653:  function! CompileLatex()   654:    silent !rm .
/build/* 655:    let buf = bufname() 656:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   657:    execute "buffer" buf 658:    call ViewPdf() 659:  endfunction 660:   661:  function! ViewPdf()  662:  wa 663:  let buf = bufname()  664:  let linenumber=line(".
") 665:  let colnumber=col(".
") 666:  let filename=bufname(" ") 667:  let filenamePDF=".
/build/" . 
667:++++ filename[:-4].
"pdf" 668:  let execstr="silent !zathura --synctex-forward " . 
668:++++ linenumber . 
668:++++ ":" . 
668:++++ colnumber . 
668:++++ ":" . 
668:++++ filename . 
668:++++ " " . 
668:++++ filenamePDF . 
668:++++ " &>/dev/null &" 669:  " . 
669:++++ "&>/dev/null &" 670:  exec execstr 671:  execute "buffer" buf 672:  endfunction  673:  nmap <leader>v :wa<cr>:call ViewPdf()<cr> 674:  " nmap <leader>v :VimtexView<cr> 675:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 676:  nmap <leader>l :wa<cr>:call CompileLatex()<cr> 677:  nmap <leader>cl :call ClearLatex()<cr> 678:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 679:   680:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  681:  "" mathml shenanigans 682:   683:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 684:   685:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  686:   687:  " <cr> 688:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 689:   690:  " nmap <leader>l :VimtexCompile<CR> 691:  " nmap <leader>s <Esc>:VimtexErrors<CR> 692:  " map <leader>g :ZenMode<CR>  693:  nmap <leader>g :w<cr>:TZAtaraxis<CR> 694:  nmap <leader>p :Denite neoyank -default-action=append<CR> 695:   696:  " NB: this supports "rp that replaces the selection by the contents of @r 697:  " Auto updating Ctags 698:  " autocmd VimLeave * exe ":silent ! ctags -R" 699:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 700:   701:  "Nerd Tree 702:  " map <leader>e :NERDTreeFind<CR> 703:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 704:  " 705:  " 706:  " 707:  "Vifm 708:  let g:vifmLiveCwd=1 709:  let g:vifmUseCurrent=1 710:   711:  "Autosave and autocommit    712:  " let g:updatetime = 10000 713:  let g:auto save = 1 714:  " .
vimrc 715:  let g:auto save events = ["CursorHold"] 716:  "au FileType vim let g:autosave = 0 717:  let g:auto save in insert mode = 0 718:  let g:auto save silent = 0 719:   720:  "Git autocommit  (private git repo) 721:   722:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  723:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 724:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 725:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 726:  " "Highlight 727:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 728:  " hi MatchParen guibg=NONE guifg=green gui=NONE 729:      " 730:      " 731:      " 732:      " UndoTree   733:  noremap <Leader>u :TZAtaraxisOff<cr>:wa<cr>:UndotreeToggle<CR> 734:          " If undotree is opened, it is likely one wants to interact with it.
@??? 735:          let g:undotree SetFocusWhenToggle=1 736:          noremap <D-z> u 737:          noremap <S-C-z> <C-r> 738:          " noremap <C-z> u 739:      "   740:   741:   742:  " Latex shortcuts 743:  "Latex compile.
@??? 744:  "them to an external terminal and run there.
@??? 745:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 746:  "Zathura forward search 747:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 748:  "source ~/.
anyname   749:  "au filetype tex filetype indent off 750:  "  GUI Stuff    751:  command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 752:   753:  " Deoplete 754:   755:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
755:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 756:  set directory= HOME/Downloads 757:   758:   759:  "LUA 760:  " lua <<EOF 761:  " require'nvim-tree'.
setup() 762:  " EOF 763:  lua <<EOF 764:  require'nvim-treesitter.
configs'.
setup    765:      -- 766:      highlight =   enable = true  , 767:      incremental selection =   enable = true  , 768:      textobjects =   enable = true  , 769:      indent =   enable = true  ,  770:    771:  EOF 772:   773:  lua <<EOF 774:  require'nvim-treesitter.
configs'.
setup   775:    incremental selection =   776:      enable = true, 777:      keymaps =   778:        init selection = "gnn", 779:        node incremental = "grn", 780:        scope incremental = "grc", 781:        node decremental = "grm", 782:       , 783:     , 784:    785:  EOF 786:   787:  " lua <<EOF 788:  " require('neoscroll').
setup  789:  "     -- All these keys will be mapped to their corresponding default scrolling animation 790:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 791:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 792:  "     hide cursor = true,          -- Hide cursor while scrolling 793:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 794:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 795:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 796:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 797:  "     easing function = nil,        -- Default easing function 798:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 799:  "     post hook = nil,              -- Function to run after the scrolling animation ends 800:  "       801:  " EOF 802:  "  803:  " " set foldlevel=20 804:  " " set foldmethod=expr 805:  " " set foldexpr=nvim treesitter#foldexpr() 806:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  807:   808:  " vsnip stuff  809:  " Use <Tab> and <S-Tab> to navigate through popup menu 810:  inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 811:  inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 812:   813:  " Set completeopt to have a better completion experience 814:  set completeopt=menuone,noinsert,noselect 815:   816:  " Avoid showing message extra message when using completion 817:  set shortmess+=c 818:  let g:vsnip snippet dir = '~/dotfiles/snippets'   819:   820:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 821:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 822:  "  823:  " " Expand or jump 824:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 825:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 826:   827:  " Jump forward or backward 828:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 829:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 830:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 831:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 832:   833:  " 834:  " set foldexpr=nvim treesitter#foldexpr() 835:  " 836:  lua << EOF 837:  local nvim lsp = require('lspconfig') 838:  -- Use an on attach function to only map the following keys 839:  -- after the language server attaches to the current buffer 840:  local on attach = function(client, bufnr) 841:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 842:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 843:  -- Enable completion triggered by <c-x><c-o> 844:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 845:   846:    -- Mappings.
@??? 847:    local opts =   noremap=true, silent=true   848:   849:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 850:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 851:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 852:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 853:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 854:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 855:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 856:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 857:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 858:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 859:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 860:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 861:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 862:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 863:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 864:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 865:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 866:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 867:   868:  end 869:   870:  -- Use a loop to conveniently call 'setup' on multiple servers and 871:  -- map buffer local keybindings when the language server attaches 872:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  873:  --for  , lsp in ipairs(servers) do 874:  --nvim lsp[lsp].
setup   875:   --   on attach = on attach, 876:    --  flags =   877:     --   debounce text changes = 150, 878:     --   879:  --    880:  --end 881:  EOF 882:   883:   884:  "Lsp install 885:   886:  " lua << EOF 887:  " local function setup servers() 888:  "   require'lspinstall'.
setup() 889:  "   local servers = require'lspinstall'.
installed servers() 890:  "   for  , server in pairs(servers) do 891:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  892:  "   end 893:  " end 894:  "  895:  " setup servers() 896:  "  897:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 898:  " require'lspinstall'.
post install hook = function () 899:  "   setup servers() -- reload installed servers 900:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 901:  " end 902:  " EOF 903:   904:  nnoremap <leader>y :FZFNeoyank<cr> 905:  nnoremap <leader>Y :FZFNeoyank  P<cr> 906:  vnoremap <leader>y :FZFNeoyankSelection<cr> 907:   908:  nnoremap <leader>p :FZFNeoyank +<cr>  909:  nnoremap <leader>1 :FZFNeoyank 1<cr> 910:  nnoremap <leader>P :FZFNeoyank " P+<cr> 911:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 912:   913:   914:  " Replace the default dictionary completion with fzf-based fuzzy completion 915:   916:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   917:  inoremap <cr> <cr> <backspace> 918:   919:  set completeopt=menu,menuone,noselect 920:   921:  lua <<EOF 922:    -- Setup cmp.
@??? 923:   924:  local has words before = function() 925:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 926:      return false 927:    end 928:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 929:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 930:  end 931:   932:  local feedkey = function(key, mode) 933:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 934:  end 935:   936:  local cmp = require('cmp') 937:  cmp.
setup   938:   snippet =   939:        expand = function(args) 940:          -- For `vsnip` user.
@??? 941:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 942:    -- .
.
. 
942:++++ Your other configuration .
.
.
@??? 943:  end, 944:   , 945:  mapping =   946:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 947:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 948:        ['<C-x>'] = cmp.
mapping.
complete(), 949:        ['<C-e>'] = cmp.
mapping.
close(), 950:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 951:  -- .
.
. 
951:++++ Your other mappings .
.
.
@??? 952:  ["<Tab>"] = cmp.
mapping(function(fallback)  953:        if vim.
fn["vsnip#available"]() == 1 954:          then 955:          feedkey("<Plug>(vsnip-expand-or-jump)", "") 956:       elseif cmp.
visible() then 957:          cmp.
select next item() 958:        elseif has words before() then  959:          cmp.
complete() 960:        else  961:          fallback() -- The fallback function sends a already mapped key. 
961:++++ In this case, it's probably `<Tab>`.
@??? 962:        end 963:      end,   "i", "s"  ), 964:  ["<S-Tab>"] = cmp.
mapping(function() 965:        if vim.
fn.
pumvisible() == 1 then 966:          feedkey("<C-p>", "n")   967:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 968:          feedkey("<Plug>(vsnip-jump-prev)", "") 969:        end 970:      end,   "i", "s"  ), 971:  -- .
.
. 
971:++++ Your other mappings .
.
.
@??? 972:   973:   , 974:  requires =   975:        976:        'quangnguyen30192/cmp-nvim-tags', 977:        -- if you want the sources is available for some file types 978:        ft =   979:          'tex', 980:          'latex'  981:          982:        983:       , 984:  -- .
.
. 
984:++++ Your other configuration .
.
.
@??? 985:  sources =   986:        -- For vsnip user.
@??? 987:    name = 'tags', keyword length = 1000  , 988:     name = 'vsnip', keyword length = 1000  , 989:           -- For luasnip user.
@??? 990:        --   name = 'luasnip'  , 991:  -- For ultisnips user.
@??? 992:        --   name = 'ultisnips'  ,   993:       name = 'buffer', keyword length = 1000  , 994:       name = 'omni', keyword length = 4 , 995:         --   name = 'spell'  ,  996:       name = 'nvim lsp', keyword length = 4  , 997:        --  name = 'treesitter', keyword length = 4  , 998:  --  name = 'latex symbols'  , 999:   , 1000:  completion =   1001:      autocomplete = false  1002:        1003:    1004:  EOF 1005:   1006:  "  1007:  " " LSP mappings    1008:  " "" LSP mappings  1009:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1010:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1011:  "  1012:  "  1013:  lua <<EOF 1014:   require('nvim comment').
setup( 1015:    1016:     -- Linters prefer comment and line to have a space in between markers 1017:     marker padding = true, 1018:     -- should comment out empty or whitespace only lines 1019:     comment empty = true, 1020:     -- Should key mappings be created 1021:     create mappings = true, 1022:     -- Normal mode mapping left hand side 1023:     line mapping = "gc", 1024:     -- Visual/Operator mapping left hand side 1025:     operator mapping = "<leader>c", 1026:     -- Hook function to call before commenting takes place 1027:     --hook = nil  1028:     1029:   ) 1030:  EOF 1031:  nmap <leader>c gc 1032:  lua <<EOF 1033:  local true zen = require("true-zen") 1034:  true zen.
setup(  1035:   	ui =   1036:   		bottom =   1037:   			laststatus = 0, 1038:   			ruler = false, 1039:   			showmode = false, 1040:   			showcmd = false, 1041:   			cmdheight = 1, 1042:   		 , 1043:   		top =   1044:   			showtabline = 0, 1045:   		 , 1046:   		left =   1047:   			number = false, 1048:   			relativenumber = false, 1049:   			signcolumn = "no", 1050:   		 , 1051:   	 , 1052:   	modes =   1053:   		ataraxis =   1054:   			-- left padding = 20, 1055:   			-- right padding = 20, 1056:   			top padding = 0, 1057:   			bottom padding = 0, 1058:   			ideal writing area width =  60 , 1059:   			auto padding = true, 1060:   			keep default fold fillchars = true, 1061:   			custom bg =  "none", "" , 1062:   			bg configuration = true, 1063:   			quit = "untoggle", 1064:   			ignore floating windows = true, 1065:   			affected higroups =   1066:   				NonText = true, 1067:   				FoldColumn = true, 1068:   				ColorColumn = true, 1069:   				VertSplit = true, 1070:   				StatusLine = true, 1071:   				StatusLineNC = true, 1072:   				SignColumn = true, 1073:   			 , 1074:   		 , 1075:   		focus =   1076:   			margin of error = 5, 1077:   			focus method = "experimental" 1078:   		 , 1079:   	 , 1080:   	integrations =   1081:   		vim gitgutter = false, 1082:   		galaxyline = false, 1083:   		tmux = false, 1084:   		gitsigns = false, 1085:   		nvim bufferline = false, 1086:   		limelight = false, 1087:   		twilight = false, 1088:   		vim airline = false, 1089:   		vim powerline = false, 1090:   		vim signify = false, 1091:   		express line = false, 1092:   		lualine = false, 1093:   		lightline = false, 1094:   		feline = false, 1095:   	 , 1096:   	misc =   1097:   		on off commands = true, 1098:   		ui elements commands = false, 1099:   		cursor by mode = false, 1100:   	  1101:    ) 1102:  EOF 1103:  lua <<EOF 1104:  require('feline').
setup(  1105:      preset = 'noicon' 1106:       ) 1107:  EOF 1108:  "  1109:  "  1110:  "  1111:  " " lua <<EOF 1112:  " " require('lualine').
setup  1113:  " " options =  disabled filetypes =  'txt', 'text'   1114:  " "   1115:  " " EOF 1116:  " " lua << EOF 1117:  " "   require("zen-mode").
setup   1118:  " "   window =   1119:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1119:++++ Set to 1 to keep the same as Normal 1120:  " "     -- height and width can be: 1121:  " "     -- * an absolute number of cells when > 1 1122:  " "     -- * a percentage of the width / height of the editor when <= 1 1123:  " "     -- * a function that returns the width or the height 1124:  " "     width = .
66, -- width of the Zen window 1125:  " "     height = 1, -- height of the Zen window 1126:  " "     -- by default, no options are changed for the Zen window 1127:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1128:  " "     options =   1129:  " "       -- signcolumn = "no", -- disable signcolumn 1130:  " "       -- number = false, -- disable number column 1131:  " "       -- relativenumber = false, -- disable relative numbers 1132:  " "       -- cursorline = false, -- disable cursorline 1133:  " "       -- cursorcolumn = false, -- disable cursor column 1134:  " "       -- foldcolumn = "0", -- disable fold column 1135:  " "       -- list = false, -- disable whitespace characters 1136:  " "      , 1137:  " "    , 1138:  " "   plugins =   1139:  " "     -- disable some global vim options (vim.
o.
.
.
) 1140:  " "     -- comment the lines to not apply the options 1141:  " "     options =   1142:  " "       enabled = true, 1143:  " "       ruler = false, -- disables the ruler text in the cmd line area 1144:  " "       showcmd = false, -- disables the command in the last line of the screen 1145:  " "      , 1146:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1147:  " "     gitsigns =   enabled = false  , -- disables git signs 1148:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1149:  " "     -- this will change the font size on kitty when in zen mode 1150:  " "     -- to make this work, you need to set the following kitty options: 1151:  " "     -- - allow remote control socket-only 1152:  " "     -- - listen on unix:/tmp/kitty 1153:  " "     kitty =   1154:  " "       enabled = false, 1155:  " "       font = "+4", -- font size increment 1156:  " "      , 1157:  " "    , 1158:  " "   -- callback where you can add custom code when the Zen window opens 1159:  " "   on open = function(win) 1160:  " "   end, 1161:  " "   -- callback where you can add custom code when the Zen window closes 1162:  " "   on close = function() 1163:  " "   end, 1164:  " "   1165:  " " EOF 1166:  lua <<EOF 1167:  require('telescope').
setup  1168:    defaults =   1169:      -- Default configuration for telescope goes here: 1170:      -- config key = value, 1171:      mappings =   1172:        i =   1173:          -- map actions.
which key to <C-h> (default: <C-/>) 1174:          -- actions.
which key shows the mappings for your picker, 1175:          -- e.
g. 
1175:++++ git  create, delete, .
.
.  
branch for the git branches picker 1176:          ["<C-h>"] = "which key" 1177:          1178:        1179:     , 1180:    pickers =   1181:      -- Default configuration for builtin pickers goes here: 1182:      -- picker name =   1183:      --   picker config key = value, 1184:      --   .
.
.
@??? 1185:      --   1186:      -- Now the picker config key will be applied every time you call this 1187:      -- builtin picker  1188:     , 1189:    extensions =   1190:      -- Your extension configuration goes here: 1191:      -- extension name =   1192:      --   extension config key = value, 1193:      --   1194:      -- please take a look at the readme of the extension you want to configure 1195:      1196:     1197:  EOF 1198:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1199:  lua <<EOF 1200:  require('fm-nvim').
setup  1201:  	config = 1202:  	  1203:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1204:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1205:  		height   = .
9, 1206:  		width    = .
9, 1207:  	  1208:    1209:  EOF 1210:   1211:  " lua <<EOF 1212:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1213:  " require("prosesitter"):setup(  1214:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1214:++++ "/prosesitter/vale", 1215:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1215:++++ "/prosesitter/vale cfg.
ini", 1216:  " 	--optional extra queries overrides existing queries 1217:  " 	queries =    1218:  " 		-- see the piece on adding queries on how to use this  1219:  " 		-- (not needed if using an out of the box supported language 1220:  " 		py =    1221:  " 			strings = "[(string) ] @capture", 1222:  " 			comments = "[(comment)+ ] @capture", 1223:  " 		 , 1224:  " 	 ,  1225:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1226:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1227:  " 	-- weather to lint strings, comments or both for a language 1228:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1229:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1230:  " 	auto enable = false, -- do not start linting files on open (default = true) 1231:  " 	default cmds = false,  -- do not add commands (default = true) 1232:  "  ) 1233:  " EOF 1234:  lua <<EOF 1235:  require('spellsitter').
setup   1236:    hl = 'SpellBad',  1237:    captures =   ,  -- set to    to spellcheck everything 1238:   1239:    -- Spellchecker to use. 
1239:++++ values: 1240:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1241:    -- * ffi: built-in spell checker using the FFI to access the 1242:    --   internal spell check() function 1243:    spellchecker = 'vimfn', 1244:    1245:  EOF 1246:  let g:firenvim config =    1247:        'globalSettings':   1248:            'alt': 'all', 1249:          , 1250:        'localSettings':   1251:            '.
*':   1252:                'cmdline': 'neovim', 1253:                'content': 'text', 1254:                'priority': 0, 1255:                'selector': 'textarea', 1256:                'takeover': 'always', 1257:             , 1258:          1259:      1260:  lua <<EOF 1261:  local lsp installer = require("nvim-lsp-installer") 1262:   1263:  -- Register a handler that will be called for all installed servers.
@??? 1264:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 1265:  lsp installer.
on server ready(function(server) 1266:      local opts =    1267:   1268:      -- (optional) Customize the options passed to the server 1269:      -- if server.
name == "tsserver" then 1270:      --     opts.
root dir = function() .
.
. 
1270:++++ end 1271:      -- end 1272:   1273:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 1274:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/ADVANCED README.
md 1275:      server:setup(opts) 1276:  end) 1277:  EOF 1278:  " lua << EOF 1279:  " require("stabilize").
setup( 1280:  "   1281:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1282:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1283:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1284:  " --		filetype =   "help", "list", "Trouble"  , 1285:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1286:  " --	  1287:  "   1288:  " ) 1289:  " EOF 1290:  " lua <<EOF 1291:  " require('dd').
setup() 1292:  " EOF 1293:  " lua << EOF 1294:  " local opts =   1295:  "   log level = 'info', 1296:  "   auto session enable last session = false, 1297:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1298:  "   auto session enabled = false, 1299:  "   auto save enabled = nil, 1300:  "   auto restore enabled = nil, 1301:  "   auto session suppress dirs = nil 1302:  "   1303:  " require('auto-session').
setup(opts) 1304:  " EOF 1305:   1306:  " lua << EOF 1307:  " if exists('g:started by firenvim') 1308:  "   ZenMode 1309:  " else 1310:  "   set laststatus=2 1311:  " endif 1312:   1313:  " lua <<EOF 1314:  " require('neoclip').
setup(  1315:  "       history = 1000, 1316:  "       enable persistant history = false, 1317:  "       db path = vim.
fn.
stdpath("data") .
. 
1317:++++ "/databases/neoclip.
sqlite3", 1318:  "       filter = nil, 1319:  "       preview = true, 1320:  "       default register = '"', 1321:  "       content spec column = false, 1322:  "       on paste =   1323:  "         set reg = false, 1324:  "        , 1325:  "       keys =   1326:  "         i =   1327:  "           select = '<cr>', 1328:  "           paste = '<c-p>', 1329:  "           paste behind = '<c-k>', 1330:  "           custom =   , 1331:  "          , 1332:  "         n =   1333:  "           select = '<cr>', 1334:  "           paste = 'p', 1335:  "           paste behind = 'P', 1336:  "           custom =   , 1337:  "          , 1338:  "        , 1339:  "     ) 1340:  " EOF 1341:  " lua <<EOF 1342:  " local saga = require 'lspsaga'  1343:  " saga.
init lsp saga()  1344:  "   1345:  " EOF 1346:   1347:  "au FileType tex autocmd User SneakLeave set syntax=tex 1348:  "au FileType tex autocmd User SneakEnter set syntax=text 1349:  " 1350:  " 1351:  " 1352:   1353:  " 1354:  " 'tCommen20 1355:  " let g:tcommentMapLeaderOp1=';'  1356:  " "map <leader>c <Leader>    1357:  "" function! RestoreRegister() 1358:  "   let @" = s:restore reg 1359:  "   return '' 1360:  " endfunction 1361:  " function! s:Repl() 1362:  "     let s:restore reg = @" 1363:  "     return "p@=RestoreRegister() <cr>" 1364:  " endfunction 1365:  " 1366:  " " NB: this supports "rp that replaces the selection by the contents of @r 1367:  " vnoremap <silent> <expr> p <sid>Repl() 1368:   1369:  " " Change Color when entering 1370:  " Insert Mode augroup CursorLine 1371:  "    au! 1372:  "  if has("gui running") 1373:  "  else 1374:  "      au InsertEnter * setlocal cursorline 1375:  "        au InsertLeave * setlocal nocursorline 1376:  "     endif 1377:  "        augroup END 1378:  " function! DelTagOfFile(file) 1379:  "   let fullpath = a:file 1380:  "   let cwd = getcwd() 1381:  "   let tagfilename = cwd . 
1381:++++ "/tags" 1382:  "   let f = substitute(fullpath, cwd . 
1382:++++ "/", "", "") 1383:  "   let f = escape(f, '.
/') 1384:  "   let cmd = 'sed -i "/' . 
1384:++++ f . 
1384:++++ '/d" "' . 
1384:++++ tagfilename . 
1384:++++ '"' 1385:  "   let resp = system(cmd) 1386:  " endfunction 1387:  " function! Break() 1388:  "  let n=130-virtcol('.
') 1389:  "  <Esc>ni <Esc><Esc> 1390:  " endfunction 1391:  " function Gitview() 1392:  "    cd /root/web2 ; git add . 
1392:++++ ; git commit -m -a ; git push origin gh-pages 1393:  " endfunction 1394:  " fuzzy search 1395:  " function! s:config fuzzyall(.
.
.
) abort 1396:  "   return extend(copy(  1397:  "       'converters': [ 1398:  "         incsearch#config#fuzzy#converter(), 1399:  "         incsearch#config#fuzzyspell#converter() 1400:  "       ], 1401:  "      ), get(a:, 1,    1402:  "   )) 1403:  " endfunction 1404:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1405:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1406:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1407:  " map f <Plug>(incsearch-fuzzyspell-/) 1408:  " map F <Plug>(incsearch-fuzzyspell-?) 1409:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1410:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1411:  " let g:deoplete#enable at startup = 1 1412:  " map <silent> <leader>g :silent call Gitview() 1413:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1414:  "Load some useful plugins with vundle  1415:  " 1416:  "asdf asldfkj 1417:  " hi! link Sneak Normal 1418:  " hi! link SneakScope Normal   test test2 test3 1419:   1420:  " command! -bang -nargs=* Rg 1421:  "     call fzf#vim#grep( 1422:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1423:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1424:  " 1425:  "" au GUIEnter * set fullscreen 1426:  " if has("gui running") 1427:    " set fuoptions=maxvert,maxhorz 1428:    " au GUIEnter * set fullscreen 1429:     " set foldcolumn=10 1430:     " set formatoptions=ant 1431:  " set wrapmargin=0 1432:  " set nohlsearch 1433:  " set tags= ~/workspacemodules/tags 1434:  " highlight SignColumn guibg=bg 1435:  "       endif     1436:  " if has("autocmd") 1437:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1438:  " endif 1439:    " autocmd BufWinLeave *.
* mkview 1440:    " autocmd BufWinEnter *.
* silent loadview 1441:     " set foldcolumn=2 1442:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1443:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1444:  " inoremap <cr> <esc>:w<cr>i<cr>  1445:  "" set tm=500 1446:  " set macmeta 1447:  " auto reload vimrc when editing it 1448:  " let g:github function style = "italic" 1449:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1450:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1451:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1452:  " Load the colorscheme 1453:  " colorscheme github dark 1454:  "" terminal color settings  1455:  " Example config in VimScript 1456:  " let g:github function style = "italic" 1457:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1458:   1459:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1460:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1461:  " Load the colorscheme 1462:  " colorscheme github dark  1463:  " set background=dark  1464:  " if has("gui running")	" GUI color and font settings 1465:  "   set guifont=Fira  Code:h22 1466:  "   " colorscheme gruvbox  1467:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1468:  " else 1469:  "  colorscheme one 1470:  " colorscheme material   1471:  " let g:material style = 'palenight'   1472:  " let g:material style = 'lighter' 1473:  " highlight Normal ctermbg=none  1474:  "   " let g:vimtex quickfix method='pplatex'  1475:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1476:  "    function! UpdateSkim(status) 1477:  "      if !a:status | return | endif 1478:  " 1479:  "      let l:out = b:vimtex.
out() 1480:  "      let l:tex = expand(' :p') 1481:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1482:  "      if !empty(system('pgrep Skim')) 1483:  "        call extend(l:cmd, ['-g']) 1484:  "      endif 1485:  "      if has('nvim') 1486:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1487:  "      elseif has('job') 1488:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1489:  "      else 1490:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1491:  "      endif 1492:  "    endfunction 1493:  " let g:vimtex latexmk build dir = '.
/build' 1494:  "   'build dir' : '.
/build', 1495:  "  1496:  "     let g:vimtex compiler latexmk =   1497:  "       'background' : 0, 1498:  "           'callback' : 1, 1499:  "       'continuous' : 1, 1500:  "       'options' : [ 1501:  "         '-pdf', 1502:  "         '-verbose', 1503:  "         '-file-line-error', 1504:  "         '-synctex=1', 1505:  "         '-interaction=nonstopmode', 1506:  "       ], 1507:  "        1508:  " let g:vimtex compiler progname = 'nvr' 1509:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1510:  " let g:vimtex quickfix mode = 1 1511:  " let g:vimtex fold enabled = 0 1512:  " let g:vimtex fold manual = 1 1513:   1514:   1515:  " let g:vimtex fold types=   1516:  "             'preamble' :   , 1517:  "             'comments' :  'enabled' : 1 , 1518:  "             'markers' :   , 1519:  "             'sections' :   1520:  "               'parse levels' : 0, 1521:  "               'sections' : [       1522:  "                 ' (add)?part', 1523:  "                 ' (chapter|addchap)', 1524:  "                 ' (section|addsec)', 1525:  "                 'subsection', 1526:  "                 'subsubsection', 1527:  "               ], 1528:  "               'parts' : [          1529:  "                 'appendix', 1530:  "                 'frontmatter', 1531:  "                 'mainmatter', 1532:  "                 'backmatter', 1533:  "               ], 1534:  "              , 1535:  "              1536:   1537:  " autocmd TermClose * if v:event == 12 || v:event == 0 bdelete endif 1538:   