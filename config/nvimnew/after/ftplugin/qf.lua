if vim.b.bqf_enabled then
    vim.defer_fn(function()
        vim.api.nvim_feedkeys('zf', 'i', false)
    end, 10)
    vim.fn.sleep(100)
end
