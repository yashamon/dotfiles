if vim.b.bqf_enabled then
    vim.defer_fn(function()
       vim.fn.feedkeys("zf\<BS>\<BS>")
        -- vim.api.nvim_feedkeys('zf', 'i', false)
    end, 10)
end
