 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:1:: vim.keymap.set('t', '<m p>', [[getreg('+')  , {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:2:: vim.keymap.set({'i','n', '<m t>', function ()  vim.cmd('up')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:3::    vim.cmd('BTags')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:4::       vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:5::       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C a><C q>', true, false, true), 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:6::       Wait  = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:7::       if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:8::          vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:9::          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C w>jzf', true, false, true), 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:10::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:11::          Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:12::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:13::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:14::          Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:15::    end, { buffer=true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:16:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:17::    nnoremap <m t> :up<cr>:BTags<cr>:call feedkeys(" <c a> <c q>")<cr>:copen<cr>
