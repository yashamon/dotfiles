local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

vim.keymap.set({'n', 'v'}, '<leader>lr', vim.lsp.buf.references, { buffer=true })
map('t', '<m-p>', [[getreg('+')]], {expr = true})
map({'i','n'}, '<m-t>', function ()  vim.cmd('up')
end, { buffer=true })
map('n','S', Line, {} )
map('n', '<m-s>', Sentence, {})


-- commands
command('Gtd', 'TodoQuickFix', {})
command('Sa', function(file) vim.cmd('saveas ' .. file.args) end, { nargs=1 })
command('Sao', function(file) vim.cmd('saveas! ' .. file.args) end, { nargs=1 })
command('Keymap', "lua require('telescope.builtin').keymaps({layout_strategy='vertical',layout_config={width=0.9}})", {})
command('Cmd', "lua require('telescope.builtin').commands({layout_strategy='vertical',layout_config={width=0.9}})", {})
command('Trim', "lua MiniTrailspace.trim()", {})
command('Ctags', 'te ctags ~/workspacemodules/link.bib', {})

-- FZF Neoyank yank

map('n', '<leader>p', function()vim.cmd('FZFNeoyank + p')  end,{})
map('n', '<leader>P', function()vim.cmd('FZFNeoyank + P') end,{})
map('n', '<leader>0p', function() vim.cmd('FZFNeoyank 0 p') end,{})
map('n', '<leader>h', function() vim.cmd('Telescope yank_history') end,{})
map('v', '<leader>p',  function () vim.cmd('FZFNeoyankSelection +') end, {})


map('n', '<leader>f', function() vim.cmd('up'); Server(); vim.cmd('te lf'); Feedkey('i','i') end, {})
map('n', '<leader>lg', function() vim.cmd('up'); Server(); vim.cmd('te lazygit'); Feedkey('i','i') end, {})
map('n', '<leader>t', function() vim.cmd('up'); Server(); vim.cmd('edit term://nu') end, {})
map('n', '<leader>u', function() vim.cmd('UndotreeToggle') end, {})
-- map('v', '<leader>c', ':CommentToggle<cr>', {})
map({'n', 'v'}, '<leader>c', 'gc', {remap = true})
-- tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
-- nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
map('n', '<c-l>', function() vim.cmd('bnext') end, {})
map('n', '<c-h>', function() vim.cmd('bprevious') end, {})
map('n', '<m-t>', function() vim.cmd('up'); vim.cmd('BTags') end, {})

-- Telescope
map('n', '<m-b>', function() require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}}) end, {})
map('n', '<m-b>', function()  require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9}}) end, {})
map('n', '<m-i>', function() require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9}}) end, {})
map('n', '<m-u>', function() vim.cmd('cg C:/Users/yasha/_vim_mru_files | copen call feedkeys("zf")') end, {})
map('n', '<m-f>', function () vim.cmd('FZF ~') end, {})
map('n', '<leader>gs', function() vim.cmd('up | source $MYVIMRC') end, {})
map({'n', 'v'}, 'q:', '<nop>', {})
map('n', '<C-c>', function() vim.cmd('set hlsearch!') end, {})
map('n', '<leader>e', function() vim.cmd('silent call ToggleQuickFix()') end, {})
map('n', 'g?',  vim.diagnostic.open_float, {})
map('n', 'q',  function() vim.cmd('q') end, {})

--Leap
--
map({'n', 'v'}, 't',  '<Plug>(leap-forward)', {})
map({'n', 'v'}, 'T', '<Plug>(leap-backward)', {})

-- Luasnip
map('i', '<S-Tab>', function ()
require'luasnip'.jump(-1) end, {})
map({'i', 'n', 'v'}, '<m-j>', function ()
require('luasnip').jump(1) end, {})
map({'i', 'n', 'v'}, '<m-k>', function ()
require('luasnip').jump(-1) end, {})
-- map('n', '<m-j>', function() require('luasnip').jump(1) end, {})
-- map('n', '<m-k>', function() require('luasnip').jump(-1) end, {})

