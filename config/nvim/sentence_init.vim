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
log 607:  profile func * 608:  profile file * 609:  endfunction  610:   611:  function! Sentence() 612:    let g:buf = bufname() 613:    AsyncRun sentence.
sh   614:    echo "Print any character" 615:    call getchar() 616:    e sentence   617:    " echo "Print any character" 618:    " call getchar() 619:    BLines 620:    AsyncStop 621:  endfunction 622:  noremap L :wa<cr>:TZAtaraxisOff<cr>:call Sentence()<cr> 623:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 624:  function! Git()  625:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   626:    AsyncStop 627:  endfunction 628:  " autocmd BufWritePost *  call Git() 629:  "  630:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 631:   632:   633:  function! ToggleQuickFix() 634:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 635:          TZAtaraxisOff  636:          let filename=bufname(" ") 637:          let errors=".
/build/" . 
637:++++ filename[:-4].
"log" 638:          exec "cf" errors  639:          copen 640:      else 641:          cclose  642:          TZAtaraxisOn 643:          endif 644:  endfunction 645:   646:  au filetype tex nnoremap <silent> <leader>s :wa<cr>:call ToggleQuickFix()<cr> 647:   648:     649:  function! CompileLatex()  650:    let buf = bufname() 651:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   652:    execute "buffer" buf 653:    call ViewPdf() 654:  endfunction 655:   656:  function! ViewPdf()  657:  wa 658:  let buf = bufname()  659:  let linenumber=line(".
") 660:  let colnumber=col(".
") 661:  let filename=bufname(" ") 662:  let filenamePDF=".
/build/" . 
662:++++ filename[:-4].
"pdf" 663:  let execstr="silent !zathura --synctex-forward " . 
663:++++ linenumber . 
663:++++ ":" . 
663:++++ colnumber . 
663:++++ ":" . 
663:++++ filename . 
663:++++ " " . 
663:++++ filenamePDF . 
663:++++ " &>/dev/null &" 664:  " . 
664:++++ "&>/dev/null &"    665:  exec execstr 666:  execute "buffer" buf 667:  endfunction  668:  nmap <leader>v :wa<cr>:call ViewPdf()<cr> 669:  " nmap <leader>v :VimtexView<cr> 670:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 671:  nmap <leader>l :wa<cr>:call CompileLatex()<cr> 672:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 673:   674:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  675:  "" mathml shenanigans 676:   677:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 678:   679:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  680:   681:  " <cr> 682:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 683:   684:  " nmap <leader>l :VimtexCompile<CR> 685:  " nmap <leader>s <Esc>:VimtexErrors<CR> 686:  " map <leader>g :ZenMode<CR>  687:  nmap <leader>g :w<cr>:TZAtaraxis<CR> 688:  nmap <leader>p :Denite neoyank -default-action=append<CR> 689:   690:  " NB: this supports "rp that replaces the selection by the contents of @r 691:  " Auto updating Ctags 692:  " autocmd VimLeave * exe ":silent ! ctags -R" 693:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 694:   695:  "Nerd Tree 696:  " map <leader>e :NERDTreeFind<CR> 697:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 698:  " 699:  " 700:  " 701:  "Vifm 702:  let g:vifmLiveCwd=1 703:  let g:vifmUseCurrent=1 704:   705:  "Autosave and autocommit    706:  " let g:updatetime = 10000 707:  let g:auto save = 0 708:  " .
vimrc 709:  let g:auto save events = ["CursorHold"] 710:  "au FileType vim let g:autosave = 0 711:  let g:auto save in insert mode = 0 712:  let g:auto save silent = 0 713:   714:  "Git autocommit  (private git repo) 715:   716:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  717:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 718:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 719:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 720:  " "Highlight 721:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 722:  " hi MatchParen guibg=NONE guifg=green gui=NONE 723:      " 724:      " 725:      " 726:      " UndoTree   727:  noremap <Leader>u :TZAtaraxisOff<cr>:wa<cr>:UndotreeToggle<CR> 728:          " If undotree is opened, it is likely one wants to interact with it.
@??? 729:          let g:undotree SetFocusWhenToggle=1 730:          noremap <D-z> u 731:          noremap <S-C-z> <C-r> 732:          " noremap <C-z> u 733:      "   734:   735:   736:  " Latex shortcuts 737:  "Latex compile.
@??? 738:  "them to an external terminal and run there.
@??? 739:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 740:  "Zathura forward search 741:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 742:  "source ~/.
anyname   743:  "au filetype tex filetype indent off 744:  "  GUI Stuff    745:  command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 746:   747:  " Deoplete 748:   749:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
749:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 750:  set directory= HOME/Downloads 751:   752:   753:  "LUA 754:  " lua <<EOF 755:  " require'nvim-tree'.
setup() 756:  " EOF 757:  lua <<EOF 758:  require'nvim-treesitter.
configs'.
setup    759:      -- 760:      highlight =   enable = true  , 761:      incremental selection =   enable = true  , 762:      textobjects =   enable = true  , 763:      indent =   enable = true  ,  764:    765:  EOF 766:   767:  lua <<EOF 768:  require'nvim-treesitter.
configs'.
setup   769:    incremental selection =   770:      enable = true, 771:      keymaps =   772:        init selection = "gnn", 773:        node incremental = "grn", 774:        scope incremental = "grc", 775:        node decremental = "grm", 776:       , 777:     , 778:    779:  EOF 780:   781:  " lua <<EOF 782:  " require('neoscroll').
setup  783:  "     -- All these keys will be mapped to their corresponding default scrolling animation 784:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 785:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 786:  "     hide cursor = true,          -- Hide cursor while scrolling 787:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 788:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 789:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 790:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 791:  "     easing function = nil,        -- Default easing function 792:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 793:  "     post hook = nil,              -- Function to run after the scrolling animation ends 794:  "       795:  " EOF 796:  "  797:  " " set foldlevel=20 798:  " " set foldmethod=expr 799:  " " set foldexpr=nvim treesitter#foldexpr() 800:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0] 801:  "  802:  "  803:  "  804:  " vsnip stuff  805:  " Use <Tab> and <S-Tab> to navigate through popup menu 806:  inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 807:  inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 808:   809:  " Set completeopt to have a better completion experience 810:  set completeopt=menuone,noinsert,noselect 811:   812:  " Avoid showing message extra message when using completion 813:  set shortmess+=c 814:  let g:vsnip snippet dir = '~/dotfiles/snippets'   815:   816:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 817:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 818:  "  819:  " " Expand or jump 820:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 821:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 822:   823:  " Jump forward or backward 824:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 825:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 826:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 827:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 828:   829:  " 830:  " set foldexpr=nvim treesitter#foldexpr() 831:  " 832:  lua << EOF 833:  local nvim lsp = require('lspconfig') 834:  -- Use an on attach function to only map the following keys 835:  -- after the language server attaches to the current buffer 836:  local on attach = function(client, bufnr) 837:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 838:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 839:  -- Enable completion triggered by <c-x><c-o> 840:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 841:   842:    -- Mappings.
@??? 843:    local opts =   noremap=true, silent=true   844:   845:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 846:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 847:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 848:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 849:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 850:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 851:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 852:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 853:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 854:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 855:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 856:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 857:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 858:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 859:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 860:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 861:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 862:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 863:   864:  end 865:   866:  -- Use a loop to conveniently call 'setup' on multiple servers and 867:  -- map buffer local keybindings when the language server attaches 868:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  869:  --for  , lsp in ipairs(servers) do 870:  --nvim lsp[lsp].
setup   871:   --   on attach = on attach, 872:    --  flags =   873:     --   debounce text changes = 150, 874:     --   875:  --    876:  --end 877:  EOF 878:   879:   880:  "Lsp install 881:   882:  lua << EOF 883:  local function setup servers() 884:    require'lspinstall'.
setup() 885:    local servers = require'lspinstall'.
installed servers() 886:    for  , server in pairs(servers) do 887:      require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  888:    end 889:  end 890:   891:  setup servers() 892:   893:  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 894:  require'lspinstall'.
post install hook = function () 895:    setup servers() -- reload installed servers 896:    vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 897:  end 898:  EOF 899:   900:  nnoremap <leader>y :FZFNeoyank<cr> 901:  nnoremap <leader>Y :FZFNeoyank  P<cr> 902:  vnoremap <leader>y :FZFNeoyankSelection<cr> 903:   904:  nnoremap <leader>p :FZFNeoyank +<cr>  905:  nnoremap <leader>1 :FZFNeoyank 1<cr> 906:  nnoremap <leader>P :FZFNeoyank " P+<cr> 907:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 908:   909:   910:  " Replace the default dictionary completion with fzf-based fuzzy completion 911:   912:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   913:  inoremap <cr> <cr> <backspace> 914:   915:  set completeopt=menu,menuone,noselect 916:   917:  lua <<EOF 918:    -- Setup cmp.
@??? 919:   920:  local has words before = function() 921:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 922:      return false 923:    end 924:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 925:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 926:  end 927:   928:  local feedkey = function(key, mode) 929:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 930:  end 931:   932:  local cmp = require('cmp') 933:  cmp.
setup   934:   snippet =   935:        expand = function(args) 936:          -- For `vsnip` user.
@??? 937:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 938:    -- .
.
. 
938:++++ Your other configuration .
.
.
@??? 939:  end, 940:   , 941:  mapping =   942:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 943:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 944:        ['<C-x>'] = cmp.
mapping.
complete(), 945:        ['<C-e>'] = cmp.
mapping.
close(), 946:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 947:  -- .
.
. 
947:++++ Your other mappings .
.
.
@??? 948:  ["<Tab>"] = cmp.
mapping(function(fallback)  949:        if vim.
fn["vsnip#available"]() == 1 950:          then 951:          feedkey("<Plug>(vsnip-expand-or-jump)", "") 952:       elseif cmp.
visible() then 953:          cmp.
select next item() 954:        elseif has words before() then  955:          cmp.
complete() 956:        else  957:          fallback() -- The fallback function sends a already mapped key. 
957:++++ In this case, it's probably `<Tab>`.
@??? 958:        end 959:      end,   "i", "s"  ), 960:  ["<S-Tab>"] = cmp.
mapping(function() 961:        if vim.
fn.
pumvisible() == 1 then 962:          feedkey("<C-p>", "n")   963:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 964:          feedkey("<Plug>(vsnip-jump-prev)", "") 965:        end 966:      end,   "i", "s"  ), 967:  -- .
.
. 
967:++++ Your other mappings .
.
.
@??? 968:   969:   , 970:  requires =   971:        972:        'quangnguyen30192/cmp-nvim-tags', 973:        -- if you want the sources is available for some file types 974:        ft =   975:          'tex', 976:          'latex'  977:          978:        979:       , 980:  -- .
.
. 
980:++++ Your other configuration .
.
.
@??? 981:  sources =   982:        -- For vsnip user.
@??? 983:    name = 'tags', keyword length = 1000  , 984:     name = 'vsnip', keyword length = 1000  , 985:           -- For luasnip user.
@??? 986:        --   name = 'luasnip'  , 987:  -- For ultisnips user.
@??? 988:        --   name = 'ultisnips'  ,   989:       name = 'buffer', keyword length = 1000  , 990:       name = 'omni', keyword length = 4 , 991:         --   name = 'spell'  ,  992:       name = 'nvim lsp', keyword length = 4  , 993:        --  name = 'treesitter', keyword length = 4  , 994:  --  name = 'latex symbols'  , 995:   , 996:  completion =   997:      autocomplete = false  998:        999:    1000:  EOF 1001:   1002:  "  1003:  " " LSP mappings    1004:  " "" LSP mappings  1005:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1006:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1007:  "  1008:  "  1009:  lua <<EOF 1010:   require('nvim comment').
setup( 1011:    1012:     -- Linters prefer comment and line to have a space in between markers 1013:     marker padding = true, 1014:     -- should comment out empty or whitespace only lines 1015:     comment empty = true, 1016:     -- Should key mappings be created 1017:     create mappings = true, 1018:     -- Normal mode mapping left hand side 1019:     line mapping = "gc", 1020:     -- Visual/Operator mapping left hand side 1021:     operator mapping = "<leader>c", 1022:     -- Hook function to call before commenting takes place 1023:     --hook = nil  1024:     1025:   ) 1026:  EOF 1027:  nmap <leader>c gc 1028:  lua <<EOF 1029:  local true zen = require("true-zen") 1030:  true zen.
setup(  1031:   	ui =   1032:   		bottom =   1033:   			laststatus = 0, 1034:   			ruler = false, 1035:   			showmode = false, 1036:   			showcmd = false, 1037:   			cmdheight = 1, 1038:   		 , 1039:   		top =   1040:   			showtabline = 0, 1041:   		 , 1042:   		left =   1043:   			number = false, 1044:   			relativenumber = false, 1045:   			signcolumn = "no", 1046:   		 , 1047:   	 , 1048:   	modes =   1049:   		ataraxis =   1050:   			-- left padding = 20, 1051:   			-- right padding = 20, 1052:   			top padding = 0, 1053:   			bottom padding = 0, 1054:   			ideal writing area width =  60 , 1055:   			auto padding = true, 1056:   			keep default fold fillchars = true, 1057:   			custom bg =  "none", "" , 1058:   			bg configuration = true, 1059:   			quit = "untoggle", 1060:   			ignore floating windows = true, 1061:   			affected higroups =   1062:   				NonText = true, 1063:   				FoldColumn = true, 1064:   				ColorColumn = true, 1065:   				VertSplit = true, 1066:   				StatusLine = true, 1067:   				StatusLineNC = true, 1068:   				SignColumn = true, 1069:   			 , 1070:   		 , 1071:   		focus =   1072:   			margin of error = 5, 1073:   			focus method = "experimental" 1074:   		 , 1075:   	 , 1076:   	integrations =   1077:   		vim gitgutter = false, 1078:   		galaxyline = false, 1079:   		tmux = false, 1080:   		gitsigns = false, 1081:   		nvim bufferline = false, 1082:   		limelight = false, 1083:   		twilight = false, 1084:   		vim airline = false, 1085:   		vim powerline = false, 1086:   		vim signify = false, 1087:   		express line = false, 1088:   		lualine = false, 1089:   		lightline = false, 1090:   		feline = false, 1091:   	 , 1092:   	misc =   1093:   		on off commands = true, 1094:   		ui elements commands = false, 1095:   		cursor by mode = false, 1096:   	  1097:    ) 1098:  EOF 1099:  lua <<EOF 1100:  require('feline').
setup(  1101:      preset = 'noicon' 1102:       ) 1103:  EOF 1104:  "  1105:  "  1106:  "  1107:  " " lua <<EOF 1108:  " " require('lualine').
setup  1109:  " " options =  disabled filetypes =  'txt', 'text'   1110:  " "   1111:  " " EOF 1112:  " " lua << EOF 1113:  " "   require("zen-mode").
setup   1114:  " "   window =   1115:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1115:++++ Set to 1 to keep the same as Normal 1116:  " "     -- height and width can be: 1117:  " "     -- * an absolute number of cells when > 1 1118:  " "     -- * a percentage of the width / height of the editor when <= 1 1119:  " "     -- * a function that returns the width or the height 1120:  " "     width = .
66, -- width of the Zen window 1121:  " "     height = 1, -- height of the Zen window 1122:  " "     -- by default, no options are changed for the Zen window 1123:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1124:  " "     options =   1125:  " "       -- signcolumn = "no", -- disable signcolumn 1126:  " "       -- number = false, -- disable number column 1127:  " "       -- relativenumber = false, -- disable relative numbers 1128:  " "       -- cursorline = false, -- disable cursorline 1129:  " "       -- cursorcolumn = false, -- disable cursor column 1130:  " "       -- foldcolumn = "0", -- disable fold column 1131:  " "       -- list = false, -- disable whitespace characters 1132:  " "      , 1133:  " "    , 1134:  " "   plugins =   1135:  " "     -- disable some global vim options (vim.
o.
.
.
) 1136:  " "     -- comment the lines to not apply the options 1137:  " "     options =   1138:  " "       enabled = true, 1139:  " "       ruler = false, -- disables the ruler text in the cmd line area 1140:  " "       showcmd = false, -- disables the command in the last line of the screen 1141:  " "      , 1142:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1143:  " "     gitsigns =   enabled = false  , -- disables git signs 1144:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1145:  " "     -- this will change the font size on kitty when in zen mode 1146:  " "     -- to make this work, you need to set the following kitty options: 1147:  " "     -- - allow remote control socket-only 1148:  " "     -- - listen on unix:/tmp/kitty 1149:  " "     kitty =   1150:  " "       enabled = false, 1151:  " "       font = "+4", -- font size increment 1152:  " "      , 1153:  " "    , 1154:  " "   -- callback where you can add custom code when the Zen window opens 1155:  " "   on open = function(win) 1156:  " "   end, 1157:  " "   -- callback where you can add custom code when the Zen window closes 1158:  " "   on close = function() 1159:  " "   end, 1160:  " "   1161:  " " EOF 1162:  lua <<EOF 1163:  require('telescope').
setup  1164:    defaults =   1165:      -- Default configuration for telescope goes here: 1166:      -- config key = value, 1167:      mappings =   1168:        i =   1169:          -- map actions.
which key to <C-h> (default: <C-/>) 1170:          -- actions.
which key shows the mappings for your picker, 1171:          -- e.
g. 
1171:++++ git  create, delete, .
.
.  
branch for the git branches picker 1172:          ["<C-h>"] = "which key" 1173:          1174:        1175:     , 1176:    pickers =   1177:      -- Default configuration for builtin pickers goes here: 1178:      -- picker name =   1179:      --   picker config key = value, 1180:      --   .
.
.
@??? 1181:      --   1182:      -- Now the picker config key will be applied every time you call this 1183:      -- builtin picker  1184:     , 1185:    extensions =   1186:      -- Your extension configuration goes here: 1187:      -- extension name =   1188:      --   extension config key = value, 1189:      --   1190:      -- please take a look at the readme of the extension you want to configure 1191:      1192:     1193:  EOF 1194:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1195:  lua <<EOF 1196:  require('fm-nvim').
setup  1197:  	config = 1198:  	  1199:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1200:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1201:  		height   = .
9, 1202:  		width    = .
9, 1203:  	  1204:    1205:  EOF 1206:   1207:  " lua <<EOF 1208:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1209:  " require("prosesitter"):setup(  1210:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1210:++++ "/prosesitter/vale", 1211:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1211:++++ "/prosesitter/vale cfg.
ini", 1212:  " 	--optional extra queries overrides existing queries 1213:  " 	queries =    1214:  " 		-- see the piece on adding queries on how to use this  1215:  " 		-- (not needed if using an out of the box supported language 1216:  " 		py =    1217:  " 			strings = "[(string) ] @capture", 1218:  " 			comments = "[(comment)+ ] @capture", 1219:  " 		 , 1220:  " 	 ,  1221:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1222:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1223:  " 	-- weather to lint strings, comments or both for a language 1224:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1225:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1226:  " 	auto enable = false, -- do not start linting files on open (default = true) 1227:  " 	default cmds = false,  -- do not add commands (default = true) 1228:  "  ) 1229:  " EOF 1230:  lua <<EOF 1231:  require('spellsitter').
setup   1232:    hl = 'SpellBad',  1233:    captures =   ,  -- set to    to spellcheck everything 1234:   1235:    -- Spellchecker to use. 
1235:++++ values: 1236:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1237:    -- * ffi: built-in spell checker using the FFI to access the 1238:    --   internal spell check() function 1239:    spellchecker = 'vimfn', 1240:    1241:  EOF 1242:  let g:firenvim config =    1243:        'globalSettings':   1244:            'alt': 'all', 1245:          , 1246:        'localSettings':   1247:            '.
*':   1248:                'cmdline': 'neovim', 1249:                'content': 'text', 1250:                'priority': 0, 1251:                'selector': 'textarea', 1252:                'takeover': 'always', 1253:             , 1254:          1255:      1256:   1257:  " lua << EOF 1258:  " require("stabilize").
setup( 1259:  "   1260:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1261:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1262:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1263:  " --		filetype =   "help", "list", "Trouble"  , 1264:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1265:  " --	  1266:  "   1267:  " ) 1268:  " EOF 1269:  " lua <<EOF 1270:  " require('dd').
setup() 1271:  " EOF 1272:  " lua << EOF 1273:  " local opts =   1274:  "   log level = 'info', 1275:  "   auto session enable last session = false, 1276:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1277:  "   auto session enabled = false, 1278:  "   auto save enabled = nil, 1279:  "   auto restore enabled = nil, 1280:  "   auto session suppress dirs = nil 1281:  "   1282:  " require('auto-session').
setup(opts) 1283:  " EOF 1284:   1285:  " lua << EOF 1286:  " if exists('g:started by firenvim') 1287:  "   ZenMode 1288:  " else 1289:  "   set laststatus=2 1290:  " endif 1291:   1292:  " lua <<EOF 1293:  " require('neoclip').
setup(  1294:  "       history = 1000, 1295:  "       enable persistant history = false, 1296:  "       db path = vim.
fn.
stdpath("data") .
. 
1296:++++ "/databases/neoclip.
sqlite3", 1297:  "       filter = nil, 1298:  "       preview = true, 1299:  "       default register = '"', 1300:  "       content spec column = false, 1301:  "       on paste =   1302:  "         set reg = false, 1303:  "        , 1304:  "       keys =   1305:  "         i =   1306:  "           select = '<cr>', 1307:  "           paste = '<c-p>', 1308:  "           paste behind = '<c-k>', 1309:  "           custom =   , 1310:  "          , 1311:  "         n =   1312:  "           select = '<cr>', 1313:  "           paste = 'p', 1314:  "           paste behind = 'P', 1315:  "           custom =   , 1316:  "          , 1317:  "        , 1318:  "     ) 1319:  " EOF 1320:  " lua <<EOF 1321:  " local saga = require 'lspsaga'  1322:  " saga.
init lsp saga()  1323:  "   1324:  " EOF 1325:   1326:  "au FileType tex autocmd User SneakLeave set syntax=tex 1327:  "au FileType tex autocmd User SneakEnter set syntax=text 1328:  " 1329:  " 1330:  " 1331:   1332:  " 1333:  " 'tCommen20 1334:  " let g:tcommentMapLeaderOp1=';'  1335:  " "map <leader>c <Leader>    1336:  "" function! RestoreRegister() 1337:  "   let @" = s:restore reg 1338:  "   return '' 1339:  " endfunction 1340:  " function! s:Repl() 1341:  "     let s:restore reg = @" 1342:  "     return "p@=RestoreRegister() <cr>" 1343:  " endfunction 1344:  " 1345:  " " NB: this supports "rp that replaces the selection by the contents of @r 1346:  " vnoremap <silent> <expr> p <sid>Repl() 1347:   1348:  " " Change Color when entering 1349:  " Insert Mode augroup CursorLine 1350:  "    au! 1351:  "  if has("gui running") 1352:  "  else 1353:  "      au InsertEnter * setlocal cursorline 1354:  "        au InsertLeave * setlocal nocursorline 1355:  "     endif 1356:  "        augroup END 1357:  " function! DelTagOfFile(file) 1358:  "   let fullpath = a:file 1359:  "   let cwd = getcwd() 1360:  "   let tagfilename = cwd . 
1360:++++ "/tags" 1361:  "   let f = substitute(fullpath, cwd . 
1361:++++ "/", "", "") 1362:  "   let f = escape(f, '.
/') 1363:  "   let cmd = 'sed -i "/' . 
1363:++++ f . 
1363:++++ '/d" "' . 
1363:++++ tagfilename . 
1363:++++ '"' 1364:  "   let resp = system(cmd) 1365:  " endfunction 1366:  " function! Break() 1367:  "  let n=130-virtcol('.
') 1368:  "  <Esc>ni <Esc><Esc> 1369:  " endfunction 1370:  " function Gitview() 1371:  "    cd /root/web2 ; git add . 
1371:++++ ; git commit -m -a ; git push origin gh-pages 1372:  " endfunction 1373:  " fuzzy search 1374:  " function! s:config fuzzyall(.
.
.
) abort 1375:  "   return extend(copy(  1376:  "       'converters': [ 1377:  "         incsearch#config#fuzzy#converter(), 1378:  "         incsearch#config#fuzzyspell#converter() 1379:  "       ], 1380:  "      ), get(a:, 1,    1381:  "   )) 1382:  " endfunction 1383:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1384:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1385:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1386:  " map f <Plug>(incsearch-fuzzyspell-/) 1387:  " map F <Plug>(incsearch-fuzzyspell-?) 1388:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1389:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1390:  " let g:deoplete#enable at startup = 1 1391:  " map <silent> <leader>g :silent call Gitview() 1392:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1393:  "Load some useful plugins with vundle  1394:  " 1395:  "asdf asldfkj 1396:  " hi! link Sneak Normal 1397:  " hi! link SneakScope Normal   test test2 test3 1398:   1399:  " command! -bang -nargs=* Rg 1400:  "     call fzf#vim#grep( 1401:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1402:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1403:  " 1404:  "" au GUIEnter * set fullscreen 1405:  " if has("gui running") 1406:    " set fuoptions=maxvert,maxhorz 1407:    " au GUIEnter * set fullscreen 1408:     " set foldcolumn=10 1409:     " set formatoptions=ant 1410:  " set wrapmargin=0 1411:  " set nohlsearch 1412:  " set tags= ~/workspacemodules/tags 1413:  " highlight SignColumn guibg=bg 1414:  "       endif     1415:  " if has("autocmd") 1416:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1417:  " endif 1418:    " autocmd BufWinLeave *.
* mkview 1419:    " autocmd BufWinEnter *.
* silent loadview 1420:     " set foldcolumn=2 1421:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1422:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1423:  " inoremap <cr> <esc>:w<cr>i<cr>  1424:  "" set tm=500 1425:  " set macmeta 1426:  " auto reload vimrc when editing it 1427:  " let g:github function style = "italic" 1428:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1429:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1430:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1431:  " Load the colorscheme 1432:  " colorscheme github dark 1433:  "" terminal color settings  1434:  " Example config in VimScript 1435:  " let g:github function style = "italic" 1436:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1437:   1438:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1439:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1440:  " Load the colorscheme 1441:  " colorscheme github dark  1442:  " set background=dark  1443:  " if has("gui running")	" GUI color and font settings 1444:  "   set guifont=Fira  Code:h22 1445:  "   " colorscheme gruvbox  1446:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1447:  " else 1448:  "  colorscheme one 1449:  " colorscheme material   1450:  " let g:material style = 'palenight'   1451:  " let g:material style = 'lighter' 1452:  " highlight Normal ctermbg=none  1453:  "   " let g:vimtex quickfix method='pplatex'  1454:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1455:  "    function! UpdateSkim(status) 1456:  "      if !a:status | return | endif 1457:  " 1458:  "      let l:out = b:vimtex.
out() 1459:  "      let l:tex = expand(' :p') 1460:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1461:  "      if !empty(system('pgrep Skim')) 1462:  "        call extend(l:cmd, ['-g']) 1463:  "      endif 1464:  "      if has('nvim') 1465:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1466:  "      elseif has('job') 1467:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1468:  "      else 1469:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1470:  "      endif 1471:  "    endfunction 1472:  " let g:vimtex latexmk build dir = '.
/build' 1473:  "   'build dir' : '.
/build', 1474:  "  1475:  "     let g:vimtex compiler latexmk =   1476:  "       'background' : 0, 1477:  "           'callback' : 1, 1478:  "       'continuous' : 1, 1479:  "       'options' : [ 1480:  "         '-pdf', 1481:  "         '-verbose', 1482:  "         '-file-line-error', 1483:  "         '-synctex=1', 1484:  "         '-interaction=nonstopmode', 1485:  "       ], 1486:  "        1487:  " let g:vimtex compiler progname = 'nvr' 1488:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1489:  " let g:vimtex quickfix mode = 1 1490:  " let g:vimtex fold enabled = 0 1491:  " let g:vimtex fold manual = 1 1492:   1493:   1494:  " let g:vimtex fold types=   1495:  "             'preamble' :   , 1496:  "             'comments' :  'enabled' : 1 , 1497:  "             'markers' :   , 1498:  "             'sections' :   1499:  "               'parse levels' : 0, 1500:  "               'sections' : [       1501:  "                 ' (add)?part', 1502:  "                 ' (chapter|addchap)', 1503:  "                 ' (section|addsec)', 1504:  "                 'subsection', 1505:  "                 'subsubsection', 1506:  "               ], 1507:  "               'parts' : [          1508:  "                 'appendix', 1509:  "                 'frontmatter', 1510:  "                 'mainmatter', 1511:  "                 'backmatter', 1512:  "               ], 1513:  "              , 1514:  "              1515:   1516:  " autocmd TermClose * if v:event == 12 || v:event == 0 bdelete endif 1517:   