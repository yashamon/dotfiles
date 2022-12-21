 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:1:: local map = vim.keymap.set
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:2:: map('t', '<m p>', [[getreg('+')  , {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:3:: map({'i','n', '<m t>', function ()  vim.cmd('up')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:4::    vim.cmd('BTags')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:5::       vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:6::       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C a><C q>', true, false, true), 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:7::       Wait  = function ()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:8::       if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:9::          vim.cmd('sleep 100m')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:10::          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C w>jzf', true, false, true), 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:11::          else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:12::          Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:13::       end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:14::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:15::          Wait()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:16::    end, { buffer=true )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:17:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/keymaps.lua:18::    nnoremap <m t> :up<cr>:BTags<cr>:call feedkeys(" <c a> <c q>")<cr>:copen<cr>
