1:  call plug#begin('~/.
vim/plugged') 2:  " Plug 'reedes/vim-pencil'  3:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   4:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    5:  Plug 'lewis6991/spellsitter.
nvim' 6:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   7:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   8:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   9:  Plug 'phaazon/hop.
nvim'     10:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   11:  " Plug 'luukvbaal/stabilize.
nvim'  12:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     13:  Plug 'is0n/fm-nvim' 14:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   15:  Plug 'nvim-lua/plenary.
nvim' 16:  Plug 'nvim-telescope/telescope.
nvim', 17:  Plug 'nvim-treesitter/playground' 18:  Plug 'famiu/feline.
nvim' 19:  " Plug 'hoob3rt/lualine.
nvim', 20:  " Plug 'karb94/neoscroll.
nvim' 21:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   22:  " Plug 'f3fora/cmp-spell'     23:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   24:  Plug 'shaunsingh/nord.
nvim'   25:  "Plug 'vim-commentary' 26:  "Plug 'b3nj5m1n/kommentary' 27:  " Plug 'simnalamburt/vim-mundo' 28:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    29:  " Plug 'glepnir/lspsaga.
nvim' 30:  " If you are using Vim-Plug 31:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    32:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    33:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   34:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   35:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'   36:  Plug 'hrsh7th/vim-vsnip',   'branch': 'master'    37:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    38:  Plug 'ray-x/cmp-treesitter' 39:  " For luasnip user.
@??? 40:  Plug 'L3MON4D3/LuaSnip' 41:  " Plug 'saadparwaiz1/cmp luasnip' 42:  "Plug 'steelsojka/completion-buffers' 43:  Plug 'voldikss/vim-floaterm' 44:  Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   45:  "Plug 'pope/vim-obsession' 46:  "Plug 'xolox/vim-easytags' 47:  " Plug 'nvim-lua/plenary.
nvim' 48:  Plug 'windwp/nvim-spectre' 49:  Plug 'xolox/vim-misc' 50:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   51:  Plug 'kevinhwang91/nvim-bqf' 52:  Plug 'justinhoward/fzf-neoyank'  53:   Plug 'hrsh7th/vim-vsnip' 54:  " Plug 'svermeulen/vim-cutlass' 55:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 56:  " Plug 'kyazdani42/nvim-tree.
lua',  57:  "Plug 'nvim-lua/completion-nvim' 58:  Plug 'hrsh7th/vim-vsnip-integ' 59:  Plug 'neovim/nvim-lspconfig' 60:  Plug 'nvim-lua/diagnostic-nvim' 61:  " Plug 'rafamadriz/friendly-snippets'   62:  " Make sure you use single quotes 63:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 64:  " Plug 'junegunn/vim-easy-align' 65:  " Any valid git URL is allowed 66:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 67:  " Group dependencies, vim-snippets depends on ultisnips  68:   Plug 'tpope/vim-surround' 69:  " Plug 'neovim/node-host' 70:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   71:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    72:  Plug 'rakr/vim-one'  73:  " Plug 'cyansprite/Extract' 74:  Plug 'gioele/vim-autoswap' 75:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   76:  " Plug 't9md/vim-smalls' 77:  Plug 'skywind3000/asyncrun.
vim' 78:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   79:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 80:  " please comment next line 81:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     82:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    83:  " Plug 'rmagatti/auto-session',    'branch': 'main'  84:  " Plug 'justinmk/vim-sneak' 85:  Plug 'Shougo/neoyank.
vim'  86:  if has('nvim') 87:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   88:   else 89:     Plug 'Shougo/denite.
nvim' 90:     Plug 'roxma/nvim-yarp' 91:     Plug 'roxma/vim-hug-neovim-rpc' 92:   endif 93:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 94:  " Plug 'tpope/vim-fugitive' 95:  Plug 'eugen0329/vim-esearch' 96:  " Plug 'haya14busa/incsearch.
vim' 97:  " Plug 'haya14busa/incsearch-fuzzy.
vim' 98:  Plug 'Raimondi/vim search objects' 99:  Plug 'terryma/vim-multiple-cursors' 100:  " " On-demand loading 101:  " Plug 'junegunn/goyo.
vim' 102:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   103:  "  Plug 'morhetz/gruvbox' 104:  Plug 'sainnhe/gruvbox-material' 105:  Plug 'vim-pandoc/vim-pandoc' 106:  Plug 'vim-pandoc/vim-pandoc-syntax'  107:  " Plugin outside ~/.
vim/plugged with post-update hook 108:  Plug 'junegunn/fzf',   'do': '.
/install --all'   109:  Plug 'junegunn/fzf.
vim' 110:  " 111:  " 112:  "  Plug 'ervandew/supertab' 113:  " Plug 'Shougo/vimproc.
vim' 114:   115:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   116:   '  117:  Plug 'lifepillar/vim-solarized8' 118:  Plug 'vim-scripts/AutoTag' 119:  " Plug 'vim-scripts/vim-auto-save' 120:  Plug 'vim-pandoc/vim-pandoc' 121:   122:  " Plug 'yashamon/vim-snippets' 123:   124:  " Plug 'lervag/vimtex' 125:  " colorschemes 126:  "  127:  Plug 'kyazdani42/blue-moon'   128:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   129:   130:  Plug 'reedes/vim-colors-pencil' 131:   132:  Plug 'vim-scripts/oceanlight' 133:   134:  Plug 'gosukiwi/vim-atom-dark' 135:   136:  Plug 'dracula/vim' 137:   138:  " Unmanaged plugin (manually installed and updated) 139:  " Plug '~/my-prototype-plugin' 140:  " Add plugins to &runtimepath 141:  call plug#end()  142:   143:  "Neovide  144:  " 145:  " let g:neovide maximized=v:true  146:  " let g:neovide fullscreen=v:true 147:  let g:neovide transparency=0.
15 148:   149:  "General Settings     150:  set title  151:  set titlestring 152:  " set noshowmode 153:  " set noruler        154:  " set laststatus=1  155:  set noshowcmd   156:  set wrap   157:  set pb=10  158:  set switchbuf=newtab 159:  " let g:python3 host prog='/usr/bin/python3.
9' 160:  " let g:python3 host prog='/usr/bin/python3.
9' 161:   162:  set clipboard+=unnamedplus	" yank to the system register (*) by default 163:  " TAB setting  164:  set expandtab        "replace <TAB> with spaces 165:  set softtabstop=3  166:  set shiftwidth=3  167:  set termguicolors   168:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 169:  		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 170:  		   ,sm:block-blinkwait175-blinkoff150-blinkon175 171:  set spelllang=en    172:   if exists('g:started by firenvim') 173:         au UIEnter  set noshowmode 174:         au UIEnter  set noruler 175:         au UIEnter  set laststatus=0 176:         au UIEnter  set noshowcmd 177:  "       " au UIEnter set lines=140  178:  "       " au UIEnter set columns=140 179:   else 180:   " autocmd VimEnter * TZAtaraxis 181:   endif 182:   183:  au VIMEnter set spell  184:  set timeoutlen=0 185:  au VIMEnter * let g:surround 108 =   186:        'q':  " `` r''" 187:           188:  let g:tex flavor = "latex" 189:  let g:tex isk = '@,48-57,58, ,192-255' 190:  let g:tex conceal = "" 191:  set tags+=~/workspacemodules/tags 192:  "set tags+=~/Dropbox/workspace/tags 193:    " set formatoptions=ant 194:    " set wrapmargin=1 195:  " set shada="NONE"   196:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 197:  set wrap 198:  set linebreak  199:  set formatoptions+=w " set breakat=" " 200:  " set list  " list disables linebreak 201:  set textwidth=0 202:  set wrapmargin=-1 203:  set hid 204:  set autochdir 205:  set guioptions-=r 206:  set guioptions-=l 207:  set inccommand=split 208:  set mouse= 209:  set bs=2		" allow backspacing over everything in insert mode  210:  set undofile                " Save undo's after file closes 211:  set undodir=undo " where to save undo histories 212:  set undolevels=1000000         " How many undos 213:  set undoreload=10000		 214:  set ruler		" show the cursor position all the time 215:  set autoread		" auto read when file is changed from outside 216:  set nohlsearch 217:  " set noswapfile 218:  set showmatch		" Cursor shows matching ) and   219:  set nocursorline 220:  set showmode		" Show current mode 221:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 222:  set wildmenu            " wild char completion menu 223:  let maplocalleader = "  " 224:  " ignore these files while expanding wild chars 225:  set wildignore=*.
o,*.
class,*.
pyc 226:  set incsearch		" incremental search 227:  " set nobackup		" no *~ backup files 228:  set ignorecase		" ignore case when searching 229:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 230:  "set smarttab		" insert tabs on the start of a line according to context 231:   232:  " disable sound on errors 233:  set noerrorbells 234:  set novisualbell  235:  set guifont=Fira  Code:h22 236:  set tm=500 237:  " set macmeta 238:  " auto reload vimrc when editing it 239:  " autocmd! bufwritepost ~/.
config/nvim/init.
vim source ~/.
config/nvim/init.
vim 240:  " set hlsearch		" search highlighting 241:  " 242:  if has("gui running")	" GUI color and font settings 243:    set guifont=Fira  Code:h22 244:    set background=dark  245:  "  set cursorline        " highlight current line 246:    " colorscheme gruvbox  247:    highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 248:  else 249:  " terminal color settings  250:  set background=dark 251:  " Example config in VimScript 252:  let g:github function style = "italic" 253:  let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 254:   255:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 256:  " let g:github colors = [hint = "orange", error = "#ff0000"] 257:  " Load the colorscheme 258:  " colorscheme github dark  259:  " set background=dark  260:  set background=dark 261:   colorscheme one 262:  " colorscheme material   263:  " let g:material style = 'palenight'   264:  " let g:material style = 'lighter' 265:  " highlight Normal ctermbg=none 266:  hi clear SpellBad 267:  hi SpellBad cterm=undercurl 268:  " Set style for gVim 269:  hi SpellBad gui=underline 270:  hi MatchParen cterm=undercurl ctermbg=none ctermfg=magenta 271:  endif 272:   273:  "Autocommands, au 274:  " 275:   276:   277:  autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  278:  au FileType Makefile set noexpandtab 279:  au FileType tex,text set spelllang=en 280:  au FileType tex,text,md set spell 281:  " au FileType vim,lua,md set list 282:  au FileType tex,text,md syntax sync fromstart 283:  au FileType tex,text,md silent execute "!echo " . 
283:++++ v:servername . 
283:++++ " > ~/servername.
txt"    284:  au FileType tex,text,md hi SpellBad cterm=undercurl 285:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 286:  au Filetype tex,text,md set tw=50 287:   288:  " au FileType tex set background=dark  289:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  290:  au TextYankPost * call neoyank# append()  291:   292:           "Some functions 293:  function Light() 294:  set background=light 295:  " colorscheme oceanlight  296:  colorscheme one  297:  " highlight Normal ctermfg=black 298:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 299:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 300:  endfunction    301:   302:  " function Light() 303:  " set background=light 304:  " " colorscheme oceanlight  305:  " colorscheme material  306:  " let g:material style = 'lighter'   307:  "    " highlight Normal ctermfg=black 308:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 309:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 310:  " endfunction    311:  function Bluemoon() 312:     set background=dark 313:     colorscheme blue-moon 314:     " colorscheme material   315:  endfunction 316:   317:  function Deepocean() 318:     set background=dark 319:     colorscheme material   320:     let g:material style = 'deep ocean'   321:  endfunction 322:   323:  function Palenight() 324:     set background=dark 325:     " colorscheme blue-moon 326:     colorscheme material   327:     let g:material style = 'palenight'   328:  endfunction 329:  function Lighter() 330:     set background=light 331:     " colorscheme blue-moon 332:     colorscheme material   333:     let g:material style = 'lighter'   334:  endfunction 335:   336:  function Dark() 337:     set background=dark 338:     colorscheme one   339:  endfunction 340:   341:  set expandtab        "replace <TAB> with spaces 342:  set softtabstop=3  343:  set shiftwidth=3  344:   345:  "---------------------------------------------------------------------------  346:  " USEFUL SHORTCUTS 347:  "---------------------------------------------------------------------------  348:  " set leader to ;  349:  let mapleader=';' 350:  let g:mapleader=';' 351:   352:  " open the error console 353:  " move to next error 354:   355:  " Bash like keys for the command line 356:  cnoremap <C-A>      <Home> 357:  cnoremap <C-E>      <End> 358:  cnoremap <C-K>      <C-U> 359:   360:  " ,p toggles paste mode 361:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 362:   363:  " allow multiple indentation/deindentation in visual mode 364:  vnoremap < <gv 365:  vnoremap > >gv 366:   367:  " :cd. 
367:++++ change working directory to that of the current file 368:  cmap cd. 
368:++++ lcd  :p:h 369:   370:   371:  " Enable omni completion. 
371:++++ (Ctrl-X Ctrl-O) 372:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 373:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 374:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 375:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 376:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 377:  autocmd FileType c set omnifunc=ccomplete#Complete 378:  autocmd FileType java set omnifunc=javacomplete#Complete  379:  autocmd FileType tex set omnifunc=latex#Complete 380:  autocmd Filetype tex setlocal fo=nt 381:  autocmd Filetype tex setlocal wrapmargin=0 382:  " use syntax complete if nothing else available 383:  if has("autocmd") && exists("+omnifunc") 384:    autocmd Filetype * 385:                 	if &omnifunc == "" | 386:                 		setlocal omnifunc=syntaxcomplete#Complete | 387:                 	endif 388:  endif 389:   390:  set cot-=preview "disable doc preview in omnicomplete 391:   392:  " make CSS omnicompletion work for SASS and SCSS 393:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 394:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 395:   396:  "---------------------------------------------------------------------------  397:  " ENCODING SETTINGS 398:  "---------------------------------------------------------------------------  399:  set encoding=utf-8                                   400:  set termencoding=utf-8 401:  set fileencoding=utf-8 402:   403:  "maps remaps mappings   404:  " 405:  " 406:  " terminal mappings 407:  tnoremap <A-Esc> <C- ><C-n> 408:  nmap <A-S-t> :wa<cr>:te<cr> 409:   410:  vnoremap <Leader>U ""y: s/<C-r>" 411:  noremap <leader>r :wa<cr>:e<cr> 412:  noremap <leader>h :set tw=50<cr> 413:  noremap <leader>w :set tw=0<cr>  414:  " noremap q <nop> 415:  map <leader>q q 416:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 417:  nnoremap <leader>rr :source  MYVIMRC<CR> 418:  "nnoremap <leader>e :NERDTreeFind<CR> 419:  nnoremap <leader>e :wa<cr>:Vifm<cr> 420:  nnoremap <leader>t :wa<cr>:FloatermToggle<cr> 421:   422:   423:  vnoremap <m-s> :s///gc<left><left><left><left> 424:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 425:  nnoremap <m-s> : s///gc<left><left><left> 426:  vmap <M-.
> t.
<CR>h 427:  nmap <M-.
> t.
<CR>h 428:  nnoremap <up> 1<C-U> 429:  imap <up> <nop> 430:  nnoremap <down> 1<C-D> 431:  imap <down> <nop> 432:  noremap <ScrollWheelUp>      <nop> 433:  noremap <S-ScrollWheelUp>    <nop> 434:  noremap <C-ScrollWheelUp>    <nop> 435:  noremap <ScrollWheelDown>    <nop> 436:  noremap <S-ScrollWheelDown>  <nop> 437:  noremap <C-ScrollWheelDown>  <nop> 438:  noremap <ScrollWheelLeft>    <nop> 439:  noremap <S-ScrollWheelLeft>  <nop> 440:  noremap <C-ScrollWheelLeft>  <nop> 441:  noremap <ScrollWheelRight>   <nop> 442:  noremap <S-ScrollWheelRight> <nop> 443:  noremap <C-ScrollWheelRight> <nop> 444:  inoremap   / 445:  inoremap /   446:  vnoremap p "0dP 447:  noremap D "0D 448:  noremap d "0d 449:  nnoremap dd "0dd 450:  noremap c "0c 451:  noremap C " C 452:  noremap x " x 453:   454:  vnoremap x "+x 455:  vnoremap y "+y 456:  nnoremap y "+y 457:  nnoremap p "+p 458:  nnoremap <leader>p p 459:  nnoremap <leader>q q 460:  " Softwrap  461:  nmap D "0dg  462:  nmap V vg  463:  nmap A g a  464:  map 0 g  465:  map 9 g  466:  nmap <m-8> :set lines=200<cr>:set columns=200<cr> 467:   468:  " map <Leader>n <Plug>(miniyank-cycle) 469:  nnoremap <c-l> :wa<cr>:bnext<CR> 470:  nnoremap <c-h> :wa<cr>:bprevious<CR> 471:  " tnoremap <Esc> <C- >  472:  " nnoremap < :tabp<CR> 473:  " nnoremap > :tabn<CR> 474:  " nnoremap <leader>n :tabedit  <CR> 475:  imap <M-j> <C-j> 476:  map <S-m> <cmd>HopChar1<cr>  477:  " map <S-b> ?  <CR> 478:  map <S-w> <cmd>HopChar1<cr>  479:  map <S-b> <cmd>HopChar1<cr>  480:   481:  map <C-q> <Esc>:qa!<CR> 482:  map <m-q> <esc>:wqa<cr> 483:  " map <S-m-q> <esc>:wq<cr>  484:  map <m-c> <esc>:close<cr> 485:  map <M-d> <Esc>:bdelete<CR> 486:  noremap gf gq 487:  noremap f / 488:  noremap F ? 489:  " inoremap .
<Esc> .
<CR><Esc><leader>j 490:  " inoremap .
<Space> .
<CR><Esc><leader>j 491:  " noremap S :S  492:  " 493:  " 494:  " function! Sneak() 495:  "     hi! link Sneak Normal 496:  "     hi! link SneakScope Normal 497:  "     execute 'normal!  <Plug>Sneak s' 498:  "     syntax on 499:  " endfunction 500:   map <leader>n <Plug>Sneak ; 501:  " map N <Plug>Sneak , 502:  " map t <Plug>(smalls-excursion) 503:  " let g:smalls auto jump=1 504:  " let g:smalls auto jump timeout=0 505:   506:   507:      " xmap t <Plug>Sneak s 508:      " xmap T <Plug>Sneak S 509:     " omap t <Plug>Sneak s 510:      " omap T <Plug>Sneak S  511:      " math maps    512:  noremap # /  <CR>v?  <CR> 513:  noremap   /  <CR>hv?  <CR>l 514:  noremap @ / <CR>v? <CR> 515:  map j gj 516:  map k gk 517:  noremap <Space> .
@??? 518:  vnoremap <Space> t <cr> 519:  map K <C-u> 520:  map J <C-d> 521:  " map <C-j> zz 522:  " map <C-k> zb 523:  map <C-j> <C-e>jj 524:  map <C-k> <C-y>kk 525:  nnoremap <leader>j J 526:  nnoremap <leader>k K 527:  map ' " 528:  nnoremap <Backspace> i<Backspace><Esc> 529:  nmap <leader>c gc 530:  noremap <A-r> <C-r> 531:  nnoremap ` ~ 532:  nnoremap . 
532:++++ ` 533:  noremap <m-1> <C-o> 534:  noremap <m-2> <C-i> 535:  noremap <D-d> <C-d> 536:  map ;s <Esc>:w<CR> 537:  " noremap <A-d> <C-d> 538:  " noremap <M-d> <C-d> 539:  noremap <D-u> <C-u> 540:  noremap <A-u> <C-u> 541:  " this mapping Enter key to <C-y> to chose the current highlight item  542:  " and close the selection list, same as other IDEs.
@??? 543:   544:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 545:  nnoremap <silent> <Leader>y :YRGetElem<CR> 546:  map ' " 547:  inoremap <D-]> <C-x><C-]> 548:  inoremap <C-]> <C-x><C-]> 549:   550:   551:   552:   553:  au FileType tex,text,md nmap 0 g  554:  au FileType tex,text,md noremap 9 g  555:  " au FileType tex,text,md nmap A g a 556:  au FileType tex,text,md nnoremap dd " g dg g  557:  " au FileType tex,text,md inoremap <A-i> <CR> 558:  " au FileType tex,text,md nnoremap <A-i> a<CR> 559:  " au FileType tex,text,md nnoremap <CR> J0 560:   561:  "au FileType tex,text,md inoremap <A><CR> <CR> 562:  " au FileType tex,text,md inoremap <CR> <Esc><CR> 563:  " au FileType tex,text,md inoremap . 
563:++++ .
<CR><ESC>J0i 564:  " au FileType tex,text,md inoremap <leader>. 
564:++++ .
@??? 565:   566:  " au FileType tex,text,md inoremap .
<CR> .
<CR><ESC>J0 567:  " au FileType tex,text,md inoremap .
<Space> .
<CR><ESC>J0 568:  " au FileType tex,text,md inoremap .
<ESC> .
<CR><ESC>J0 569:  " au FileType tex,text,md inoremap <leader>cr <CR> 570:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 571:   572:   573:   574:   575:  "Neovim mappings 576:  " :tnoremap <S-h> <C- ><C-n><C-w>h 577:  " :tnoremap <S-j> <C- ><C-n><C-w>j 578:  " :tnoremap <S-k> <C- ><C-n><C-w>k 579:  " :tnoremap <S-l> <C- ><C-n><C-w>l 580:  " tnoremap <Left> :tbnext<CR> 581:  " tnoremap <Right> :tbprevious<CR> 582:  " tnoremap <Leader>e <C- ><C-n>  583:  " imap <Backspace>   584:  "  Sneak 585:  " let g:sneak#use ic scs = 1 586:   587:  map t <cmd>HopChar1AC<cr> 588:  map T <cmd>HopChar1BC<cr> 589:  map <m-.
> <cmd>HopChar1<cr>.
@??? 590:  map <m-Space> <cmd>HopWord<cr> 591:   592:   593:   594:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 595:  "  map t :syntaxoff <Plug>Sneak s 596:  " map T <Plug>Sneak S 597:  " let g:sneak#s next = 1 598:  "  let g:sneak#label = 1 599:   600:  " FZF  601:  " 602:  noremap <m-t> :wa<cr>:BTags<cr> 603:  noremap <m-y> :wa<cr>:Tags<cr> 604:  noremap S <Esc> :wa<cr>:BLines<CR> 605:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 606:  " Line search mapping  607:  " function! Jumpback()  608:  "   K=bufname() 609:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 610:  " endfunction 611:  noremap <leader>ss :wa<cr>:source  MYVIMRC<cr> 612:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxisOn<cr><cr> 613:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 614:  noremap <m-b> <Esc>:wa<cr>:Buffers<CR> 615:  " noremap F <Esc>:GFiles<CR> 616:  map <A-e> :wa<cr>:FZF ~<CR> 617:   618:  " vimtex settings 619:  " 620:  " 621:  " 622:  " let g:vimtex view general viewer 623:  "            = '/Applications/Skim.
app/Contents/SharedSupport/displayline' 624:  " let g:vimtex view general options = '-r @line @pdf @tex' 625:  let g:latex view general viewer = 'zathura' 626:  let g:vimtex view method = "zathura" 627:  let g:vimtex view automatic = 0 628:   629:  "fvim 630:  " 631:  if exists('g:fvim loaded') 632:   FVimToggleFullScreen 633:  " Cursor tweaks 634:  FVimCursorSmoothMove v:true 635:  FVimCursorSmoothBlink v:true 636:   637:  " Background composition 638:  FVimBackgroundComposition 'acrylic'   " 'none', 'transparent', 'blur' or 'acrylic' 639:  FVimBackgroundOpacity 1            " value between 0 and 1, default bg opacity.
@??? 640:  FVimBackgroundAltOpacity 0.
85         " value between 0 and 1, non-default bg opacity.
@??? 641:  FVimBackgroundImage 'C:/foobar.
png'   " background image 642:  FVimBackgroundImageVAlign 'center'    " vertial position, 'top', 'center' or 'bottom' 643:  FVimBackgroundImageHAlign 'center'    " horizontal position, 'left', 'center' or 'right' 644:  FVimBackgroundImageStretch 'fill'     " 'none', 'fill', 'uniform', 'uniformfill' 645:  FVimBackgroundImageOpacity 0.
85       " value between 0 and 1, bg image opacity 646:   647:  " Title bar tweaks 648:  FVimCustomTitleBar v:false             " themed with colorscheme 649:   650:  " Debug UI overlay 651:  FVimDrawFPS v:true 652:   653:  " Font tweaks 654:  FVimFontAntialias v:true 655:  FVimFontAutohint v:true 656:  FVimFontHintLevel 'full' 657:  FVimFontLigature v:true 658:  FVimFontLineHeight '+1.
0' " can be 'default', '14.
0', '-1.
0' etc.
@??? 659:  FVimFontSubpixel v:true 660:  FVimFontNoBuiltInSymbols v:true " Disable built-in Nerd font symbols 661:   662:  " Try to snap the fonts to the pixels, reduces blur 663:  " in some situations (e.
g. 
663:++++ 100  DPI).
@??? 664:  FVimFontAutoSnap v:true 665:   666:  " Font weight tuning, possible valuaes are 100.
.
900 667:  FVimFontNormalWeight 400 668:  FVimFontBoldWeight 700 669:   670:  " Font debugging -- draw bounds around each glyph 671:  FVimFontDrawBounds v:true 672:   673:  " UI options (all default to v:false) 674:  FVimUIPopupMenu v:true      " external popup menu 675:  FVimUIWildMenu v:false      " external wildmenu -- work in progress 676:   677:  " Keyboard mapping options 678:  FVimKeyDisableShiftSpace v:true " disable unsupported sequence <S-Space> 679:  FVimKeyAutoIme v:true           " Automatic input method engagement in Insert mode 680:   681:  " Detach from a remote session without killing the server 682:  " If this command is executed on a standalone instance, 683:  " the embedded process will be terminated anyway.
@??? 684:  FVimDetach 685:   686:  " =========== BREAKING CHANGES -- the following commands are disabled ============ 687:  " FVimUIMultiGrid v:true     -- per-window grid system -- done and enabled by default 688:  " FVimUITabLine v:false      -- external tabline -- not implemented 689:  " FVimUICmdLine v:false      -- external cmdline -- not implemented 690:  " FVimUIMessages v:false     -- external messages -- not implemented 691:  " FVimUITermColors v:false   -- not implemented 692:  " FVimUIHlState v:false      -- not implemented 693:   694:  endif 695:  let g:vimtex indent enabled =0 696:  let g:vimtex syntax enabled=0   697:  function! Profile() 698:  profile start profile.
log 699:  profile func * 700:  profile file * 701:  endfunction  702:   703:  function! Sentence() 704:    let g:buf = bufname() 705:    AsyncRun sentence.
sh   706:    echo "Print any character" 707:    call getchar() 708:    e sentence   709:    " echo "Print any character" 710:    " call getchar() 711:    BLines 712:    AsyncStop 713:  endfunction 714:  noremap L :wa<cr>:call Sentence()<cr> 715:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 716:  function! Git()  717:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   718:    AsyncStop 719:  endfunction 720:  " autocmd BufWritePost *  call Git() 721:  "  722:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 723:   724:   725:  function! ToggleQuickFix() 726:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 727:          TZAtaraxisOff 728:          VimtexErrors 729:      else 730:          cclose  731:          TZAtaraxisOn 732:          endif 733:  endfunction 734:   735:  au filetype tex nnoremap <silent> <leader>s :wa<cr>:call ToggleQuickFix()<cr> 736:   737:  " let g:vimtex quickfix method='pplatex'  738:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 739:  "    function! UpdateSkim(status) 740:  "      if !a:status | return | endif 741:  " 742:  "      let l:out = b:vimtex.
out() 743:  "      let l:tex = expand(' :p') 744:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 745:  "      if !empty(system('pgrep Skim')) 746:  "        call extend(l:cmd, ['-g']) 747:  "      endif 748:  "      if has('nvim') 749:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 750:  "      elseif has('job') 751:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 752:  "      else 753:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 754:  "      endif 755:  "    endfunction 756:  " let g:vimtex latexmk build dir = '.
/build' 757:  "   'build dir' : '.
/build', 758:   759:      let g:vimtex compiler latexmk =   760:        'background' : 0, 761:            'callback' : 1, 762:        'continuous' : 1, 763:        'options' : [ 764:          '-pdf', 765:          '-verbose', 766:          '-file-line-error', 767:          '-synctex=1', 768:          '-interaction=nonstopmode', 769:        ], 770:         771:  let g:vimtex compiler progname = 'nvr' 772:  " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 773:  let g:vimtex quickfix mode = 1 774:  let g:vimtex fold enabled = 0 775:  let g:vimtex fold manual = 1 776:   777:   778:  let g:vimtex fold types=   779:              'preamble' :   , 780:              'comments' :  'enabled' : 1 , 781:              'markers' :   , 782:              'sections' :   783:                'parse levels' : 0, 784:                'sections' : [       785:                  ' (add)?part', 786:                  ' (chapter|addchap)', 787:                  ' (section|addsec)', 788:                  'subsection', 789:                  'subsubsection', 790:                ], 791:                'parts' : [          792:                  'appendix', 793:                  'frontmatter', 794:                  'mainmatter', 795:                  'backmatter', 796:                ], 797:               , 798:               799:   800:  " autocmd TermClose * if v:event == 12 || v:event == 0 bdelete endif   801:  function! CompileLatex()  802:    let buf = bufname() 803:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   804:    execute "buffer" buf 805:    call ViewPdf() 806:  endfunction 807:   808:  function! ViewPdf()  809:  wa 810:  let buf = bufname()  811:  let linenumber=line(".
") 812:  let colnumber=col(".
") 813:  let filename=bufname(" ") 814:  let filenamePDF=".
/build/" . 
814:++++ filename[:-4].
"pdf" 815:  let execstr="silent !zathura --synctex-forward " . 
815:++++ linenumber . 
815:++++ ":" . 
815:++++ colnumber . 
815:++++ ":" . 
815:++++ filename . 
815:++++ " " . 
815:++++ filenamePDF . 
815:++++ " &>/dev/null &" 816:  " . 
816:++++ "&>/dev/null &"    817:  exec execstr 818:  execute "buffer" buf 819:  endfunction  820:  nmap <leader>v :wa<cr>:call ViewPdf()<cr> 821:  " nmap <leader>v :VimtexView<cr> 822:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 823:  nmap <leader>l :wa<cr>:call CompileLatex()<cr> 824:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 825:   826:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  827:  "" mathml shenanigans 828:   829:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 830:   831:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  832:   833:  " <cr> 834:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 835:   836:  " nmap <leader>l :VimtexCompile<CR> 837:  " nmap <leader>s <Esc>:VimtexErrors<CR> 838:  " map <leader>g :ZenMode<CR>  839:  nmap <leader>g :w<cr>:TZAtaraxis<CR> 840:  nmap <leader>p :Denite neoyank -default-action=append<CR> 841:   842:  " NB: this supports "rp that replaces the selection by the contents of @r 843:  " Auto updating Ctags 844:  " autocmd VimLeave * exe ":silent ! ctags -R" 845:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 846:   847:  "Nerd Tree 848:  " map <leader>e :NERDTreeFind<CR> 849:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 850:  " 851:  " 852:  " 853:  "Vifm 854:  let g:vifmLiveCwd=1 855:  let g:vifmUseCurrent=1 856:   857:  "Autosave and autocommit    858:  " let g:updatetime = 10000 859:  let g:auto save = 0 860:  " .
vimrc 861:  let g:auto save events = ["CursorHold"] 862:  "au FileType vim let g:autosave = 0 863:  let g:auto save in insert mode = 0 864:  let g:auto save silent = 0 865:   866:  "Git autocommit  (private git repo) 867:   868:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  869:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 870:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 871:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 872:  " "Highlight 873:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 874:  " hi MatchParen guibg=NONE guifg=green gui=NONE 875:      " 876:      " 877:      " 878:      " UndoTree   879:  noremap <Leader>u :TZAtaraxisOff<cr>:wa<cr>:UndotreeToggle<CR> 880:          " If undotree is opened, it is likely one wants to interact with it.
@??? 881:          let g:undotree SetFocusWhenToggle=1 882:          noremap <D-z> u 883:          noremap <S-C-z> <C-r> 884:          " noremap <C-z> u 885:      "   886:   887:   888:  " Latex shortcuts 889:  "Latex compile.
@??? 890:  "them to an external terminal and run there.
@??? 891:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 892:  "Zathura forward search 893:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 894:  "source ~/.
anyname   895:  "au filetype tex filetype indent off 896:  "  GUI Stuff    897:  command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 898:   899:  " Deoplete 900:   901:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
901:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 902:  set directory= HOME/Downloads 903:   904:   905:  "LUA 906:  " lua <<EOF 907:  " require'nvim-tree'.
setup() 908:  " EOF 909:  lua <<EOF 910:  require'nvim-treesitter.
configs'.
setup    911:      -- 912:      highlight =   enable = true  , 913:      incremental selection =   enable = true  , 914:      textobjects =   enable = true  , 915:      indent =   enable = true  ,  916:    917:  EOF 918:   919:  lua <<EOF 920:  require'nvim-treesitter.
configs'.
setup   921:    incremental selection =   922:      enable = true, 923:      keymaps =   924:        init selection = "gnn", 925:        node incremental = "grn", 926:        scope incremental = "grc", 927:        node decremental = "grm", 928:       , 929:     , 930:    931:  EOF 932:   933:  " lua <<EOF 934:  " require('neoscroll').
setup  935:  "     -- All these keys will be mapped to their corresponding default scrolling animation 936:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 937:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 938:  "     hide cursor = true,          -- Hide cursor while scrolling 939:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 940:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 941:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 942:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 943:  "     easing function = nil,        -- Default easing function 944:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 945:  "     post hook = nil,              -- Function to run after the scrolling animation ends 946:  "       947:  " EOF 948:  "  949:  " " set foldlevel=20 950:  " " set foldmethod=expr 951:  " " set foldexpr=nvim treesitter#foldexpr() 952:  " set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0] 953:  "  954:  "  955:  "  956:  " vsnip stuff  957:  " Use <Tab> and <S-Tab> to navigate through popup menu 958:  inoremap <expr> <m-space> pumvisible() ? " <C-n>" : " <Tab>" 959:  inoremap <expr> <c-space> pumvisible() ? " <C-p>" : " <S-Tab>" 960:   961:  " Set completeopt to have a better completion experience 962:  set completeopt=menuone,noinsert,noselect 963:   964:  " Avoid showing message extra message when using completion 965:  set shortmess+=c 966:  let g:vsnip snippet dir = '~/dotfiles/snippets'   967:   968:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 969:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 970:  "  971:  " " Expand or jump 972:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 973:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 974:   975:  " Jump forward or backward 976:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 977:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 978:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 979:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 980:   981:  " 982:  " set foldexpr=nvim treesitter#foldexpr() 983:  " 984:  lua << EOF 985:  local nvim lsp = require('lspconfig') 986:  -- Use an on attach function to only map the following keys 987:  -- after the language server attaches to the current buffer 988:  local on attach = function(client, bufnr) 989:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 990:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 991:  -- Enable completion triggered by <c-x><c-o> 992:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 993:   994:    -- Mappings.
@??? 995:    local opts =   noremap=true, silent=true   996:   997:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 998:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 999:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 1000:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 1001:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 1002:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 1003:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 1004:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 1005:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 1006:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 1007:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 1008:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 1009:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 1010:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 1011:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 1012:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 1013:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 1014:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 1015:   1016:  end 1017:   1018:  -- Use a loop to conveniently call 'setup' on multiple servers and 1019:  -- map buffer local keybindings when the language server attaches 1020:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  1021:  --for  , lsp in ipairs(servers) do 1022:  --nvim lsp[lsp].
setup   1023:   --   on attach = on attach, 1024:    --  flags =   1025:     --   debounce text changes = 150, 1026:     --   1027:  --    1028:  --end 1029:  EOF 1030:   1031:   1032:  "Lsp install 1033:   1034:  lua << EOF 1035:  local function setup servers() 1036:    require'lspinstall'.
setup() 1037:    local servers = require'lspinstall'.
installed servers() 1038:    for  , server in pairs(servers) do 1039:      require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1040:    end 1041:  end 1042:   1043:  setup servers() 1044:   1045:  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1046:  require'lspinstall'.
post install hook = function () 1047:    setup servers() -- reload installed servers 1048:    vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1049:  end 1050:  EOF 1051:   1052:  nnoremap <leader>y :FZFNeoyank<cr> 1053:  nnoremap <leader>Y :FZFNeoyank  P<cr> 1054:  vnoremap <leader>y :FZFNeoyankSelection<cr> 1055:   1056:  nnoremap <leader>p :FZFNeoyank +<cr>  1057:  nnoremap <leader>1 :FZFNeoyank 1<cr> 1058:  nnoremap <leader>P :FZFNeoyank " P+<cr> 1059:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 1060:   1061:   1062:  " Replace the default dictionary completion with fzf-based fuzzy completion 1063:   1064:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   1065:   1066:   1067:  set completeopt=menu,menuone,noselect 1068:   1069:  lua <<EOF 1070:    -- Setup cmp.
@??? 1071:   1072:  local has words before = function() 1073:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 1074:      return false 1075:    end 1076:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 1077:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 1078:  end 1079:   1080:  local feedkey = function(key, mode) 1081:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 1082:  end 1083:   1084:  local cmp = require('cmp') 1085:  cmp.
setup   1086:   snippet =   1087:        expand = function(args) 1088:          -- For `vsnip` user.
@??? 1089:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 1090:    -- .
.
. 
1090:++++ Your other configuration .
.
.
@??? 1091:  end, 1092:   , 1093:  mapping =   1094:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 1095:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 1096:        ['<C-x>'] = cmp.
mapping.
complete(), 1097:        ['<C-e>'] = cmp.
mapping.
close(), 1098:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 1099:  -- .
.
. 
1099:++++ Your other mappings .
.
.
@??? 1100:  ["<Tab>"] = cmp.
mapping(function(fallback)  1101:        if vim.
fn["vsnip#available"]() == 1 1102:          then 1103:          feedkey("<Plug>(vsnip-expand-or-jump)", "") 1104:       elseif cmp.
visible() then 1105:          cmp.
select next item() 1106:        elseif has words before() then  1107:          cmp.
complete() 1108:        else  1109:          fallback() -- The fallback function sends a already mapped key. 
1109:++++ In this case, it's probably `<Tab>`.
@??? 1110:        end 1111:      end,   "i", "s"  ), 1112:  ["<S-Tab>"] = cmp.
mapping(function() 1113:        if vim.
fn.
pumvisible() == 1 then 1114:          feedkey("<C-p>", "n") 1115:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 1116:          feedkey("<Plug>(vsnip-jump-prev)", "") 1117:        end 1118:      end,   "i", "s"  ), 1119:  -- .
.
. 
1119:++++ Your other mappings .
.
.
@??? 1120:   1121:   , 1122:  requires =   1123:        1124:        'quangnguyen30192/cmp-nvim-tags', 1125:        -- if you want the sources is available for some file types 1126:        ft =   1127:          'tex', 1128:          'latex'  1129:          1130:        1131:       , 1132:  -- .
.
. 
1132:++++ Your other configuration .
.
.
@??? 1133:  sources =   1134:        -- For vsnip user.
@??? 1135:    name = 'tags' , keyword length = 4  , 1136:    name = 'vsnip', keyword length = 4  , 1137:           -- For luasnip user.
@??? 1138:        --   name = 'luasnip'  , 1139:  -- For ultisnips user.
@??? 1140:        --   name = 'ultisnips'  ,   1141:       name = 'buffer', keyword length = 4  , 1142:       name = 'omni' , keyword length = 4 , 1143:         --   name = 'spell'  ,  1144:       name = 'nvim lsp', keyword length = 4   , 1145:          name = 'treesitter', keyword length = 4  , 1146:  --  name = 'latex symbols'  , 1147:    1148:    1149:  EOF 1150:  "  1151:  " " LSP mappings    1152:  " "" LSP mappings  1153:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1154:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1155:  "  1156:  "  1157:   lua <<EOF 1158:   require('nvim comment').
setup( 1159:     1160:     -- Linters prefer comment and line to have a space in between markers 1161:     marker padding = true, 1162:     -- should comment out empty or whitespace only lines 1163:     comment empty = true, 1164:     -- Should key mappings be created 1165:     create mappings = true, 1166:     -- Normal mode mapping left hand side 1167:     line mapping = "gc", 1168:     -- Visual/Operator mapping left hand side 1169:     operator mapping = "<leader>c", 1170:     -- Hook function to call before commenting takes place 1171:     --hook = nil  1172:     1173:   ) 1174:  EOF 1175:  nmap <leader>c gc 1176:  lua <<EOF 1177:  local true zen = require("true-zen") 1178:  true zen.
setup(  1179:   	ui =   1180:   		bottom =   1181:   			laststatus = 0, 1182:   			ruler = false, 1183:   			showmode = false, 1184:   			showcmd = false, 1185:   			cmdheight = 1, 1186:   		 , 1187:   		top =   1188:   			showtabline = 0, 1189:   		 , 1190:   		left =   1191:   			number = false, 1192:   			relativenumber = false, 1193:   			signcolumn = "no", 1194:   		 , 1195:   	 , 1196:   	modes =   1197:   		ataraxis =   1198:   			-- left padding = 20, 1199:   			-- right padding = 20, 1200:   			top padding = 0, 1201:   			bottom padding = 0, 1202:   			ideal writing area width =  60 , 1203:   			auto padding = true, 1204:   			keep default fold fillchars = true, 1205:   			custom bg =  "none", "" , 1206:   			bg configuration = true, 1207:   			quit = "untoggle", 1208:   			ignore floating windows = true, 1209:   			affected higroups =   1210:   				NonText = true, 1211:   				FoldColumn = true, 1212:   				ColorColumn = true, 1213:   				VertSplit = true, 1214:   				StatusLine = true, 1215:   				StatusLineNC = true, 1216:   				SignColumn = true, 1217:   			 , 1218:   		 , 1219:   		focus =   1220:   			margin of error = 5, 1221:   			focus method = "experimental" 1222:   		 , 1223:   	 , 1224:   	integrations =   1225:   		vim gitgutter = false, 1226:   		galaxyline = false, 1227:   		tmux = false, 1228:   		gitsigns = false, 1229:   		nvim bufferline = false, 1230:   		limelight = false, 1231:   		twilight = false, 1232:   		vim airline = false, 1233:   		vim powerline = false, 1234:   		vim signify = false, 1235:   		express line = false, 1236:   		lualine = false, 1237:   		lightline = false, 1238:   		feline = false, 1239:   	 , 1240:   	misc =   1241:   		on off commands = true, 1242:   		ui elements commands = false, 1243:   		cursor by mode = false, 1244:   	  1245:    ) 1246:  EOF 1247:  lua <<EOF 1248:  require('feline').
setup(  1249:      preset = 'noicon' 1250:       ) 1251:  EOF 1252:  "  1253:  "  1254:  "  1255:  " " lua <<EOF 1256:  " " require('lualine').
setup  1257:  " " options =  disabled filetypes =  'txt', 'text'   1258:  " "   1259:  " " EOF 1260:  " " lua << EOF 1261:  " "   require("zen-mode").
setup   1262:  " "   window =   1263:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1263:++++ Set to 1 to keep the same as Normal 1264:  " "     -- height and width can be: 1265:  " "     -- * an absolute number of cells when > 1 1266:  " "     -- * a percentage of the width / height of the editor when <= 1 1267:  " "     -- * a function that returns the width or the height 1268:  " "     width = .
66, -- width of the Zen window 1269:  " "     height = 1, -- height of the Zen window 1270:  " "     -- by default, no options are changed for the Zen window 1271:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1272:  " "     options =   1273:  " "       -- signcolumn = "no", -- disable signcolumn 1274:  " "       -- number = false, -- disable number column 1275:  " "       -- relativenumber = false, -- disable relative numbers 1276:  " "       -- cursorline = false, -- disable cursorline 1277:  " "       -- cursorcolumn = false, -- disable cursor column 1278:  " "       -- foldcolumn = "0", -- disable fold column 1279:  " "       -- list = false, -- disable whitespace characters 1280:  " "      , 1281:  " "    , 1282:  " "   plugins =   1283:  " "     -- disable some global vim options (vim.
o.
.
.
) 1284:  " "     -- comment the lines to not apply the options 1285:  " "     options =   1286:  " "       enabled = true, 1287:  " "       ruler = false, -- disables the ruler text in the cmd line area 1288:  " "       showcmd = false, -- disables the command in the last line of the screen 1289:  " "      , 1290:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1291:  " "     gitsigns =   enabled = false  , -- disables git signs 1292:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1293:  " "     -- this will change the font size on kitty when in zen mode 1294:  " "     -- to make this work, you need to set the following kitty options: 1295:  " "     -- - allow remote control socket-only 1296:  " "     -- - listen on unix:/tmp/kitty 1297:  " "     kitty =   1298:  " "       enabled = false, 1299:  " "       font = "+4", -- font size increment 1300:  " "      , 1301:  " "    , 1302:  " "   -- callback where you can add custom code when the Zen window opens 1303:  " "   on open = function(win) 1304:  " "   end, 1305:  " "   -- callback where you can add custom code when the Zen window closes 1306:  " "   on close = function() 1307:  " "   end, 1308:  " "   1309:  " " EOF 1310:  lua <<EOF 1311:  require('telescope').
setup  1312:    defaults =   1313:      -- Default configuration for telescope goes here: 1314:      -- config key = value, 1315:      mappings =   1316:        i =   1317:          -- map actions.
which key to <C-h> (default: <C-/>) 1318:          -- actions.
which key shows the mappings for your picker, 1319:          -- e.
g. 
1319:++++ git  create, delete, .
.
.  
branch for the git branches picker 1320:          ["<C-h>"] = "which key" 1321:          1322:        1323:     , 1324:    pickers =   1325:      -- Default configuration for builtin pickers goes here: 1326:      -- picker name =   1327:      --   picker config key = value, 1328:      --   .
.
.
@??? 1329:      --   1330:      -- Now the picker config key will be applied every time you call this 1331:      -- builtin picker  1332:     , 1333:    extensions =   1334:      -- Your extension configuration goes here: 1335:      -- extension name =   1336:      --   extension config key = value, 1337:      --   1338:      -- please take a look at the readme of the extension you want to configure 1339:      1340:     1341:  EOF 1342:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1343:  lua <<EOF 1344:  require('fm-nvim').
setup  1345:  	config = 1346:  	  1347:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1348:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1349:  		height   = .
9, 1350:  		width    = .
9, 1351:  	  1352:    1353:  EOF 1354:   1355:  " lua <<EOF 1356:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1357:  " require("prosesitter"):setup(  1358:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1358:++++ "/prosesitter/vale", 1359:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1359:++++ "/prosesitter/vale cfg.
ini", 1360:  " 	--optional extra queries overrides existing queries 1361:  " 	queries =    1362:  " 		-- see the piece on adding queries on how to use this  1363:  " 		-- (not needed if using an out of the box supported language 1364:  " 		py =    1365:  " 			strings = "[(string) ] @capture", 1366:  " 			comments = "[(comment)+ ] @capture", 1367:  " 		 , 1368:  " 	 ,  1369:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1370:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1371:  " 	-- weather to lint strings, comments or both for a language 1372:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1373:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1374:  " 	auto enable = false, -- do not start linting files on open (default = true) 1375:  " 	default cmds = false,  -- do not add commands (default = true) 1376:  "  ) 1377:  " EOF 1378:  lua <<EOF 1379:  require('spellsitter').
setup   1380:    hl = 'SpellBad',  1381:    captures =   ,  -- set to    to spellcheck everything 1382:   1383:    -- Spellchecker to use. 
1383:++++ values: 1384:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1385:    -- * ffi: built-in spell checker using the FFI to access the 1386:    --   internal spell check() function 1387:    spellchecker = 'vimfn', 1388:    1389:  EOF 1390:  let g:firenvim config =    1391:        'globalSettings':   1392:            'alt': 'all', 1393:          , 1394:        'localSettings':   1395:            '.
*':   1396:                'cmdline': 'neovim', 1397:                'content': 'text', 1398:                'priority': 0, 1399:                'selector': 'textarea', 1400:                'takeover': 'always', 1401:             , 1402:          1403:      1404:   1405:  " lua << EOF 1406:  " require("stabilize").
setup( 1407:  "   1408:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1409:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1410:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1411:  " --		filetype =   "help", "list", "Trouble"  , 1412:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1413:  " --	  1414:  "   1415:  " ) 1416:  " EOF 1417:  " lua <<EOF 1418:  " require('dd').
setup() 1419:  " EOF 1420:  " lua << EOF 1421:  " local opts =   1422:  "   log level = 'info', 1423:  "   auto session enable last session = false, 1424:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1425:  "   auto session enabled = false, 1426:  "   auto save enabled = nil, 1427:  "   auto restore enabled = nil, 1428:  "   auto session suppress dirs = nil 1429:  "   1430:  " require('auto-session').
setup(opts) 1431:  " EOF 1432:   1433:  " lua << EOF 1434:  " if exists('g:started by firenvim') 1435:  "   ZenMode 1436:  " else 1437:  "   set laststatus=2 1438:  " endif 1439:   1440:  " lua <<EOF 1441:  " require('neoclip').
setup(  1442:  "       history = 1000, 1443:  "       enable persistant history = false, 1444:  "       db path = vim.
fn.
stdpath("data") .
. 
1444:++++ "/databases/neoclip.
sqlite3", 1445:  "       filter = nil, 1446:  "       preview = true, 1447:  "       default register = '"', 1448:  "       content spec column = false, 1449:  "       on paste =   1450:  "         set reg = false, 1451:  "        , 1452:  "       keys =   1453:  "         i =   1454:  "           select = '<cr>', 1455:  "           paste = '<c-p>', 1456:  "           paste behind = '<c-k>', 1457:  "           custom =   , 1458:  "          , 1459:  "         n =   1460:  "           select = '<cr>', 1461:  "           paste = 'p', 1462:  "           paste behind = 'P', 1463:  "           custom =   , 1464:  "          , 1465:  "        , 1466:  "     ) 1467:  " EOF 1468:  " lua <<EOF 1469:  " local saga = require 'lspsaga'  1470:  " saga.
init lsp saga()  1471:  "   1472:  " EOF 1473:   1474:  "au FileType tex autocmd User SneakLeave set syntax=tex 1475:  "au FileType tex autocmd User SneakEnter set syntax=text 1476:  " 1477:  " 1478:  " 1479:   1480:  " 1481:  " 'tCommen20 1482:  " let g:tcommentMapLeaderOp1=';'  1483:  " "map <leader>c <Leader>    1484:  "" function! RestoreRegister() 1485:  "   let @" = s:restore reg 1486:  "   return '' 1487:  " endfunction 1488:  " function! s:Repl() 1489:  "     let s:restore reg = @" 1490:  "     return "p@=RestoreRegister() <cr>" 1491:  " endfunction 1492:  " 1493:  " " NB: this supports "rp that replaces the selection by the contents of @r 1494:  " vnoremap <silent> <expr> p <sid>Repl() 1495:   1496:  " " Change Color when entering 1497:  " Insert Mode augroup CursorLine 1498:  "    au! 1499:  "  if has("gui running") 1500:  "  else 1501:  "      au InsertEnter * setlocal cursorline 1502:  "        au InsertLeave * setlocal nocursorline 1503:  "     endif 1504:  "        augroup END 1505:  " function! DelTagOfFile(file) 1506:  "   let fullpath = a:file 1507:  "   let cwd = getcwd() 1508:  "   let tagfilename = cwd . 
1508:++++ "/tags" 1509:  "   let f = substitute(fullpath, cwd . 
1509:++++ "/", "", "") 1510:  "   let f = escape(f, '.
/') 1511:  "   let cmd = 'sed -i "/' . 
1511:++++ f . 
1511:++++ '/d" "' . 
1511:++++ tagfilename . 
1511:++++ '"' 1512:  "   let resp = system(cmd) 1513:  " endfunction 1514:  " function! Break() 1515:  "  let n=130-virtcol('.
') 1516:  "  <Esc>ni <Esc><Esc> 1517:  " endfunction 1518:  " function Gitview() 1519:  "    cd /root/web2 ; git add . 
1519:++++ ; git commit -m -a ; git push origin gh-pages 1520:  " endfunction 1521:  " fuzzy search 1522:  " function! s:config fuzzyall(.
.
.
) abort 1523:  "   return extend(copy(  1524:  "       'converters': [ 1525:  "         incsearch#config#fuzzy#converter(), 1526:  "         incsearch#config#fuzzyspell#converter() 1527:  "       ], 1528:  "      ), get(a:, 1,    1529:  "   )) 1530:  " endfunction 1531:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1532:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1533:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1534:  " map f <Plug>(incsearch-fuzzyspell-/) 1535:  " map F <Plug>(incsearch-fuzzyspell-?) 1536:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1537:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1538:  " let g:deoplete#enable at startup = 1 1539:  " map <silent> <leader>g :silent call Gitview() 1540:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1541:  "Load some useful plugins with vundle  1542:  " 1543:  "asdf asldfkj 1544:  " hi! link Sneak Normal 1545:  " hi! link SneakScope Normal   test test2 test3 1546:   1547:  " command! -bang -nargs=* Rg 1548:  "     call fzf#vim#grep( 1549:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1550:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1551:  " 1552:  "" au GUIEnter * set fullscreen 1553:  " if has("gui running") 1554:    " set fuoptions=maxvert,maxhorz 1555:    " au GUIEnter * set fullscreen 1556:     " set foldcolumn=10 1557:     " set formatoptions=ant 1558:  " set wrapmargin=0 1559:  " set nohlsearch 1560:  " set tags= ~/workspacemodules/tags 1561:  " highlight SignColumn guibg=bg 1562:  "       endif     1563:  " if has("autocmd") 1564:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1565:  " endif 1566:    " autocmd BufWinLeave *.
* mkview 1567:    " autocmd BufWinEnter *.
* silent loadview 1568:     " set foldcolumn=2 1569:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1570:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1571:  " inoremap <cr> <esc>:w<cr>i<cr> 