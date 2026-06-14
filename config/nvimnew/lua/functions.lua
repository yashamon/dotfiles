require('lines')
-- require('sentence')
require("sentence_fzf")
Feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end
Send = function()
	vim.cmd('up')
  local filenamedir = vim.fn.expand('%:p:h')
	local filenamedir = string.gsub(filenamedir, "\\", "/")
 
  local filename = vim.fn.expand('%:t:r')
	local filename = string.gsub(filename, "\\", "/")
  local pdf = filenamedir .. "/build/" .. filename .. ".pdf"
  local execstr = "nu C:/Users/yasha/OneDrive/workspacemodules/dotfiles/scripts/send.nu " .. pdf
	-- print(execstr)
	Job(execstr)
end

local function quickfix_open()
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      return true
    end
  end
  return false
end

local function extract_line_number(s)
  if not s then
    return nil
  end

  return tonumber(
    s:match("[Oo]n input line (%d+)")
      or s:match("[Ll]ine (%d+)")
      or s:match("l%.(%d+)")
  )
end

local function add_qf_item(items, item)
  item.lnum = item.lnum or 1
  item.col = item.col or 1
  table.insert(items, item)
end

local function tectonic_log_to_qf_items(logfile, fallback_bufnr, fallback_file)
  local lines = vim.fn.readfile(logfile)
  local items = {}

  local last_item = nil

  for _, line in ipairs(lines) do
    local lower = line:lower()

    -- Tectonic-style:
    -- error: file.tex:123: something
    -- warning: file.tex:123: something
    local sev, file, lnum, msg =
      line:match("^%s*([Ee]rror):%s+(.+):(%d+):%s*(.*)$")

    if not sev then
      sev, file, lnum, msg =
        line:match("^%s*([Ww]arning):%s+(.+):(%d+):%s*(.*)$")
    end

    if sev then
      local item = {
        filename = file,
        lnum = tonumber(lnum),
        type = sev:lower():sub(1, 1) == "e" and "E" or "W",
        text = msg ~= "" and msg or line,
      }

      add_qf_item(items, item)
      last_item = item
      goto continue
    end

    -- TeX hard errors:
    -- ! Undefined control sequence.
    -- ! LaTeX Error: ...
    if line:match("^%s*!") or lower:match("error:") then
      local item = {
        bufnr = fallback_bufnr,
        filename = fallback_file,
        lnum = extract_line_number(line),
        type = "E",
        text = line:gsub("^%s*", ""),
      }

      add_qf_item(items, item)
      last_item = item
      goto continue
    end

    -- TeX / LaTeX warnings:
    -- LaTeX Warning: ...
    -- Package hyperref Warning: ...
    -- Class memoir Warning: ...
    if line:match("^%s*LaTeX Warning:")
      or line:match("^%s*Package .- Warning:")
      or line:match("^%s*Class .- Warning:")
      or lower:match("warning:")
    then
      local item = {
        bufnr = fallback_bufnr,
        filename = fallback_file,
        lnum = extract_line_number(line),
        type = "W",
        text = line:gsub("^%s*", ""),
      }

      add_qf_item(items, item)
      last_item = item
      goto continue
    end

    -- TeX often puts the useful line number after the error:
    -- l.123 \badcommand
    local tex_lnum, tex_context = line:match("^%s*l%.(%d+)%s*(.*)$")
    if tex_lnum and last_item then
      last_item.lnum = tonumber(tex_lnum)
      if tex_context and tex_context ~= "" then
        last_item.text = last_item.text .. " | " .. tex_context
      end
      goto continue
    end

    -- Continuation lines for package warnings, e.g.
    -- (hyperref)                removing `\foo' on input line 123.
    if last_item and line:match("^%s*%b()%s+") then
      local l = extract_line_number(line)
      if l then
        last_item.lnum = l
      end

      local continuation = line:gsub("^%s*", "")
      if continuation ~= "" then
        last_item.text = last_item.text .. " | " .. continuation
      end

      goto continue
    end

    ::continue::
  end

  return items
end

function ToggleQuickFix()
  if quickfix_open() then
    vim.cmd("cclose")
    return
  end

  vim.cmd("update")

  local file_dir = vim.fn.expand("%:p:h")
  local file_base = vim.fn.expand("%:t:r")
  local source_file = vim.fn.expand("%:p")
  local source_bufnr = vim.api.nvim_get_current_buf()

  local log_file = file_dir .. "/build/" .. file_base .. ".log"

  vim.b.filenamedir = file_dir
  vim.b.filename = file_base
  vim.b.errors = log_file

  if vim.fn.filereadable(log_file) == 0 then
    vim.notify("Log file not found: " .. log_file, vim.log.levels.WARN)
    return
  end

  local items = tectonic_log_to_qf_items(log_file, source_bufnr, source_file)

  if #items == 0 then
    vim.fn.setqflist({}, "r", {
      title = "Tectonic warnings/errors",
      items = {},
    })

    vim.notify("No warnings or errors found in " .. log_file, vim.log.levels.INFO)
    return
  end

  vim.fn.setqflist({}, "r", {
    title = "Tectonic warnings/errors: " .. vim.fn.fnamemodify(log_file, ":t"),
    items = items,
  })

  require("fzf-lua").quickfix()
end

Line = function()
	-- Idline = vim.fn.jobstart(WriteLine())
	WriteLine()
	LoadLine()
	-- vim.fn.jobwait({IdLine}) testu
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

Sentence = function()
    WriteSentence()
    -- LoadSentence()
    
    -- Opens the current window's location list in fzf-lua
    -- require('fzf-lua').loclist()
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
  local commandline = "lg " .. "C:/Users/yasha/tmp/@l_" .. filenameshort
	vim.cmd(commandline)
end
LoadSentence = function()
	-- local filenameshort = getFilename(vim.fn.bufname())
  local filenameshort = vim.fn.bufname()
  -- vim.fn.jobwait({IdSentence})
  local commandsentence = "lg " .. "C:/Users/yasha/tmp/@s_" .. filenameshort
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
end

GitAsync = function()
-- local buff = vim.fn.bufname()
local command1 = 'if ((git rev-parse --is-inside-work-tree) | into bool) {git add .; git diff --staged | save --force message.log; git commit -F message.log; git push --all origin}'
Job(command1)
end
-- test3
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
local filenamePDFWindows = filenamedir .. "/build/" .. filenameroot .. ".pdf"
local execstrWindowsTectonic="tectonic -r 0 " .. filenametex .. " --outdir build --synctex --keep-logs --keep-intermediates"

-- let execstrViewerSio="silent te pwsh -nop -c C:/Users/yasha/scoop/apps/sioyek/current/sioyek --forward-search-file " . filenametex . " --forward-search-line " . linenumber
local execstrViewerSummatra = "C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " .. filenamePDFWindows .. " -forward-search " .. filenametex .. " " .. linenumber
local afterSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek --execute-command   fit_to_page_height_smart"
local killSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek --execute-command quit"
local execstrViewerSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek " .. filenamePDFWindows .. " --forward-search-file " .. filenametex .. " --forward-search-line " .. linenumber
-- let execstrWindows2="silent te pwsh -nop -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
-- let execstrWindows1="silent te pwsh -nop -c latexmk  -synctex=1 -file-line-error -f -interaction=nonstopmode " . filenametex
Job("mkdir build")
Job(execstrWindowsTectonic)
-- Job(killSio)
-- Job(execstrViewerSio)
-- Job(killSio)
-- vim.cmd('sleep 2000m')
-- Job(execstrViewerSio)
-- vim.cmd('sleep 500m')
-- Job(afterSio)
Job(execstrViewerSummatra)
end
ViewPdfRef = function()
vim.cmd('up')
Server()
local linenumber = vim.api.nvim_win_get_cursor(0)[1]
local colnumber = vim.api.nvim_win_get_cursor(0)[2] 
local filenamedir = vim.fn.expand('%:p:h')
local filenametex = vim.fn.expand('%:p:t')
local filenametexwhole = vim.fn.expand('%:p')
local filenameroot = vim.fn.expand('%:t:r')
-- local filenamePDFLinux=filenamedir .. "/buildback/" .. filenameroot .. ".pdf"
local filenamePDFWindows = filenamedir .. "/build/" .. filenameroot .. ".pdf"
local execstrWindowsTectonic="tectonic " .. filenametex .. " --outdir build --synctex --keep-logs --keep-intermediates"

-- let execstrViewerSio="silent te pwsh -nop -c C:/Users/yasha/scoop/apps/sioyek/current/sioyek --forward-search-file " . filenametex . " --forward-search-line " . linenumber
local execstrViewerSummatra = "C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " .. filenamePDFWindows .. " -forward-search " .. filenametex .. " " .. linenumber
local afterSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek --execute-command   fit_to_page_height_smart"
local killSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek --execute-command quit"
local execstrViewerSio = "C:/Users/yasha/scoop/apps/sioyek/current/sioyek " .. filenamePDFWindows .. " --forward-search-file " .. filenametex .. " --forward-search-line " .. linenumber
-- let execstrWindows2="silent te pwsh -nop -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
-- let execstrWindows1="silent te pwsh -nop -c latexmk  -synctex=1 -file-line-error -f -interaction=nonstopmode " . filenametex
Job("mkdir build")
Job(execstrWindowsTectonic)
-- Job(killSio)
-- Job(execstrViewerSio)
-- Job(killSio)
-- vim.cmd('sleep 2000m')
-- Job(execstrViewerSio)
-- vim.cmd('sleep 500m')
-- Job(afterSio)
Job(execstrViewerSummatra)
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


