1:  call plug#begin('~/.
vim/plugged')   2:  " Plug 'reedes/vim-pencil'  3:  " Plug 'folke/which-key.
nvim',   'branch': 'main'   4:  " Plug 'folke/zen-mode.
nvim',    'branch': 'main'    5:  Plug 'lewis6991/spellsitter.
nvim' 6:  Plug 'radenling/vim-dispatch-neovim'   7:  Plug 'tpope/vim-dispatch' 8:  Plug 'sheerun/vim-polyglot'  9:  Plug 'ibhagwan/fzf-lua',   'branch': 'main'   10:  Plug 'vijaymarupudi/nvim-fzf' 11:  Plug 'kyazdani42/nvim-web-devicons' 12:  " Plug 'dvdsk/prosesitter',    'branch': 'main'   13:  Plug 'metalelf0/nvim-floatedit',    'branch': 'main'   14:  " Plug 'AckslD/nvim-neoclip.
lua',   'branch': 'main'   15:  Plug 'phaazon/hop.
nvim'     16:  " Plug 'https://gitlab.
com/yorickpeterse/nvim-dd.
git',    'branch': 'main'   17:  " Plug 'luukvbaal/stabilize.
nvim'  18:  Plug 'glacambre/firenvim',   'do':     -> firenvim#install(0)     19:  Plug 'is0n/fm-nvim' 20:  Plug 'williamboman/nvim-lsp-installer',   'branch': 'main'   21:  Plug 'nvim-lua/plenary.
nvim' 22:  Plug 'nvim-telescope/telescope.
nvim', 23:  " Plug 'nvim-treesitter/playground' 24:  Plug 'famiu/feline.
nvim' 25:  " Plug 'hoob3rt/lualine.
nvim', 26:  " Plug 'karb94/neoscroll.
nvim' 27:  " Plug 'folke/twilight.
nvim',   'branch': 'main'   28:  " Plug 'f3fora/cmp-spell'     29:  Plug 'Pocco81/TrueZen.
nvim',   'branch': 'main'   30:  "Plug 'vim-commentary' 31:  "Plug 'b3nj5m1n/kommentary' 32:  " Plug 'simnalamburt/vim-mundo' 33:  Plug 'neovim/nvim-lspconfig',    'branch': 'main'    34:  " Plug 'glepnir/lspsaga.
nvim' 35:  " If you are using Vim-Plug 36:  Plug 'hrsh7th/cmp-nvim-lsp',   'branch': 'main'    37:  " Plug 'kdheepak/cmp-latex-symbols',   'branch': 'main'    38:  Plug 'hrsh7th/cmp-buffer',   'branch': 'main'   39:  Plug 'hrsh7th/nvim-cmp',   'branch': 'main'   40:  Plug 'hrsh7th/cmp-vsnip',   'branch': 'main'    41:  Plug 'hrsh7th/vim-vsnip' 42:  Plug 'hrsh7th/vim-vsnip-integ' 43:  Plug 'quangnguyen30192/cmp-nvim-tags',    'branch': 'main'    44:  " Plug 'ray-x/cmp-treesitter' 45:  " For luasnip user.
@??? 46:  Plug 'L3MON4D3/LuaSnip' 47:  " Plug 'saadparwaiz1/cmp luasnip' 48:  "Plug 'steelsojka/completion-buffers' 49:  Plug 'voldikss/vim-floaterm' 50:  " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   51:  "Plug 'pope/vim-obsession' 52:  "Plug 'xolox/vim-easytags' 53:  " Plug 'nvim-lua/plenary.
nvim' 54:  " Plug 'windwp/nvim-spectre' 55:  " Plug 'xolox/vim-misc' 56:  Plug 'terrortylor/nvim-comment',   'branch': 'main'   57:  Plug 'kevinhwang91/nvim-bqf' 58:  Plug 'justinhoward/fzf-neoyank'  59:  " Plug 'svermeulen/vim-cutlass' 60:  Plug 'kyazdani42/nvim-web-devicons' " for file icons 61:  " Plug 'kyazdani42/nvim-tree.
lua',  62:  "Plug 'nvim-lua/completion-nvim' 63:  Plug 'hrsh7th/vim-vsnip-integ' 64:  Plug 'neovim/nvim-lspconfig' 65:  Plug 'nvim-lua/diagnostic-nvim' 66:  " Plug 'rafamadriz/friendly-snippets'   67:  " Make sure you use single quotes 68:  " Shorthand notation; fetches https://github.
com/junegunn/vim-easy-align 69:  " Plug 'junegunn/vim-easy-align' 70:  " Any valid git URL is allowed 71:  " Plug 'https://github.
com/junegunn/vim-github-dashboard.
git' 72:  " Group dependencies, vim-snippets depends on ultisnips  73:   " Plug 'tpope/vim-surround' 74:  " Plug 'neovim/node-host' 75:  Plug 'projekt0n/github-nvim-theme',    'branch': 'main'   76:  Plug 'rktjmp/lush.
nvim',   'branch': 'main'    77:  Plug 'rakr/vim-one'  78:  " Plug 'cyansprite/Extract' 79:  Plug 'gioele/vim-autoswap' 80:  Plug 'nvim-treesitter/nvim-treesitter',  'do': ':TSUpdate'   81:  " Plug 't9md/vim-smalls' 82:  Plug 'skywind3000/asyncrun.
vim' 83:  Plug 'kevinhwang91/nvim-bqf',   'branch': 'main'   84:  " if you install fzf as system package like `pacman -S fzf` in ArchLinux, 85:  " please comment next line 86:  Plug 'junegunn/fzf',   'do':   -> fzf#install()     87:  " Plug 'sindrets/diffview.
nvim',   'branch': 'main'    88:  " Plug 'rmagatti/auto-session',    'branch': 'main'  89:  " Plug 'justinmk/vim-sneak' 90:  Plug 'Shougo/neoyank.
vim'  91:  if has('nvim') 92:     Plug 'Shougo/denite.
nvim',   'do': ':UpdateRemotePlugins'   93:   else 94:     Plug 'Shougo/denite.
nvim' 95:     Plug 'roxma/nvim-yarp' 96:     Plug 'roxma/vim-hug-neovim-rpc' 97:   endif 98:  " Plug 'SirVer/ultisnips'  a;sldfkjsfls jfkj 99:  " Plug 'tpope/vim-fugitive' 100:  Plug 'eugen0329/vim-esearch' 101:  Plug 'haya14busa/incsearch.
vim' 102:  Plug 'haya14busa/incsearch-fuzzy.
vim' 103:  Plug 'Raimondi/vim search objects' 104:  " Plug 'terryma/vim-multiple-cursors' 105:  " " On-demand loading 106:  " Plug 'junegunn/goyo.
vim' 107:  " " Plug 'Shougo/deoplete.
nvim',   'do': ':UpdateRemotePlugins'   108:  "  Plug 'morhetz/gruvbox' 109:  Plug 'sainnhe/gruvbox-material' 110:  " Plug 'vim-pandoc/vim-pandoc' 111:  " Plug 'vim-pandoc/vim-pandoc-syntax'  112:  " Plugin outside ~/.
vim/plugged with post-update hook 113:  Plug 'junegunn/fzf',   'do': '.
/install --all'   114:  Plug 'junegunn/fzf.
vim' 115:  Plug 'mbbill/undotree',   'on': 'UndotreeToggle'   116:   '  117:  Plug 'lifepillar/vim-solarized8' 118:  Plug 'vim-scripts/AutoTag' 119:  Plug 'vim-scripts/vim-auto-save' 120:  " Plug 'vim-pandoc/vim-pandoc' 121:   122:  " Plug 'yashamon/vim-snippets' 123:   124:  " Plug 'lervag/vimtex' 125:  " colorschemes 126:  "  127:  Plug 'kyazdani42/blue-moon'   128:  Plug 'marko-cerovac/material.
nvim',   'branch': 'main'   129:   130:  Plug 'reedes/vim-colors-pencil' 131:   132:  Plug 'vim-scripts/oceanlight' 133:   134:  Plug 'gosukiwi/vim-atom-dark' 135:   136:  Plug 'dracula/vim' 137:   138:  " Unmanaged plugin (manually installed and updated) 139:  " Plug '~/my-prototype-plugin' 140:  " Add plugins to &runtimepath 141:  call plug#end()  142:   143:  "Neovide  144:  " 145:  " let g:neovide maximized=v:true  146:  " let g:neovide fullscreen=v:true 147:  let g:neovide transparency=0.
15 148:   149:  "General Settings     150:  set title  151:  " set titlestring 152:  " set noshowmode 153:  " set noruler        154:  " set laststatus=1  155:  set noshowcmd    156:  set noshowmatch   157:  set wrap   158:  set pb=10   159:  set winbl=10 160:  set switchbuf=newtab 161:  " let g:python3 host prog='/usr/bin/python3.
9' 162:  " let g:python3 host prog='/usr/bin/python3.
9' 163:   164:  set clipboard+=unnamedplus	" yank to the system register (*) by default 165:  " TAB setting  166:  set expandtab        "replace <TAB> with spaces 167:  set softtabstop=3  168:  set shiftwidth=3  169:  set termguicolors 170:   171:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 172:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 173:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 174:  set spelllang=en    175:  if exists('g:started by firenvim') 176:         au UIEnter  set noshowmode 177:         au UIEnter  set noruler 178:         au UIEnter  set laststatus=0 179:         au UIEnter  set noshowcmd 180:         au UIEnter  set lines=100 181:   else 182:    " autocmd VimEnter * TZAtaraxis 183:   endif 184:  set timeoutlen=0 185:  au VIMEnter * let g:surround 108 =   186:        'q':  " `` r''" 187:           188:  let g:tex flavor = "latex" 189:  let g:tex isk = '@,48-57,58, ,192-255' 190:  let g:tex conceal = "" 191:  set tags+=~/workspacemodules/tags 192:  "set tags+=~/Dropbox/workspace/tags 193:  set formatoptions=nt 194:    " set wrapmargin=1 195:  " set shada="NONE"   196:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 197:  set wrap 198:  set linebreak  199:  set formatoptions+=w " set breakat=" " 200:  " set list  " list disables linebreak 201:  set textwidth=0 202:  set wrapmargin=-1 203:  set hid 204:  set autochdir 205:  set guioptions-=r 206:  set guioptions-=l 207:  set inccommand=split 208:  set mouse= 209:  set bs=2		" allow backspacing over everything in insert mode  210:  set undofile                " Save undo's after file closes 211:  set undodir=undo " where to save undo histories 212:  set undolevels=1000000         " How many undos 213:  set undoreload=10000		 214:  set ruler		" show the cursor position all the time 215:  set autoread		" auto read when file is changed from outside 216:  set nohlsearch 217:  " set noswapfile 218:  " set showmatch		" Cursor shows matching ) and   219:  set nocursorline 220:  set showmode		" Show current mode 221:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 222:  set wildmenu            " wild char completion menu 223:  let maplocalleader = "  " 224:  " ignore these files while expanding wild chars 225:  set wildignore=*.
o,*.
class,*.
pyc 226:  set incsearch		" incremental search 227:  set nobackup		" no *~ backup files 228:  set ignorecase		" ignore case when searching 229:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 230:  set smarttab		" insert tabs on the start of a line according to context 231:   232:  " disable sound on errors 233:  set noerrorbells 234:  " set novisualbell  235:  set guifont=Fira  Code  Light:h20 236:   colorscheme blue-moon 237:  " colorscheme material   238:  " let g:material style = 'palenight'   239:  " let g:material style = 'lighter' 240:  " highlight Normal ctermbg=none 241:  set tm=1000 242:  " set macreta  243:  hi clear SpellBad 244:  hi SpellBad cterm=underline 245:  " Set style for gVim 246:  hi SpellBad gui=underline 247:  " 248:  "Autocommands, au 249:  au FileType Makefile set noexpandtab 250:  au FileType tex,text set spelllang=en 251:  au FileType tex,text,md set spell  252:  au FileType vim,md set list 253:  " au FileType vim,md colorscheme one 254:   255:  " au FileType tex,text,md syntax sync fromstart  256:  "  257:  " au FileType tex,text,md silent execute "!echo " . 
257:++++ v:servername . 
257:++++ " > ~/servername.
txt"     258:  au FileType * silent execute "!echo " . 
258:++++ v:servername . 
258:++++ " > ~/servername.
txt" 259:  au UIEnter silent execute "!echo " . 
259:++++ v:servername . 
259:++++ " > ~/servername.
txt" 260:  au FileType tex,text,md hi SpellBad cterm=undercurl 261:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 262:  au Filetype tex,text,md set tw=50 263:   264:  " au FileType tex set background=dark  265:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  266:  au TextYankPost * call neoyank# append()  267:   268:  set expandtab        "replace <TAB> with spaces 269:  set softtabstop=3  270:  set shiftwidth=3  271:   272:  "---------------------------------------------------------------------------  273:  " USEFUL SHORTCUTS 274:  "---------------------------------------------------------------------------  275:  " set leader to ;  276:  let mapleader=';' 277:  let g:mapleader=';' 278:   279:  " open the error console 280:  " move to next error 281:   282:  " Bash like keys for the command line 283:  cnoremap <C-A>      <Home> 284:  cnoremap <C-E>      <End> 285:  cnoremap <C-K>      <C-U> 286:   287:  " ,p toggles paste mode 288:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 289:   290:  " allow multiple indentation/deindentation in visual mode 291:  vnoremap < <gv 292:  vnoremap > >gv 293:   294:  " :cd. 
294:++++ change working directory to that of the current file 295:  cmap cd. 
295:++++ lcd  :p:h 296:   297:   298:  " Enable omni completion. 
298:++++ (Ctrl-X Ctrl-O) 299:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 300:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 301:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 302:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 303:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 304:  autocmd FileType c set omnifunc=ccomplete#Complete 305:  autocmd FileType java set omnifunc=javacomplete#Complete  306:  autocmd FileType tex set omnifunc=latex#Complete 307:  autocmd Filetype tex setlocal fo=nt 308:  autocmd Filetype tex setlocal wrapmargin=0 309:  " use syntax complete if nothing else available 310:  if has("autocmd") && exists("+omnifunc") 311:    autocmd Filetype * 312:                 	if &omnifunc == "" | 313:                 		setlocal omnifunc=syntaxcomplete#Complete | 314:                 	endif 315:  endif 316:   317:  set cot-=preview "disable doc preview in omnicomplete 318:   319:  " make CSS omnicompletion work for SASS and SCSS 320:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 321:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 322:   323:  "---------------------------------------------------------------------------  324:  " ENCODING SETTINGS 325:  "---------------------------------------------------------------------------  326:  set encoding=utf-8                                   327:  set termencoding=utf-8 328:  set fileencoding=utf-8 329:   330:  "maps remaps mappings   331:  " 332:  " 333:  " terminal mappings  334:  "  335:  tnoremap <A-Esc> <C- ><C-n> 336:  nmap <A-S-t> :te<cr> 337:   vnoremap <Leader>U ""y: s/<C-r>" 338:  noremap <leader>r :e<cr> 339:  noremap <leader>hh :set tw=50<cr> 340:  noremap <leader>w :set tw=0<cr>  341:  map q :q<cr> 342:  noremap <leader>q q 343:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 344:  nnoremap <leader>rr :source  MYVIMRC<CR> 345:  "nnoremap <leader>e :NERDTreeFind<CR> 346:  nnoremap <leader>e :Lf<cr> 347:  nnoremap <leader>t :FloatermToggle<cr> 348:  nnoremap <c-,> :cprevious<cr> 349:  nnoremap <c-.
> :cnext<cr>  350:  inoremap <cr> <cr> <backspace> 351:  vnoremap <m-s> :s///gc<left><left><left><left> 352:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 353:  nnoremap <m-s> : s///gc<left><left><left><left> 354:  vmap <M-.
> t.
<CR>h 355:  nmap <M-.
> t.
<CR>h 356:  nnoremap <up> 1<C-U> 357:  imap <up> <nop> 358:  nnoremap <down> 1<C-D> 359:  imap <down> <nop> 360:  noremap <ScrollWheelUp>      <nop> 361:  noremap <S-ScrollWheelUp>    <nop> 362:  noremap <C-ScrollWheelUp>    <nop> 363:  noremap <ScrollWheelDown>    <nop> 364:  noremap <S-ScrollWheelDown>  <nop> 365:  noremap <C-ScrollWheelDown>  <nop> 366:  noremap <ScrollWheelLeft>    <nop> 367:  noremap <S-ScrollWheelLeft>  <nop> 368:  noremap <C-ScrollWheelLeft>  <nop> 369:  noremap <ScrollWheelRight>   <nop> 370:  noremap <S-ScrollWheelRight> <nop> 371:  noremap <C-ScrollWheelRight> <nop> 372:  inoremap   / 373:  inoremap /   374:   375:  " copy paste stuff  376:  "  377:  vnoremap p "0dP 378:  " noremap D "0D:wa<cr> 379:  noremap d "0d 380:  nnoremap dd "0dd 381:  noremap c "0c 382:  noremap C " C 383:  noremap x " x 384:  " nnoremap v "+v 385:  vnoremap x "+x 386:  vnoremap d "0d 387:  vnoremap c "0d 388:  vnoremap y "+y 389:  nnoremap y "+y 390:  nnoremap p "+p 391:  nnoremap <leader>p p 392:  nnoremap <leader>q q 393:  " Softwrap  394:  nmap D "0dg  395:  nmap V vg  396:  nmap A g a  397:  map 0 g  398:  map 9 g  399:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 400:  nnoremap <c-l> :bnext<CR> 401:  nnoremap <c-h> :bprevious<CR> 402:  " tnoremap <Esc> <C- >  403:  " nnoremap < :tabp<CR> 404:  " nnoremap > :tabn<CR> 405:  " nnoremap <leader>n :tabedit  <CR> 406:  imap <M-j> <C-j> 407:  map <M-m> <cmd>HopChar1<cr>  408:  " map <S-b> ?  <CR> 409:  map <M-w> <cmd>HopChar1<cr>  410:  map <M-b> <cmd>HopChar1<cr>  411:  map q: nop 412:  map <S-C-q> <Esc>:qa!<CR> 413:  map <m-q> <esc>:wq<cr> 414:  map <m-Q> <esc>:q<cr> 415:  map <m-c> <esc>:close<cr> 416:  map <M-d> <Esc>:bdelete<CR> 417:  noremap gf gq 418:  noremap f / 419:  noremap F ? 420:  noremap # /  <CR>v?  <CR> 421:  noremap   /  <CR>hv?  <CR>l 422:  noremap @ / <CR>v? <CR> 423:  map j gj 424:  map k gk 425:  noremap <Space> .
@??? 426:  vnoremap <Space> t <cr> 427:  map K <C-u> 428:  map J <C-d> 429:  " map <C-j> zz 430:  " map <C-k> zb 431:  map <C-j> <C-e>jj 432:  map <C-k> <C-y>kk 433:  nnoremap <leader>j J 434:  nnoremap <leader>k K 435:  map ' " 436:  nnoremap <Backspace> i<Backspace><Esc> 437:  nmap <leader>c gc 438:  noremap <A-r> <C-r> 439:  nnoremap ` ~ 440:  nnoremap . 
440:++++ ` 441:  noremap <m-1> <C-o> 442:  noremap <m-2> <C-i> 443:  noremap <D-d> <C-d> 444:  map ;s <Esc>:w<CR> 445:  noremap <D-u> <C-u> 446:  noremap <A-u> <C-u> 447:  " this mapping Enter key to <C-y> to chose the current highlight item  448:  " and close the selection list, same as other IDEs.
@??? 449:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 450:  nnoremap <silent> <Leader>y :YRGetElem<CR> 451:  map ' " 452:  inoremap <D-]> <C-x><C-]> 453:  inoremap <C-]> <C-x><C-]> 454:   455:  au FileType tex,text,md nmap 0 g  456:  au FileType tex,text,md noremap 9 g  457:  " au FileType tex,text,md nnoremap dd " g dg g  458:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 459:   460:  "Neovim mappings 461:  " :tnoremap <S-h> <C- ><C-n><C-w>h 462:  " :tnoremap <S-j> <C- ><C-n><C-w>j 463:  " :tnoremap <S-k> <C- ><C-n><C-w>k 464:  " :tnoremap <S-l> <C- ><C-n><C-w>l 465:  " tnoremap <Left> :tbnext<CR> 466:  " tnoremap <Right> :tbprevious<CR> 467:  " tnoremap <Leader>e <C- ><C-n>  468:  " imap <Backspace>   469:  map t <cmd>HopChar1AC<cr> 470:  map T <cmd>HopChar1BC<cr> 471:  map <m-.
> <cmd>HopChar1<cr>.
@??? 472:  map <m-space> <cmd>HopWord<cr> 473:  " map <S-m-Space> <cmd>HopWord<cr> 474:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 475:   476:  " FZF  477:  " 478:  noremap <m-t> :BTags<cr> 479:  noremap <m-y> :Tags<cr> 480:  noremap S <Esc> :BLines<CR> 481:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 482:  " Line search mapping  483:  " function! Jumpback()  484:  "   K=bufname() 485:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 486:  " endfunction 487:  noremap <m-b> <Esc>:Buffers<CR> 488:  " noremap F <Esc>:GFiles<CR> 489:  map <A-e> :FZF ~<CR>  490:  map <m-f> :FZF ~<CR>  491:   492:  "miscellaneous 493:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 494:  nmap <leader>g :TZAtaraxis<CR> 495:  nmap <leader>p :Denite neoyank -default-action=append<CR> 496:   497:  " Latex stuff 498:  "  499:  noremap <leader>ss :source  MYVIMRC<cr>  500:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 501:  noremap <c-p> :<c-r>+<cr> 502:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 503:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 504:   505:   506:  "Functions 507:   508:  function Light() 509:  set background=light 510:  " colorscheme oceanlight  511:  colorscheme one  512:  " highlight Normal ctermfg=black 513:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 514:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 515:  endfunction    516:   517:  " function Light() 518:  " set background=light 519:  " " colorscheme oceanlight  520:  " colorscheme material  521:  " let g:material style = 'lighter'   522:  "    " highlight Normal ctermfg=black 523:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 524:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 525:  " endfunction    526:  function Bluemoon() 527:     set background=dark 528:     colorscheme blue-moon 529:     " colorscheme material   530:  endfunction 531:   532:  function Deepocean() 533:     set background=dark 534:     colorscheme material   535:     let g:material style = 'deep ocean'   536:  endfunction 537:   538:  function Palenight() 539:     set background=dark 540:     " colorscheme blue-moon 541:     colorscheme material   542:     let g:material style = 'palenight'   543:  endfunction 544:  function Lighter() 545:     set background=light 546:     " colorscheme blue-moon 547:     colorscheme material   548:     let g:material style = 'lighter'   549:  endfunction 550:   551:  function Dark() 552:     set background=dark 553:     colorscheme one   554:  endfunction 555:   556:  function! Profile() 557:  profile start profile.
log 558:  profile func * 559:  profile file * 560:  endfunction  561:   562:  function! Sentence() 563:    let g:buf = bufname() 564:    silent !sentence.
sh   565:    echo "Print any character" 566:    call getchar() 567:    e sentence   568:    " echo "Print any character" 569:    " call getchar() 570:    BLines 571:  endfunction 572:  noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 573:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 574:  function! Git()  575:  AsyncRun -silent if git rev-parse --is-inside-work-tree || git rev- parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi  576:  endfunction 577:   578:  function! ToggleQuickFix() 579:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 580:          TZAtaraxisOff  581:          let filename=bufname(" ") 582:          let errors=".
/build/" . 
582:++++ filename[:-4].
"log" 583:          exec "cf" errors  584:          copen 585:      else 586:          cclose  587:          TZAtaraxisOn 588:          endif 589:  endfunction 590:   591:  au filetype tex nnoremap <silent> <leader>s :call ToggleQuickFix()<cr> 592:   593:  function! ClearLatex()  594:    silent !rm .
/build/* 595:  endfunction 596:   597:  function! CompileLatex()   598:    silent !rm .
/build/* 599:    let buf = bufname() 600:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   601:    execute "buffer" buf 602:    call ViewPdf() 603:  endfunction 604:   605:  function! ViewPdf()  606:  wa 607:  let buf = bufname()  608:  let linenumber=line(".
") 609:  let colnumber=col(".
") 610:  let filename=bufname(" ") 611:  let filenamePDF=".
/build/" . 
611:++++ filename[:-4].
"pdf" 612:  let execstr="silent !zathura --synctex-forward " . 
612:++++ linenumber . 
612:++++ ":" . 
612:++++ colnumber . 
612:++++ ":" . 
612:++++ filename . 
612:++++ " " . 
612:++++ filenamePDF . 
612:++++ " &>/dev/null &" 613:  " . 
613:++++ "&>/dev/null &" 614:  exec execstr 615:  execute "buffer" buf 616:  endfunction  617:  nmap <leader>v :call ViewPdf()<cr> 618:  " nmap <leader>v :VimtexView<cr> 619:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 620:  nmap <leader>ll :call CompileLatex()<cr> 621:  nmap <leader>cl :call ClearLatex()<cr> 622:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 623:   624:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  625:  "" mathml shenanigans 626:   627:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 628:   629:   630:   631:   632:   633:   634:  "Autosave and autocommit    635:  " let g:updatetime = 10000 636:  let g:auto save = 1 637:  " .
vimrc 638:  let g:auto save events = ["CursorHold"] 639:  "au FileType vim let g:autosave = 0 640:  let g:auto save in insert mode = 0 641:  let g:auto save silent = 1 642:   643:  "Git autocommit  (private git repo) 644:  autocmd BufWritePost * call Git() 645:  " execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git add build/* git commit -m -a ; git push --all origin; fi' 646:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 647:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 648:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 649:  " "Highlight 650:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 651:  " hi MatchParen guibg=NONE guifg=green gui=NONE 652:      " 653:      " 654:      " 655:      " UndoTree   656:  noremap <Leader>u :TZAtaraxisOff<cr>:UndotreeToggle<CR> 657:          " If undotree is opened, it is likely one wants to interact with it.
@??? 658:          let g:undotree SetFocusWhenToggle=1 659:          noremap <D-z> u 660:          noremap <S-C-z> <C-r> 661:          " noremap <C-z> u 662:      "   663:   664:   665:  " Latex shortcuts 666:  "Latex compile.
@??? 667:  "them to an external terminal and run there.
@??? 668:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 669:  "Zathura forward search 670:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 671:  "source ~/.
anyname   672:  "au filetype tex filetype indent off 673:  "  GUI Stuff    674:  " command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 675:   676:  " Deoplete 677:   678:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
678:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 679:  set directory= HOME/Downloads 680:   681:   682:  "LUA 683:  " lua <<EOF 684:  " require'nvim-tree'.
setup() 685:  " EOF 686:  lua <<EOF 687:  require'nvim-treesitter.
configs'.
setup    688:      -- 689:      highlight =   enable = true  , 690:      incremental selection =   691:      enable = true, 692:      keymaps =   693:        init selection = '<CR>', 694:        scope incremental = '<CR>', 695:        node incremental = '<TAB>', 696:        node decremental = '<S-TAB>', 697:       , 698:     , 699:      textobjects =   enable = true  , 700:      indent =   enable = true  ,  701:    702:  EOF 703:   704:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  705:   706:  " vsnip stuff  707:  " Use <Tab> and <S-Tab> to navigate through popup menu 708:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 709:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 710:   711:  " Set completeopt to have a better completion experience 712:  set completeopt=menuone,noinsert,noselect 713:   714:  " Avoid showing message extra message when using completion 715:  set shortmess+=c 716:  let g:vsnip snippet dir = '~/dotfiles/snippets'   717:   718:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 719:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 720:  "  721:  " " Expand or jump 722:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 723:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 724:   725:  " Jump forward or backward 726:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 727:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 728:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 729:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 730:   731:  " 732:  " set foldexpr=nvim treesitter#foldexpr() 733:  " 734:  lua << EOF 735:  local nvim lsp = require('lspconfig') 736:  -- Use an on attach function to only map the following keys 737:  -- after the language server attaches to the current buffer 738:  local on attach = function(client, bufnr) 739:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 740:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 741:  -- Enable completion triggered by <c-x><c-o> 742:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 743:   744:    -- Mappings.
@??? 745:    local opts =   noremap=true, silent=true   746:   747:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 748:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 749:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 750:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 751:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 752:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 753:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 754:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 755:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 756:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 757:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 758:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 759:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 760:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 761:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 762:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 763:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 764:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 765:   766:  end 767:  EOF 768:   769:  "Lsp instal  770:  lua <<EOF 771:  local lsp installer = require("nvim-lsp-installer") 772:   773:  -- Register a handler that will be called for all installed servers.
@??? 774:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 775:  lsp installer.
on server ready(function(server) 776:      local opts =    777:   778:      -- (optional) Customize the options passed to the server 779:      -- if server.
name == "tsserver" then 780:      --     opts.
root dir = function() .
.
. 
780:++++ end 781:      -- end 782:   783:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 784:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 785:      server:setup(opts) 786:  end) 787:  EOF 788:   789:  " 790:   791:   792:  nnoremap <leader>y :FZFNeoyank<cr> 793:  nnoremap <leader>Y :FZFNeoyank  P<cr> 794:  vnoremap <leader>y :FZFNeoyankSelection<cr> 795:   796:  nnoremap <leader>p :FZFNeoyank +<cr>  797:  nnoremap <leader>1 :FZFNeoyank 1<cr> 798:  nnoremap <leader>P :FZFNeoyank " P+<cr> 799:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 800:   801:   802:  " Replace the default dictionary completion with fzf-based fuzzy completion 803:   804:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   805:  inoremap <cr> <cr> <backspace> 806:   807:  set completeopt=menu,menuone,noselect 808:   809:  lua <<EOF 810:    -- Setup cmp.
@??? 811:   812:  local has words before = function() 813:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 814:      return false 815:    end 816:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 817:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 818:  end 819:   820:  local feedkey = function(key, mode) 821:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 822:  end 823:   824:  local cmp = require('cmp') 825:  cmp.
setup   826:   snippet =   827:        expand = function(args) 828:          -- For `vsnip` user.
@??? 829:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 830:    -- .
.
. 
830:++++ Your other configuration .
.
.
@??? 831:  end, 832:   , 833:  mapping =   834:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 835:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 836:        ['<C-x>'] = cmp.
mapping.
complete(), 837:        ['<C-e>'] = cmp.
mapping.
close(), 838:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 839:  -- .
.
. 
839:++++ Your other mappings .
.
.
@??? 840:  ["<Tab>"] = cmp.
mapping(function(fallback)  841:        if vim.
fn["vsnip#expandable"]() == 1 842:          then 843:          feedkey("<Plug>(vsnip-expand)", "") 844:       elseif cmp.
visible() then 845:          cmp.
select next item() 846:        elseif has words before() then  847:          cmp.
complete() 848:        else  849:          fallback() -- The fallback function sends a already mapped key. 
849:++++ In this case, it's probably `<Tab>`.
@??? 850:        end 851:      end,   "i", "s"  ), 852:  ["<S-Tab>"] = cmp.
mapping(function() 853:        if vim.
fn.
pumvisible() == 1 then 854:          feedkey("<C-p>", "n")   855:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 856:          feedkey("<Plug>(vsnip-jump-prev)", "") 857:        end 858:      end,   "i", "s"  ), 859:  -- .
.
. 
859:++++ Your other mappings .
.
.
@??? 860:   861:   , 862:  requires =   863:        864:        'quangnguyen30192/cmp-nvim-tags', 865:        -- if you want the sources is available for some file types 866:        ft =   867:          'tex', 868:          'latex'  869:          870:        871:       , 872:  -- .
.
. 
872:++++ Your other configuration .
.
.
@??? 873:  sources =   874:        -- For vsnip user.
@??? 875:    name = 'tags', keyword length = 1000  , 876:     name = 'vsnip', keyword length = 1000  , 877:           -- For luasnip user.
@??? 878:        --   name = 'luasnip'  , 879:  -- For ultisnips user.
@??? 880:        --   name = 'ultisnips'  ,   881:       name = 'buffer', keyword length = 1000  , 882:       name = 'omni', keyword length = 4 , 883:         --   name = 'spell'  ,  884:       name = 'nvim lsp', keyword length = 4  , 885:        --  name = 'treesitter', keyword length = 4  , 886:  --  name = 'latex symbols'  , 887:   , 888:  completion =   889:      autocomplete = false  890:        891:    892:  EOF 893:   894:  "  895:  " " LSP mappings    896:  " "" LSP mappings  897:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 898:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 899:  "  900:  "  901:  lua <<EOF 902:   require('nvim comment').
setup( 903:    904:     -- Linters prefer comment and line to have a space in between markers 905:     marker padding = true, 906:     -- should comment out empty or whitespace only lines 907:     comment empty = true, 908:     -- Should key mappings be created 909:     create mappings = true, 910:     -- Normal mode mapping left hand side 911:     line mapping = "gc", 912:     -- Visual/Operator mapping left hand side 913:     operator mapping = "<leader>c", 914:     -- Hook function to call before commenting takes place 915:     --hook = nil  916:     917:   ) 918:  EOF 919:  nmap <leader>c gc 920:  lua <<EOF 921:  local true zen = require("true-zen") 922:  true zen.
setup(  923:   	ui =   924:   		bottom =   925:   			laststatus = 0, 926:   			ruler = false, 927:   			showmode = false, 928:   			showcmd = false, 929:   			cmdheight = 1, 930:   		 , 931:   		top =   932:   			showtabline = 0, 933:   		 , 934:   		left =   935:   			number = false, 936:   			relativenumber = false, 937:   			signcolumn = "no", 938:   		 , 939:   	 , 940:   	modes =   941:   		ataraxis =   942:   			-- left padding = 20, 943:   			-- right padding = 20, 944:   			top padding = 0, 945:   			bottom padding = 0, 946:   			ideal writing area width =  60 , 947:   			auto padding = true, 948:   			keep default fold fillchars = true, 949:   			custom bg =  "none", "" , 950:   			bg configuration = true, 951:   			quit = "untoggle", 952:   			ignore floating windows = true, 953:   			affected higroups =   954:   				NonText = true, 955:   				FoldColumn = true, 956:   				ColorColumn = true, 957:   				VertSplit = true, 958:   				StatusLine = true, 959:   				StatusLineNC = true, 960:   				SignColumn = true, 961:   			 , 962:   		 , 963:   		focus =   964:   			margin of error = 5, 965:   			focus method = "experimental" 966:   		 , 967:   	 , 968:   	integrations =   969:   		vim gitgutter = false, 970:   		galaxyline = false, 971:   		tmux = false, 972:   		gitsigns = false, 973:   		nvim bufferline = false, 974:   		limelight = false, 975:   		twilight = false, 976:   		vim airline = false, 977:   		vim powerline = false, 978:   		vim signify = false, 979:   		express line = false, 980:   		lualine = false, 981:   		lightline = false, 982:   		feline = false, 983:   	 , 984:   	misc =   985:   		on off commands = true, 986:   		ui elements commands = false, 987:   		cursor by mode = false, 988:   	  989:    ) 990:  EOF 991:  lua <<EOF 992:  require('feline').
setup(  993:      preset = 'noicon' 994:       ) 995:  EOF 996:  "  997:  "  998:  "  999:  " " lua <<EOF 1000:  " " require('lualine').
setup  1001:  " " options =  disabled filetypes =  'txt', 'text'   1002:  " "   1003:  " " EOF 1004:  " " lua << EOF 1005:  " "   require("zen-mode").
setup   1006:  " "   window =   1007:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1007:++++ Set to 1 to keep the same as Normal 1008:  " "     -- height and width can be: 1009:  " "     -- * an absolute number of cells when > 1 1010:  " "     -- * a percentage of the width / height of the editor when <= 1 1011:  " "     -- * a function that returns the width or the height 1012:  " "     width = .
66, -- width of the Zen window 1013:  " "     height = 1, -- height of the Zen window 1014:  " "     -- by default, no options are changed for the Zen window 1015:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1016:  " "     options =   1017:  " "       -- signcolumn = "no", -- disable signcolumn 1018:  " "       -- number = false, -- disable number column 1019:  " "       -- relativenumber = false, -- disable relative numbers 1020:  " "       -- cursorline = false, -- disable cursorline 1021:  " "       -- cursorcolumn = false, -- disable cursor column 1022:  " "       -- foldcolumn = "0", -- disable fold column 1023:  " "       -- list = false, -- disable whitespace characters 1024:  " "      , 1025:  " "    , 1026:  " "   plugins =   1027:  " "     -- disable some global vim options (vim.
o.
.
.
) 1028:  " "     -- comment the lines to not apply the options 1029:  " "     options =   1030:  " "       enabled = true, 1031:  " "       ruler = false, -- disables the ruler text in the cmd line area 1032:  " "       showcmd = false, -- disables the command in the last line of the screen 1033:  " "      , 1034:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1035:  " "     gitsigns =   enabled = false  , -- disables git signs 1036:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1037:  " "     -- this will change the font size on kitty when in zen mode 1038:  " "     -- to make this work, you need to set the following kitty options: 1039:  " "     -- - allow remote control socket-only 1040:  " "     -- - listen on unix:/tmp/kitty 1041:  " "     kitty =   1042:  " "       enabled = false, 1043:  " "       font = "+4", -- font size increment 1044:  " "      , 1045:  " "    , 1046:  " "   -- callback where you can add custom code when the Zen window opens 1047:  " "   on open = function(win) 1048:  " "   end, 1049:  " "   -- callback where you can add custom code when the Zen window closes 1050:  " "   on close = function() 1051:  " "   end, 1052:  " "   1053:  " " EOF 1054:  lua <<EOF 1055:  require('telescope').
setup  1056:    defaults =   1057:      -- Default configuration for telescope goes here: 1058:      -- config key = value, 1059:      mappings =   1060:        i =   1061:          -- map actions.
which key to <C-h> (default: <C-/>) 1062:          -- actions.
which key shows the mappings for your picker, 1063:          -- e.
g. 
1063:++++ git  create, delete, .
.
.  
branch for the git branches picker 1064:          ["<C-h>"] = "which key" 1065:          1066:        1067:     , 1068:    pickers =   1069:      -- Default configuration for builtin pickers goes here: 1070:      -- picker name =   1071:      --   picker config key = value, 1072:      --   .
.
.
@??? 1073:      --   1074:      -- Now the picker config key will be applied every time you call this 1075:      -- builtin picker  1076:     , 1077:    extensions =   1078:      -- Your extension configuration goes here: 1079:      -- extension name =   1080:      --   extension config key = value, 1081:      --   1082:      -- please take a look at the readme of the extension you want to configure 1083:      1084:     1085:  EOF 1086:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1087:  lua <<EOF 1088:  require('fm-nvim').
setup  1089:  	config = 1090:  	  1091:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1092:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1093:  		height   = .
9, 1094:  		width    = .
9, 1095:  	  1096:    1097:  EOF 1098:   1099:  " lua <<EOF 1100:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1101:  " require("prosesitter"):setup(  1102:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1102:++++ "/prosesitter/vale", 1103:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1103:++++ "/prosesitter/vale cfg.
ini", 1104:  " 	--optional extra queries overrides existing queries 1105:  " 	queries =    1106:  " 		-- see the piece on adding queries on how to use this  1107:  " 		-- (not needed if using an out of the box supported language 1108:  " 		py =    1109:  " 			strings = "[(string) ] @capture", 1110:  " 			comments = "[(comment)+ ] @capture", 1111:  " 		 , 1112:  " 	 ,  1113:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1114:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1115:  " 	-- weather to lint strings, comments or both for a language 1116:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1117:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1118:  " 	auto enable = false, -- do not start linting files on open (default = true) 1119:  " 	default cmds = false,  -- do not add commands (default = true) 1120:  "  ) 1121:  " EOF 1122:  lua <<EOF 1123:  require('spellsitter').
setup   1124:    hl = 'SpellBad',  1125:    captures =   ,  -- set to    to spellcheck everything 1126:   1127:    -- Spellchecker to use. 
1127:++++ values: 1128:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1129:    -- * ffi: built-in spell checker using the FFI to access the 1130:    --   internal spell check() function 1131:  spellchecker = 'vimfn', 1132:    1133:  EOF 1134:  let g:firenvim config =    1135:        'globalSettings':   1136:            'alt': 'all', 1137:          , 1138:        'localSettings':   1139:            '.
*':   1140:                'cmdline': 'neovim', 1141:                'content': 'text', 1142:                'priority': 0, 1143:                'selector': 'textarea', 1144:                'takeover': 'never', 1145:             , 1146:          1147:      1148:  lua << EOF 1149:  require('fzf-lua').
setup  1150:  -- .
.
.
@??? 1151:    1152:  EOF 1153:   1154:  " lua << EOF 1155:  " require("stabilize").
setup( 1156:  "   1157:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1158:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1159:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1160:  " --		filetype =   "help", "list", "Trouble"  , 1161:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1162:  " --	  1163:  "   1164:  " ) 1165:  " EOF 1166:  " lua <<EOF 1167:  " require('dd').
setup() 1168:  " EOF 1169:  " lua << EOF 1170:  " local opts =   1171:  "   log level = 'info', 1172:  "   auto session enable last session = false, 1173:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1174:  "   auto session enabled = false, 1175:  "   auto save enabled = nil, 1176:  "   auto restore enabled = nil, 1177:  "   auto session suppress dirs = nil 1178:  "   1179:  " require('auto-session').
setup(opts) 1180:  " EOF 1181:   1182:  " lua << EOF 1183:  " if exists('g:started by firenvim') 1184:  "   ZenMode 1185:  " else 1186:  "   set laststatus=2 1187:  " endif 1188:   1189:  " lua <<EOF 1190:  " require('neoclip').
setup(  1191:  "       history = 1000, 1192:  "       enable persistant history = false, 1193:  "       db path = vim.
fn.
stdpath("data") .
. 
1193:++++ "/databases/neoclip.
sqlite3", 1194:  "       filter = nil, 1195:  "       preview = true, 1196:  "       default register = '"', 1197:  "       content spec column = false, 1198:  "       on paste =   1199:  "         set reg = false, 1200:  "        , 1201:  "       keys =   1202:  "         i =   1203:  "           select = '<cr>', 1204:  "           paste = '<c-p>', 1205:  "           paste behind = '<c-k>', 1206:  "           custom =   , 1207:  "          , 1208:  "         n =   1209:  "           select = '<cr>', 1210:  "           paste = 'p', 1211:  "           paste behind = 'P', 1212:  "           custom =   , 1213:  "          , 1214:  "        , 1215:  "     ) 1216:  " EOF 1217:  " lua <<EOF 1218:  " local saga = require 'lspsaga'  1219:  " saga.
init lsp saga()  1220:  "   1221:  " EOF 1222:   1223:  "au FileType tex autocmd User SneakLeave set syntax=tex 1224:  "au FileType tex autocmd User SneakEnter set syntax=text 1225:  " 1226:  " 1227:  " 1228:   1229:  " 1230:  " 'tCommen20 1231:  " let g:tcommentMapLeaderOp1=';'  1232:  " "map <leader>c <Leader>    1233:  "" function! RestoreRegister() 1234:  "   let @" = s:restore reg 1235:  "   return '' 1236:  " endfunction 1237:  " function! s:Repl() 1238:  "     let s:restore reg = @" 1239:  "     return "p@=RestoreRegister() <cr>" 1240:  " endfunction 1241:  " 1242:  " " NB: this supports "rp that replaces the selection by the contents of @r 1243:  " vnoremap <silent> <expr> p <sid>Repl() 1244:   1245:  " " Change Color when entering 1246:  " Insert Mode augroup CursorLine 1247:  "    au! 1248:  "  if has("gui running") 1249:  "  else 1250:  "      au InsertEnter * setlocal cursorline 1251:  "        au InsertLeave * setlocal nocursorline 1252:  "     endif 1253:  "        augroup END 1254:  " function! DelTagOfFile(file) 1255:  "   let fullpath = a:file 1256:  "   let cwd = getcwd() 1257:  "   let tagfilename = cwd . 
1257:++++ "/tags" 1258:  "   let f = substitute(fullpath, cwd . 
1258:++++ "/", "", "") 1259:  "   let f = escape(f, '.
/') 1260:  "   let cmd = 'sed -i "/' . 
1260:++++ f . 
1260:++++ '/d" "' . 
1260:++++ tagfilename . 
1260:++++ '"' 1261:  "   let resp = system(cmd) 1262:  " endfunction 1263:  " function! Break() 1264:  "  let n=130-virtcol('.
') 1265:  "  <Esc>ni <Esc><Esc> 1266:  " endfunction 1267:  " function Gitview() 1268:  "    cd /root/web2 ; git add . 
1268:++++ ; git commit -m -a ; git push origin gh-pages 1269:  " endfunction 1270:  " fuzzy search 1271:  " function! s:config fuzzyall(.
.
.
) abort 1272:  "   return extend(copy(  1273:  "       'converters': [ 1274:  "         incsearch#config#fuzzy#converter(), 1275:  "         incsearch#config#fuzzyspell#converter() 1276:  "       ], 1277:  "      ), get(a:, 1,    1278:  "   )) 1279:  " endfunction 1280:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1281:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1282:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1283:  " map f <Plug>(incsearch-fuzzyspell-/) 1284:  " map F <Plug>(incsearch-fuzzyspell-?) 1285:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1286:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1287:  " let g:deoplete#enable at startup = 1 1288:  " map <silent> <leader>g :silent call Gitview() 1289:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1290:  "Load some useful plugins with vundle  1291:  " 1292:  "asdf asldfkj 1293:  " hi! link Sneak Normal 1294:  " hi! link SneakScope Normal   test test2 test3 1295:   1296:  " command! -bang -nargs=* Rg 1297:  "     call fzf#vim#grep( 1298:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1299:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1300:  " 1301:  "" au GUIEnter * set fullscreen 1302:  " if has("gui running") 1303:    " set fuoptions=maxvert,maxhorz 1304:    " au GUIEnter * set fullscreen 1305:     " set foldcolumn=10 1306:     " set formatoptions=ant 1307:  " set wrapmargin=0 1308:  " set nohlsearch 1309:  " set tags= ~/workspacemodules/tags 1310:  " highlight SignColumn guibg=bg 1311:  "       endif     1312:  " if has("autocmd") 1313:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1314:  " endif 1315:    " autocmd BufWinLeave *.
* mkview 1316:    " autocmd BufWinEnter *.
* silent loadview 1317:     " set foldcolumn=2 1318:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1319:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1320:  " inoremap <cr> <esc>:w<cr>i<cr>  1321:  "" set tm=500 1322:  " set macmeta 1323:  " auto reload vimrc when editing it 1324:  " let g:github function style = "italic" 1325:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1326:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1327:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1328:  " Load the colorscheme 1329:  " colorscheme github dark 1330:  "" terminal color settings  1331:  " Example config in VimScript 1332:  " let g:github function style = "italic" 1333:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1334:   1335:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1336:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1337:  " Load the colorscheme 1338:  " colorscheme github dark  1339:  " set background=dark  1340:  " if has("gui running")	" GUI color and font settings 1341:  "   set guifont=Fira  Code:h22 1342:  "   " colorscheme gruvbox  1343:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1344:  " else 1345:  "  colorscheme one 1346:  " colorscheme material   1347:  " let g:material style = 'palenight'   1348:  " let g:material style = 'lighter' 1349:  " highlight Normal ctermbg=none  1350:  "   " let g:vimtex quickfix method='pplatex'  1351:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1352:  "    function! UpdateSkim(status) 1353:  "      if !a:status | return | endif 1354:  " 1355:  "      let l:out = b:vimtex.
out() 1356:  "      let l:tex = expand(' :p') 1357:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1358:  "      if !empty(system('pgrep Skim')) 1359:  "        call extend(l:cmd, ['-g']) 1360:  "      endif 1361:  "      if has('nvim') 1362:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1363:  "      elseif has('job') 1364:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1365:  "      else 1366:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1367:  "      endif 1368:  "    endfunction 1369:  " let g:vimtex latexmk build dir = '.
/build' 1370:  "   'build dir' : '.
/build', 1371:  "  1372:  "     let g:vimtex compiler latexmk =   1373:  "       'background' : 0, 1374:  "           'callback' : 1, 1375:  "       'continuous' : 1, 1376:  "       'options' : [ 1377:  "         '-pdf', 1378:  "         '-verbose', 1379:  "         '-file-line-error', 1380:  "         '-synctex=1', 1381:  "         '-interaction=nonstopmode', 1382:  "       ], 1383:  "        1384:  " let g:vimtex compiler progname = 'nvr' 1385:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1386:  " let g:vimtex quickfix mode = 1 1387:  " let g:vimtex fold enabled = 0 1388:  " let g:vimtex fold manual = 1 1389:   1390:   1391:  " let g:vimtex fold types=   1392:  "             'preamble' :   , 1393:  "             'comments' :  'enabled' : 1 , 1394:  "             'markers' :   , 1395:  "             'sections' :   1396:  "               'parse levels' : 0, 1397:  "               'sections' : [       1398:  "                 ' (add)?part', 1399:  "                 ' (chapter|addchap)', 1400:  "                 ' (section|addsec)', 1401:  "                 'subsection', 1402:  "                 'subsubsection', 1403:  "               ], 1404:  "               'parts' : [          1405:  "                 'appendix', 1406:  "                 'frontmatter', 1407:  "                 'mainmatter', 1408:  "                 'backmatter', 1409:  "               ], 1410:  "              , 1411:  "              1412:   1413:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1414:  " lua <<EOF 1415:  " require'nvim-treesitter.
configs'.
setup   1416:  "   incremental selection =   1417:  "     enable = true, 1418:  "     keymaps =   1419:  "       init selection = "gnn", 1420:  "       node incremental = "grn", 1421:  "       scope incremental = "grc", 1422:  "       node decremental = "grm", 1423:  "      , 1424:  "    , 1425:  "   1426:  " EOF 1427:  " lua <<EOF 1428:  " require('neoscroll').
setup  1429:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1430:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1431:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1432:  "     hide cursor = true,          -- Hide cursor while scrolling 1433:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1434:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1435:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1436:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1437:  "     easing function = nil,        -- Default easing function 1438:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1439:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1440:  "       1441:  " EOF 1442:  "  1443:  " " set foldlevel=20 1444:  " " set foldmethod=expr 1445:  " " set foldexpr=nvim treesitter#foldexpr() 1446:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1447:  " inoremap .
<Space> .
<CR><Esc><leader>j 1448:  " noremap S :S  1449:  " 1450:  " 1451:  " function! Sneak() 1452:  "     hi! link Sneak Normal 1453:  "     hi! link SneakScope Normal 1454:  "     execute 'normal!  <Plug>Sneak s' 1455:  "     syntax on 1456:  " endfunction 1457:    1458:  " map N <Plug>Sneak , 1459:  " map t <Plug>(smalls-excursion) 1460:  " let g:smalls auto jump=1 1461:  " let g:smalls auto jump timeout=0 1462:   1463:   1464:      " xmap t <Plug>Sneak s 1465:      " xmap T <Plug>Sneak S 1466:     " omap t <Plug>Sneak s 1467:      " omap T <Plug>Sneak S  1468:      " math maps     asdf a;sldfjk test2 test3 1469:  "  1470:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1471:  " let g:vimtex view general options = '-r @line @pdf @ 1472:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  asldkfj 1473:   1474:  " <cr> 1475:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1476:  " NB: this supports "rp that replaces the selection by the contents of @r 1477:  " Auto updating Ctags 1478:  " autocmd VimLeave * exe ":silent ! ctags -R" 1479:  "Nerd Tree 1480:  " map <leader>e :NERDTreeFind<CR> 1481:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1482:  " 1483:  "" lua << EOF 1484:  " local function setup servers() 1485:  "   require'lspinstall'.
setup() 1486:  "   local servers = require'lspinstall'.
installed servers() 1487:  "   for  , server in pairs(servers) do 1488:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1489:  "   end 1490:  " end 1491:  "  1492:  " setup servers() 1493:  "  1494:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1495:  " require'lspinstall'.
post install hook = function () 1496:  "   setup servers() -- reload installed servers 1497:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1498:  " end 1499:  " EOF 1500:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  as;ldkfj 