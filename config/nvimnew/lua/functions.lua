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
        vim.cmd('sleep 150m')
        vim.api.nvim_feedkeys('zf', 'i', false)
      end
   end
   Wait()
end

Sentence = function ()
   vim.fn.jobwait({IdSentence})
   vim.cmd('copen')
  -- Wait = function ()
  --     if vim.b.bqf_enabled then
  --       vim.cmd('sleep 200m')
  --       vim.api.nvim_feedkeys('zf', 'i', false)
  --     else
  --       Wait()
  --     end
  --  end
   Wait = function ()
      if vim.b.bqf_enabled then
        vim.cmd('sleep 150m')
        vim.api.nvim_feedkeys('zf', 'i', false)
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
   vim.fn.jobwait({IdSentence})
   local commandsentence = "cg " .. "@s_" .. filenameshort
   vim.cmd(commandsentence)
   vim.fn.jobwait({IdLine})
   local commandline = "cg " .. "@l_" .. filenameshort
   vim.cmd(commandline)
end

local fzf = require "fzf".fzf
local action = require "fzf.actions".action

coroutine.wrap(function()
  -- items is a table of selected or hovered fzf items
  local shell = action(function(items, fzf_lines, fzf_cols)
    -- only one item will be hovered at any time, so get the selection
    -- out and convert it to a number
    local buf = tonumber(items[1])

    -- you can return either a string or a table to show in the preview
    -- window
    return vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  end)

  fzf(vim.api.nvim_list_bufs(), "--preview " .. shell)
end)()

-- asdf
