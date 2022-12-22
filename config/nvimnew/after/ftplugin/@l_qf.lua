 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:1::    if vim.w.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:2::        vim.api.nvim_feedkeys('zf', 'im', false)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:3::    end
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:4:: 
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:5::    if vim.b.bqf_enabled then
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:6::        vim.defer_fn(function()
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:7::            vim.api.nvim_feedkeys('zf', 'i', false)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:8::        end, 50)
 C:/Users/yasha/dotfiles/config/nvimnew/after/ftplugin/qf.lua:9::    end
