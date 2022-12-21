vim.keymap.set('t', '<m-p>', [[getreg('+')]], {expr = true})
vim.keymap.set('i,n', '<m-t>', Btags(), { buffer=true })

-- nnoremap <m-t> :up<cr>:BTags<cr>:call feedkeys("\<c-a>\<c-q>")<cr>:copen<cr>
