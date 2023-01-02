local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

map('t', '<m-p>', [[getreg('+')]], {expr = true})
map({'i','n'}, '<m-t>', function ()  vim.cmd('up')
   vim.cmd('BTags')
--    vim.cmd('sleep 100m')
--    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-a><C-q>', true, false, true), 'i', false)
--    Wait  = function ()
--    if vim.w.bqf_enabled then
--       vim.cmd('sleep 100m')
--       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>jzf', true, false, true), 'im', false)
--       else
--       Wait()
--    end
-- end
--    -- Wait()
end, { buffer=true })
map('n', 'S', Line, {})
map('n', '<m-s>', Sentence, {})

-- map('<m-b>', 'lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}})', {})

-- commands
command('Sa', function(file) vim.cmd('saveas ' .. file.args) end, { nargs=1 })
command('Sao', function(file) vim.cmd('saveas! ' .. file.args) end, { nargs=1 })
command('Keymap', "lua require('telescope.builtin').keymaps({layout_strategy='vertical',layout_config={width=0.9}})", {})
command('Cmd', "lua require('telescope.builtin').commands({layout_strategy='vertical',layout_config={width=0.9}})", {})


