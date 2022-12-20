if vim.b.bqf_enabled then
    vim.defer_fn(function()
        local key = vim.api.nvim_replace_termcodes("zf\<BS>\<BS>", v:true, v:false, v:true)
        vim.api.nvim_feedkeys('key', 'i', false)
    end, 10)
end
