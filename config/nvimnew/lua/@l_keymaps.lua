 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:1:: vim.keymap.set('t', '<m p>', [[getreg('+')  , {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:2:: vim.keymap.set({'i','n', '<m t>', function ()  vim.cmd('up')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:3::    vim.cmd('BTags')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:4::    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C a><C q><C w>d', true, false, true), 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:5::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:6::     vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:7:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:8::    end, { buffer=true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:9:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:10::    nnoremap <m t> :up<cr>:BTags<cr>:call feedkeys(" <c a> <c q>")<cr>:copen<cr>
