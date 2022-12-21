vim.keymap.set('t', '<m-p>', [[getreg('+')]], {expr = true})
vim.keymap.set({'i','n'}, '<m-t>', function ()  vim.cmd('up')
   vim.cmd('BTags')
   vim.cmd('sleep 100m')
   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-a><C-q><C-w>j', true, false, true), 'i', false)
   Wait  = function ()
   if vim.w.bqf_enabled then
      vim.cmd('sleep 100m')
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>jzf', true, false, true), 'im', false)
      else
      Wait()
   end
end
   Wait()
   end, { buffer=true })

-- nnoremap <m-t> :up<cr>:BTags<cr>:call feedkeys("\<c-a>\<c-q>")<cr>:copen<cr>
