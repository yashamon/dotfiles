require('lines')
require('sentence')
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
	-- Idline = vim.fn.jobstart(WriteLine())
	WriteLine()
	LoadLine()
	-- vim.fn.jobwait({IdLine})
  vim.cmd('lopen 20')
   if vim.w.bqf_enabled then
    -- local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        -- vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zf', 'im', false)
        -- end)
    end)
 end
end

Sentence = function ()
	WriteSentence()
	LoadSentence()
	-- vim.fn.jobwait({IdSentence})
	vim.cmd('lopen 20')
	if vim.w.bqf_enabled then
	-- local winid = vim.api.nvim_get_current_win()
	vim.schedule(function()
			-- vim.api.nvim_win_call(winid, function()
					vim.api.nvim_feedkeys('zf', 'im', false)
			-- end)
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
--This function finds the filename when given a complete path
local getFilename = function(path)
     local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
     return path:sub(start,#path)
end
CreateLineList = WriteLine
-- CreateLineList = function ()
	-- local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
	-- Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu" filename})
-- end
CreateSentenceList = WriteSentence
CreateList = function()
	CreateLineList()
	CreateSentenceList()
end
-- 	local filenameshort = getFilename(vim.fn.bufname())
-- 	local commandline = "lg " .. "/tmp/@l_" .. filenameshort
LoadLine = function()
	-- local filenameshort = GetFilename(vim.fn.bufname())
	local filenameshort = vim.fn.bufname()
  -- vim.fn.jobwait({Idline})
  local commandline = "lg " .. "/tmp/@l_" .. filenameshort
	vim.cmd(commandline)
end
LoadSentence = function()
	-- local filenameshort = getFilename(vim.fn.bufname())
  local filenameshort = vim.fn.bufname()
  -- vim.fn.jobwait({IdSentence})
  local commandsentence = "lg " .. "/tmp/@s_" .. filenameshort
  vim.cmd(commandsentence)
end
CG = function()
	CreateList()
	LoadLine()
	LoadSentence()
end

GitAsync = function()
Server()
local buff = vim.fn.bufname()
vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m "$(git diff --staged)"; git push --all origin; ctags -R }')
vim.cmd("buffer " .. buff)
end

--
OnUIEnter = function(event)
	 	local ui = vim.api.nvim_get_chan_info(event.chan)
		if vim.fn.has_key(ui, 'client') and vim.fn.has_key(ui.client, 'name') then
			if ui.client.name == 'Firenvim' then
					vim.opt.laststatus = 0
					vim.opt.columns = 100
					vim.opt.lines = 100
					vim.cmd('noremap q <esc>:wq<cr>')
  end
end
end





