local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
'nvim-telescope/telescope-fzf-native.nvim',
'folke/todo-comments.nvim', 
'L3MON4D3/LuaSnip', 
'saadparwaiz1/cmp_luasnip',
'nvim-treesitter/playground', 
'LhKipp/nvim-nu', 
'lukas-reineke/indent-blankline.nvim', 
'folke/which-key.nvim', 
'ggandor/leap.nvim', 
'kyazdani42/nvim-web-devicons', 
{'glacambre/firenvim', build = ":call firenvim#install(0)" }, 
'neovim/nvim-lspconfig',
'williamboman/mason.nvim', 
'williamboman/mason-lspconfig.nvim', 
'hrsh7th/nvim-cmp', 
'hrsh7th/cmp-buffer', 
'hrsh7th/cmp-nvim-lsp', 
'quangnguyen30192/cmp-nvim-tags', 
'terrortylor/nvim-comment', 
'nvim-lualine/lualine.nvim', 
'justinhoward/fzf-neoyank', 
'folke/tokyonight.nvim', 
'ellisonleao/gruvbox.nvim', 
{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
'Shougo/neoyank.vim', 'Shougo/denite.nvim', 
{'junegunn/fzf', build = ":call fzf#install()" }, 
'junegunn/fzf.vim',
{'mbbill/undotree'}, 
'kevinhwang91/nvim-bqf', 
'nvim-lua/plenary.nvim', 
'nvim-telescope/telescope.nvim', 
'mg979/vim-visual-multi', 
'tpope/vim-surround',
})
--require('keymaps')
require('settings')
require('functions')
require('set')
require('au')

