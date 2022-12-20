Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   vim.fn.jobwait({Idline})
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

Sentence = function ()
   vim.fn.jobwait({IdSentence})
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
   Server()
local buff = vim.fn.bufname()
vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }')
vim.cmd("buffer " .. buff)
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename})
   IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})
   local commandsentence = "cg " .. "@s_" .. filenameshort
   vim.cmd(commandsentence)
   local commandline = "cg " .. "@l_" .. filenameshort
   vim.cmd(commandline)
end

