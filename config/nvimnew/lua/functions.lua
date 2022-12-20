Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   -- local buff = vim.cmd('call bufname()')
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
   -- print(execstr)
   os.execute(execstr)
   -- require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)
   vim.cmd('copen')
   vim.cmd('call setqflist([])')
--    if vim.b.bqf_enabled then
--     vim.defer_fn(function()
--         vim.api.nvim_feedkeys('zf', 'im', false)
--     end, 10)
-- end
   -- vim.cmd('sleep 600m')
   -- vim.cmd('sleep 600m')
   -- vim.fn.feedkeys("zf")
   -- " copen
   -- " sleep 600m
   -- " " let b:paste = system('pwsh -c Get-Clipboard')
   -- " " call feedkeys(":BLinesB \<c-r>+\<cr>")
   -- " " call feedkeys("zf")
end

Sentence = function ()
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
   -- print(execstr)
   os.execute(execstr)
   vim.cmd('cg @_%')
   vim.cmd('copen')
   -- vim.cmd('sleep 600m')
   -- vim.fn.feedkeys("zf")
end
