if vim.b.bqf_enabled then
    vim.defer_fn(function()
       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("zf",true,false,true),'i',true)
    end, 10)
end
