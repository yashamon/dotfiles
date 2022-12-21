 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:1:: vim.keymap.set('t', '<m p>', [[getreg('+')  , {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:2:: vim.keymap.set('i,n', '<m t>', Btags(), {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:3:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:4:: nnoremap <m t> :up<cr>:BTags<cr>:call feedkeys(" <c a> <c q>")<cr>:copen<cr>
