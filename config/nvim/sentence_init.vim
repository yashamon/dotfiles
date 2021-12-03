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
@??? 44:  Plug 'L3MON4D3/LuaSnip' 45:  " Plug 'saadparwaiz1/cmp luasnip' 46:  "Plug 'steelsojka/completion-buffers' 47:  Plug 'voldikss/vim-floaterm' 48:  " Plug 'kabouzeid/nvim-lspinstall',   'branch': 'main'   49:  "Plug 'pope/vim-obsession' 50:  "Plug 'xolox/vim-easytags' 51:  " Plug 'nvim-lua/plenary.
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
15 146:   147:  "General Settings     148:  set title  149:  " set titlestring 150:  " set noshowmode 151:  " set noruler        152:  " set laststatus=1  153:  set noshowcmd    154:  set noshowmatch   155:  set wrap   156:  set pb=10   157:  set winbl=10 158:  set switchbuf=newtab 159:  " let g:python3 host prog='/usr/bin/python3.
9' 160:  " let g:python3 host prog='/usr/bin/python3.
9' 161:   162:  set clipboard+=unnamedplus	" yank to the system register (*) by default 163:  " TAB setting  164:  set expandtab        "replace <TAB> with spaces 165:  set softtabstop=3  166:  set shiftwidth=3  167:  set termguicolors 168:   169:  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50 170:   		   ,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor 171:   		   ,sm:block-blinkwait175-blinkoff150-blinkon175 172:  set spelllang=en    173:  if exists('g:started by firenvim') 174:         au UIEnter  set noshowmode 175:         au UIEnter  set noruler 176:         au UIEnter  set laststatus=0 177:         au UIEnter  set noshowcmd 178:         au UIEnter  set lines=100 179:   else 180:    " autocmd VimEnter * TZAtaraxis 181:   endif 182:  set timeoutlen=0 183:  au VIMEnter * let g:surround 108 =   184:        'q':  " `` r''" 185:           186:  let g:tex flavor = "latex" 187:  let g:tex isk = '@,48-57,58, ,192-255' 188:  let g:tex conceal = "" 189:  set tags+=~/workspacemodules/tags 190:  "set tags+=~/Dropbox/workspace/tags 191:  set formatoptions=nt 192:    " set wrapmargin=1 193:  " set shada="NONE"   194:  set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 195:  set wrap 196:  set linebreak  197:  set formatoptions+=w " set breakat=" " 198:  " set list  " list disables linebreak 199:  set textwidth=0 200:  set wrapmargin=-1 201:  set hid 202:  set autochdir 203:  set guioptions-=r 204:  set guioptions-=l 205:  set inccommand=split 206:  set mouse= 207:  set bs=2		" allow backspacing over everything in insert mode  208:  set undofile                " Save undo's after file closes 209:  set undodir=undo " where to save undo histories 210:  set undolevels=1000000         " How many undos 211:  set undoreload=10000		 212:  set ruler		" show the cursor position all the time 213:  set autoread		" auto read when file is changed from outside 214:  set nohlsearch 215:  " set noswapfile 216:  " set showmatch		" Cursor shows matching ) and   217:  set nocursorline 218:  set showmode		" Show current mode 219:  set wildchar=<TAB>	" start wild expansion in the command line using <TAB> 220:  set wildmenu            " wild char completion menu 221:  let maplocalleader = "  " 222:  " ignore these files while expanding wild chars 223:  set wildignore=*.
o,*.
class,*.
pyc 224:  set incsearch		" incremental search 225:  set nobackup		" no *~ backup files 226:  set ignorecase		" ignore case when searching 227:  set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise 228:  set smarttab		" insert tabs on the start of a line according to context 229:   230:  " disable sound on errors 231:  set noerrorbells 232:  " set novisualbell  233:  set guifont=Fira  Code  Light:h20 234:   colorscheme blue-moon 235:  " colorscheme material   236:  " let g:material style = 'palenight'   237:  " let g:material style = 'lighter' 238:  " highlight Normal ctermbg=none 239:  set tm=1000 240:  " set macreta  241:  hi clear SpellBad 242:  hi SpellBad cterm=underline 243:  " Set style for gVim 244:  hi SpellBad gui=underline 245:  " 246:  "Autocommands, au 247:  au FileType Makefile set noexpandtab 248:  au FileType tex,text set spelllang=en 249:  au FileType tex,text,md set spell  250:  au FileType vim,md set list 251:  " au FileType vim,md colorscheme one 252:   253:  " au FileType tex,text,md syntax sync fromstart  254:  "  255:  " au FileType tex,text,md silent execute "!echo " . 
255:++++ v:servername . 
255:++++ " > ~/servername.
txt"     256:  au FileType * silent execute "!echo " . 
256:++++ v:servername . 
256:++++ " > ~/servername.
txt" 257:  au UIEnter silent execute "!echo " . 
257:++++ v:servername . 
257:++++ " > ~/servername.
txt" 258:  au FileType tex,text,md hi SpellBad cterm=undercurl 259:  au Filetype tex,text,md vmap q xi<CR><CR><CR><CR><ESC>kki/begin comment <cr><cr>/end comment <esc>kp 260:  au Filetype tex,text,md set tw=50 261:   262:  " au FileType tex set background=dark  263:  au TextYankPost * lua vim.
highlight.
on yank  higroup="IncSearch", timeout=150, on visual=true  264:  au TextYankPost * call neoyank# append()  265:   266:  set expandtab        "replace <TAB> with spaces 267:  set softtabstop=3  268:  set shiftwidth=3  269:   270:  "---------------------------------------------------------------------------  271:  " USEFUL SHORTCUTS 272:  "---------------------------------------------------------------------------  273:  " set leader to ;  274:  let mapleader=';' 275:  let g:mapleader=';' 276:   277:  " open the error console 278:  " move to next error 279:   280:  " Bash like keys for the command line 281:  cnoremap <C-A>      <Home> 282:  cnoremap <C-E>      <End> 283:  cnoremap <C-K>      <C-U> 284:   285:  " ,p toggles paste mode 286:  " nmap <leader>p :set paste!<BAR>set paste?<CR> 287:   288:  " allow multiple indentation/deindentation in visual mode 289:  vnoremap < <gv 290:  vnoremap > >gv 291:   292:  " :cd. 
292:++++ change working directory to that of the current file 293:  cmap cd. 
293:++++ lcd  :p:h 294:   295:   296:  " Enable omni completion. 
296:++++ (Ctrl-X Ctrl-O) 297:  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 298:  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 299:  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 300:  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 301:  autocmd FileType css set omnifunc=csscomplete#CompleteCSS 302:  autocmd FileType c set omnifunc=ccomplete#Complete 303:  autocmd FileType java set omnifunc=javacomplete#Complete  304:  autocmd FileType tex set omnifunc=latex#Complete 305:  autocmd Filetype tex setlocal fo=nt 306:  autocmd Filetype tex setlocal wrapmargin=0 307:  " use syntax complete if nothing else available 308:  if has("autocmd") && exists("+omnifunc") 309:    autocmd Filetype * 310:                 	if &omnifunc == "" | 311:                 		setlocal omnifunc=syntaxcomplete#Complete | 312:                 	endif 313:  endif 314:   315:  set cot-=preview "disable doc preview in omnicomplete 316:   317:  " make CSS omnicompletion work for SASS and SCSS 318:  " autocmd BufNewFile,BufRead *.
scss             set ft=scss.
css 319:  " autocmd BufNewFile,BufRead *.
sass             set ft=sass.
css 320:   321:  "---------------------------------------------------------------------------  322:  " ENCODING SETTINGS 323:  "---------------------------------------------------------------------------  324:  set encoding=utf-8                                   325:  set termencoding=utf-8 326:  set fileencoding=utf-8 327:   328:  "maps remaps mappings   329:  " 330:  " 331:  " terminal mappings  332:  "  333:  tnoremap <A-Esc> <C- ><C-n> 334:  nmap <A-S-t> :te<cr> 335:   vnoremap <Leader>U ""y: s/<C-r>" 336:  noremap <leader>r :e<cr> 337:  noremap <leader>hh :set tw=50<cr> 338:  noremap <leader>w :set tw=0<cr>  339:  map q :q<cr> 340:  noremap <leader>q q 341:  nmap <m-7> :ZenMode<cr>:mksession!<cr> 342:  nnoremap <leader>rr :source  MYVIMRC<CR> 343:  "nnoremap <leader>e :NERDTreeFind<CR> 344:  nnoremap <leader>e :Lf<cr> 345:  nnoremap <leader>t :FloatermToggle<cr> 346:  nnoremap <c-,> :cprevious<cr> 347:  nnoremap <c-.
> :cnext<cr>  348:  inoremap <cr> <cr> <backspace> 349:  vnoremap <m-s> :s///gc<left><left><left><left> 350:  inoremap <m-s> <esc>: s///gc<left><left><left><left> 351:  nnoremap <m-s> : s///gc<left><left><left><left> 352:  vmap <M-.
> t.
<CR>h 353:  nmap <M-.
> t.
<CR>h 354:  nnoremap <up> 1<C-U> 355:  imap <up> <nop> 356:  nnoremap <down> 1<C-D> 357:  imap <down> <nop> 358:  noremap <ScrollWheelUp>      <nop> 359:  noremap <S-ScrollWheelUp>    <nop> 360:  noremap <C-ScrollWheelUp>    <nop> 361:  noremap <ScrollWheelDown>    <nop> 362:  noremap <S-ScrollWheelDown>  <nop> 363:  noremap <C-ScrollWheelDown>  <nop> 364:  noremap <ScrollWheelLeft>    <nop> 365:  noremap <S-ScrollWheelLeft>  <nop> 366:  noremap <C-ScrollWheelLeft>  <nop> 367:  noremap <ScrollWheelRight>   <nop> 368:  noremap <S-ScrollWheelRight> <nop> 369:  noremap <C-ScrollWheelRight> <nop> 370:  inoremap   / 371:  inoremap /   372:   373:  " copy paste stuff  374:  "  375:  vnoremap p "0dP 376:  " noremap D "0D:wa<cr> 377:  noremap d "0d 378:  nnoremap dd "0dd 379:  noremap c "0c 380:  noremap C " C 381:  noremap x " x 382:  " nnoremap v "+v 383:  vnoremap x "+x 384:  vnoremap d "0d 385:  vnoremap c "0d 386:  vnoremap y "+y 387:  nnoremap y "+y 388:  nnoremap p "+p 389:  nnoremap <leader>p p 390:  nnoremap <leader>q q 391:  " Softwrap  392:  nmap D "0dg  393:  nmap V vg  394:  nmap A g a  395:  map 0 g  396:  map 9 g  397:  nmap <m-8> :set laststatus=0<cr>:set lines=100<cr> 398:  nnoremap <c-l> :bnext<CR> 399:  nnoremap <c-h> :bprevious<CR> 400:  " tnoremap <Esc> <C- >  401:  " nnoremap < :tabp<CR> 402:  " nnoremap > :tabn<CR> 403:  " nnoremap <leader>n :tabedit  <CR> 404:  imap <M-j> <C-j> 405:  map <M-m> <cmd>HopChar1<cr>  406:  " map <S-b> ?  <CR> 407:  map <M-w> <cmd>HopChar1<cr>  408:  map <M-b> <cmd>HopChar1<cr>  409:  map q: nop 410:  map <S-C-q> <Esc>:qa!<CR> 411:  map <m-q> <esc>:wq<cr> 412:  map <m-Q> <esc>:q<cr> 413:  map <m-c> <esc>:close<cr> 414:  map <M-d> <Esc>:bdelete<CR> 415:  noremap gf gq 416:  noremap f / 417:  noremap F ? 418:  noremap # /  <CR>v?  <CR> 419:  noremap   /  <CR>hv?  <CR>l 420:  noremap @ / <CR>v? <CR> 421:  map j gj 422:  map k gk 423:  noremap <Space> .
@??? 424:  vnoremap <Space> t <cr> 425:  map K <C-u> 426:  map J <C-d> 427:  " map <C-j> zz 428:  " map <C-k> zb 429:  map <C-j> <C-e>jj 430:  map <C-k> <C-y>kk 431:  nnoremap <leader>j J 432:  nnoremap <leader>k K 433:  map ' " 434:  nnoremap <Backspace> i<Backspace><Esc> 435:  nmap <leader>c gc 436:  noremap <A-r> <C-r> 437:  nnoremap ` ~ 438:  nnoremap . 
438:++++ ` 439:  noremap <m-1> <C-o> 440:  noremap <m-2> <C-i> 441:  noremap <D-d> <C-d> 442:  map ;s <Esc>:w<CR> 443:  noremap <D-u> <C-u> 444:  noremap <A-u> <C-u> 445:  " this mapping Enter key to <C-y> to chose the current highlight item  446:  " and close the selection list, same as other IDEs.
@??? 447:  inoremap <expr> <CR> pumvisible() ? " <C-y>" : " <C-g>u <CR>" 448:  nnoremap <silent> <Leader>y :YRGetElem<CR> 449:  map ' " 450:  inoremap <D-]> <C-x><C-]> 451:  inoremap <C-]> <C-x><C-]> 452:   453:  au FileType tex,text,md nmap 0 g  454:  au FileType tex,text,md noremap 9 g  455:  " au FileType tex,text,md nnoremap dd " g dg g  456:  au FileType tex,text,md noremap map o gj0i<CR><ESC>gki 457:   458:  "Neovim mappings 459:  " :tnoremap <S-h> <C- ><C-n><C-w>h 460:  " :tnoremap <S-j> <C- ><C-n><C-w>j 461:  " :tnoremap <S-k> <C- ><C-n><C-w>k 462:  " :tnoremap <S-l> <C- ><C-n><C-w>l 463:  " tnoremap <Left> :tbnext<CR> 464:  " tnoremap <Right> :tbprevious<CR> 465:  " tnoremap <Leader>e <C- ><C-n>  466:  " imap <Backspace>   467:  map t <cmd>HopChar1AC<cr> 468:  map T <cmd>HopChar1BC<cr> 469:  map <m-.
> <cmd>HopChar1<cr>.
@??? 470:  map <m-space> <cmd>HopWord<cr> 471:  " map <S-m-Space> <cmd>HopWord<cr> 472:  " map t <ESC>:syntax off <CR>t: syntax on<CR> 473:   474:  " FZF  475:  " 476:  noremap <m-t> :BTags<cr> 477:  noremap <m-y> :Tags<cr> 478:  noremap S <Esc> :BLines<CR> 479:  "noremap L <Esc>:AsyncRun sentence.
sh  ;nvr sentence  <cr>:echo 'press any key'<cr>:execute 'call getchar()' | BLines<cr> 480:  " Line search mapping  481:  " function! Jumpback()  482:  "   K=bufname() 483:  "   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr> 484:  " endfunction 485:  noremap <m-b> <Esc>:Buffers<CR> 486:  " noremap F <Esc>:GFiles<CR> 487:  map <A-e> :FZF ~<CR>  488:  map <m-f> :FZF ~<CR>  489:   490:  "miscellaneous 491:  map :tags  exe ":silent ! /usr/local/bin/ctags -R" 492:  nmap <leader>g :TZAtaraxis<CR> 493:  nmap <leader>p :Denite neoyank -default-action=append<CR> 494:   495:  " Latex stuff 496:  "  497:  noremap <leader>ss :source  MYVIMRC<cr>  498:  noremap <c-e> viwy:cclose<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 499:  noremap <c-p> :<c-r>+<cr> 500:  noremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr>:TZAtaraxis<cr><cr> 501:  " noremap <m-l> viwy<esc>:bp<cr>:<c-r>+<cr> 502:   503:   504:  "Functions 505:   506:  function Light() 507:  set background=light 508:  " colorscheme oceanlight  509:  colorscheme one  510:  " highlight Normal ctermfg=black 511:  " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 512:  " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 513:  endfunction    514:   515:  " function Light() 516:  " set background=light 517:  " " colorscheme oceanlight  518:  " colorscheme material  519:  " let g:material style = 'lighter'   520:  "    " highlight Normal ctermfg=black 521:  " " highlight  CursorLine cterm=NONE ctermbg=black ctermfg=none 522:  " " hi MatchParen cterm=underline ctermbg=none ctermfg=magenta 523:  " endfunction    524:  function Bluemoon() 525:     set background=dark 526:     colorscheme blue-moon 527:     " colorscheme material   528:  endfunction 529:   530:  function Deepocean() 531:     set background=dark 532:     colorscheme material   533:     let g:material style = 'deep ocean'   534:  endfunction 535:   536:  function Palenight() 537:     set background=dark 538:     " colorscheme blue-moon 539:     colorscheme material   540:     let g:material style = 'palenight'   541:  endfunction 542:  function Lighter() 543:     set background=light 544:     " colorscheme blue-moon 545:     colorscheme material   546:     let g:material style = 'lighter'   547:  endfunction 548:   549:  function Dark() 550:     set background=dark 551:     colorscheme one   552:  endfunction 553:   554:  function! Profile() 555:  profile start profile.
log 556:  profile func * 557:  profile file * 558:  endfunction  559:   560:  function! Sentence() 561:    let g:buf = bufname() 562:    silent !sentence.
sh   563:    echo "Print any character" 564:    call getchar() 565:    e sentence   566:    " echo "Print any character" 567:    " call getchar() 568:    BLines 569:  endfunction 570:  noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 571:  " noremap L :TZAtaraxisOff<cr><cr>:call Sentence()<cr> 572:  function! Git()  573:  AsyncRun sleep 1; if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi  574:  endfunction 575:   576:  function! ToggleQuickFix() 577:      if empty(filter(getwininfo(), 'v:val.
quickfix')) 578:          TZAtaraxisOff  579:          let filename=bufname(" ") 580:          let errors=".
/build/" . 
580:++++ filename[:-4].
"log" 581:          exec "cf" errors  582:          copen 583:      else 584:          cclose  585:          TZAtaraxisOn 586:          endif 587:  endfunction 588:   589:  au filetype tex nnoremap <silent> <leader>s :call ToggleQuickFix()<cr> 590:   591:  function! ClearLatex()  592:    silent !rm .
/build/* 593:  endfunction 594:   595:  function! CompileLatex()   596:    silent !rm .
/build/* 597:    let buf = bufname() 598:    silent te latexmk -pvc -file-line-error -synctex=1 -halt-on-error -interaction=nonstopmode -recorder -f -g   599:    execute "buffer" buf 600:    call ViewPdf() 601:  endfunction 602:   603:  function! ViewPdf()  604:  wa 605:  let buf = bufname()  606:  let linenumber=line(".
") 607:  let colnumber=col(".
") 608:  let filename=bufname(" ") 609:  let filenamePDF=".
/build/" . 
609:++++ filename[:-4].
"pdf" 610:  let execstr="silent !zathura --synctex-forward " . 
610:++++ linenumber . 
610:++++ ":" . 
610:++++ colnumber . 
610:++++ ":" . 
610:++++ filename . 
610:++++ " " . 
610:++++ filenamePDF . 
610:++++ " &>/dev/null &" 611:  " . 
611:++++ "&>/dev/null &" 612:  exec execstr 613:  execute "buffer" buf 614:  endfunction  615:  nmap <leader>v :call ViewPdf()<cr> 616:  " nmap <leader>v :VimtexView<cr> 617:  " let  g:vimtex fold types defaults = 'preamble, sections, comments' 618:  nmap <leader>ll :call CompileLatex()<cr> 619:  nmap <leader>cl :call ClearLatex()<cr> 620:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --webtex -o backup.
html;  cp backup.
html  <cr>:e  <cr> 621:   622:  " nmap <leader>m :silent ! cp   backup;  pandoc  backup -s --mathjax[=https://cdnjs.
cloudflare.
com/ajax/libs/mathjax/2.
7.
7/MathJax.
js] -o backup.
html;  cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  623:  "" mathml shenanigans 624:   625:  nmap <leader>m :w<cr>:silent ! cat   >> ~/workspace/email.
txt; cp   /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.
html --from html --to markdown strict -o /tmp/temp.
md; mv /tmp/temp.
md  <cr>:e  <cr>:w<cr>:qa<cr> 626:   627:   628:   629:   630:   631:   632:  "Autosave and autocommit    633:  " let g:updatetime = 10000 634:  let g:auto save = 1 635:  " .
vimrc 636:  let g:auto save events = ["CursorHold"] 637:  "au FileType vim let g:autosave = 0 638:  let g:auto save in insert mode = 0 639:  let g:auto save silent = 1 640:   641:  "Git autocommit  (private git repo) 642:  autocmd BufWritePost * call Git() 643:  " execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git add build/* git commit -m -a ; git push --all origin; fi' 644:  " let inside git repo=" (git rev-parse --is-inside-work-tree 2>/dev/null)" 645:  " autocmd BufWritePost * silent execute 'AsyncRun if git rev-parse --is-inside-work-tree 2>/dev/null ; then git add   ; git commit -m -a ; git push --all origin; fi' 646:  " autocmd BufWritePost * <Esc>:AsyncRun 'if [ -d .
git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m ; git push --all origin; fi' 647:  " "Highlight 648:  " hi MatchParen cterm=underline ctermbg=none ctermfg=none 649:  " hi MatchParen guibg=NONE guifg=green gui=NONE 650:      " 651:      " 652:      " 653:      " UndoTree   654:  noremap <Leader>u :TZAtaraxisOff<cr>:UndotreeToggle<CR> 655:          " If undotree is opened, it is likely one wants to interact with it.
@??? 656:          let g:undotree SetFocusWhenToggle=1 657:          noremap <D-z> u 658:          noremap <S-C-z> <C-r> 659:          " noremap <C-z> u 660:      "   661:   662:   663:  " Latex shortcuts 664:  "Latex compile.
@??? 665:  "them to an external terminal and run there.
@??? 666:  " map <Leader>l :tabe  <CR><Esc>:term ; latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder  <CR><leader>e 667:  "Zathura forward search 668:  " map <Leader>v <Esc>:silent !zathura --synctex-forward <Ctrl+R>=line('.
'):1: :p  :p:h/build/ :r.
pdf<CR><CR> 669:  "source ~/.
anyname   670:  "au filetype tex filetype indent off 671:  "  GUI Stuff    672:  " command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', " <args >") | let g:Guifont="<args>" 673:   674:  " Deoplete 675:   676:  " map <silent> <leader>g :silent execute "!(cd /root/web2 ; git add . 
676:++++ ; git commit -m -a ; git push origin gh-pages) > /dev/null"<CR> 677:  set directory= HOME/Downloads 678:   679:   680:  "LUA 681:  " lua <<EOF 682:  " require'nvim-tree'.
setup() 683:  " EOF 684:  lua <<EOF 685:  require'nvim-treesitter.
configs'.
setup    686:      -- 687:      highlight =   enable = true  , 688:      incremental selection =   689:      enable = true, 690:      keymaps =   691:        init selection = '<CR>', 692:        scope incremental = '<CR>', 693:        node incremental = '<TAB>', 694:        node decremental = '<S-TAB>', 695:       , 696:     , 697:      textobjects =   enable = true  , 698:      indent =   enable = true  ,  699:    700:  EOF 701:   702:  set foldmethod=expr foldexpr=getline(v:lnum)=~'  s*'.
&commentstring[0]  703:   704:  " vsnip stuff  705:  " Use <Tab> and <S-Tab> to navigate through popup menu 706:  " inoremap <expr> <Tab> pumvisible() ? " <C-n>" : " <Tab>" 707:  " inoremap <expr> <S-Tab> pumvisible() ? " <C-p>" : " <S-Tab>" 708:   709:  " Set completeopt to have a better completion experience 710:  set completeopt=menuone,noinsert,noselect 711:   712:  " Avoid showing message extra message when using completion 713:  set shortmess+=c 714:  let g:vsnip snippet dir = '~/dotfiles/snippets'   715:   716:  " imap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 717:  " smap <expr> <m-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' 718:  "  719:  " " Expand or jump 720:  " imap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 721:  " smap <expr> <m-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>' 722:   723:  " Jump forward or backward 724:  imap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 725:    smap <expr> <M-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>' 726:  imap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 727:  smap <expr> <M-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>' 728:   729:  " 730:  " set foldexpr=nvim treesitter#foldexpr() 731:  " 732:  lua << EOF 733:  local nvim lsp = require('lspconfig') 734:  -- Use an on attach function to only map the following keys 735:  -- after the language server attaches to the current buffer 736:  local on attach = function(client, bufnr) 737:    local function buf set keymap(.
.
.
) vim.
api.
nvim buf set keymap(bufnr, .
.
.
) end 738:    local function buf set option(.
.
.
) vim.
api.
nvim buf set option(bufnr, .
.
.
) end 739:  -- Enable completion triggered by <c-x><c-o> 740:    buf set option('omnifunc', 'v:lua.
vim.
lsp.
omnifunc') 741:   742:    -- Mappings.
@??? 743:    local opts =   noremap=true, silent=true   744:   745:    -- See `:help vim.
lsp.
*` for documentation on any of the below functions 746:    buf set keymap('n', 'gD', '<cmd>lua vim.
lsp.
buf.
declaration()<CR>', opts) 747:    buf set keymap('n', 'gd', '<cmd>lua vim.
lsp.
buf.
definition()<CR>', opts) 748:    --buf set keymap('n', 'K', '<cmd>lua vim.
lsp.
buf.
hover()<CR>', opts) 749:    buf set keymap('n', 'gi', '<cmd>lua vim.
lsp.
buf.
implementation()<CR>', opts) 750:    buf set keymap('n', '<S-C-k>', '<cmd>lua vim.
lsp.
buf.
signature help()<CR>', opts) 751:    buf set keymap('n', '<space>wa', '<cmd>lua vim.
lsp.
buf.
add workspace folder()<CR>', opts) 752:    buf set keymap('n', '<space>wr', '<cmd>lua vim.
lsp.
buf.
remove workspace folder()<CR>', opts) 753:    buf set keymap('n', '<space>wl', '<cmd>lua print(vim.
inspect(vim.
lsp.
buf.
list workspace folders()))<CR>', opts) 754:    buf set keymap('n', '<space>D', '<cmd>lua vim.
lsp.
buf.
type definition()<CR>', opts) 755:    buf set keymap('n', '<space>rn', '<cmd>lua vim.
lsp.
buf.
rename()<CR>', opts) 756:    buf set keymap('n', '<leader>ca', '<cmd>lua vim.
lsp.
buf.
code action()<CR>', opts) 757:    --buf set keymap('n', 'lr', '<cmd>lua vim.
lsp.
buf.
references()<CR>', opts) 758:    buf set keymap('n', '<space>e', '<cmd>lua vim.
lsp.
diagnostic.
show line diagnostics()<CR>', opts) 759:    buf set keymap('n', '[d', '<cmd>lua vim.
lsp.
diagnostic.
goto prev()<CR>', opts) 760:    buf set keymap('n', ']d', '<cmd>lua vim.
lsp.
diagnostic.
goto next()<CR>', opts) 761:    buf set keymap('n', '<space>q', '<cmd>lua vim.
lsp.
diagnostic.
set loclist()<CR>', opts) 762:    buf set keymap('n', '<space>f', '<cmd>lua vim.
lsp.
buf.
formatting()<CR>', opts) 763:   764:  end 765:  EOF 766:   767:  "Lsp instal  768:  lua <<EOF 769:  local lsp installer = require("nvim-lsp-installer") 770:   771:  -- Register a handler that will be called for all installed servers.
@??? 772:  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
@??? 773:  lsp installer.
on server ready(function(server) 774:      local opts =    775:   776:      -- (optional) Customize the options passed to the server 777:      -- if server.
name == "tsserver" then 778:      --     opts.
root dir = function() .
.
. 
778:++++ end 779:      -- end 780:   781:      -- This setup() function is exactly the same as lspconfig's setup function.
@??? 782:      -- Refer to https://github.
com/neovim/nvim-lspconfig/blob/master/doc/server configurations.
md 783:      server:setup(opts) 784:  end) 785:  EOF 786:   787:  " 788:   789:   790:  nnoremap <leader>y :FZFNeoyank<cr> 791:  nnoremap <leader>Y :FZFNeoyank  P<cr> 792:  vnoremap <leader>y :FZFNeoyankSelection<cr> 793:   794:  nnoremap <leader>p :FZFNeoyank +<cr>  795:  nnoremap <leader>1 :FZFNeoyank 1<cr> 796:  nnoremap <leader>P :FZFNeoyank " P+<cr> 797:  vnoremap <leader>p :FZFNeoyankSelection +<cr> 798:   799:   800:  " Replace the default dictionary completion with fzf-based fuzzy completion 801:   802:  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')   803:  inoremap <cr> <cr> <backspace> 804:   805:  set completeopt=menu,menuone,noselect 806:   807:  lua <<EOF 808:    -- Setup cmp.
@??? 809:   810:  local has words before = function() 811:    if vim.
api.
nvim buf get option(0, "buftype") == "prompt" then 812:      return false 813:    end 814:    local line, col = unpack(vim.
api.
nvim win get cursor(0)) 815:    return col ~= 0 and vim.
api.
nvim buf get lines(0, line - 1, line, true)[1]:sub(col, col):match(" s") == nil 816:  end 817:   818:  local feedkey = function(key, mode) 819:    vim.
api.
nvim feedkeys(vim.
api.
nvim replace termcodes(key, true, true, true), mode, true) 820:  end 821:   822:  local cmp = require('cmp') 823:  cmp.
setup   824:   snippet =   825:        expand = function(args) 826:          -- For `vsnip` user.
@??? 827:          vim.
fn["vsnip#anonymous"](args.
body) -- For `vsnip` user.
@??? 828:    -- .
.
. 
828:++++ Your other configuration .
.
.
@??? 829:  end, 830:   , 831:  mapping =   832:        ['<C-d>'] = cmp.
mapping.
scroll docs(-4), 833:        ['<C-f>'] = cmp.
mapping.
scroll docs(4), 834:        ['<C-x>'] = cmp.
mapping.
complete(), 835:        ['<C-e>'] = cmp.
mapping.
close(), 836:        ['<CR>'] = cmp.
mapping.
confirm(  select = true  ), 837:  -- .
.
. 
837:++++ Your other mappings .
.
.
@??? 838:  ["<Tab>"] = cmp.
mapping(function(fallback)  839:        if vim.
fn["vsnip#expandable"]() == 1 840:          then 841:          feedkey("<Plug>(vsnip-expand)", "") 842:       elseif cmp.
visible() then 843:          cmp.
select next item() 844:        elseif has words before() then  845:          cmp.
complete() 846:        else  847:          fallback() -- The fallback function sends a already mapped key. 
847:++++ In this case, it's probably `<Tab>`.
@??? 848:        end 849:      end,   "i", "s"  ), 850:  ["<S-Tab>"] = cmp.
mapping(function() 851:        if vim.
fn.
pumvisible() == 1 then 852:          feedkey("<C-p>", "n")   853:        elseif vim.
fn["vsnip#jumpable"](-1) == 1 then 854:          feedkey("<Plug>(vsnip-jump-prev)", "") 855:        end 856:      end,   "i", "s"  ), 857:  -- .
.
. 
857:++++ Your other mappings .
.
.
@??? 858:   859:   , 860:  requires =   861:        862:        'quangnguyen30192/cmp-nvim-tags', 863:        -- if you want the sources is available for some file types 864:        ft =   865:          'tex', 866:          'latex'  867:          868:        869:       , 870:  -- .
.
. 
870:++++ Your other configuration .
.
.
@??? 871:  sources =   872:        -- For vsnip user.
@??? 873:    name = 'tags', keyword length = 1000  , 874:     name = 'vsnip', keyword length = 1000  , 875:           -- For luasnip user.
@??? 876:        --   name = 'luasnip'  , 877:  -- For ultisnips user.
@??? 878:        --   name = 'ultisnips'  ,   879:       name = 'buffer', keyword length = 1000  , 880:       name = 'omni', keyword length = 4 , 881:         --   name = 'spell'  ,  882:       name = 'nvim lsp', keyword length = 4  , 883:        --  name = 'treesitter', keyword length = 4  , 884:  --  name = 'latex symbols'  , 885:   , 886:  completion =   887:      autocomplete = false  888:        889:    890:  EOF 891:   892:  "  893:  " " LSP mappings    894:  " "" LSP mappings  895:  noremap <leader>ca  :lua vim.
lsp.
buf.
code action()<CR> 896:  noremap <leader>la  :lua vim.
lsp.
buf.
code action()<CR> 897:  "  898:  "  899:  lua <<EOF 900:   require('nvim comment').
setup( 901:    902:     -- Linters prefer comment and line to have a space in between markers 903:     marker padding = true, 904:     -- should comment out empty or whitespace only lines 905:     comment empty = true, 906:     -- Should key mappings be created 907:     create mappings = true, 908:     -- Normal mode mapping left hand side 909:     line mapping = "gc", 910:     -- Visual/Operator mapping left hand side 911:     operator mapping = "<leader>c", 912:     -- Hook function to call before commenting takes place 913:     --hook = nil  914:     915:   ) 916:  EOF 917:  nmap <leader>c gc 918:  lua <<EOF 919:  local true zen = require("true-zen") 920:  true zen.
setup(  921:   	ui =   922:   		bottom =   923:   			laststatus = 0, 924:   			ruler = false, 925:   			showmode = false, 926:   			showcmd = false, 927:   			cmdheight = 1, 928:   		 , 929:   		top =   930:   			showtabline = 0, 931:   		 , 932:   		left =   933:   			number = false, 934:   			relativenumber = false, 935:   			signcolumn = "no", 936:   		 , 937:   	 , 938:   	modes =   939:   		ataraxis =   940:   			-- left padding = 20, 941:   			-- right padding = 20, 942:   			top padding = 0, 943:   			bottom padding = 0, 944:   			ideal writing area width =  60 , 945:   			auto padding = true, 946:   			keep default fold fillchars = true, 947:   			custom bg =  "none", "" , 948:   			bg configuration = true, 949:   			quit = "untoggle", 950:   			ignore floating windows = true, 951:   			affected higroups =   952:   				NonText = true, 953:   				FoldColumn = true, 954:   				ColorColumn = true, 955:   				VertSplit = true, 956:   				StatusLine = true, 957:   				StatusLineNC = true, 958:   				SignColumn = true, 959:   			 , 960:   		 , 961:   		focus =   962:   			margin of error = 5, 963:   			focus method = "experimental" 964:   		 , 965:   	 , 966:   	integrations =   967:   		vim gitgutter = false, 968:   		galaxyline = false, 969:   		tmux = false, 970:   		gitsigns = false, 971:   		nvim bufferline = false, 972:   		limelight = false, 973:   		twilight = false, 974:   		vim airline = false, 975:   		vim powerline = false, 976:   		vim signify = false, 977:   		express line = false, 978:   		lualine = false, 979:   		lightline = false, 980:   		feline = false, 981:   	 , 982:   	misc =   983:   		on off commands = true, 984:   		ui elements commands = false, 985:   		cursor by mode = false, 986:   	  987:    ) 988:  EOF 989:  lua <<EOF 990:  require('feline').
setup(  991:      preset = 'noicon' 992:       ) 993:  EOF 994:  "  995:  "  996:  "  997:  " " lua <<EOF 998:  " " require('lualine').
setup  999:  " " options =  disabled filetypes =  'txt', 'text'   1000:  " "   1001:  " " EOF 1002:  " " lua << EOF 1003:  " "   require("zen-mode").
setup   1004:  " "   window =   1005:  " "     backdrop = 1, -- shade the backdrop of the Zen window. 
1005:++++ Set to 1 to keep the same as Normal 1006:  " "     -- height and width can be: 1007:  " "     -- * an absolute number of cells when > 1 1008:  " "     -- * a percentage of the width / height of the editor when <= 1 1009:  " "     -- * a function that returns the width or the height 1010:  " "     width = .
66, -- width of the Zen window 1011:  " "     height = 1, -- height of the Zen window 1012:  " "     -- by default, no options are changed for the Zen window 1013:  " "     -- uncomment any of the options below, or add other vim.
wo options you want to apply 1014:  " "     options =   1015:  " "       -- signcolumn = "no", -- disable signcolumn 1016:  " "       -- number = false, -- disable number column 1017:  " "       -- relativenumber = false, -- disable relative numbers 1018:  " "       -- cursorline = false, -- disable cursorline 1019:  " "       -- cursorcolumn = false, -- disable cursor column 1020:  " "       -- foldcolumn = "0", -- disable fold column 1021:  " "       -- list = false, -- disable whitespace characters 1022:  " "      , 1023:  " "    , 1024:  " "   plugins =   1025:  " "     -- disable some global vim options (vim.
o.
.
.
) 1026:  " "     -- comment the lines to not apply the options 1027:  " "     options =   1028:  " "       enabled = true, 1029:  " "       ruler = false, -- disables the ruler text in the cmd line area 1030:  " "       showcmd = false, -- disables the command in the last line of the screen 1031:  " "      , 1032:  " "     twilight =   enabled = false  , -- enable to start Twilight when zen mode opens 1033:  " "     gitsigns =   enabled = false  , -- disables git signs 1034:  " "     tmux =   enabled = false  , -- disables the tmux statusline 1035:  " "     -- this will change the font size on kitty when in zen mode 1036:  " "     -- to make this work, you need to set the following kitty options: 1037:  " "     -- - allow remote control socket-only 1038:  " "     -- - listen on unix:/tmp/kitty 1039:  " "     kitty =   1040:  " "       enabled = false, 1041:  " "       font = "+4", -- font size increment 1042:  " "      , 1043:  " "    , 1044:  " "   -- callback where you can add custom code when the Zen window opens 1045:  " "   on open = function(win) 1046:  " "   end, 1047:  " "   -- callback where you can add custom code when the Zen window closes 1048:  " "   on close = function() 1049:  " "   end, 1050:  " "   1051:  " " EOF 1052:  lua <<EOF 1053:  require('telescope').
setup  1054:    defaults =   1055:      -- Default configuration for telescope goes here: 1056:      -- config key = value, 1057:      mappings =   1058:        i =   1059:          -- map actions.
which key to <C-h> (default: <C-/>) 1060:          -- actions.
which key shows the mappings for your picker, 1061:          -- e.
g. 
1061:++++ git  create, delete, .
.
.  
branch for the git branches picker 1062:          ["<C-h>"] = "which key" 1063:          1064:        1065:     , 1066:    pickers =   1067:      -- Default configuration for builtin pickers goes here: 1068:      -- picker name =   1069:      --   picker config key = value, 1070:      --   .
.
.
@??? 1071:      --   1072:      -- Now the picker config key will be applied every time you call this 1073:      -- builtin picker  1074:     , 1075:    extensions =   1076:      -- Your extension configuration goes here: 1077:      -- extension name =   1078:      --   extension config key = value, 1079:      --   1080:      -- please take a look at the readme of the extension you want to configure 1081:      1082:     1083:  EOF 1084:  lua require'hop'.
setup   keys = 'etovxqpdygfblzhckisuran', term seq bias = 0.
5    1085:  lua <<EOF 1086:  require('fm-nvim').
setup  1087:  	config = 1088:  	  1089:  		edit cmd = "edit", -- opts: 'tabedit'; 'split'; 'pedit'; etc.
.
.
@??? 1090:  		border   = "single", -- opts: 'rounded'; 'double'; 'single'; 'solid'; 'shawdow' 1091:  		height   = .
9, 1092:  		width    = .
9, 1093:  	  1094:    1095:  EOF 1096:   1097:  " lua <<EOF 1098:  " require("telescope").
load extension("prosesitter") -- Optionally, depends on telescope.
nvim 1099:  " require("prosesitter"):setup(  1100:  " 	vale bin = vim.
fn.
stdpath("data") .
. 
1100:++++ "/prosesitter/vale", 1101:  " 	vale cfg = vim.
fn.
stdpath("data") .
. 
1101:++++ "/prosesitter/vale cfg.
ini", 1102:  " 	--optional extra queries overrides existing queries 1103:  " 	queries =    1104:  " 		-- see the piece on adding queries on how to use this  1105:  " 		-- (not needed if using an out of the box supported language 1106:  " 		py =    1107:  " 			strings = "[(string) ] @capture", 1108:  " 			comments = "[(comment)+ ] @capture", 1109:  " 		 , 1110:  " 	 ,  1111:  " 	-- highlight groups to use for lint errors, warnings and suggestions 1112:  " 	--" severity to hl =   error = "SpellBad", warning = "SpellRare", suggestion: "SpellCap"  , 1113:  " 	-- weather to lint strings, comments or both for a language 1114:  " 	lint targets =   py = "both", tex = "strings", sh = "comments"  ,  1115:  " 	disabled ext =   "tex"  , -- do not ever lint tex files 1116:  " 	auto enable = false, -- do not start linting files on open (default = true) 1117:  " 	default cmds = false,  -- do not add commands (default = true) 1118:  "  ) 1119:  " EOF 1120:  lua <<EOF 1121:  require('spellsitter').
setup   1122:    hl = 'SpellBad',  1123:    captures =   ,  -- set to    to spellcheck everything 1124:   1125:    -- Spellchecker to use. 
1125:++++ values: 1126:    -- * vimfn: built-in spell checker using vim.
fn.
spellbadword() 1127:    -- * ffi: built-in spell checker using the FFI to access the 1128:    --   internal spell check() function 1129:  spellchecker = 'vimfn', 1130:    1131:  EOF 1132:  let g:firenvim config =    1133:        'globalSettings':   1134:            'alt': 'all', 1135:          , 1136:        'localSettings':   1137:            '.
*':   1138:                'cmdline': 'neovim', 1139:                'content': 'text', 1140:                'priority': 0, 1141:                'selector': 'textarea', 1142:                'takeover': 'never', 1143:             , 1144:          1145:      1146:  lua << EOF 1147:  require('fzf-lua').
setup  1148:  -- .
.
.
@??? 1149:    1150:  EOF 1151:   1152:  " lua << EOF 1153:  " require("stabilize").
setup( 1154:  "   1155:  "       force = true, -- stabilize window even when current cursor position will be hidden behind new window 1156:  " 	forcemark = nil -- set context mark to register on force event which can be jumped to with '<forcemark> 1157:  " 	--ignore =    -- do not manage windows matching these file/buftypes 1158:  " --		filetype =   "help", "list", "Trouble"  , 1159:  " --		buftype =   "terminal", "quickfix", -- "loclist"   1160:  " --	  1161:  "   1162:  " ) 1163:  " EOF 1164:  " lua <<EOF 1165:  " require('dd').
setup() 1166:  " EOF 1167:  " lua << EOF 1168:  " local opts =   1169:  "   log level = 'info', 1170:  "   auto session enable last session = false, 1171:  "   auto session root dir = vim.
fn.
stdpath('data').
.
"/sessions/", 1172:  "   auto session enabled = false, 1173:  "   auto save enabled = nil, 1174:  "   auto restore enabled = nil, 1175:  "   auto session suppress dirs = nil 1176:  "   1177:  " require('auto-session').
setup(opts) 1178:  " EOF 1179:   1180:  " lua << EOF 1181:  " if exists('g:started by firenvim') 1182:  "   ZenMode 1183:  " else 1184:  "   set laststatus=2 1185:  " endif 1186:   1187:  " lua <<EOF 1188:  " require('neoclip').
setup(  1189:  "       history = 1000, 1190:  "       enable persistant history = false, 1191:  "       db path = vim.
fn.
stdpath("data") .
. 
1191:++++ "/databases/neoclip.
sqlite3", 1192:  "       filter = nil, 1193:  "       preview = true, 1194:  "       default register = '"', 1195:  "       content spec column = false, 1196:  "       on paste =   1197:  "         set reg = false, 1198:  "        , 1199:  "       keys =   1200:  "         i =   1201:  "           select = '<cr>', 1202:  "           paste = '<c-p>', 1203:  "           paste behind = '<c-k>', 1204:  "           custom =   , 1205:  "          , 1206:  "         n =   1207:  "           select = '<cr>', 1208:  "           paste = 'p', 1209:  "           paste behind = 'P', 1210:  "           custom =   , 1211:  "          , 1212:  "        , 1213:  "     ) 1214:  " EOF 1215:  " lua <<EOF 1216:  " local saga = require 'lspsaga'  1217:  " saga.
init lsp saga()  1218:  "   1219:  " EOF 1220:   1221:  "au FileType tex autocmd User SneakLeave set syntax=tex 1222:  "au FileType tex autocmd User SneakEnter set syntax=text 1223:  " 1224:  " 1225:  " 1226:   1227:  " 1228:  " 'tCommen20 1229:  " let g:tcommentMapLeaderOp1=';'  1230:  " "map <leader>c <Leader>    1231:  "" function! RestoreRegister() 1232:  "   let @" = s:restore reg 1233:  "   return '' 1234:  " endfunction 1235:  " function! s:Repl() 1236:  "     let s:restore reg = @" 1237:  "     return "p@=RestoreRegister() <cr>" 1238:  " endfunction 1239:  " 1240:  " " NB: this supports "rp that replaces the selection by the contents of @r 1241:  " vnoremap <silent> <expr> p <sid>Repl() 1242:   1243:  " " Change Color when entering 1244:  " Insert Mode augroup CursorLine 1245:  "    au! 1246:  "  if has("gui running") 1247:  "  else 1248:  "      au InsertEnter * setlocal cursorline 1249:  "        au InsertLeave * setlocal nocursorline 1250:  "     endif 1251:  "        augroup END 1252:  " function! DelTagOfFile(file) 1253:  "   let fullpath = a:file 1254:  "   let cwd = getcwd() 1255:  "   let tagfilename = cwd . 
1255:++++ "/tags" 1256:  "   let f = substitute(fullpath, cwd . 
1256:++++ "/", "", "") 1257:  "   let f = escape(f, '.
/') 1258:  "   let cmd = 'sed -i "/' . 
1258:++++ f . 
1258:++++ '/d" "' . 
1258:++++ tagfilename . 
1258:++++ '"' 1259:  "   let resp = system(cmd) 1260:  " endfunction 1261:  " function! Break() 1262:  "  let n=130-virtcol('.
') 1263:  "  <Esc>ni <Esc><Esc> 1264:  " endfunction 1265:  " function Gitview() 1266:  "    cd /root/web2 ; git add . 
1266:++++ ; git commit -m -a ; git push origin gh-pages 1267:  " endfunction 1268:  " fuzzy search 1269:  " function! s:config fuzzyall(.
.
.
) abort 1270:  "   return extend(copy(  1271:  "       'converters': [ 1272:  "         incsearch#config#fuzzy#converter(), 1273:  "         incsearch#config#fuzzyspell#converter() 1274:  "       ], 1275:  "      ), get(a:, 1,    1276:  "   )) 1277:  " endfunction 1278:  " noremap <silent><expr> f incsearch#go(<SID>config fuzzyall()) 1279:  " noremap <silent><expr> F  incsearch#go(<SID>config fuzzyall( 'command': '?' )) 1280:  " noremap <silent><expr> gF incsearch#go(<SID>config fuzzyall( 'is stay': 1 )) 1281:  " map f <Plug>(incsearch-fuzzyspell-/) 1282:  " map F <Plug>(incsearch-fuzzyspell-?) 1283:  " map gF <Plug>(incsearch-fuzzyspell-stay) 1284:  " map <silent> <leader>g :silent !cd /root/web2<CR>:silent !git add .
<CR>:silent !git commit -m -a<CR>:silent !git push origin gh-pages<CR> 1285:  " let g:deoplete#enable at startup = 1 1286:  " map <silent> <leader>g :silent call Gitview() 1287:  " map <silent> <leader>g :silent !cd /root/web2 ; git add .
<CR>:silent git commit -m -a ; silent !git push origin gh-pages<CR> This is how I use PDFViewer with Neovim and LaTexBox.
@??? 1288:  "Load some useful plugins with vundle  1289:  " 1290:  "asdf asldfkj 1291:  " hi! link Sneak Normal 1292:  " hi! link SneakScope Normal   test test2 test3 1293:   1294:  " command! -bang -nargs=* Rg 1295:  "     call fzf#vim#grep( 1296:  "     "rg --column --line-number --no-heading --color=always --smart-case " .
@??? 1297:  "     <q-args>, 1, fzf#vim#with preview(), <bang>0) 1298:  " 1299:  "" au GUIEnter * set fullscreen 1300:  " if has("gui running") 1301:    " set fuoptions=maxvert,maxhorz 1302:    " au GUIEnter * set fullscreen 1303:     " set foldcolumn=10 1304:     " set formatoptions=ant 1305:  " set wrapmargin=0 1306:  " set nohlsearch 1307:  " set tags= ~/workspacemodules/tags 1308:  " highlight SignColumn guibg=bg 1309:  "       endif     1310:  " if has("autocmd") 1311:  "   au BufReadPost * if line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g' "" | endif 1312:  " endif 1313:    " autocmd BufWinLeave *.
* mkview 1314:    " autocmd BufWinEnter *.
* silent loadview 1315:     " set foldcolumn=2 1316:  "  highlight foldcolumn ctermfg=256 ctermbg=bg 1317:  " autocmd Colorscheme * highlight FoldColumn guifg=black guibg=bg  1318:  " inoremap <cr> <esc>:w<cr>i<cr>  1319:  "" set tm=500 1320:  " set macmeta 1321:  " auto reload vimrc when editing it 1322:  " let g:github function style = "italic" 1323:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1324:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1325:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1326:  " Load the colorscheme 1327:  " colorscheme github dark 1328:  "" terminal color settings  1329:  " Example config in VimScript 1330:  " let g:github function style = "italic" 1331:  " let g:github sidebars = ["qf", "vista kind", "terminal", "vimplug"] 1332:   1333:  " Change the "hint" color to the "orange" color, and make the "error" color bright red 1334:  " let g:github colors = [hint = "orange", error = "#ff0000"] 1335:  " Load the colorscheme 1336:  " colorscheme github dark  1337:  " set background=dark  1338:  " if has("gui running")	" GUI color and font settings 1339:  "   set guifont=Fira  Code:h22 1340:  "   " colorscheme gruvbox  1341:  "   highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none 1342:  " else 1343:  "  colorscheme one 1344:  " colorscheme material   1345:  " let g:material style = 'palenight'   1346:  " let g:material style = 'lighter' 1347:  " highlight Normal ctermbg=none  1348:  "   " let g:vimtex quickfix method='pplatex'  1349:  " let g:vimtex latexmk callback hooks = ['UpdateSkim'] 1350:  "    function! UpdateSkim(status) 1351:  "      if !a:status | return | endif 1352:  " 1353:  "      let l:out = b:vimtex.
out() 1354:  "      let l:tex = expand(' :p') 1355:  "      let l:cmd = [g:vimtex view general viewer, '-r'] 1356:  "      if !empty(system('pgrep Skim')) 1357:  "        call extend(l:cmd, ['-g']) 1358:  "      endif 1359:  "      if has('nvim') 1360:  "        call jobstart(l:cmd + [line('.
'), l:out, l:tex]) 1361:  "      elseif has('job') 1362:  "        call job start(l:cmd + [line('.
'), l:out, l:tex]) 1363:  "      else 1364:  "        call system(join(l:cmd + [line('.
'), shellescape(l:out), shellescape(l:tex)], ' ')) 1365:  "      endif 1366:  "    endfunction 1367:  " let g:vimtex latexmk build dir = '.
/build' 1368:  "   'build dir' : '.
/build', 1369:  "  1370:  "     let g:vimtex compiler latexmk =   1371:  "       'background' : 0, 1372:  "           'callback' : 1, 1373:  "       'continuous' : 1, 1374:  "       'options' : [ 1375:  "         '-pdf', 1376:  "         '-verbose', 1377:  "         '-file-line-error', 1378:  "         '-synctex=1', 1379:  "         '-interaction=nonstopmode', 1380:  "       ], 1381:  "        1382:  " let g:vimtex compiler progname = 'nvr' 1383:  " " nmap  <leader>v <Esc>:w<CR>:VimtexView<CR> 1384:  " let g:vimtex quickfix mode = 1 1385:  " let g:vimtex fold enabled = 0 1386:  " let g:vimtex fold manual = 1 1387:   1388:   1389:  " let g:vimtex fold types=   1390:  "             'preamble' :   , 1391:  "             'comments' :  'enabled' : 1 , 1392:  "             'markers' :   , 1393:  "             'sections' :   1394:  "               'parse levels' : 0, 1395:  "               'sections' : [       1396:  "                 ' (add)?part', 1397:  "                 ' (chapter|addchap)', 1398:  "                 ' (section|addsec)', 1399:  "                 'subsection', 1400:  "                 'subsubsection', 1401:  "               ], 1402:  "               'parts' : [          1403:  "                 'appendix', 1404:  "                 'frontmatter', 1405:  "                 'mainmatter', 1406:  "                 'backmatter', 1407:  "               ], 1408:  "              , 1409:  "              1410:   1411:  "  TermClose * if v:event == 12 || v:event == 0 bdelete endif 1412:  " lua <<EOF 1413:  " require'nvim-treesitter.
configs'.
setup   1414:  "   incremental selection =   1415:  "     enable = true, 1416:  "     keymaps =   1417:  "       init selection = "gnn", 1418:  "       node incremental = "grn", 1419:  "       scope incremental = "grc", 1420:  "       node decremental = "grm", 1421:  "      , 1422:  "    , 1423:  "   1424:  " EOF 1425:  " lua <<EOF 1426:  " require('neoscroll').
setup  1427:  "     -- All these keys will be mapped to their corresponding default scrolling animation 1428:  "     mappings =  '<C-u>', '<C-d>', '<C-b>', '<C-f>', 1429:  "                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb' , 1430:  "     hide cursor = true,          -- Hide cursor while scrolling 1431:  "     stop eof = true,             -- Stop at <EOF> when scrolling downwards 1432:  "     use local scrolloff = false, -- Use the local scope of scrolloff instead of the global scope 1433:  "     respect scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file 1434:  "     cursor scrolls alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further 1435:  "     easing function = nil,        -- Default easing function 1436:  "     pre hook = nil,              -- Function to run before the scrolling animation starts 1437:  "     post hook = nil,              -- Function to run after the scrolling animation ends 1438:  "       1439:  " EOF 1440:  "  1441:  " " set foldlevel=20 1442:  " " set foldmethod=expr 1443:  " " set foldexpr=nvim treesitter#foldexpr() 1444:  " inoremap .
<Esc> .
<CR><Esc><leader>j 1445:  " inoremap .
<Space> .
<CR><Esc><leader>j 1446:  " noremap S :S  1447:  " 1448:  " 1449:  " function! Sneak() 1450:  "     hi! link Sneak Normal 1451:  "     hi! link SneakScope Normal 1452:  "     execute 'normal!  <Plug>Sneak s' 1453:  "     syntax on 1454:  " endfunction 1455:    1456:  " map N <Plug>Sneak , 1457:  " map t <Plug>(smalls-excursion) 1458:  " let g:smalls auto jump=1 1459:  " let g:smalls auto jump timeout=0 1460:   1461:   1462:      " xmap t <Plug>Sneak s 1463:      " xmap T <Plug>Sneak S 1464:     " omap t <Plug>Sneak s 1465:      " omap T <Plug>Sneak S  1466:      " math maps    1467:  autocmd BufWritePost *  call Git() 1468:  "  1469:  " silent execute 'AsyncRun if git rev-parse --is-inside-work-tree || git rev-parse --git-dir > /dev/null 2>&1 ; then git add   ; git commit -m -a ; git push --all origin; fi' 1470:  " let g:vimtex view general options = '-r @line @pdf @ 1471:  """ pandoc backup -s html -o markdown cp backup.
html  <cr>:e  <cr>:w<cr>:qa<cr>  1472:   1473:  " <cr> 1474:  " ; pandoc backup.
html > backup.
md; cp backup.
md  <cr>:e  <cr> 1475:   1476:  " NB: this supports "rp that replaces the selection by the contents of @r 1477:  " Auto updating Ctags 1478:  " autocmd VimLeave * exe ":silent ! ctags -R" 1479:   1480:  "Nerd Tree 1481:  " map <leader>e :NERDTreeFind<CR> 1482:  " map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR> 1483:  " 1484:  "" lua << EOF 1485:  " local function setup servers() 1486:  "   require'lspinstall'.
setup() 1487:  "   local servers = require'lspinstall'.
installed servers() 1488:  "   for  , server in pairs(servers) do 1489:  "     require'lspconfig'[server].
setup capabilities = require('cmp nvim lsp').
update capabilities(vim.
lsp.
protocol.
make client capabilities())  1490:  "   end 1491:  " end 1492:  "  1493:  " setup servers() 1494:  "  1495:  " -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim 1496:  " require'lspinstall'.
post install hook = function () 1497:  "   setup servers() -- reload installed servers 1498:  "   vim.
cmd("bufdo e") -- this triggers the FileType autocmd that starts the server 1499:  " end 1500:  " EOF 1501:  " autocmd BufReadPost * if @  !~# ' .
git[ /  ]COMMIT EDITMSG ' && line("' "") > 1 && line("' "") <= line(" ") | exe "normal! g` "" | endif  1502:   