vim.cmd [[
function! OnUIEnter(event)
	let l:ui = nvim_get_chan_info(a:event.chan)
	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
		if l:ui.client.name ==# 'Firenvim'
			set guifont=Fira\ Code:h20
                        set lines=100
                        set columns=100
                        noremap q <esc>:wq<cr>
		endif
	endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

"remember cursor location
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"maps remaps mappings  

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv
nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h
tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
tnoremap <A-`> <C-\><C-n>
tnoremap <A-Esc> <C-\><C-n>
nmap <A-S-t> :te<cr>
" other mappings 
noremap <leader>r :up<cr>:e<cr> 
" inoremap . .<esc>:up<cr>a

nnoremap q :q<cr>
nnoremap <leader>q q
nmap <m-7> :ZenMode<cr>:mksession!<cr>
nnoremap <leader>u <cr>:UndotreeToggle<CR>
noremap <leader>c :'<,'>CommentToggle<cr>

" commands
command Tw50 set tw=50
command Tw0 set tw=0
command! SEND silent call Send()
command! ES set spelllang=es
command! FR set spelllang=fr
command! PT set spelllang=pt

" cmap ES set spelllang=es<cr>
command! EN set spelllang=en_us
command! Ser lua Server()
" LSP
command! LT LspStart ltex
command! LTo LspStop ltex

nnoremap <leader>f :up<cr>:lua Server()<cr>:te lf<cr>i
nnoremap <leader>lg :up<cr>:lua Server()<cr>:te lazygit<cr>i
" nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://nu<cr><cr>
nnoremap <c-,> :cprevious<cr>
nnoremap <c-.> :cnext<cr> 
inoremap <m-h> <left>
inoremap <m-l> <right>
" vnoremap <m-s> :s///gc<left><left><left><left>
" inoremap <m-s> <esc>:%s///gc<left><left><left><left>
" nnoremap <m-s> :%s///gc<left><left><left><left> 
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
nnoremap <up> 1<C-U>
nnoremap <m-g> gqip
" imap <up> <nop>
nnoremap <down> 1<C-D>
" imap <down> <nop>
noremap <ScrollWheelUp>      <nop>
noremap <S-ScrollWheelUp>    <nop>
noremap <C-ScrollWheelUp>    <nop>
noremap <ScrollWheelDown>    <nop>
noremap <S-ScrollWheelDown>  <nop>
noremap <C-ScrollWheelDown>  <nop>
noremap <ScrollWheelLeft>    <nop>
noremap <S-ScrollWheelLeft>  <nop>
noremap <C-ScrollWheelLeft>  <nop>
noremap <ScrollWheelRight>   <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>
noremap! <LeftDrag> <nop>
noremap! <RightDrag> <nop>
noremap! <LeftDrag> <nop>
inoremap \ /
inoremap / \

" Movement
inoremap <m-d> <C-w>
" noremap W /\$<CR>
" noremap B ?\$<CR>
noremap gwm /\$<CR>
noremap gbm ?\$<CR>
noremap gwo /(\\|)<CR>
noremap gbo /(\\|)<CR>
noremap gwb /{\\|}<CR>
noremap gbb ?{\\|}<CR>
noremap gww /{\\|}<CR>
noremap gbw ?{\\|}<CR>
noremap gwc /[\\|]<CR>
noremap gbc ?[\\|]<CR>


" copy paste stuff
" 
vnoremap p "_dP
cmap <m-p> <c-r>+
noremap <m-p> <c-r>+
inoremap <m-p> <c-r>+
noremap d "0d
nnoremap cg "0cgn
nnoremap dd "0dd
noremap c "0c
noremap s "0s
noremap C "0C
noremap x "0x

vnoremap x "+x
vnoremap d "0d
vnoremap c "0c
vnoremap y "+y
vnoremap <C-y> y
nnoremap y "+y
nnoremap p "+p
nnoremap <C-p> "0p

nnoremap <leader>q q
" map cr
inoremap <cr> <esc>$a<cr><space><esc>"_s
inoremap <m-cr> <cr><space><esc>"_s

nnoremap D "0dg$
nnoremap V vg$
noremap X Vg$x
nnoremap A g$a
noremap H g^
noremap L g$
nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
nnoremap <c-l> :bnext<CR>
nnoremap <c-h> :bprevious<CR>
imap <M-j> <C-j>
map q: nop
map <S-C-q> <Esc>:qa!<CR>
map <m-q> <esc>:wq<cr>
map <m-Q> <esc>:q<cr>
map <m-c> :close<cr>
map <m-d> <Esc>:up<CR>:bdelete<CR>
map <m-D> :bdelete!<CR>
noremap gf gq
nmap f /
nmap gv \\/
vmap s \\/
" vim-multiple-\cursors
nnoremap <m-n> <c-n>

" vnoremap f /\%V\%V<left><left><left>
noremap F ?
noremap gfm /\$<CR>v?\$<CR>
noremap gm /\$<CR>hv?\$<CR>l
noremap gwb /}<CR>hv?{<CR>l
noremap gsb /]<CR>hv?[<CR>l
noremap gob /)<CR>hv?(<CR>l
map j gj
map k gk
noremap <Space> .
vnoremap <Space> t <cr>
map K <C-u>
map J <C-d>
map <C-j> <C-e>jj
map <C-k> <C-y>kk
nnoremap <leader>j J
nnoremap <leader>k K
map ' "
nnoremap <Backspace> i<Backspace><Esc>
noremap <A-r> <C-r>
nnoremap ` ~
nnoremap . `
noremap <m-1> <C-o>
noremap <m-2> <C-i>
inoremap <m-d> <C-d>
noremap ;w <Esc>:up<CR>
noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <Leader>y :YRGetElem<CR>
map ' "
inoremap <D-]> <C-x><C-]>
inoremap <C-]> <C-x><C-]>

" FZF 
" function! s:mybuild_quickfix_list(lines)
  " call feedkeys('\<esc>')
  " lua  Feedkey('<esc><m-c>')
  " call setloclist(1000, map(copy(a:lines), '{ "filename": v:val }'))
" endfunction
" function! s:myquick()
"    lua Feedkey('<c-a>')
"    lua Feedkey('<c-q>')
"    lua Feedkey('<m-c>')
" endfunction
 " let g:fzf_action = {
 "   \ 'ctrl-q': function('s:mybuild_quickfix_list'),
 "   \ 'ctrl-t': 'tab split',
 "   \ 'ctrl-x': 'split',
 "   \ 'ctrl-m': function('s:mybuild_quickfix_list') }
nnoremap <m-t> :up<cr>:BTags<cr>
" function! Jumpback() 
"   K=bufname()
"   normal viwhy<esc>:bdelete<cr>:buffer K<c-r>+<cr>:ZenMode<cr>
" endfunction
" 
" nnoremap <m-b> :Buffers<cr>
nnoremap <m-b> :lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9}})<cr>
nnoremap <m-i> :lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9}})<cr>
nnoremap <m-u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
map <m-f> :FZF ~<CR> 
nnoremap <leader>gs :up<cr>:source $MYVIMRC<cr> 
nnoremap <c-e> viwy:cclose<cr>:<c-r>+<cr><cr>
nnoremap <c-p> :<c-r>+<cr>
nnoremap <m-l> viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr><cr>
nnoremap <leader>c :gc

" FZF Neoyank yank 

nnoremap <leader>y :FZFNeoyank<cr>
nnoremap <leader>Y :FZFNeoyank  P<cr>
vnoremap <leader>y :FZFNeoyankSelection<cr>
nnoremap <leader>p :FZFNeoyank + p<cr> 
nnoremap <leader>P :FZFNeoyank + P<cr>
nnoremap <leader>0p :FZFNeoyank 0 p<cr>
vnoremap <leader>p :FZFNeoyankSelection +<cr>

" Latex maps
nmap <leader>v :silent call ViewPdf()<cr><cr>
map <m-v> <esc>:silent call ViewPdf()<cr><cr>
nmap <leader>ll :silent call CompileLatex()<cr>
nmap <leader>lcl :silent call ClearLatex()<cr>
nmap gtd :TodoQuickFix<cr>
nmap <leader>ga :TZAtaraxis<CR>
nmap <leader>gm :up<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>

" Lsp mappings
nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
noremap ga  :lua vim.lsp.buf.code_action()<CR>
noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
nmap <leader>c gc

"Leap
map t <Plug>(leap-forward)
map T <Plug>(leap-backward)
" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')  

""other maps
inoremap <cr> <cr><space><esc>"_s
nnoremap o o<space><esc>"_s
nnoremap <C-c> :set hlsearch!<cr>
vnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr><cr>
inoremap <m-d> <C-w>

" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
inoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
nnoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
inoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>
nnoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>
" For changing choices in choiceNodes (not strictly necessary for a basic setup). 
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

"Functions 

function Bluemoon()
   set background=dark
   colorscheme blue-moon
   " colorscheme material  
endfunction

function Deepocean()
   set background=dark
   colorscheme material  
   let g:material_style = 'deep ocean'  
endfunction

function Palenight()
   set background=dark
   " colorscheme blue-moon
   colorscheme material  
   let g:material_style = 'palenight'  
endfunction
function Light()
   colorscheme gruvbox 
   set background=light
endfunction
function Lighter()
   " colorscheme blue-moon
   colorscheme tokyonight-day
endfunction

function Dark()
   set background=dark
   colorscheme tokyonight-moon
endfunction

function! Profile()
profile start profile.log
profile func *
profile file *
endfunction

command! -bang -nargs=* BLinesB
    \ call fzf#vim#grep(
    \   'rg --with-filename --line-number --no-heading --smart-case . '.fnameescape(expand('%')),1,
    \   fzf#vim#with_preview({'options': '--keep-right --layout reverse --query '.shellescape(<q-args>).' --preview "bat -p --color always {}"'}, 'up:50%'))

function ToggleQuickFix()
      if empty(filter(getwininfo(), 'v:val.quickfix'))
      exec "up"
        let b:filenamedir=expand('%:p:h')
        echo b:filenamedir
        let b:filename=expand('%:t:r')
        let b:errors=b:filenamedir . "/build/" . b:filename .".log"
        exec "cg" b:errors
        copen
        lua <<EOF
        if vim.w.bqf_enabled then
    local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zffatal', 'im', false)
        end)
    end)
end
EOF
        endif
endfunction 

nnoremap <leader>e :silent call ToggleQuickFix()<CR>
function! ClearLatex()
  silent !rm ./build/* 
endfunction 
function! Send()
  " silent call ClearLatex()
	up
  let b:filenamedir=expand('%:p:h')
  let b:filename=expand('%:t:r')
  let buf=bufname()
  let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf" 
  let execstr="silent te pwsh -c send " . b:pdf
  exec execstr
  silent execute "buffer" buf
  endfunction
function! CompileLatex()
  " silent call ClearLatex()
	up
  let buf=bufname()
  silent te pwsh -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f %
  silent execute "buffer" buf
  call ViewPdf()
  call feedkeys("\<cr>")
endfunction

function! ViewPdf() 
up
let buf=bufname()
lua Server()
let linenumber=line(".")
let colnumber=col(".")
let b:filenamedir=expand('%:p:h')
let filenametex=expand('%:p:t')
let filenametexwhole=expand('%:p')
let filenameroot=expand('%:t:r')
" let filenamePDF=filename[:-4]."pdf" 
let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
let b:filenamePDFWindows="build\\" . filenameroot . ".pdf"
" echo b:filenamePDFWindows
let execstrLinux="silent te zathura --synctex-forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
let execstrWindows="silent te pwsh -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
exec execstrWindows
silent execute "buffer" buf
endfunction
nnoremap <C-p> "0p
]]
