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


Job = function(string)
-- local buff = vim.fn.bufname()
local jobstring = 'call jobstart(\'' .. 'nu -c "' .. string .. '"\')'
vim.cmd(jobstring)
-- vim.cmd('echo "job start success"')
end

GitAsync = function()
-- local buff = vim.fn.bufname()
local commandsentence = 'if ((git rev-parse --is-inside-work-tree) | into bool ) {rm git.log; touch git.log; git add . | save --append git.log; git commit -m $"(git diff --staged)" | save --append git.log; git push --all origin} | save --append git.log'
Job(commandsentence)
-- vim.cmd("buffer " .. buff) 
end

ViewPdf2 = function()
vim.cmd('up')
Server()
local linenumber = vim.api.nvim_win_get_cursor(0)[1]
local colnumber = vim.api.nvim_win_get_cursor(0)[2] 
local filenamedir = vim.fn.expand('%:p:h')
local filenametex = vim.fn.expand('%:p:t')
local filenametexwhole = vim.fn.expand('%:p')
local filenameroot = vim.fn.expand('%:t:r')
-- local filenamePDFLinux=filenamedir .. "/buildback/" .. filenameroot .. ".pdf"
local filenamePDFWindows="build/" .. filenameroot .. ".pdf"
local execstrWindowsTectonic="tectonic " .. filenametex .. " --outdir build --synctex --keep-logs"
-- let execstrViewerSio="silent te pwsh -nop -c C:/Users/yasha/scoop/apps/sioyek/current/sioyek --forward-search-file " . filenametex . " --forward-search-line " . linenumber
local execstrViewer = "C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " .. filenamePDFWindows .. " -forward-search " .. filenametex .. " " .. linenumber
-- let execstrWindows2="silent te pwsh -nop -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
-- let execstrWindows1="silent te pwsh -nop -c latexmk  -synctex=1 -file-line-error -f -interaction=nonstopmode " . filenametex
Job("mkdir build")
Job(execstrWindowsTectonic)
Job(execstrViewer)
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


