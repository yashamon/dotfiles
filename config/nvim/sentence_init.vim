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
@??? 40:  Plug 'L3MON4D3/LuaSnip' 41:  " Plug 'saadparwaiz1/cmp luasnip' 42:  "Plug 'steelsojka/completion-buffers' 43:  Plug 'voldikss/vim-floaterm' 44:  Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   45:  "Plug 'pope/vim-obsession' 46:  "Plug 'xolox/vim-easytags' 47:  " Plug 'nvim-lua/plenary.
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
pyc 220:  set incsearch		" incremental search 221:  set nobackup		" no *~ backup files 222:  set ignorecase		" ignore case when searching 223:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 224:  set smarttab		" insert tabs on the start of a line according to context 225:   226:  " disable sound on errors 227:  set noerrorbells 228:  " set novisualbell  229:  set guifont=Fira  Code:h22 230:   colorscheme one 231:  " colorscheme material   232:  " let g:material style = 'palenight'   233:  " let g:material style = 'lighter' 234:  " highlight Normal ctermbg=none 235:  set tm=1000 236:  " set macreta  237:  hi clear SpellBad 238:  hi SpellBad cterm=underline 239:  " Set style for gVim 240:  hi SpellBad gui=underline 241:  " 242:  "Autocommands, au 243:  " 244:   245:   246:  autocmd BufReadPost * if @  !~# ' .
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
css 364:   365:  "---------------------------------------------------------------------------  366:  " ENCODING SETTINGS 367:  "---------------------------------------------------------------------------  368:  set encoding=utf-8                                   369:  set termencoding=utf-8 370:  set fileencoding=utf-8 371:   372:  "maps remaps mappings   373:  " 374:  " 375:  " terminal mappings 376:  tnoremap <A-Esc> <C- ><C-n> 377:  nmap <A-S-t> :wa<cr>:te<cr> 378:    379:   380:  vnoremap <Leader>U ""y: s/<C-r>" 381:  noremap <leader>r :wa<cr>:e<cr> 382:  noremap <leader>h :set tw=50<cr> 383:  noremap <leader>w :set tw=0<cr>  384:  " noremap q <nop> 385:  map <leader>q q 386:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 387:  nnoremap <leader>rr :source  MYVIMRC<CR> 388:  "nnoremap <leader>e :NERDTreeFind<CR> 389:  nnoremap <leader>e :wa<cr>:Vifm<cr> 390:  nnoremap <leader>t :wa<cr>:FloatermToggle<cr> 391:  nnoremap <c-,> :cprevious<cr> 392:  nnoremap <c-.
> :cnext<cr>  393:  inoremap <cr> <cr> <backspace> 394:  vnoremap <m-s> :s///gc<left><left><left><left> 395:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 396:  nnoremap <m-s> : s///gc<left><left><left><left> 397:  vmap <M-.
> t.
<CR>h 398:  nmap <M-.
> t.
<CR>h 399:  nnoremap <up> 1<C-U> 400:  imap <up> <nop> 401:  nnoremap <down> 1<C-D> 402:  imap <down> <nop> 403:  noremap <ScrollWheelUp>      <nop> 404:  noremap <S-ScrollWheelUp>    <nop> 405:  noremap <C-ScrollWheelUp>    <nop> 406:  noremap <ScrollWheelDown>    <nop> 407:  noremap <S-ScrollWheelDown>  <nop> 408:  noremap <C-ScrollWheelDown>  <nop> 409:  noremap <ScrollWheelLeft>    <nop> 410:  noremap <S-ScrollWheelLeft>  <nop> 411:  noremap <C-ScrollWheelLeft>  <nop> 412:  noremap <ScrollWheelRight>   <nop> 413:  noremap <S-ScrollWheelRight> <nop> 414:  noremap <C-ScrollWheelRight> <nop> 415:  inoremap   / 416:  inoremap /   417:  vnoremap p "0dP 418:  noremap D "0D:wa<cr> 419:  noremap d "0d 420:  nnoremap dd "0dd:wa<cr> 421:  noremap c "0c 422:  noremap C " C 423:  noremap x " x 424:  vnoremap x "+x:wa<cr> 425:  vnoremap d "0d:wa<cr> 426:  vnoremap y "+y 427:  nnoremap y "+y 428:  nnoremap p "+p 429:  nnoremap <leader>p p 430:  nnoremap <leader>q q 431:  " Softwrap  432:  nmap D "0dg  433:  nmap V vg  434:  nmap A g a  435:  map 0 g  436:  map 9 g  437:  nmap <m-8> :set lines=200<cr>:set columns=200<cr> 438:   439:  " map <Leader>n <Plug>(miniyank-cycle) 440:  nnoremap <c-l> :wa<cr>:bnext<CR> 441:  nnoremap <c-h> :wa<cr>:bprevious<CR> 442:  " tnoremap <Esc> <C- >  443:  " nnoremap < :tabp<CR> 444:  " nnoremap > :tabn<CR> 445:  " nnoremap <leader>n :tabedit  <CR> 446:  imap <M-j> <C-j> 447:  map <S-m> <cmd>HopChar1<cr>  448:  " map <S-b> ?  <CR> 449:  map <S-w> <cmd>HopChar1<cr>  450:  map <S-b> <cmd>HopChar1<cr>  451:   452:  map <S-C-q> <Esc>:qa!<CR> 453:  map <m-q> <esc>:wqa<cr> 454:  " map <S-m-q> <esc>:wq<cr>  455:  map <m-c> <esc>:close<cr> 456:  map <M-d> <Esc>:bdelete<CR> 457:  noremap gf gq 458:  noremap f / 459:  noremap F ? 460:  " inoremap .
<Esc> .
<CR><Esc><leader>j 461:  " inoremap .
<Space> .
<CR><Esc><leader>j 462:  " noremap S :S  463:  " 464:  " 465:  " function! Sneak() 466:  "     hi! link Sneak Normal 467:  "     hi! link SneakScope Normal 468:  "     execute 'normal!  <Plug>Sneak s' 469:  "     syntax on 470:  " endfunction 471:   map <leader>n <Plug>Sneak ; 472:  " map N <Plug>Sneak , 473:  " map t <Plug>(smalls-excursion) 474:  " let g:smalls auto jump=1 475:  " let g:smalls auto jump timeout=0 476:   477:   478:      " xmap t <Plug>Sneak s 479:      " xmap T <Plug>Sneak S 480:     " omap t <Plug>Sneak s 481:      " omap T <Plug>Sneak S  482:      " math maps    483:  noremap # /  <CR>v?  <CR> 484:  noremap   /  <CR>hv?  <CR>l 485:  noremap @ / <CR>v? <CR> 486:  map j gj 487:  map k gk 488:  noremap <Space> .
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
@??? 561:  map <m-Space> <cmd>HopWord<cr> 562:   563:   564:   565:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 566:  "  map t :syntaxoff <Plug>Sneak s 567:  " map T <Plug>Sneak S 568:  " let g:sneak#s next = 1 569:  "  let g:sneak#label = 1 570:   571:  " FZF  572:  " 573:  noremap <m-t> :wa<cr>:BTags<cr> 574:  noremap <m-y> :wa<cr>:Tags<cr> 575:  noremap S <Esc> :wa<cr>:BLines<CR> 576:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 577:  " Line search mapping  578:  " function! Jumpback()  579:  "   K=bufname() 580:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 581:  " endfunction 582:  noremap <leader>ss :wa<cr>:source  MYVIMRC<cr>  583:  noremap <c-e> viwy  584:  noremap <c-p> :<c-r>+<cr> 585:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 586:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 587:  noremap <m-b> <Esc>:wa<cr>:Buffers<CR> 588:  " noremap F <Esc>:GFiles<CR> 589:  map <A-e> :wa<cr>:FZF ~<CR> 590:   591:  " vimtex settings 592:  " 593:  " 594:  " 595:  " let g:vimtex view general viewer 596:  "            = '/Applications/Skim.
app/Contents/SharedSupport/displayline' 597:  " let g:vimtex view general options = '-r @line @pdf @tex' 598:  let g:latex view general viewer = 'zathura' 599:  let g:vimtex view method = "zathura" 600:  let g:vimtex view automatic = 0 601:   602:  "fvim 603:  " 604:    605:  function! Profile() 606:  profile start profile.
log 607:  profile func * 608:  profile file * 609:  endfunction  610:   611:  function! Sentence() 612:    let g:buf = bufname() 613:    silent !sentence.
sh   614:    echo "Print any character" 615:    call getchar() 616:    e sentence   617:    " echo "Print any character" 618:    " call getchar() 619:    BLines 620:  endfunction 621:  noremap L :wa<cr>:TZAtaraxisOff<cr>:call Sentence()<cr> 622:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 623:  function! Git()  624:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   625:    AsyncStop 626:  endfunction 627:  " autocmd BufWritePost *  call Git() 628:  "  629:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 630:  test 631:   632:  function! ToggleQuickFix() 633:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 634:          TZAtaraxisOff  635:          let filename=bufname(" ") 636:          let errors=".
/build/" . 
636:++++ filename[:-4].
"log" 637:          exec "cf" errors  638:          copen 639:      else 640:          cclose  641:          TZAtaraxisOn 642:          endif 643:  endfunction 644:   645:  au filetype tex nnoremap <silent> <leader>s :wa<cr>:call ToggleQuickFix()<cr> 646:   647:     648:  function! CompileLatex()  649:    let buf = bufname() 650:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   651:    execute "buffer" buf 652:    call ViewPdf() 653:  endfunction 654:   655:  function! ViewPdf()  656:  wa 657:  let buf = bufname()  658:  let linenumber=line(".
") 659:  let colnumber=col(".
") 660:  let filename=bufname(" ") 661:  let filenamePDF=".
/build/" . 
661:++++ filename[:-4].
"pdf" 662:  let execstr="silent !zathura --synctex-forward " . 
662:++++ linenumber . 
662:++++ ":" . 
662:++++ colnumber . 
662:++++ ":" . 
662:++++ filename . 
662:++++ " " . 
662:++++ filenamePDF . 
662:++++ " &>/dev/null &" 663:  " . 
663:++++ "&>/dev/null &"    664:  exec execstr 665:  execute "buffer" buf 666:  endfunction  667:  nmap <leader>v :wa<cr>:call ViewPdf()<cr> 668:  " nmap <leader>v :VimtexView<cr> 669:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 670:  nmap <leader>l :wa<cr>:call CompileLatex()<cr> 671:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
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
md  <cr>:e  <cr>:w<cr>:qa<cr> 677:   678:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  679:   680:  " <cr> 681:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 682:   683:  " nmap <leader>l :VimtexCompile<CR> 684:  " nmap <leader>s <Esc>:VimtexErrors<CR> 685:  " map <leader>g :ZenMode<CR>  686:  nmap <leader>g :w<cr>:TZAtaraxis<CR> 687:  nmap <leader>p :Denite neoyank -default-action=append<CR> 688:   689:  " NB: this supports "rp that replaces the selection by the contents of @r 690:  " Auto updating Ctags 691:  " autocmd VimLeave * exe ":silent ! ctags -R" 692:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 693:   694:  "Nerd Tree 695:  " map <leader>e :NERDTreeFind<CR> 696:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 697:  " 698:  " 699:  " 700:  "Vifm 701:  let g:vifmLiveCwd=1 702:  let g:vifmUseCurrent=1 703:   704:  "Autosave and autocommit    705:  " let g:updatetime = 10000 706:  let g:auto save = 0 707:  " .
vimrc 708:  let g:auto save events = ["CursorHold"] 709:  "au FileType vim let g:autosave = 0 710:  let g:auto save in insert mode = 0 711:  let g:auto save silent = 0 712:   713:  "Git autocommit  (private git repo) 714:   715:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  716:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 717:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 718:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 719:  " "Highlight 720:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 721:  " hi MatchParen guibg=NONE guifg=green gui=NONE 722:      " 723:      " 724:      " 725:      " UndoTree   726:  noremap <Leader>u :TZAtaraxisOff<cr>:wa<cr>:UndotreeToggle<CR> 727:          " If undotree is opened, it is likely one wants to interact with it.
@??? 728:          let g:undotree SetFocusWhenToggle=1 729:          noremap <D-z> u 730:          noremap <S-C-z> <C-r> 731:          " noremap <C-z> u 732:      "   733:   734:   735:  " Latex shortcuts 736:  "Latex compile.
@??? 737:  "them to an external terminal and run there.
@??? 738:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 739:  "Zathura forward search 740:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 741:  "source ~/.
anyname   742:  "au filetype tex filetype indent off 743:  "  GUI Stuff    744:  command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 745:   746:  " Deoplete 747:   748:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
748:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 749:  set directory= HOME/Downloads 750:   751:   752:  "LUA 753:  " lua <<EOF 754:  " require'nvim-tree'.
setup() 755:  " EOF 756:  lua <<EOF 757:  require'nvim-treesitter.
configs'.
setup    758:      -- 759:      highlight =   enable = true  , 760:      incremental selection =   enable = true  , 761:      textobjects =   enable = true  , 762:      indent =   enable = true  ,  763:    764:  EOF 765:   766:  lua <<EOF 767:  require'nvim-treesitter.
configs'.
setup   768:    incremental selection =   769:      enable = true, 770:      keymaps =   771:        init selection = "gnn", 772:        node incremental = "grn", 773:        scope incremental = "grc", 774:        node decremental = "grm", 775:       , 776:     , 777:    778:  EOF 779:   780:  " lua <<EOF 781:  " require('neoscroll').
setup  782:  "     -- All these keys will be mapped to their corresponding default scrolling animation 783:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 784:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 785:  "     hide cursor = true,          -- Hide cursor while scrolling 786:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 787:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 788:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 789:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 790:  "     easing function = nil,        -- Default easing function 791:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 792:  "     post hook = nil,              -- Function to run after the scrolling animation ends 793:  "       794:  " EOF 795:  "  796:  " " set foldlevel=20 797:  " " set foldmethod=expr 798:  " " set foldexpr=nvim treesitter#foldexpr() 799:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0] 800:  "  801:  "  802:  "  803:  " vsnip stuff  804:  " Use <Tab> and <S-Tab> to navigate through popup menu 805:  inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 806:  inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 807:   808:  " Set completeopt to have a better completion experience 809:  set completeopt=menuone,noinsert,noselect 810:   811:  " Avoid showing message extra message when using completion 812:  set shortmess+=c 813:  let g:vsnip snippet dir = '~/dotfiles/snippets'   814:   815:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 816:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 817:  "  818:  " " Expand or jump 819:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 820:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 821:   822:  " Jump forward or backward 823:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 824:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 825:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 826:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 827:   828:  " 829:  " set foldexpr=nvim treesitter#foldexpr() 830:  " 831:  lua << EOF 832:  local nvim lsp = require('lspconfig') 833:  -- Use an on attach function to only map the following keys 834:  -- after the language server attaches to the current buffer 835:  local on attach = function(client, bufnr) 836:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 837:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 838:  -- Enable completion triggered by <c-x><c-o> 839:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 840:   841:    -- Mappings.
@??? 842:    local opts =   noremap=true, silent=true   843:   844:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 845:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 846:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 847:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 848:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 849:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 850:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 851:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 852:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 853:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 854:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 855:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 856:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 857:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 858:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 859:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 860:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 861:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 862:   863:  end 864:   865:  -- Use a loop to conveniently call 'setup' on multiple servers and 866:  -- map buffer local keybindings when the language server attaches 867:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  868:  --for  , lsp in ipairs(servers) do 869:  --nvim lsp[lsp].
setup   870:   --   on attach = on attach, 871:    --  flags =   872:     --   debounce text changes = 150, 873:     --   874:  --    875:  --end 876:  EOF 877:   878:   879:  "Lsp install 880:   881:  lua << EOF 882:  local function setup servers() 883:    require'lspinstall'.
setup() 884:    local servers = require'lspinstall'.
installed servers() 885:    for  , server in pairs(servers) do 886:      require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  887:    end 888:  end 889:   890:  setup servers() 891:   892:  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 893:  require'lspinstall'.
post install hook = function () 894:    setup servers() -- reload installed servers 895:    vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 896:  end 897:  EOF 898:   899:  nnoremap <leader>y :FZFNeoyank<cr> 900:  nnoremap <leader>Y :FZFNeoyank  P<cr> 901:  vnoremap <leader>y :FZFNeoyankSelection<cr> 902:   903:  nnoremap <leader>p :FZFNeoyank +<cr>  904:  nnoremap <leader>1 :FZFNeoyank 1<cr> 905:  nnoremap <leader>P :FZFNeoyank " P+<cr> 906:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 907:   908:   909:  " Replace the default dictionary completion with fzf-based fuzzy completion 910:   911:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   912:  inoremap <cr> <cr> <backspace> 913:   914:  set completeopt=menu,menuone,noselect 915:   916:  lua <<EOF 917:    -- Setup cmp.
@??? 918:   919:  local has words before = function() 920:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 921:      return false 922:    end 923:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 924:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 925:  end 926:   927:  local feedkey = function(key, mode) 928:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 929:  end 930:   931:  local cmp = require('cmp') 932:  cmp.
setup   933:   snippet =   934:        expand = function(args) 935:          -- For `vsnip` user.
@??? 936:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 937:    -- .
.
. 
937:++++ Your other configuration .
.
.
@??? 938:  end, 939:   , 940:  mapping =   941:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 942:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 943:        ['<C-x>'] = cmp.
mapping.
complete(), 944:        ['<C-e>'] = cmp.
mapping.
close(), 945:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 946:  -- .
.
. 
946:++++ Your other mappings .
.
.
@??? 947:  ["<Tab>"] = cmp.
mapping(function(fallback)  948:        if vim.
fn["vsnip#available"]() == 1 949:          then 950:          feedkey("<Plug>(vsnip-expand-or-jump)", "") 951:       elseif cmp.
visible() then 952:          cmp.
select next item() 953:        elseif has words before() then  954:          cmp.
complete() 955:        else  956:          fallback() -- The fallback function sends a already mapped key. 
956:++++ In this case, it's probably `<Tab>`.
@??? 957:        end 958:      end,   "i", "s"  ), 959:  ["<S-Tab>"] = cmp.
mapping(function() 960:        if vim.
fn.
pumvisible() == 1 then 961:          feedkey("<C-p>", "n")   962:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 963:          feedkey("<Plug>(vsnip-jump-prev)", "") 964:        end 965:      end,   "i", "s"  ), 966:  -- .
.
. 
966:++++ Your other mappings .
.
.
@??? 967:   968:   , 969:  requires =   970:        971:        'quangnguyen30192/cmp-nvim-tags', 972:        -- if you want the sources is available for some file types 973:        ft =   974:          'tex', 975:          'latex'  976:          977:        978:       , 979:  -- .
.
. 
979:++++ Your other configuration .
.
.
@??? 980:  sources =   981:        -- For vsnip user.
@??? 982:    name = 'tags', keyword length = 1000  , 983:     name = 'vsnip', keyword length = 1000  , 984:           -- For luasnip user.
@??? 985:        --   name = 'luasnip'  , 986:  -- For ultisnips user.
@??? 987:        --   name = 'ultisnips'  ,   988:       name = 'buffer', keyword length = 1000  , 989:       name = 'omni', keyword length = 4 , 990:         --   name = 'spell'  ,  991:       name = 'nvim lsp', keyword length = 4  , 992:        --  name = 'treesitter', keyword length = 4  , 993:  --  name = 'latex symbols'  , 994:   , 995:  completion =   996:      autocomplete = false  997:        998:    999:  EOF 1000:   1001:  "  1002:  " " LSP mappings    1003:  " "" LSP mappings  1004:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1005:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1006:  "  1007:  "  1008:  lua <<EOF 1009:   require('nvim comment').
setup( 1010:    1011:     -- Linters prefer comment and line to have a space in between markers 1012:     marker padding = true, 1013:     -- should comment out empty or whitespace only lines 1014:     comment empty = true, 1015:     -- Should key mappings be created 1016:     create mappings = true, 1017:     -- Normal mode mapping left hand side 1018:     line mapping = "gc", 1019:     -- Visual/Operator mapping left hand side 1020:     operator mapping = "<leader>c", 1021:     -- Hook function to call before commenting takes place 1022:     --hook = nil  1023:     1024:   ) 1025:  EOF 1026:  nmap <leader>c gc 1027:  lua <<EOF 1028:  local true zen = require("true-zen") 1029:  true zen.
setup(  1030:   	ui =   1031:   		bottom =   1032:   			laststatus = 0, 1033:   			ruler = false, 1034:   			showmode = false, 1035:   			showcmd = false, 1036:   			cmdheight = 1, 1037:   		 , 1038:   		top =   1039:   			showtabline = 0, 1040:   		 , 1041:   		left =   1042:   			number = false, 1043:   			relativenumber = false, 1044:   			signcolumn = "no", 1045:   		 , 1046:   	 , 1047:   	modes =   1048:   		ataraxis =   1049:   			-- left padding = 20, 1050:   			-- right padding = 20, 1051:   			top padding = 0, 1052:   			bottom padding = 0, 1053:   			ideal writing area width =  60 , 1054:   			auto padding = true, 1055:   			keep default fold fillchars = true, 1056:   			custom bg =  "none", "" , 1057:   			bg configuration = true, 1058:   			quit = "untoggle", 1059:   			ignore floating windows = true, 1060:   			affected higroups =   1061:   				NonText = true, 1062:   				FoldColumn = true, 1063:   				ColorColumn = true, 1064:   				VertSplit = true, 1065:   				StatusLine = true, 1066:   				StatusLineNC = true, 1067:   				SignColumn = true, 1068:   			 , 1069:   		 , 1070:   		focus =   1071:   			margin of error = 5, 1072:   			focus method = "experimental" 1073:   		 , 1074:   	 , 1075:   	integrations =   1076:   		vim gitgutter = false, 1077:   		galaxyline = false, 1078:   		tmux = false, 1079:   		gitsigns = false, 1080:   		nvim bufferline = false, 1081:   		limelight = false, 1082:   		twilight = false, 1083:   		vim airline = false, 1084:   		vim powerline = false, 1085:   		vim signify = false, 1086:   		express line = false, 1087:   		lualine = false, 1088:   		lightline = false, 1089:   		feline = false, 1090:   	 , 1091:   	misc =   1092:   		on off commands = true, 1093:   		ui elements commands = false, 1094:   		cursor by mode = false, 1095:   	  1096:    ) 1097:  EOF 1098:  lua <<EOF 1099:  require('feline').
setup(  1100:      preset = 'noicon' 1101:       ) 1102:  EOF 1103:  "  1104:  "  1105:  "  1106:  " " lua <<EOF 1107:  " " require('lualine').
setup  1108:  " " options =  disabled filetypes =  'txt', 'text'   1109:  " "   1110:  " " EOF 1111:  " " lua << EOF 1112:  " "   require("zen-mode").
setup   1113:  " "   window =   1114:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1114:++++ Set to 1 to keep the same as Normal 1115:  " "     -- height and width can be: 1116:  " "     -- * an absolute number of cells when > 1 1117:  " "     -- * a percentage of the width / height of the editor when <= 1 1118:  " "     -- * a function that returns the width or the height 1119:  " "     width = .
66, -- width of the Zen window 1120:  " "     height = 1, -- height of the Zen window 1121:  " "     -- by default, no options are changed for the Zen window 1122:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1123:  " "     options =   1124:  " "       -- signcolumn = "no", -- disable signcolumn 1125:  " "       -- number = false, -- disable number column 1126:  " "       -- relativenumber = false, -- disable relative numbers 1127:  " "       -- cursorline = false, -- disable cursorline 1128:  " "       -- cursorcolumn = false, -- disable cursor column 1129:  " "       -- foldcolumn = "0", -- disable fold column 1130:  " "       -- list = false, -- disable whitespace characters 1131:  " "      , 1132:  " "    , 1133:  " "   plugins =   1134:  " "     -- disable some global vim options (vim.
o.
.
.
) 1135:  " "     -- comment the lines to not apply the options 1136:  " "     options =   1137:  " "       enabled = true, 1138:  " "       ruler = false, -- disables the ruler text in the cmd line area 1139:  " "       showcmd = false, -- disables the command in the last line of the screen 1140:  " "      , 1141:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1142:  " "     gitsigns =   enabled = false  , -- disables git signs 1143:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1144:  " "     -- this will change the font size on kitty when in zen mode 1145:  " "     -- to make this work, you need to set the following kitty options: 1146:  " "     -- - allow remote control socket-only 1147:  " "     -- - listen on unix:/tmp/kitty 1148:  " "     kitty =   1149:  " "       enabled = false, 1150:  " "       font = "+4", -- font size increment 1151:  " "      , 1152:  " "    , 1153:  " "   -- callback where you can add custom code when the Zen window opens 1154:  " "   on open = function(win) 1155:  " "   end, 1156:  " "   -- callback where you can add custom code when the Zen window closes 1157:  " "   on close = function() 1158:  " "   end, 1159:  " "   1160:  " " EOF 1161:  lua <<EOF 1162:  require('telescope').
setup  1163:    defaults =   1164:      -- Default configuration for telescope goes here: 1165:      -- config key = value, 1166:      mappings =   1167:        i =   1168:          -- map actions.
which key to <C-h> (default: <C-/>) 1169:          -- actions.
which key shows the mappings for your picker, 1170:          -- e.
g. 
1170:++++ git  create, delete, .
.
.  
branch for the git branches picker 1171:          ["<C-h>"] = "which key" 1172:          1173:        1174:     , 1175:    pickers =   1176:      -- Default configuration for builtin pickers goes here: 1177:      -- picker name =   1178:      --   picker config key = value, 1179:      --   .
.
.
@??? 1180:      --   1181:      -- Now the picker config key will be applied every time you call this 1182:      -- builtin picker  1183:     , 1184:    extensions =   1185:      -- Your extension configuration goes here: 1186:      -- extension name =   1187:      --   extension config key = value, 1188:      --   1189:      -- please take a look at the readme of the extension you want to configure 1190:      1191:     1192:  EOF 1193:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1194:  lua <<EOF 1195:  require('fm-nvim').
setup  1196:  	config = 1197:  	  1198:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1199:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1200:  		height   = .
9, 1201:  		width    = .
9, 1202:  	  1203:    1204:  EOF 1205:   1206:  " lua <<EOF 1207:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1208:  " require("prosesitter"):setup(  1209:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1209:++++ "/prosesitter/vale", 1210:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1210:++++ "/prosesitter/vale cfg.
ini", 1211:  " 	--optional extra queries overrides existing queries 1212:  " 	queries =    1213:  " 		-- see the piece on adding queries on how to use this  1214:  " 		-- (not needed if using an out of the box supported language 1215:  " 		py =    1216:  " 			strings = "[(string) ] @capture", 1217:  " 			comments = "[(comment)+ ] @capture", 1218:  " 		 , 1219:  " 	 ,  1220:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1221:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1222:  " 	-- weather to lint strings, comments or both for a language 1223:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1224:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1225:  " 	auto enable = false, -- do not start linting files on open (default = true) 1226:  " 	default cmds = false,  -- do not add commands (default = true) 1227:  "  ) 1228:  " EOF 1229:  lua <<EOF 1230:  require('spellsitter').
setup   1231:    hl = 'SpellBad',  1232:    captures =   ,  -- set to    to spellcheck everything 1233:   1234:    -- Spellchecker to use. 
1234:++++ values: 1235:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1236:    -- * ffi: built-in spell checker using the FFI to access the 1237:    --   internal spell check() function 1238:    spellchecker = 'vimfn', 1239:    1240:  EOF 1241:  let g:firenvim config =    1242:        'globalSettings':   1243:            'alt': 'all', 1244:          , 1245:        'localSettings':   1246:            '.
*':   1247:                'cmdline': 'neovim', 1248:                'content': 'text', 1249:                'priority': 0, 1250:                'selector': 'textarea', 1251:                'takeover': 'always', 1252:             , 1253:          1254:      1255:   1256:  " lua << EOF 1257:  " require("stabilize").
setup( 1258:  "   1259:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1260:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1261:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1262:  " --		filetype =   "help", "list", "Trouble"  , 1263:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1264:  " --	  1265:  "   1266:  " ) 1267:  " EOF 1268:  " lua <<EOF 1269:  " require('dd').
setup() 1270:  " EOF 1271:  " lua << EOF 1272:  " local opts =   1273:  "   log level = 'info', 1274:  "   auto session enable last session = false, 1275:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1276:  "   auto session enabled = false, 1277:  "   auto save enabled = nil, 1278:  "   auto restore enabled = nil, 1279:  "   auto session suppress dirs = nil 1280:  "   1281:  " require('auto-session').
setup(opts) 1282:  " EOF 1283:   1284:  " lua << EOF 1285:  " if exists('g:started by firenvim') 1286:  "   ZenMode 1287:  " else 1288:  "   set laststatus=2 1289:  " endif 1290:   1291:  " lua <<EOF 1292:  " require('neoclip').
setup(  1293:  "       history = 1000, 1294:  "       enable persistant history = false, 1295:  "       db path = vim.
fn.
stdpath("data") .
. 
1295:++++ "/databases/neoclip.
sqlite3", 1296:  "       filter = nil, 1297:  "       preview = true, 1298:  "       default register = '"', 1299:  "       content spec column = false, 1300:  "       on paste =   1301:  "         set reg = false, 1302:  "        , 1303:  "       keys =   1304:  "         i =   1305:  "           select = '<cr>', 1306:  "           paste = '<c-p>', 1307:  "           paste behind = '<c-k>', 1308:  "           custom =   , 1309:  "          , 1310:  "         n =   1311:  "           select = '<cr>', 1312:  "           paste = 'p', 1313:  "           paste behind = 'P', 1314:  "           custom =   , 1315:  "          , 1316:  "        , 1317:  "     ) 1318:  " EOF 1319:  " lua <<EOF 1320:  " local saga = require 'lspsaga'  1321:  " saga.
init lsp saga()  1322:  "   1323:  " EOF 1324:   1325:  "au FileType tex autocmd User SneakLeave set syntax=tex 1326:  "au FileType tex autocmd User SneakEnter set syntax=text 1327:  " 1328:  " 1329:  " 1330:   1331:  " 1332:  " 'tCommen20 1333:  " let g:tcommentMapLeaderOp1=';'  1334:  " "map <leader>c <Leader>    1335:  "" function! RestoreRegister() 1336:  "   let @" = s:restore reg 1337:  "   return '' 1338:  " endfunction 1339:  " function! s:Repl() 1340:  "     let s:restore reg = @" 1341:  "     return "p@=RestoreRegister() <cr>" 1342:  " endfunction 1343:  " 1344:  " " NB: this supports "rp that replaces the selection by the contents of @r 1345:  " vnoremap <silent> <expr> p <sid>Repl() 1346:   1347:  " " Change Color when entering 1348:  " Insert Mode augroup CursorLine 1349:  "    au! 1350:  "  if has("gui running") 1351:  "  else 1352:  "      au InsertEnter * setlocal cursorline 1353:  "        au InsertLeave * setlocal nocursorline 1354:  "     endif 1355:  "        augroup END 1356:  " function! DelTagOfFile(file) 1357:  "   let fullpath = a:file 1358:  "   let cwd = getcwd() 1359:  "   let tagfilename = cwd . 
1359:++++ "/tags" 1360:  "   let f = substitute(fullpath, cwd . 
1360:++++ "/", "", "") 1361:  "   let f = escape(f, '.
/') 1362:  "   let cmd = 'sed -i "/' . 
1362:++++ f . 
1362:++++ '/d" "' . 
1362:++++ tagfilename . 
1362:++++ '"' 1363:  "   let resp = system(cmd) 1364:  " endfunction 1365:  " function! Break() 1366:  "  let n=130-virtcol('.
') 1367:  "  <Esc>ni <Esc><Esc> 1368:  " endfunction 1369:  " function Gitview() 1370:  "    cd /root/web2 ; git add . 
1370:++++ ; git commit -m -a ; git push origin gh-pages 1371:  " endfunction 1372:  " fuzzy search 1373:  " function! s:config fuzzyall(.
.
.
) abort 1374:  "   return extend(copy(  1375:  "       'converters': [ 1376:  "         incsearch#config#fuzzy#converter(), 1377:  "         incsearch#config#fuzzyspell#converter() 1378:  "       ], 1379:  "      ), get(a:, 1,    1380:  "   )) 1381:  " endfunction 1382:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1383:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1384:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1385:  " map f <Plug>(incsearch-fuzzyspell-/) 1386:  " map F <Plug>(incsearch-fuzzyspell-?) 1387:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1388:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1389:  " let g:deoplete#enable at startup = 1 1390:  " map <silent> <leader>g :silent call Gitview() 1391:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1392:  "Load some useful plugins with vundle  1393:  " 1394:  "asdf asldfkj 1395:  " hi! link Sneak Normal 1396:  " hi! link SneakScope Normal   test test2 test3 1397:   1398:  " command! -bang -nargs=* Rg 1399:  "     call fzf#vim#grep( 1400:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1401:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1402:  " 1403:  "" au GUIEnter * set fullscreen 1404:  " if has("gui running") 1405:    " set fuoptions=maxvert,maxhorz 1406:    " au GUIEnter * set fullscreen 1407:     " set foldcolumn=10 1408:     " set formatoptions=ant 1409:  " set wrapmargin=0 1410:  " set nohlsearch 1411:  " set tags= ~/workspacemodules/tags 1412:  " highlight SignColumn guibg=bg 1413:  "       endif     1414:  " if has("autocmd") 1415:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1416:  " endif 1417:    " autocmd BufWinLeave *.
* mkview 1418:    " autocmd BufWinEnter *.
* silent loadview 1419:     " set foldcolumn=2 1420:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1421:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1422:  " inoremap <cr> <esc>:w<cr>i<cr>  1423:  "" set tm=500 1424:  " set macmeta 1425:  " auto reload vimrc when editing it 1426:  " let g:github function style = "italic" 1427:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1428:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1429:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1430:  " Load the colorscheme 1431:  " colorscheme github dark 1432:  "" terminal color settings  1433:  " Example config in VimScript 1434:  " let g:github function style = "italic" 1435:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1436:   1437:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1438:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1439:  " Load the colorscheme 1440:  " colorscheme github dark  1441:  " set background=dark  1442:  " if has("gui running")	" GUI color and font settings 1443:  "   set guifont=Fira  Code:h22 1444:  "   " colorscheme gruvbox  1445:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1446:  " else 1447:  "  colorscheme one 1448:  " colorscheme material   1449:  " let g:material style = 'palenight'   1450:  " let g:material style = 'lighter' 1451:  " highlight Normal ctermbg=none  1452:  "   " let g:vimtex quickfix method='pplatex'  1453:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1454:  "    function! UpdateSkim(status) 1455:  "      if !a:status | return | endif 1456:  " 1457:  "      let l:out = b:vimtex.
out() 1458:  "      let l:tex = expand(' :p') 1459:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1460:  "      if !empty(system('pgrep Skim')) 1461:  "        call extend(l:cmd, ['-g']) 1462:  "      endif 1463:  "      if has('nvim') 1464:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1465:  "      elseif has('job') 1466:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1467:  "      else 1468:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1469:  "      endif 1470:  "    endfunction 1471:  " let g:vimtex latexmk build dir = '.
/build' 1472:  "   'build dir' : '.
/build', 1473:  "  1474:  "     let g:vimtex compiler latexmk =   1475:  "       'background' : 0, 1476:  "           'callback' : 1, 1477:  "       'continuous' : 1, 1478:  "       'options' : [ 1479:  "         '-pdf', 1480:  "         '-verbose', 1481:  "         '-file-line-error', 1482:  "         '-synctex=1', 1483:  "         '-interaction=nonstopmode', 1484:  "       ], 1485:  "        1486:  " let g:vimtex compiler progname = 'nvr' 1487:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1488:  " let g:vimtex quickfix mode = 1 1489:  " let g:vimtex fold enabled = 0 1490:  " let g:vimtex fold manual = 1 1491:   1492:   1493:  " let g:vimtex fold types=   1494:  "             'preamble' :   , 1495:  "             'comments' :  'enabled' : 1 , 1496:  "             'markers' :   , 1497:  "             'sections' :   1498:  "               'parse levels' : 0, 1499:  "               'sections' : [       1500:  "                 ' (add)?part', 1501:  "                 ' (chapter|addchap)', 1502:  "                 ' (section|addsec)', 1503:  "                 'subsection', 1504:  "                 'subsubsection', 1505:  "               ], 1506:  "               'parts' : [          1507:  "                 'appendix', 1508:  "                 'frontmatter', 1509:  "                 'mainmatter', 1510:  "                 'backmatter', 1511:  "               ], 1512:  "              , 1513:  "              1514:   1515:  " autocmd TermClose * if v:event == 12 || v:event == 0 bdelete endif 1516:   