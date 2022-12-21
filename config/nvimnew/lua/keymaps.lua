vim.keymap.set('t', '<m-p>', [[getreg('+')]], {expr = true})
vim.keymap.set({'i','n'}, '<m-t>', function ()  vim.cmd('up')
   vim.cmd('BTags')
   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-a><C-q>', true, false, true), 'i', false)
   vim.cmd('sleep 200m')
   vim.cmd('copen') end, { buffer=true })

-- nnoremap <m-t> :up<cr>:BTags<cr>:call feedkeys("\<c-a>\<c-q>")<cr>:copen<cr>
