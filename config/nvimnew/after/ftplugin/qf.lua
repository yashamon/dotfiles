if vim.b.bqf_enabled then
    vim.defer_fn(function()
        vim.api.nvim_feedkeys('zf\<BS>\<BS>', 'i', false)
    end, 10)
end
