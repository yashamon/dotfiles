vim.keymap.set('t', '<m-p>', [[getreg('+')]], {expr = true})
vim.keymap.set({'i','n'}, '<m-t>', function ()  vim.cmd('up')
   vim.cmd('BTags')
   vim.api.input("<c-a><c-q>")
   vim.cmd('sleep 30m')
   vim.cmd('copen') end, { buffer=true })

-- nnoremap <m-t> :up<cr>:BTags<cr>:call feedkeys("\<c-a>\<c-q>")<cr>:copen<cr>
