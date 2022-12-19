Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   -- local buff = vim.cmd('call bufname()')
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
   -- print(execstr)
   os.execute(execstr)
   vim.cmd('cg @_%')   
   -- require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
   vim.cmd('cg @_%')
   vim.cmd('copen')
   vim.cmd('sleep 600m')
   vim.fn.feedkeys("zf")
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
   vim.cmd('sleep 600m')
   vim.fn.feedkeys("zf")
end
