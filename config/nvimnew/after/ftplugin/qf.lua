if vim.b.bqf_enabled then
    vim.defer_fn(function()
        vim.api.nvim_feedkeys('zf', 'i', false)
        vim.cmd('call setqflist([])')
    end, 10)
end
