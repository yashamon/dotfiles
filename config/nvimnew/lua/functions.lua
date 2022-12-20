Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   -- local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   -- local execstr = "nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
   -- vim.cmd("let filename = filename") test
   vim.fn.jobwait({Idline})
   vim.cmd('copen')
   -- vim.cmd('sleep 30m')
   -- echo filter(getwininfo(), 'v:val.quickfix && !v:val.loclist')

   Wait = function ()
      if vim.b.bqf_enabled then
        vim.cmd('sleep 200m')
        vim.api.nvim_feedkeys('zf', 'i', false)
      else
        Wait()
      end
   end
   Wait()
   -- vim.cmd('sleep 200m')
   -- vim.api.nvim_feedkeys('zf', 'i', false)
   
   -- require('telescope.builtin'). test test2 test3 quickfix({layout_strategy='vertical',layout_config={width=0.9}})
end

Sentence = function ()
   vim.fn.jobwait({Idline})
   local command = "cg " .. "@_" .. filenameshort
   vim.cmd(command)
   vim.cmd('copen')
  Wait = function ()
      if vim.b.bqf_enabled then
        vim.cmd('sleep 200m')
        vim.api.nvim_feedkeys('zf', 'i', false)
      else
        Wait()
      end
   end
   Wait()
end

GitAsync = function ()
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename})
   IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})
   local commandsentence = "cg " .. "@s_" .. filenameshort
   vim.cmd(commandsentence)
   local commandline = "cg " .. "@l_" .. filenameshort
   vim.cmd(commandline)
Server()

local buff = vim.fn.bufname()
vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }')
vim.cmd("buffer " .. buff)
end

