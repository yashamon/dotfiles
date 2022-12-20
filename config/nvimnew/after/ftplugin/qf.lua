if vim.b.bqf_enabled then
    vim.defer_fn(function()
       vim.api.nvim_input("zf")
        -- vim.api.nvim_feedkeys('zf', 'i', false)
    end, 10)
end
