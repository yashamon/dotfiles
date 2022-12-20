Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line2 = function()
   vim.cmd('cg @_blah.tex')
   vim.cmd('sleep 600m')
   vim.cmd('copen')
end
Line = function()
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   -- local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
   -- vim.cmd("let filename = filename")
   local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/line.nu", filename})
   vim.fn.jobwait({id})
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)
   vim.cmd('sleep 100m')
   vim.cmd('copen')
   vim.fn.feedkeys("zf")
   
   -- require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
end

Sentence = function ()
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
   local id = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})
   vim.fn.jobwait({id})
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)
   vim.cmd('copen')
   -- if vim.b.bqf_enabled then
    -- vim.defer_fn(function()
       -- vim.api.nvim_input("Gzf")
        -- vim.api.nvim_feedkeys('zf', 'i', false)
    -- end, 200) test
-- end
   vim.cmd('sleep 100m')
   vim.fn.feedkeys("zf")
end

