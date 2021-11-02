1:  call plug#begin('~/.
vim/plugged')  2:  " Plug 'reedes/vim-pencil'  3:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   4:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    5:  " Optional but recommended 6:  Plug 'lewis6991/spellsitter.
nvim'  7:  Plug 'dvdsk/prosesitter',    'branch': 'main'   8:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'    9:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'    10:  Plug 'phaazon/hop.
nvim'     11:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   12:  " Plug 'luukvbaal/stabilize.
nvim'  13:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     14:  Plug 'is0n/fm-nvim'  15:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   16:  Plug 'nvim-lua/plenary.
nvim' 17:  Plug 'nvim-telescope/telescope.
nvim',   18:  Plug 'nvim-treesitter/playground'  19:  Plug 'famiu/feline.
nvim' 20:  " Plug 'hoob3rt/lualine.
nvim',  21:  " Plug 'karb94/neoscroll.
nvim'  22:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   23:  " Plug 'f3fora/cmp-spell'     24:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   25:  Plug 'shaunsingh/nord.
nvim'   26:  "Plug 'vim-commentary' 27:  "Plug 'b3nj5m1n/kommentary' 28:  " Plug 'simnalamburt/vim-mundo' 29:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    30:  " Plug 'glepnir/lspsaga.
nvim' 31:  " If you are using Vim-Plug 32:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    33:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    34:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   35:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   36:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'   37:  Plug 'hrsh7th/vim-vsnip',   'branch': 'master'    38:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    39:  Plug 'ray-x/cmp-treesitter' 40:  " For luasnip user.
@??? 41:  Plug 'L3MON4D3/LuaSnip' 42:  " Plug 'saadparwaiz1/cmp luasnip' 43:  "Plug 'steelsojka/completion-buffers' 44:  Plug 'voldikss/vim-floaterm' 45:  Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   46:  "Plug 'pope/vim-obsession' 47:  "Plug 'xolox/vim-easytags' 48:  " Plug 'nvim-lua/plenary.
nvim' 49:  Plug 'windwp/nvim-spectre' 50:  Plug 'xolox/vim-misc' 51:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   52:  Plug 'kevinhwang91/nvim-bqf' 53:  Plug 'justinhoward/fzf-neoyank'  54:   Plug 'hrsh7th/vim-vsnip' 55:  " Plug 'svermeulen/vim-cutlass' 56:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 57:  " Plug 'kyazdani42/nvim-tree.
lua',  58:  "Plug 'nvim-lua/completion-nvim' 59:  Plug 'hrsh7th/vim-vsnip-integ' 60:  Plug 'neovim/nvim-lspconfig' 61:  Plug 'nvim-lua/diagnostic-nvim' 62:  " Plug 'rafamadriz/friendly-snippets'   63:  " Make sure you use single quotes 64:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 65:  " Plug 'junegunn/vim-easy-align' 66:  " Any valid git URL is allowed 67:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 68:  " Group dependencies, vim-snippets depends on ultisnips  69:   Plug 'tpope/vim-surround' 70:  " Plug 'neovim/node-host' 71:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   72:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    73:  Plug 'rakr/vim-one'  74:  " Plug 'cyansprite/Extract' 75:  Plug 'gioele/vim-autoswap' 76:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   77:  " Plug 't9md/vim-smalls' 78:  Plug 'skywind3000/asyncrun.
vim' 79:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   80:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 81:  " please comment next line 82:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     83:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    84:  " Plug 'rmagatti/auto-session',    'branch': 'main'  85:  Plug 'justinmk/vim-sneak' 86:  Plug 'Shougo/neoyank.
vim'  87:  if has('nvim') 88:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   89:   else 90:     Plug 'Shougo/denite.
nvim' 91:     Plug 'roxma/nvim-yarp' 92:     Plug 'roxma/vim-hug-neovim-rpc' 93:   endif 94:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 95:  " Plug 'tpope/vim-fugitive' 96:  Plug 'eugen0329/vim-esearch' 97:  " Plug 'haya14busa/incsearch.
vim' 98:  " Plug 'haya14busa/incsearch-fuzzy.
vim' 99:  Plug 'Raimondi/vim search objects' 100:  Plug 'terryma/vim-multiple-cursors' 101:  " " On-demand loading 102:  " Plug 'junegunn/goyo.
vim' 103:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   104:  "  Plug 'morhetz/gruvbox' 105:  Plug 'sainnhe/gruvbox-material' 106:  Plug 'vim-pandoc/vim-pandoc' 107:  Plug 'vim-pandoc/vim-pandoc-syntax'  108:  " Plug 'scrooloose/nerdtree',   'on': 'NERDTreeFind'   109:  " Plugin outside ~/.
vim/plugged with post-update hook 110:  Plug 'junegunn/fzf',   'do': '.
/install --all'   111:  Plug 'junegunn/fzf.
vim' 112:  " 113:  " 114:  "  Plug 'ervandew/supertab' 115:  " Plug 'Shougo/vimproc.
vim' 116:   117:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   118:   '  119:  Plug 'lifepillar/vim-solarized8' 120:   121:  Plug 'vim-scripts/AutoTag' 122:   123:  Plug 'vim-scripts/vim-auto-save' 124:   125:  Plug 'vim-pandoc/vim-pandoc' 126:   127:  " Plug 'yashamon/vim-snippets' 128:   129:  Plug 'lervag/vimtex' 130:  " colorschemes 131:  "  132:  Plug 'kyazdani42/blue-moon'   133:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   134:   135:  Plug 'reedes/vim-colors-pencil' 136:   137:  Plug 'vim-scripts/oceanlight' 138:   139:  Plug 'gosukiwi/vim-atom-dark' 140:   141:  Plug 'dracula/vim' 142:   143:  " Unmanaged plugin (manually installed and updated) 144:  " Plug '~/my-prototype-plugin' 145:  " Add plugins to &runtimepath 146:  call plug#end()  147:   148:  "Neovide  149:  " 150:  " let g:neovide maximized=v:true  151:  " let g:neovide fullscreen=v:true 152:  let g:neovide transparency=0  153:   154:  "General Settings    155:  set noshowmode 156:  set noruler        157:  set laststatus=0  158:  set noshowcmd   159:  set wrap   160:  set pb=10  161:  set switchbuf=newtab 162:  " let g:python3 host prog='/usr/bin/python3.
9' 163:  " let g:python3 host prog='/usr/bin/python3.
9' 164:   165:  set clipboard+=unnamedplus	" yank to the system register (*) by default 166:  " TAB setting  167:  set expandtab        "replace <TAB> with spaces 168:  set softtabstop=3  169:  set shiftwidth=3  170:  set termguicolors   171:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 172:  		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 173:  		   ,sm:block-blinkwait175-blinkoff150-blinkon175 174:  set spelllang=en    175:   if exists('g:started by firenvim') 176:         au UIEnter  set noshowmode 177:         au UIEnter  set noruler 178:         au UIEnter  set laststatus=0 179:         au UIEnter  set noshowcmd 180:  "       " au UIEnter set lines=140  181:  "       " au UIEnter set columns=140 182:   else 183:   " autocmd VimEnter * TZAtaraxis 184:   endif 185:   186:  au VIMEnter set spell  187:  set timeoutlen=0 188:  au VIMEnter * let g:surround 108 =   189:        'q':  " `` r''" 190:           191:  let g:tex flavor = "latex" 192:  let g:tex isk = '@,48-57,58, ,192-255' 193:  let g:tex conceal = "" 194:  set tags+=~/workspacemodules/tags 195:  "set tags+=~/Dropbox/workspace/tags 196:    " set formatoptions=ant 197:    " set wrapmargin=1 198:  " set shada="NONE"   199:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 200:  set wrap 201:  set linebreak  202:  set formatoptions+=w " set breakat=" " 203:  " set list  " list disables linebreak 204:  set textwidth=0 205:  set wrapmargin=-1 206:  set hid 207:  set autochdir 208:  set guioptions-=r 209:  set guioptions-=l 210:  set inccommand=split 211:  set mouse= 212:  set bs=2		" allow backspacing over everything in insert mode  213:  set undofile                " Save undo's after file closes 214:  set undodir=undo " where to save undo histories 215:  set undolevels=1000000         " How many undos 216:  set undoreload=10000		 217:  set ruler		" show the cursor position all the time 218:  set autoread		" auto read when file is changed from outside 219:  set nohlsearch 220:  set noswapfile 221:  set showmatch		" Cursor shows matching ) and   222:  set nocursorline 223:  set showmode		" Show current mode 224:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 225:  set wildmenu            " wild char completion menu 226:  let maplocalleader = "  " 227:  " ignore these files while expanding wild chars 228:  set wildignore=*.
o,*.
class,*.
pyc 229:  set incsearch		" incremental search 230:  set nobackup		" no *~ backup files 231:  set ignorecase		" ignore case when searching 232:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 233:  "set smarttab		" insert tabs on the start of a line according to context 234:   235:  " disable sound on errors 236:  set noerrorbells 237:  set novisualbell  238:  set guifont=Fira  Code:h22 239:  set tm=500 240:  " set macmeta 241:  " auto reload vimrc when editing it 242:  " autocmd! bufwritepost ~/.
config/nvim/init.
vim source ~/.
config/nvim/init.
vim 243:  " set hlsearch		" search highlighting 244:  " 245:  if has("gui running")	" GUI color and font settings 246:    set guifont=Fira  Code:h22 247:    set background=dark  248:  "  set cursorline        " highlight current line 249:    " colorscheme gruvbox  250:    highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 251:  else 252:  " terminal color settings  253:  set background=dark 254:  " Example config in VimScript 255:  let g:github function style = "italic" 256:  let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 257:   258:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 259:  " let g:github colors = [hint = "orange", error = "#ff0000"] 260:  " Load the colorscheme 261:  " colorscheme github dark  262:  " set background=dark  263:  set background=dark 264:   colorscheme one 265:  " colorscheme material   266:  " let g:material style = 'palenight'   267:  " let g:material style = 'lighter' 268:  " highlight Normal ctermbg=none 269:  hi clear SpellBad 270:  hi SpellBad cterm=undercurl 271:  " Set style for gVim 272:  hi SpellBad gui=underline 273:  hi MatchParen cterm=undercurl ctermbg=none ctermfg=magenta 274:  endif 275:   276:  "Autocommands, au 277:  " 278:   279:   280:  autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  281:  au FileType Makefile set noexpandtab 282:  au FileType tex,text set spelllang=en 283:  au FileType tex,text,md set spell 284:  " au FileType vim,lua,md set list 285:  au FileType tex,text,md syntax sync fromstart 286:  au FileType tex,text,md silent execute "!echo " . 
286:++++ v:servername . 
286:++++ " > ~/servername.
txt"    287:  au FileType tex,text,md hi SpellBad cterm=undercurl 288:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 289:  au Filetype tex,text,md set tw=50 290:   291:  " au FileType tex set background=dark  292:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true   293:  au TextYankPost * call neoyank# append()  294:   295:           "Some functions 296:  function Light() 297:  set background=light 298:  " colorscheme oceanlight  299:  colorscheme one  300:  " highlight Normal ctermfg=black 301:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 302:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 303:  endfunction    304:   305:  " function Light() 306:  " set background=light 307:  " " colorscheme oceanlight  308:  " colorscheme material  309:  " let g:material style = 'lighter'   310:  "    " highlight Normal ctermfg=black 311:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 312:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 313:  " endfunction    314:  function Bluemoon() 315:     set background=dark 316:     colorscheme blue-moon 317:     " colorscheme material   318:  endfunction 319:   320:  function Deepocean() 321:     set background=dark 322:     colorscheme material   323:     let g:material style = 'deep ocean'   324:  endfunction 325:   326:  function Palenight() 327:     set background=dark 328:     " colorscheme blue-moon 329:     colorscheme material   330:     let g:material style = 'palenight'   331:  endfunction 332:  function Lighter() 333:     set background=light 334:     " colorscheme blue-moon 335:     colorscheme material   336:     let g:material style = 'lighter'   337:  endfunction 338:   339:  function Dark() 340:     set background=dark 341:     colorscheme one   342:  endfunction 343:   344:  set expandtab        "replace <TAB> with spaces 345:  set softtabstop=3  346:  set shiftwidth=3  347:   348:  "---------------------------------------------------------------------------  349:  " USEFUL SHORTCUTS 350:  "---------------------------------------------------------------------------  351:  " set leader to ;  352:  let mapleader=';' 353:  let g:mapleader=';' 354:   355:  " open the error console 356:  " move to next error 357:   358:  " Bash like keys for the command line 359:  cnoremap <C-A>      <Home> 360:  cnoremap <C-E>      <End> 361:  cnoremap <C-K>      <C-U> 362:   363:  " ,p toggles paste mode 364:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 365:   366:  " allow multiple indentation/deindentation in visual mode 367:  vnoremap < <gv 368:  vnoremap > >gv 369:   370:  " :cd. 
370:++++ change working directory to that of the current file 371:  cmap cd. 
371:++++ lcd  :p:h 372:   373:   374:  " Enable omni completion. 
374:++++ (Ctrl-X Ctrl-O) 375:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 376:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 377:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 378:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 379:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 380:  autocmd FileType c set omnifunc=ccomplete#Complete 381:  autocmd FileType java set omnifunc=javacomplete#Complete  382:  autocmd FileType tex set omnifunc=latex#Complete 383:  autocmd Filetype tex setlocal fo=nt 384:  autocmd Filetype tex setlocal wrapmargin=0 385:  " use syntax complete if nothing else available 386:  if has("autocmd") && exists("+omnifunc") 387:    autocmd Filetype * 388:                 	if &omnifunc == "" | 389:                 		setlocal omnifunc=syntaxcomplete#Complete | 390:                 	endif 391:  endif 392:   393:  set cot-=preview "disable doc preview in omnicomplete 394:   395:  " make CSS omnicompletion work for SASS and SCSS 396:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 397:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 398:   399:  "---------------------------------------------------------------------------  400:  " ENCODING SETTINGS 401:  "---------------------------------------------------------------------------  402:  set encoding=utf-8                                   403:  set termencoding=utf-8 404:  set fileencoding=utf-8 405:   406:  "maps remaps mappings   407:  " 408:  " 409:  " terminal mappings 410:  tnoremap <A-Esc> <C- ><C-n> 411:  nmap <A-S-t> :te<cr>  412:   413:  vnoremap <Leader>U ""y: s/<C-r>" 414:  noremap <leader>r :e<cr> 415:  noremap <leader>h :set tw=50<cr> 416:  noremap <leader>w :set tw=0<cr>  417:  " noremap q <nop> 418:  map <leader>q q  419:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 420:  nnoremap <leader>rr :source  MYVIMRC<CR> 421:  "nnoremap <leader>e :NERDTreeFind<CR>  422:  nnoremap <leader>e :Vifm<cr> 423:  nnoremap <leader>t :FloatermToggle<cr>  424:   425:   426:  vnoremap <m-s> :s///gc<left><left><left><left>  427:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 428:  nnoremap <m-s> : s///gc<left><left><left>  429:  vmap <M-.
> t.
<CR>h 430:  nmap <M-.
> t.
<CR>h 431:  nnoremap <up> 1<C-U> 432:  imap <up> <nop> 433:  nnoremap <down> 1<C-D> 434:  imap <down> <nop> 435:  noremap <ScrollWheelUp>      <nop> 436:  noremap <S-ScrollWheelUp>    <nop> 437:  noremap <C-ScrollWheelUp>    <nop> 438:  noremap <ScrollWheelDown>    <nop> 439:  noremap <S-ScrollWheelDown>  <nop> 440:  noremap <C-ScrollWheelDown>  <nop> 441:  noremap <ScrollWheelLeft>    <nop> 442:  noremap <S-ScrollWheelLeft>  <nop> 443:  noremap <C-ScrollWheelLeft>  <nop> 444:  noremap <ScrollWheelRight>   <nop> 445:  noremap <S-ScrollWheelRight> <nop> 446:  noremap <C-ScrollWheelRight> <nop> 447:  inoremap   / 448:  inoremap /   449:  vnoremap p "0dP     450:  noremap D "0D  451:  noremap d "0d 452:  nnoremap dd "0dd 453:  noremap c "0c 454:  noremap C " C 455:  noremap x " x 456:   457:  vnoremap x "+x 458:  vnoremap y "+y   459:  nnoremap y "+y  460:  nnoremap p "+p  461:  nnoremap <leader>p p  462:  nnoremap <leader>q q 463:  " Softwrap  464:  nmap D "0dg  465:  nmap V vg  466:  nmap A g a  467:  map 0 g  468:  map 9 g  469:  nmap <m-8> :set lines=200<cr>:set columns=200<cr> 470:   471:  map <Leader>n <Plug>(miniyank-cycle) 472:  nnoremap <Left> :bnext<CR> 473:  nnoremap <Right> :bprevious<CR> 474:  " tnoremap <Esc> <C- >  475:  " nnoremap < :tabp<CR> 476:  " nnoremap > :tabn<CR> 477:  " nnoremap <leader>n :tabedit  <CR> 478:  imap <M-j> <C-j> 479:  map <S-m> <cmd>HopChar1<cr>  480:  " map <S-b> ?  <CR> 481:  map <S-w> <cmd>HopChar1<cr>  482:  map <S-b> <cmd>HopChar1<cr>  483:   484:  map <C-q> <Esc>:qa!<CR> 485:  map <m-q> <esc>:wqa<cr> 486:  " map <S-m-q> <esc>:wq<cr>  487:  map <m-c> <esc>:close<cr> 488:  map <M-d> <Esc>:bdelete<CR>  489:  noremap gf gq 490:  noremap f / 491:  noremap F ? 492:  " inoremap .
<Esc> .
<CR><Esc><leader>j 493:  " inoremap .
<Space> .
<CR><Esc><leader>j 494:  " noremap S :S  495:  " 496:  " 497:  " function! Sneak() 498:  "     hi! link Sneak Normal 499:  "     hi! link SneakScope Normal 500:  "     execute 'normal!  <Plug>Sneak s' 501:  "     syntax on 502:  " endfunction 503:   map <leader>n <Plug>Sneak ; 504:  " map N <Plug>Sneak , 505:  " map t <Plug>(smalls-excursion) 506:  " let g:smalls auto jump=1 507:  " let g:smalls auto jump timeout=0 508:   509:   510:      " xmap t <Plug>Sneak s 511:      " xmap T <Plug>Sneak S 512:     " omap t <Plug>Sneak s 513:      " omap T <Plug>Sneak S  514:      " math maps    515:  noremap # /  <CR>v?  <CR> 516:  noremap   /  <CR>hv?  <CR>l 517:  noremap @ / <CR>v? <CR> 518:  map j gj 519:  map k gk 520:  noremap <Space> .
@??? 521:  vnoremap <Space> t <cr> 522:  map K <C-u> 523:  map J <C-d> 524:  " map <C-j> zz 525:  " map <C-k> zb 526:  map <C-j> <C-e>jj 527:  map <C-k> <C-y>kk 528:  nnoremap <leader>j J 529:  nnoremap <leader>k K 530:  map ' " 531:  nnoremap <Backspace> i<Backspace><Esc> 532:  nmap <leader>c gc 533:  noremap <A-r> <C-r> 534:  nnoremap ` ~ 535:  nnoremap . 
535:++++ ` 536:  noremap <m-1> <C-o> 537:  noremap <m-2> <C-i> 538:  noremap <D-d> <C-d> 539:  map ;s <Esc>:w<CR> 540:  " noremap <A-d> <C-d> 541:  " noremap <M-d> <C-d> 542:  noremap <D-u> <C-u> 543:  noremap <A-u> <C-u> 544:  " this mapping Enter key to <C-y> to chose the current highlight item  545:  " and close the selection list, same as other IDEs.
@??? 546:   547:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 548:  nnoremap <silent> <Leader>y :YRGetElem<CR> 549:  map ' " 550:  inoremap <D-]> <C-x><C-]> 551:  inoremap <C-]> <C-x><C-]>  552:   553:   554:   555:   556:  au FileType tex,text,md nmap 0 g  557:  au FileType tex,text,md noremap 9 g  558:  " au FileType tex,text,md nmap A g a 559:  au FileType tex,text,md nnoremap dd " g dg g  560:  " au FileType tex,text,md inoremap <A-i> <CR> 561:  " au FileType tex,text,md nnoremap <A-i> a<CR> 562:  " au FileType tex,text,md nnoremap <CR> J0 563:   564:  "au FileType tex,text,md inoremap <A><CR> <CR> 565:  " au FileType tex,text,md inoremap <CR> <Esc><CR> 566:  " au FileType tex,text,md inoremap . 
566:++++ .
<CR><ESC>J0i 567:  " au FileType tex,text,md inoremap <leader>. 
567:++++ .
@??? 568:   569:  " au FileType tex,text,md inoremap .
<CR> .
<CR><ESC>J0 570:  " au FileType tex,text,md inoremap .
<Space> .
<CR><ESC>J0 571:  " au FileType tex,text,md inoremap .
<ESC> .
<CR><ESC>J0 572:  " au FileType tex,text,md inoremap <leader>cr <CR> 573:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki  574:   575:   576:   577:   578:  "Neovim mappings 579:  " :tnoremap <S-h> <C- ><C-n><C-w>h 580:  " :tnoremap <S-j> <C- ><C-n><C-w>j 581:  " :tnoremap <S-k> <C- ><C-n><C-w>k 582:  " :tnoremap <S-l> <C- ><C-n><C-w>l 583:  " tnoremap <Left> :tbnext<CR> 584:  " tnoremap <Right> :tbprevious<CR> 585:  " tnoremap <Leader>e <C- ><C-n>  586:  " imap <Backspace>   587:   588:  "  Sneak 589:  let g:sneak#use ic scs = 1 590:   591:  map t <cmd>HopChar1AC<cr> 592:  map T <cmd>HopChar1BC<cr> 593:  map <m-.
> <cmd>HopChar1<cr>.
@??? 594:  map <m-Space> <cmd>HopWord<cr> 595:   596:   597:   598:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 599:  "  map t :syntaxoff <Plug>Sneak s 600:  " map T <Plug>Sneak S 601:  " let g:sneak#s next = 1 602:  "  let g:sneak#label = 1 603:   604:  " FZF  605:  " 606:  noremap <m-t> :BTags<cr>  607:  noremap <m-y> :Tags<cr> 608:  noremap S <Esc>:BLines<CR>     609:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 610:  " Line search mapping  611:  " function! Jumpback()  612:  "   K=bufname() 613:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 614:  " endfunction 615:  noremap <leader>ss :source  MYVIMRC<cr>  616:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxisOn<cr><cr> 617:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 618:  noremap <m-b> <Esc>:Buffers<CR>  619:  " noremap F <Esc>:GFiles<CR>  620:  map <A-e> :FZF ~<CR> 621:   622:  " vimtex settings 623:  " 624:  " 625:  " 626:  " let g:vimtex view general viewer 627:  "            = '/Applications/Skim.
app/Contents/SharedSupport/displayline' 628:  " let g:vimtex view general options = '-r @line @pdf @tex' 629:  let g:latex view general viewer = 'zathura' 630:  let g:vimtex view method = "zathura"   631:  let g:vimtex view automatic = 0 632:   633:  "fvim 634:  " 635:  if exists('g:fvim loaded') 636:   FVimToggleFullScreen 637:  " Cursor tweaks 638:  FVimCursorSmoothMove v:true 639:  FVimCursorSmoothBlink v:true 640:   641:  " Background composition 642:  FVimBackgroundComposition 'acrylic'   " 'none', 'transparent', 'blur' or 'acrylic' 643:  FVimBackgroundOpacity 1            " value between 0 and 1, default bg opacity.
@??? 644:  FVimBackgroundAltOpacity 0.
85         " value between 0 and 1, non-default bg opacity.
@??? 645:  FVimBackgroundImage 'C:/foobar.
png'   " background image 646:  FVimBackgroundImageVAlign 'center'    " vertial position, 'top', 'center' or 'bottom' 647:  FVimBackgroundImageHAlign 'center'    " horizontal position, 'left', 'center' or 'right' 648:  FVimBackgroundImageStretch 'fill'     " 'none', 'fill', 'uniform', 'uniformfill' 649:  FVimBackgroundImageOpacity 0.
85       " value between 0 and 1, bg image opacity 650:   651:  " Title bar tweaks 652:  FVimCustomTitleBar v:false             " themed with colorscheme 653:   654:  " Debug UI overlay 655:  FVimDrawFPS v:true 656:   657:  " Font tweaks 658:  FVimFontAntialias v:true 659:  FVimFontAutohint v:true 660:  FVimFontHintLevel 'full' 661:  FVimFontLigature v:true 662:  FVimFontLineHeight '+1.
0' " can be 'default', '14.
0', '-1.
0' etc.
@??? 663:  FVimFontSubpixel v:true 664:  FVimFontNoBuiltInSymbols v:true " Disable built-in Nerd font symbols 665:   666:  " Try to snap the fonts to the pixels, reduces blur 667:  " in some situations (e.
g. 
667:++++ 100  DPI).
@??? 668:  FVimFontAutoSnap v:true 669:   670:  " Font weight tuning, possible valuaes are 100.
.
900 671:  FVimFontNormalWeight 400 672:  FVimFontBoldWeight 700 673:   674:  " Font debugging -- draw bounds around each glyph 675:  FVimFontDrawBounds v:true 676:   677:  " UI options (all default to v:false) 678:  FVimUIPopupMenu v:true      " external popup menu 679:  FVimUIWildMenu v:false      " external wildmenu -- work in progress 680:   681:  " Keyboard mapping options 682:  FVimKeyDisableShiftSpace v:true " disable unsupported sequence <S-Space> 683:  FVimKeyAutoIme v:true           " Automatic input method engagement in Insert mode 684:   685:  " Detach from a remote session without killing the server 686:  " If this command is executed on a standalone instance, 687:  " the embedded process will be terminated anyway.
@??? 688:  FVimDetach 689:   690:  " =========== BREAKING CHANGES -- the following commands are disabled ============ 691:  " FVimUIMultiGrid v:true     -- per-window grid system -- done and enabled by default 692:  " FVimUITabLine v:false      -- external tabline -- not implemented 693:  " FVimUICmdLine v:false      -- external cmdline -- not implemented 694:  " FVimUIMessages v:false     -- external messages -- not implemented 695:  " FVimUITermColors v:false   -- not implemented 696:  " FVimUIHlState v:false      -- not implemented 697:   698:  endif 699:  " let g:vimtex indent enabled =1 700:  " let g:vimtex syntax enabled=1  701:   702:   703:  function! Sentence()   704:    let g:buf = bufname()  705:    AsyncRun sentence.
sh   706:    echo "Print any character" 707:    call getchar()  708:    e sentence    709:    " echo "Print any character" 710:    " call getchar()  711:    BLines  712:    AsyncStop 713:  endfunction 714:  noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 715:  function! Git()  716:    AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi   717:    AsyncStop 718:  endfunction 719:  " autocmd BufWritePost *  call Git() 720:  "  721:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 722:   723:   724:  function! ToggleQuickFix() 725:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 726:          TZAtaraxisOff 727:          VimtexErrors 728:      else 729:          cclose  730:          TZAtaraxisOn 731:          endif 732:  endfunction 733:   734:  au filetype tex nnoremap <silent> <leader>s :call ToggleQuickFix()<cr> 735:   736:  " let g:vimtex quickfix method='pplatex'  737:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 738:  "    function! UpdateSkim(status) 739:  "      if !a:status | return | endif 740:  " 741:  "      let l:out = b:vimtex.
out() 742:  "      let l:tex = expand(' :p') 743:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 744:  "      if !empty(system('pgrep Skim')) 745:  "        call extend(l:cmd, ['-g']) 746:  "      endif 747:  "      if has('nvim') 748:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 749:  "      elseif has('job') 750:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 751:  "      else 752:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 753:  "      endif 754:  "    endfunction 755:  " let g:vimtex latexmk build dir = '.
/build' 756:  "   'build dir' : '.
/build', 757:   758:      let g:vimtex compiler latexmk =   759:        'background' : 0, 760:            'callback' : 1, 761:        'continuous' : 1, 762:        'options' : [ 763:          '-pdf', 764:          '-verbose', 765:          '-file-line-error', 766:          '-synctex=1', 767:          '-interaction=nonstopmode', 768:        ], 769:         770:  let g:vimtex compiler progname = 'nvr' 771:  nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 772:  let g:vimtex quickfix mode = 1 773:  let g:vimtex fold enabled = 0 774:  let g:vimtex fold manual = 1 775:   776:   777:  let g:vimtex fold types=   778:              'preamble' :   , 779:              'comments' :  'enabled' : 1 , 780:              'markers' :   , 781:              'sections' :   782:                'parse levels' : 0, 783:                'sections' : [       784:                  ' (add)?part', 785:                  ' (chapter|addchap)', 786:                  ' (section|addsec)', 787:                  'subsection', 788:                  'subsubsection', 789:                ], 790:                'parts' : [          791:                  'appendix', 792:                  'frontmatter', 793:                  'mainmatter', 794:                  'backmatter', 795:                ], 796:               , 797:               798:   799:   function! View()  800:    let buf = bufname()  801:    silent te latexmk -f -g     802:    execute "buffer" buf 803:    VimtexView 804:  endfunction  805:  nmap <leader>v :call View()<cr> 806:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 807:  nmap <leader>l :silent te latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g  <cr><cr>:bp<cr>   808:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 809:   810:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  811:  "" mathml shenanigans 812:   813:  nmap <leader>m :silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 814:   815:  " pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  816:   817:  " <cr> 818:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 819:   820:  " nmap <leader>l :VimtexCompile<CR> 821:  " nmap <leader>s <Esc>:VimtexErrors<CR> 822:  " map <leader>g :ZenMode<CR>  823:  nmap <leader>g :TZAtaraxis<CR> 824:  nmap <leader>p :Denite neoyank -default-action=append<CR> 825:   826:  " NB: this supports "rp that replaces the selection by the contents of @r 827:  " Auto updating Ctags 828:  " autocmd VimLeave * exe ":silent ! ctags -R" 829:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 830:   831:  "Nerd Tree 832:  " map <leader>e :NERDTreeFind<CR> 833:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 834:  " 835:  " 836:  " 837:  "Vifm 838:  let g:vifmLiveCwd=1 839:  let g:vifmUseCurrent=1 840:   841:  "Autosave and autocommit    842:   843:  let g:auto save = 1   844:  "au FileType vim let g:autosave = 0 845:  let g:auto save in insert mode = 0 846:  let g:auto save silent = 0  847:   848:  "Git autocommit  (private git repo) 849:   850:  autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi'  851:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 852:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 853:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 854:  " "Highlight 855:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 856:  " hi MatchParen guibg=NONE guifg=green gui=NONE 857:      " 858:      " 859:      " 860:      " UndoTree   861:  noremap <Leader>u :TZAtaraxisOff<cr>:UndotreeToggle<CR> 862:          " If undotree is opened, it is likely one wants to interact with it.
@??? 863:          let g:undotree SetFocusWhenToggle=1 864:          noremap <D-z> u 865:          noremap <S-C-z> <C-r> 866:          " noremap <C-z> u 867:      "   868:   869:   870:  " Latex shortcuts 871:  "Latex compile.
@??? 872:  "them to an external terminal and run there.
@??? 873:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 874:  "Zathura forward search 875:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 876:  "source ~/.
anyname   877:  "au filetype tex filetype indent off 878:  "  GUI Stuff    879:  command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 880:   881:  " Deoplete 882:   883:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
883:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 884:  set directory= HOME/Downloads 885:   886:   887:  "LUA 888:  " lua <<EOF 889:  " require'nvim-tree'.
setup() 890:  " EOF 891:  lua <<EOF 892:  require'nvim-treesitter.
configs'.
setup    893:      -- 894:      highlight =   enable = true  , 895:      incremental selection =   enable = true  , 896:      textobjects =   enable = true  , 897:      indent =   enable = true  ,  898:    899:  EOF 900:   901:  lua <<EOF 902:  require'nvim-treesitter.
configs'.
setup   903:    incremental selection =   904:      enable = true, 905:      keymaps =   906:        init selection = "gnn", 907:        node incremental = "grn", 908:        scope incremental = "grc", 909:        node decremental = "grm", 910:       , 911:     , 912:    913:  EOF 914:   915:  " lua <<EOF 916:  " require('neoscroll').
setup  917:  "     -- All these keys will be mapped to their corresponding default scrolling animation 918:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 919:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 920:  "     hide cursor = true,          -- Hide cursor while scrolling 921:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 922:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 923:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 924:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 925:  "     easing function = nil,        -- Default easing function 926:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 927:  "     post hook = nil,              -- Function to run after the scrolling animation ends 928:  "       929:  " EOF 930:  "  931:  " " set foldlevel=20 932:  " " set foldmethod=expr 933:  " " set foldexpr=nvim treesitter#foldexpr() 934:  " set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0] 935:  "  936:  "  937:  "  938:  " vsnip stuff  939:  " 940:  " Use <Tab> and <S-Tab> to navigate through popup menu 941:  inoremap <expr> <m-space> pumvisible() ? " <C-n>" : " <Tab>" 942:  inoremap <expr> <c-space> pumvisible() ? " <C-p>" : " <S-Tab>" 943:   944:  " Set completeopt to have a better completion experience 945:  set completeopt=menuone,noinsert,noselect 946:   947:  " Avoid showing message extra message when using completion 948:  set shortmess+=c 949:  let g:vsnip snippet dir = '~/dotfiles/snippets'   950:   951:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 952:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 953:  "  954:  " " Expand or jump 955:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 956:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 957:   958:  " Jump forward or backward 959:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 960:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>' 961:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 962:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 963:   964:  " 965:  " set foldexpr=nvim treesitter#foldexpr() 966:  " 967:  lua << EOF 968:  local nvim lsp = require('lspconfig') 969:  -- Use an on attach function to only map the following keys 970:  -- after the language server attaches to the current buffer 971:  local on attach = function(client, bufnr) 972:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 973:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 974:  -- Enable completion triggered by <c-x><c-o> 975:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 976:   977:    -- Mappings.
@??? 978:    local opts =   noremap=true, silent=true   979:   980:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 981:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 982:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 983:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 984:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 985:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 986:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 987:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 988:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 989:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 990:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 991:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 992:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 993:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 994:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 995:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 996:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 997:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 998:   999:  end 1000:   1001:  -- Use a loop to conveniently call 'setup' on multiple servers and 1002:  -- map buffer local keybindings when the language server attaches 1003:  --local servers =  'pyright', 'tsserver', 'texlab', 'jsonls'  1004:  --for  , lsp in ipairs(servers) do 1005:  --nvim lsp[lsp].
setup   1006:   --   on attach = on attach, 1007:    --  flags =   1008:     --   debounce text changes = 150, 1009:     --   1010:  --    1011:  --end 1012:  EOF 1013:   1014:   1015:  "Lsp install 1016:   1017:  lua << EOF 1018:  local function setup servers() 1019:    require'lspinstall'.
setup() 1020:    local servers = require'lspinstall'.
installed servers() 1021:    for  , server in pairs(servers) do 1022:      require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1023:    end 1024:  end 1025:   1026:  setup servers() 1027:   1028:  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1029:  require'lspinstall'.
post install hook = function () 1030:    setup servers() -- reload installed servers 1031:    vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1032:  end 1033:  EOF 1034:   1035:  nnoremap <leader>y :FZFNeoyank<cr> 1036:  nnoremap <leader>Y :FZFNeoyank  P<cr> 1037:  vnoremap <leader>y :FZFNeoyankSelection<cr> 1038:   1039:  nnoremap <leader>p :FZFNeoyank +<cr>  1040:  nnoremap <leader>1 :FZFNeoyank 1<cr> 1041:  nnoremap <leader>P :FZFNeoyank " P+<cr> 1042:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 1043:   1044:   1045:  " Replace the default dictionary completion with fzf-based fuzzy completion 1046:   1047:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   1048:   1049:   1050:  set completeopt=menu,menuone,noselect 1051:   1052:  lua <<EOF 1053:    -- Setup cmp.
@??? 1054:   1055:  local has words before = function() 1056:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 1057:      return false 1058:    end 1059:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 1060:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 1061:  end 1062:   1063:  local feedkey = function(key, mode) 1064:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 1065:  end 1066:   1067:  local cmp = require('cmp') 1068:  cmp.
setup   1069:   snippet =   1070:        expand = function(args) 1071:          -- For `vsnip` user.
@??? 1072:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 1073:    -- .
.
. 
1073:++++ Your other configuration .
.
.
@??? 1074:  end, 1075:   , 1076:  mapping =   1077:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 1078:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 1079:        ['<C-x>'] = cmp.
mapping.
complete(), 1080:        ['<C-e>'] = cmp.
mapping.
close(), 1081:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 1082:  -- .
.
. 
1082:++++ Your other mappings .
.
.
@??? 1083:  ["<Tab>"] = cmp.
mapping(function(fallback)  1084:        if vim.
fn["vsnip#available"]() == 1 1085:          then 1086:          feedkey("<Plug>(vsnip-expand-or-jump)", "") 1087:       elseif cmp.
visible() then 1088:          cmp.
select next item() 1089:        elseif has words before() then  1090:          cmp.
complete() 1091:        else  1092:          fallback() -- The fallback function sends a already mapped key. 
1092:++++ In this case, it's probably `<Tab>`.
@??? 1093:        end 1094:      end,   "i", "s"  ), 1095:  ["<S-Tab>"] = cmp.
mapping(function() 1096:        if vim.
fn.
pumvisible() == 1 then 1097:          feedkey("<C-p>", "n") 1098:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 1099:          feedkey("<Plug>(vsnip-jump-prev)", "") 1100:        end 1101:      end,   "i", "s"  ), 1102:  -- .
.
. 
1102:++++ Your other mappings .
.
.
@??? 1103:   1104:   , 1105:  requires =   1106:        1107:        'quangnguyen30192/cmp-nvim-tags', 1108:        -- if you want the sources is available for some file types 1109:        ft =   1110:          'tex', 1111:          'latex'  1112:          1113:        1114:       , 1115:  -- .
.
. 
1115:++++ Your other configuration .
.
.
@??? 1116:  sources =   1117:        -- For vsnip user.
@??? 1118:    name = 'tags' , keyword length = 4  ,  1119:    name = 'vsnip', keyword length = 4  , 1120:           -- For luasnip user.
@??? 1121:        --   name = 'luasnip'  , 1122:  -- For ultisnips user.
@??? 1123:        --   name = 'ultisnips'  ,   1124:       name = 'buffer', keyword length = 4  , 1125:       name = 'omni' , keyword length = 4 , 1126:         --   name = 'spell'  ,  1127:       name = 'nvim lsp', keyword length = 4   , 1128:          name = 'treesitter', keyword length = 4  ,       1129:  --  name = 'latex symbols'  , 1130:    1131:    1132:  EOF 1133:  "  1134:  " " LSP mappings    1135:  " "" LSP mappings  1136:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 1137:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 1138:  "  1139:  "  1140:   lua <<EOF 1141:   require('nvim comment').
setup( 1142:     1143:     -- Linters prefer comment and line to have a space in between markers 1144:     marker padding = true, 1145:     -- should comment out empty or whitespace only lines 1146:     comment empty = true, 1147:     -- Should key mappings be created 1148:     create mappings = true, 1149:     -- Normal mode mapping left hand side 1150:     line mapping = "gc", 1151:     -- Visual/Operator mapping left hand side 1152:     operator mapping = "<leader>c", 1153:     -- Hook function to call before commenting takes place 1154:     --hook = nil  1155:     1156:   ) 1157:  EOF 1158:  nmap <leader>c gc 1159:  lua <<EOF 1160:  local true zen = require("true-zen") 1161:  true zen.
setup(  1162:   	ui =   1163:   		bottom =   1164:   			laststatus = 0, 1165:   			ruler = false, 1166:   			showmode = false, 1167:   			showcmd = false, 1168:   			cmdheight = 1, 1169:   		 , 1170:   		top =   1171:   			showtabline = 0, 1172:   		 , 1173:   		left =   1174:   			number = false, 1175:   			relativenumber = false, 1176:   			signcolumn = "no", 1177:   		 , 1178:   	 , 1179:   	modes =   1180:   		ataraxis =   1181:   			-- left padding = 20, 1182:   			-- right padding = 20, 1183:   			top padding = 0, 1184:   			bottom padding = 0, 1185:   			ideal writing area width =  60 , 1186:   			auto padding = true, 1187:   			keep default fold fillchars = true, 1188:   			custom bg =  "none", "" , 1189:   			bg configuration = true, 1190:   			quit = "untoggle", 1191:   			ignore floating windows = true, 1192:   			affected higroups =   1193:   				NonText = true, 1194:   				FoldColumn = true, 1195:   				ColorColumn = true, 1196:   				VertSplit = true, 1197:   				StatusLine = true, 1198:   				StatusLineNC = true, 1199:   				SignColumn = true, 1200:   			 , 1201:   		 , 1202:   		focus =   1203:   			margin of error = 5, 1204:   			focus method = "experimental" 1205:   		 , 1206:   	 , 1207:   	integrations =   1208:   		vim gitgutter = false, 1209:   		galaxyline = false, 1210:   		tmux = false, 1211:   		gitsigns = false, 1212:   		nvim bufferline = false, 1213:   		limelight = false, 1214:   		twilight = false, 1215:   		vim airline = false, 1216:   		vim powerline = false, 1217:   		vim signify = false, 1218:   		express line = false, 1219:   		 lualine = false, 1220:   		lightline = false, 1221:   		feline = true 1222:   	 , 1223:   	misc =   1224:   		on off commands = true, 1225:   		ui elements commands = false, 1226:   		cursor by mode = false, 1227:   	  1228:    ) 1229:  EOF 1230:  lua <<EOF 1231:  require('feline').
setup(  1232:      preset = 'noicon' 1233:       ) 1234:  EOF 1235:  "  1236:  "  1237:  "  1238:  " " lua <<EOF 1239:  " " require('lualine').
setup  1240:  " " options =  disabled filetypes =  'txt', 'text'   1241:  " "   1242:  " " EOF 1243:  " " lua << EOF 1244:  " "   require("zen-mode").
setup   1245:  " "   window =   1246:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1246:++++ Set to 1 to keep the same as Normal 1247:  " "     -- height and width can be: 1248:  " "     -- * an absolute number of cells when > 1 1249:  " "     -- * a percentage of the width / height of the editor when <= 1 1250:  " "     -- * a function that returns the width or the height 1251:  " "     width = .
66, -- width of the Zen window 1252:  " "     height = 1, -- height of the Zen window 1253:  " "     -- by default, no options are changed for the Zen window 1254:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1255:  " "     options =   1256:  " "       -- signcolumn = "no", -- disable signcolumn 1257:  " "       -- number = false, -- disable number column 1258:  " "       -- relativenumber = false, -- disable relative numbers 1259:  " "       -- cursorline = false, -- disable cursorline 1260:  " "       -- cursorcolumn = false, -- disable cursor column 1261:  " "       -- foldcolumn = "0", -- disable fold column 1262:  " "       -- list = false, -- disable whitespace characters 1263:  " "      , 1264:  " "    , 1265:  " "   plugins =   1266:  " "     -- disable some global vim options (vim.
o.
.
.
) 1267:  " "     -- comment the lines to not apply the options 1268:  " "     options =   1269:  " "       enabled = true, 1270:  " "       ruler = false, -- disables the ruler text in the cmd line area 1271:  " "       showcmd = false, -- disables the command in the last line of the screen 1272:  " "      , 1273:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1274:  " "     gitsigns =   enabled = false  , -- disables git signs 1275:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1276:  " "     -- this will change the font size on kitty when in zen mode 1277:  " "     -- to make this work, you need to set the following kitty options: 1278:  " "     -- - allow remote control socket-only 1279:  " "     -- - listen on unix:/tmp/kitty 1280:  " "     kitty =   1281:  " "       enabled = false, 1282:  " "       font = "+4", -- font size increment 1283:  " "      , 1284:  " "    , 1285:  " "   -- callback where you can add custom code when the Zen window opens 1286:  " "   on open = function(win) 1287:  " "   end, 1288:  " "   -- callback where you can add custom code when the Zen window closes 1289:  " "   on close = function() 1290:  " "   end, 1291:  " "   1292:  " " EOF 1293:  lua <<EOF 1294:  require('telescope').
setup  1295:    defaults =   1296:      -- Default configuration for telescope goes here: 1297:      -- config key = value, 1298:      mappings =   1299:        i =   1300:          -- map actions.
which key to <C-h> (default: <C-/>) 1301:          -- actions.
which key shows the mappings for your picker, 1302:          -- e.
g. 
1302:++++ git  create, delete, .
.
.  
branch for the git branches picker 1303:          ["<C-h>"] = "which key" 1304:          1305:        1306:     , 1307:    pickers =   1308:      -- Default configuration for builtin pickers goes here: 1309:      -- picker name =   1310:      --   picker config key = value, 1311:      --   .
.
.
@??? 1312:      --   1313:      -- Now the picker config key will be applied every time you call this 1314:      -- builtin picker  1315:     , 1316:    extensions =   1317:      -- Your extension configuration goes here: 1318:      -- extension name =   1319:      --   extension config key = value, 1320:      --   1321:      -- please take a look at the readme of the extension you want to configure 1322:      1323:     1324:  EOF 1325:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1326:  lua <<EOF 1327:  require('fm-nvim').
setup  1328:  	config = 1329:  	  1330:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1331:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1332:  		height   = .
9, 1333:  		width    = .
9, 1334:  	  1335:    1336:  EOF 1337:   1338:  lua <<EOF 1339:  require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1340:  require("prosesitter"):setup(  1341:  	vale bin = vim.
fn.
stdpath("data") .
. 
1341:++++ "/prosesitter/vale", 1342:  	vale cfg = vim.
fn.
stdpath("data") .
. 
1342:++++ "/prosesitter/vale cfg.
ini", 1343:  	--optional extra queries overrides existing queries 1344:  	queries =    1345:  		-- see the piece on adding queries on how to use this  1346:  		-- (not needed if using an out of the box supported language 1347:  		py =    1348:  			strings = "[(string) ] @capture", 1349:  			comments = "[(comment)+ ] @capture", 1350:  		 , 1351:  	 ,  1352:  	-- highlight groups to use for lint errors, warnings and suggestions 1353:  	severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1354:  	-- weather to lint strings, comments or both for a language 1355:  	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1356:  	disabled ext =   "tex"  , -- do not ever lint tex files 1357:  	auto enable = false, -- do not start linting files on open (default = true) 1358:  	default cmds = false,  -- do not add commands (default = true) 1359:   ) 1360:  EOF 1361:  " lua <<EOF 1362:  " require('spellsitter').
setup   1363:  "   hl = 'SpellBad',  1364:  "   captures =   ,  -- set to    to spellcheck everything 1365:  "  1366:  "   -- Spellchecker to use. 
1366:++++ values: 1367:  "   -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1368:  "   -- * ffi: built-in spell checker using the FFI to access the 1369:  "   --   internal spell check() function 1370:  "   spellchecker = 'vimfn', 1371:  "   1372:  " EOF 1373:   1374:   1375:  " lua << EOF 1376:  " require("stabilize").
setup( 1377:  "   1378:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1379:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1380:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1381:  " --		filetype =   "help", "list", "Trouble"  , 1382:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1383:  " --	  1384:  "   1385:  " ) 1386:  " EOF 1387:  " lua <<EOF 1388:  " require('dd').
setup() 1389:  " EOF 1390:  " lua << EOF 1391:  " local opts =   1392:  "   log level = 'info', 1393:  "   auto session enable last session = false, 1394:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1395:  "   auto session enabled = false, 1396:  "   auto save enabled = nil, 1397:  "   auto restore enabled = nil, 1398:  "   auto session suppress dirs = nil 1399:  "   1400:  " require('auto-session').
setup(opts) 1401:  " EOF 1402:  let g:firenvim config =    1403:        'globalSettings':   1404:            'alt': 'all', 1405:          , 1406:        'localSettings':   1407:            '.
*':   1408:                'cmdline': 'neovim', 1409:                'content': 'text', 1410:                'priority': 0, 1411:                'selector': 'textarea', 1412:                'takeover': 'always', 1413:             , 1414:          1415:      1416:  " lua << EOF 1417:  " if exists('g:started by firenvim') 1418:  "   ZenMode 1419:  " else 1420:  "   set laststatus=2 1421:  " endif 1422:   1423:  " lua <<EOF 1424:  " require('neoclip').
setup(  1425:  "       history = 1000, 1426:  "       enable persistant history = false, 1427:  "       db path = vim.
fn.
stdpath("data") .
. 
1427:++++ "/databases/neoclip.
sqlite3", 1428:  "       filter = nil, 1429:  "       preview = true, 1430:  "       default register = '"', 1431:  "       content spec column = false, 1432:  "       on paste =   1433:  "         set reg = false, 1434:  "        , 1435:  "       keys =   1436:  "         i =   1437:  "           select = '<cr>', 1438:  "           paste = '<c-p>', 1439:  "           paste behind = '<c-k>', 1440:  "           custom =   , 1441:  "          , 1442:  "         n =   1443:  "           select = '<cr>', 1444:  "           paste = 'p', 1445:  "           paste behind = 'P', 1446:  "           custom =   , 1447:  "          , 1448:  "        , 1449:  "     ) 1450:  " EOF 1451:  " lua <<EOF 1452:  " local saga = require 'lspsaga'  1453:  " saga.
init lsp saga()  1454:  "   1455:  " EOF 1456:   1457:  "au FileType tex autocmd User SneakLeave set syntax=tex 1458:  "au FileType tex autocmd User SneakEnter set syntax=text 1459:  " 1460:  " 1461:  " 1462:   1463:  " 1464:  " 'tCommen20 1465:  " let g:tcommentMapLeaderOp1=';'  1466:  " "map <leader>c <Leader>    1467:  "" function! RestoreRegister() 1468:  "   let @" = s:restore reg 1469:  "   return '' 1470:  " endfunction 1471:  " function! s:Repl() 1472:  "     let s:restore reg = @" 1473:  "     return "p@=RestoreRegister() <cr>" 1474:  " endfunction 1475:  " 1476:  " " NB: this supports "rp that replaces the selection by the contents of @r 1477:  " vnoremap <silent> <expr> p <sid>Repl() 1478:   1479:  " " Change Color when entering 1480:  " Insert Mode augroup CursorLine 1481:  "    au! 1482:  "  if has("gui running") 1483:  "  else 1484:  "      au InsertEnter * setlocal cursorline 1485:  "        au InsertLeave * setlocal nocursorline 1486:  "     endif 1487:  "        augroup END 1488:  " function! DelTagOfFile(file) 1489:  "   let fullpath = a:file 1490:  "   let cwd = getcwd() 1491:  "   let tagfilename = cwd . 
1491:++++ "/tags" 1492:  "   let f = substitute(fullpath, cwd . 
1492:++++ "/", "", "") 1493:  "   let f = escape(f, '.
/') 1494:  "   let cmd = 'sed -i "/' . 
1494:++++ f . 
1494:++++ '/d" "' . 
1494:++++ tagfilename . 
1494:++++ '"' 1495:  "   let resp = system(cmd) 1496:  " endfunction 1497:  " function! Break() 1498:  "  let n=130-virtcol('.
') 1499:  "  <Esc>ni <Esc><Esc> 1500:  " endfunction 1501:  " function Gitview() 1502:  "    cd /root/web2 ; git add . 
1502:++++ ; git commit -m -a ; git push origin gh-pages 1503:  " endfunction 1504:  " fuzzy search 1505:  " function! s:config fuzzyall(.
.
.
) abort 1506:  "   return extend(copy(  1507:  "       'converters': [ 1508:  "         incsearch#config#fuzzy#converter(), 1509:  "         incsearch#config#fuzzyspell#converter() 1510:  "       ], 1511:  "      ), get(a:, 1,    1512:  "   )) 1513:  " endfunction 1514:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1515:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1516:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1517:  " map f <Plug>(incsearch-fuzzyspell-/) 1518:  " map F <Plug>(incsearch-fuzzyspell-?) 1519:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1520:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1521:  " let g:deoplete#enable at startup = 1 1522:  " map <silent> <leader>g :silent call Gitview() 1523:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1524:  "Load some useful plugins with vundle  1525:  " 1526:  "asdf asldfkj 1527:  " hi! link Sneak Normal 1528:  " hi! link SneakScope Normal   test test2 test3 1529:   1530:  " command! -bang -nargs=* Rg 1531:  "     call fzf#vim#grep( 1532:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1533:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1534:  " 1535:  "" au GUIEnter * set fullscreen 1536:  " if has("gui running") 1537:    " set fuoptions=maxvert,maxhorz 1538:    " au GUIEnter * set fullscreen 1539:     " set foldcolumn=10 1540:     " set formatoptions=ant 1541:  " set wrapmargin=0 1542:  " set nohlsearch 1543:  " set tags= ~/workspacemodules/tags 1544:  " highlight SignColumn guibg=bg 1545:  "       endif     1546:  " if has("autocmd") 1547:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1548:  " endif 1549:    " autocmd BufWinLeave *.
* mkview 1550:    " autocmd BufWinEnter *.
* silent loadview 1551:     " set foldcolumn=2 1552:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1553:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1554:   