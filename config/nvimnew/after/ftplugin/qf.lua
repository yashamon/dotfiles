if vim.b.bqf_enabled then
    vim.defer_fn(function()
        vim.api.nvim_feedkeys('zf', 'im', false)
    end, 200)
end
