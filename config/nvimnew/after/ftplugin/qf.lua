-- if vim.w.bqf_enabled then
    -- vim.api.nvim_feedkeys('zf', 'im', false)
-- end

-- if vim.b.bqf_enabled then
    -- vim.defer_fn(function()
        -- vim.api.nvim_feedkeys('zf', 'i', false)
    -- end, 50)
-- end
if vim.w.bqf_enabled then
    local savedOpts = vim.env.FZF_DEFAULT_OPTS
    vim.env.FZF_DEFAULT_OPTS = vim.env.FZF_DEFAULT_OPTS .. ' -q pattern'
    vim.api.nvim_feedkeys('zf', 'im', false)
    vim.api.nvim_create_autocmd('FileType', {
        pattern = 'fzf',
        once = true,
        callback = function()
            vim.env.FZF_DEFAULT_OPTS = savedOpts
        end
    })
end
