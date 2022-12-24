 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:1::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:2::        vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:3::    end
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:4:: 
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:5::    if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:6::        vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:7::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:8::        end, 50)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:9::    end
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:10:: if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:11::     local savedOpts = vim.env.FZF_DEFAULT_OPTS
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:12::     vim.env.FZF_DEFAULT_OPTS = vim.env.FZF_DEFAULT_OPTS .. '  q pattern'
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:13::     vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:14::     vim.api.nvim_create_autocmd('FileType', {
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:15::         pattern = 'fzf',
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:16::         once = true,
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:17::         callback = function()
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:18::             vim.env.FZF_DEFAULT_OPTS = savedOpts
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:19::         end
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:20::     )
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:21:: end
