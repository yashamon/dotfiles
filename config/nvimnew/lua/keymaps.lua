local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

map('t', '<m-p>', [[getreg('+')]], {expr = true})
map({'i','n'}, '<m-t>', function ()  vim.cmd('up')
end, { buffer=true })
map('n','S', Line, {} )
map('n', '<m-s>', Sentence, {})

map('n', '<m-b>', function() require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}}) end, {})

-- commands
command('Sa', function(file) vim.cmd('saveas ' .. file.args) end, { nargs=1 })
command('Sao', function(file) vim.cmd('saveas! ' .. file.args) end, { nargs=1 })
command('Keymap', "lua require('telescope.builtin').keymaps({layout_strategy='vertical',layout_config={width=0.9}})", {})
command('Cmd', "lua require('telescope.builtin').commands({layout_strategy='vertical',layout_config={width=0.9}})", {})

-- FZF Neoyank yank 

map('n', '<leader>p', function()vim.cmd('FZFNeoyank + p')  end,{})
map('n', '<leader>P', function()vim.cmd('FZFNeoyank + P') end,{})
map('n', '<leader>0p', function()vim.cmd('FZFNeoyank 0 p') end,{})
map('v', '<leader>p',  function () vim.cmd('FZFNeoyankSelection +') end, {})


