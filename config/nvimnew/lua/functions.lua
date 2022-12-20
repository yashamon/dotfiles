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
   os.execute(execstr)
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)
   vim.cmd('copen')
end

Sentence = function ()
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local execstr = "nu C:/Users/yasha/dotfiles/scripts/sentence.nu " .. filename
   -- print(execstr)
   os.execute(execstr)
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)   
   vim.cmd('copen')
   -- vim.cmd('sleep 600m')
   -- vim.fn.feedkeys("zf")
end