-- " Lsp mappings
map('n','<leader>w', function () vim.cmd('up') end, {})
map('n','ga', vim.lsp.buf.code_action, {})
map('n','o', 'o<space><esc>"_s', {})

--quiting
map('n', '<m-q>', function () vim.cmd('wq') end, {})
map('n', '<m-Q>', function () vim.cmd('q') end, {})
map('n', '<m-c>', function () vim.cmd('close') end, {})
map('n', '<c-d>', function () vim.cmd('up | bdelete') end, {})
map('n', '<c-D>', function () vim.cmd('up | bdelete!') end, {})
map('n', '<leader>r', function () vim.cmd('up | e') end, {})


--terminal
map('t', '<A-`>', '<C-\\><C-n>', {remap=true})

-- Latex maps
map('n', '<leader>v', function ()
	vim.fn.ViewPdf()
end)
map({'i', 'n'}, '<m-v>', function ()
	vim.fn.ViewPdf()
end)
map('n', '<leader>ll',  vim.fn.CompileLatex, {})
map('n', '<leader>lcl', vim.fn.ClearLatex, {})

-- map ('i', '<silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
vim.keymap.set ('i', '<cr>', '<cr><space><esc>"_s', {})
vim.keymap.set ('i', '<m-d>',  '<C-w>')
map ('i', '<c-h>',  '<backspace>')
map ('i', '<c-l>', '<right><backspace>')
map ('i', '<m-h>',  '<left>')
map ('i', '<m-l>', '<right>')
map ('i', '\\', '/')
map ('i', '/',  '\\')
map ('i', '<m-d>', '<C-w>')
map ('i', '<m-p>', '<c-r>+')
map ('n', 'gE', 'viwy<leader>e:<c-r>+<cr>', {remap = true})

vim.keymap.set("c", "<cr>", function()
  if vim.fn.pumvisible() == 1 then return '<c-y>' end
  return '<cr>'
  end, { expr = true })
map ('i', '<D-]>', '<C-x><C-]>')
map ('i', '<C-]>', '<C-x><C-]>')
vim.cmd([[
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'	
" Replace  default dictionary completion with fzf-based fuzzy completion
""other maps



" movement


" -1 for jumping backwards.

"nmap <leader>gm :up<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr><cr>

map <S-C-q> <Esc>:qa!<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap <leader>q q
vmap <M-.> t.<CR>h
nmap <M-.> t.<CR>h
nnoremap <m-g> gqip
nnoremap <down> 1<C-D>
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
vnoremap p "_dP
noremap <m-p> <c-r>+
noremap d "0d
nnoremap cg "0cgn
nnoremap dd "0dd
nnoremap vv ^v$
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
nnoremap D "0dg$
nnoremap V vg$
noremap X vg$x
nnoremap A g$a
noremap H g^
noremap L g$

noremap gf gq
nnoremap f /
" vim-multiple-\cursors
nnoremap <m-n> <c-n>
nnoremap gv \\/
vnoremap s \\/
noremap F ?
noremap gfm /\$<CR>v?\$<CR>
noremap gm /\$<CR>hv?\$<CR>l
noremap gwb /}<CR>hv?{<CR>l
noremap gsb /]<CR>hv?[<CR>l
noremap gob /)<CR>hv?(<CR>l
noremap j gj
noremap k gk
noremap <Space> .
vnoremap <Space> t <cr>
noremap K <C-u>
noremap J <C-d>
noremap <C-j> <C-e>jj
noremap <C-k> <C-y>kk
nnoremap <leader>j J
nnoremap <leader>k K
noremap ' "
nnoremap <Backspace> i<Backspace><Esc>
noremap <A-r> <C-r>
nnoremap ` ~
nnoremap . `
noremap <m-1> <C-o>
noremap <m-2> <C-i>
noremap <D-u> <C-u>
noremap <A-u> <C-u>
]])