map('n', '<leader>f', function() vim.cmd('up'); Server(); vim.cmd('te lf'); Feedkey('i','i') end, {})
map('n', '<leader>lg', function() vim.cmd('up'); Server(); vim.cmd('te lazygit'); Feedkey('i','i') end, {})
-- map('n', '<leader>t ', function():vim.cmd('up<cr>:lua Server()<cr>:edit term://
-- nmap <m-7> :ZenMode<cr>:mksession!<cr>
-- map('n', '<leader>u ', function()<vim.cmd('cr>:UndotreeToggle<CR>
-- noremap <leader>c :'<,'>CommentToggle<cr>
-- map('n', '<leader>c ', function():vim.cmd('gc
-- tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
-- nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
-- map('n', '<c-l>', function() vim.cmd(':bnext<CR>
-- map('n', '<c-h>', function() vim.cmd(':bprevious<CR>
-- map <S-C-q> <Esc>:qa!<CR>
-- map <m-q> <esc>:wq<cr>
-- map <m-Q> <esc>:q<cr>
-- map <m-c> :close<cr>
-- map <m-d> <Esc>:up<CR>:bdelete<CR>
-- map <m-D> :bdelete!<CR>
-- nmap <A-S-t> :te<cr>
-- noremap <leader>r :up<cr>:e<cr> 
-- map('q n', ':q<cr', functionvim.cmd('()>
-- map('n', '<c-,> :c', function()vim.cmd('previous<cr>
-- map('n', '<c-.> :c', function()vim.cmd('next<cr> 
-- noremap ;w <Esc>:up<CR>
-- noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
-- map('n', '<m-t>', function() vim.cmd(':up<cr>:BTags<cr>
-- map('n', '<m-b>', function() vim.cmd(':lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.9}})<cr>
-- map('n', '<m-i>', function() vim.cmd(':lua require('telescope.builtin').git_bcommits({layout_strategy='vertical',layout_config={width=0.9}})<cr>
-- map('n', '<m-u>', function() vim.cmd(':<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
-- map <m-f> :FZF ~<CR> 
-- map('<len', 'ader>gs', function() vim.cmd(':up<cr>:source $MYVIMRC<cr> 
-- map('n', '<c-e>', function() vim.cmd('viwy:cclose<cr>:<c-r>+<cr><cr>
-- map('n', '<c-p>', function() vim.cmd(':<c-r>+<cr>
-- map('n', '<m-l>', function() vim.cmd('viwy:bdelete<cr>:execute "buffer" g:buf<cr>:<c-r>+<cr><cr>
-- map q: nop
-- nmap <leader>v :silent call ViewPdf()<cr><cr>
-- map <m-v> <esc>:silent call ViewPdf()<cr><cr>
-- nmap <leader>ll :silent call CompileLatex()<cr>
-- nmap <leader>lcl :silent call ClearLatex()<cr>
-- nmap gtd :TodoQuickFix<cr>
-- -- " nmap <leader>ga :TZAtaraxis<CR>
-- -- "nmap <leader>gm :up<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
-- map('n', '<C-c>', function() vim.cmd(':set hlsearch!<cr>
-- map('n', '<leader>e ', function():vim.cmd('silent call ToggleQuickFix()<CR>
--
-- -- " Lsp mappings
-- map('n', '<silent> g?', function() vim.cmd('<cmd>lua vim.diagnostic.open_float()<CR>
-- noremap ga  :lua vim.lsp.buf.code_action()<CR>
-- noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
-- nmap <leader>c gc
--
--
--
--
-- vnoremap < <gv
-- vnoremap > >gv
-- -- nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
-- tnoremap <A-`> <C-\><C-n>
-- tnoremap <A-Esc> <C-\><C-n>
-- nnoremap <leader>q q
-- nu<cr><cr>
-- inoremap <m-h> <left>
-- inoremap <m-l> <right>
-- vmap <M-.> t.<CR>h
-- nmap <M-.> t.<CR>h
-- nnoremap <up> 1<C-U>
-- nnoremap <m-g> gqip
-- nnoremap <down> 1<C-D>
-- noremap <ScrollWheelUp>      <nop>
-- noremap <S-ScrollWheelUp>    <nop>
-- noremap <C-ScrollWheelUp>    <nop>
-- noremap <ScrollWheelDown>    <nop>
-- noremap <S-ScrollWheelDown>  <nop>
-- noremap <C-ScrollWheelDown>  <nop>
-- noremap <ScrollWheelLeft>    <nop>
-- noremap <S-ScrollWheelLeft>  <nop>
-- noremap <C-ScrollWheelLeft>  <nop>
-- noremap <ScrollWheelRight>   <nop>
-- noremap <S-ScrollWheelRight> <nop>
-- noremap <C-ScrollWheelRight> <nop>
-- noremap! <LeftDrag> <nop>
-- noremap! <RightDrag> <nop>
-- noremap! <LeftDrag> <nop>
-- inoremap \ /
-- inoremap / \
--
-- inoremap <m-d> <C-w>
-- noremap gwm /\$<CR>
-- noremap gbm ?\$<CR>
-- noremap gwo /(\\|)<CR>
-- noremap gbo /(\\|)<CR>
-- noremap gwb /{\\|}<CR>
-- noremap gbb ?{\\|}<CR>
-- noremap gww /{\\|}<CR>
-- noremap gbw ?{\\|}<CR>
-- noremap gwc /[\\|]<CR>
-- noremap gbc ?[\\|]<CR>
--
-- -- " copy paste stuff
-- vnoremap p "_dP
-- noremap <m-p> <c-r>+
-- inoremap <m-p> <c-r>+
-- noremap d "0d
-- nnoremap cg "0cgn
-- nnoremap dd "0dd
-- noremap c "0c
-- noremap s "0s
-- noremap C "0C
-- noremap x "0x
-- vnoremap x "+x
-- vnoremap d "0d
-- vnoremap c "0c
-- vnoremap y my"+y`y
-- vnoremap <C-y> y
-- nnoremap y my"+y`y
-- nnoremap p "+p
-- nnoremap <C-p> "0p
--
-- nnoremap <leader>q q
-- inoremap <cr> <esc>$a<cr><space><esc>"_s
-- inoremap <m-cr> <cr><space><esc>"_s
--
-- nnoremap D "0dg$
-- nnoremap V vg$
-- noremap X vg$x
-- nnoremap A g$a
-- noremap H g^
-- noremap L g$
-- imap <M-j> <C-j>
--
-- noremap gf gq
-- nmap f /
-- nmap gv \\/
-- vmap s \\/
-- " vim-multiple-\cursors
-- nnoremap <m-n> <c-n>
-- noremap F ?
-- noremap gfm /\$<CR>v?\$<CR>
-- noremap gm /\$<CR>hv?\$<CR>l
-- noremap gwb /}<CR>hv?{<CR>l
-- noremap gsb /]<CR>hv?[<CR>l
-- noremap gob /)<CR>hv?(<CR>l
-- map j gj
-- map k gk
-- noremap <Space> .
-- vnoremap <Space> t <cr>
-- map K <C-u>
-- map J <C-d>
-- map <C-j> <C-e>jj
-- map <C-k> <C-y>kk
-- nnoremap <leader>j J
-- nnoremap <leader>k K
-- map ' "
-- nnoremap <Backspace> i<Backspace><Esc>
-- noremap <A-r> <C-r>
-- nnoremap ` ~
-- nnoremap . `
-- noremap <m-1> <C-o>
-- noremap <m-2> <C-i>
-- inoremap <m-d> <C-d>
-- noremap <D-u> <C-u>
-- noremap <A-u> <C-u>
-- inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
-- map ' "
-- inoremap <D-]> <C-x><C-]>
-- inoremap <C-]> <C-x><C-]>

