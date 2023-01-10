local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

map('t', '<m-p>', [[getreg('+')]], {expr = true})
map({'i','n'}, '<m-t>', function ()  vim.cmd('up')
end, { buffer=true })
map('n','S', Line, {} )
map('n', '<m-s>', Sentence, {})

map('n', '<m-b>', function() require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.9}}) end, {})

-- commands
command('Sa', function(file) vim.cmd('saveas ' .. file.args) end, { nargs=1 })
command('Sao', function(file) vim.cmd('saveas! ' .. file.args) end, { nargs=1 })
command('Keymap', "lua require('telescope.builtin').keymaps({layout_strategy='vertical',layout_config={width=0.9}})", {})
command('Cmd', "lua require('telescope.builtin').commands({layout_strategy='vertical',layout_config={width=0.9}})", {})
