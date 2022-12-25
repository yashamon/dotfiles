Feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   vim.fn.jobwait({Idline})
   vim.cmd('lopen')
   if vim.w.bqf_enabled then
    local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zf', 'im', false)
        end)
    end)
 end
end

Sentence = function ()
   vim.fn.jobwait({IdSentence})
   vim.cmd('lopen')
   if vim.w.bqf_enabled then
    local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zf', 'im', false)
        end)
    end)
 end
  -- Wait = function ()
  --     if vim.b.bqf_enabled then
  --       vim.cmd('sleep 200m')
  --       vim.api.nvim_feedkeys('zf', 'i', false)
  --     else
  --       Wait()
  --     end
  --  end
   -- Wait = function ()
      -- if vim.b.bqf_enabled then
        -- vim.cmd('sleep 150m')
        -- vim.api.nvim_feedkeys('zf', 'i', false)
      -- end
   -- end 
   -- Wait()
end
CG = function ()
   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")
   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
   Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename})
   IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})
   vim.fn.jobwait({IdSentence})
   local commandsentence = "lg " .. "@s_" .. filenameshort
   vim.cmd(commandsentence)
   vim.fn.jobwait({Idline})
   local commandline = "lg " .. "@l_" .. filenameshort
   vim.cmd(commandline)
end

GitAsync = function ()
Server()
local buff = vim.fn.bufname()
vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }')
-- vim.cmd("buffer " .. buff)
CG()
end

local timer = 0
  local function do_complete()
    require('cmp').complete({ reason = require('cmp').ContextReason.Auto })
  end

vim.api.nvim_create_autocmd(
    { "BufReadPost","FileReadPost", "FileType tex, vim, lua"},
    {
      callback = function()
       GitAsync()
      end,
      pattern = "*",
    }
  )

  vim.api.nvim_create_autocmd(
    { "TextChangedI", },
    {
      callback = function()
        vim.fn.timer_stop(timer)
        timer = vim.fn.timer_start(200, do_complete)
      end,
      pattern = "*",
    }
  )

