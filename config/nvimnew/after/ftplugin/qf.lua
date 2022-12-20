if vim.b.bqf_enabled then
    vim.defer_fn(function()
       -- vim.fn.feedkeys("zf\<BS>\<BS>")
        vim.api.nvim_feedkeys("zf\<BS>\<BS>", 'i', true)
    end, 10)
end
