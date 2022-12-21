if vim.w.bqf_enabled then
    vim.api.nvim_feedkeys('zf', 'im', false)
end

-- if vim.b.bqf_enabled then
    -- vim.defer_fn(function()
        -- vim.api.nvim_feedkeys('zf', 'i', false)
    -- end, 50)
-- end
