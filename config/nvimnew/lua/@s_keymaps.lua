  C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:1: vim.keymap.set('t', '<m p>', [[getreg('+')  , {expr = true )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:2: vim.keymap.set({'i','n' , '<m t>', function ()  vim.cmd('up')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:3:    vim.cmd('BTags')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:4:    vim.cmd('sleep 100m')@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:5:    vim.api.nvim feedkeys(vim.api.nvim replace termcodes('<C a><C q><C w>j', true, false, true), 'i', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:6:    if vim.w.bqf enabled then@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:7:     vim.api.nvim feedkeys('zf', 'im', false)@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:8: end@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:9:    end, { buffer=true  )@ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:10: @ C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:11:    nnoremap <m t> :up<cr>:BTags<cr>:call feedkeys(" <c a> <c q>")<cr>:copen<cr>@