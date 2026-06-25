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

-- Tectonic log pickers ---------------------------------------------------------
-- Errors and warnings are parsed from build/<current-file>.log, shown in fzf-lua,
-- previewed with Nushell, and Enter jumps to the corresponding source line.
local black_preview = [[bat --style=plain --color=never --wrap=never {3}]]
local preview_colors = "preview-fg:#000000,preview-bg:#ffa546"local tectonic_preview_colors = "preview-fg:#000000,preview-bg:#ffa546"
local function trim(s)
  return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

local function extract_line_number(s)
  if not s then
    return nil
  end

  return tonumber(
    s:match(":(%d+):")
      or s:match("[Oo]n input line (%d+)")
      or s:match("[Ll]ine (%d+)")
      or s:match("l%.(%d+)")
  )
end

local function is_error_start(line)
  local lower = line:lower()

  return line:match("^%s*!")
    or lower:match("^%s*error:")
    or lower:match("^%s*latex error:")
    or lower:match("^%s*! latex error:")
end

local function is_warning_start(line)
  local lower = line:lower()

  return lower:match("^%s*warning:")
    or line:match("^%s*LaTeX Warning:")
    or line:match("^%s*Package .- Warning:")
    or line:match("^%s*Class .- Warning:")
end

local function extract_file_and_line(line, fallback_file, kind)
  -- Tectonic-style examples:
  -- error: path/to/file.tex:123: message
  -- warning: path/to/file.tex:123: message
  local pattern

  if kind == "warning" then
    pattern = "^%s*[Ww]arning:%s+(.+):(%d+):"
  else
    pattern = "^%s*[Ee]rror:%s+(.+):(%d+):"
  end

  local file, lnum = line:match(pattern)

  if file and lnum then
    return file, tonumber(lnum)
  end

  return fallback_file, extract_line_number(line)
end

local function should_stop_continuation(line, current)
  -- TeX messages can have useful continuation lines, but we do not want one
  -- warning/error to swallow the whole log. Blank line after some content is a
  -- good enough boundary for this workflow.
  if not current or not current.lines then
    return false
  end

  if #current.lines >= 40 then
    return true
  end

  if trim(line) == "" and #current.lines >= 2 then
    return true
  end

  return false
end

local function tectonic_log_to_entries(logfile, fallback_bufnr, fallback_file, kind)
  local lines = vim.fn.readfile(logfile)
  local entries = {}
  local current = nil

  local function finish_current()
    if not current then
      return
    end

    current.full_text = table.concat(current.lines, "\n")

    if not current.lnum then
      current.lnum = extract_line_number(current.full_text)
    end

    current.lnum = current.lnum or 1

    local first_line = trim(current.lines[1] or kind)
    first_line = first_line:gsub("%s+", " ")
    current.summary = first_line

    table.insert(entries, current)
    current = nil
  end

  for _, line in ipairs(lines) do
    local starts_error = is_error_start(line)
    local starts_warning = is_warning_start(line)

    local starts_target =
      (kind == "error" and starts_error)
      or (kind == "warning" and starts_warning)

    local starts_other =
      (kind == "error" and starts_warning)
      or (kind == "warning" and starts_error)

    if starts_target then
      finish_current()

      local file, lnum = extract_file_and_line(line, fallback_file, kind)

      current = {
        filename = file or fallback_file,
        bufnr = fallback_bufnr,
        lnum = lnum,
        lines = { line },
      }
    elseif starts_other then
      finish_current()
    elseif current then
      if should_stop_continuation(line, current) then
        finish_current()
      else
        table.insert(current.lines, line)

        local lnum = extract_line_number(line)
        if lnum then
          current.lnum = lnum
        end
      end
    end
  end

  finish_current()

  return entries
end

local function jump_to_entry(entry)
  if entry.filename and entry.filename ~= "" then
    vim.cmd.edit(vim.fn.fnameescape(entry.filename))
  elseif entry.bufnr and vim.api.nvim_buf_is_valid(entry.bufnr) then
    vim.api.nvim_set_current_buf(entry.bufnr)
  else
    return
  end

  local line_count = vim.api.nvim_buf_line_count(0)
  local lnum = math.max(1, math.min(entry.lnum or 1, line_count))

  vim.api.nvim_win_set_cursor(0, { lnum, 0 })
  vim.cmd("normal! zvzz")
end

local function write_preview_files(entries, kind)
  local preview_dir = vim.fn.stdpath("cache") .. "/tectonic-" .. kind .. "-previews"

  vim.fn.mkdir(preview_dir, "p")

  for i, entry in ipairs(entries) do
    local preview_file = preview_dir .. "/" .. kind .. "-" .. i .. ".txt"

    vim.fn.writefile(
      vim.split(entry.full_text or entry.summary or "", "\n", { plain = true }),
      preview_file
    )

    -- Use forward slashes so Windows shell commands are less cranky.
    entry.preview_file = preview_file:gsub("\\", "/")
  end
end

local function populate_quickfix(entries, kind, log_file)
  local qf_items = {}
  local qf_type = kind == "warning" and "W" or "E"

  for _, entry in ipairs(entries) do
    table.insert(qf_items, {
      filename = entry.filename,
      bufnr = entry.bufnr,
      lnum = entry.lnum,
      col = 1,
      type = qf_type,
      text = entry.summary,
    })
  end

  vim.fn.setqflist({}, "r", {
    title = "Tectonic " .. kind .. "s only: " .. vim.fn.fnamemodify(log_file, ":t"),
    items = qf_items,
  })
end

local function pick_tectonic_entries(kind)
  vim.cmd("update")

  local file_dir = vim.fn.expand("%:p:h")
  local file_base = vim.fn.expand("%:t:r")
  local source_file = vim.fn.expand("%:p")
  local source_bufnr = vim.api.nvim_get_current_buf()

  local log_file = file_dir .. "/build/" .. file_base .. ".log"

  if vim.fn.filereadable(log_file) == 0 then
    vim.notify("Log file not found: " .. log_file, vim.log.levels.WARN)
    return
  end

  local entries = tectonic_log_to_entries(
    log_file,
    source_bufnr,
    source_file,
    kind
  )

  if #entries == 0 then
    vim.notify("No " .. kind .. "s found in " .. log_file, vim.log.levels.INFO)
    return
  end

  write_preview_files(entries, kind)
  populate_quickfix(entries, kind, log_file)

  local display_lines = {}
  local by_index = {}

  for i, entry in ipairs(entries) do
    local display = string.format(
      "%03d │ %s:%d │ %s",
      i,
      vim.fn.fnamemodify(entry.filename or source_file, ":t"),
      entry.lnum or 1,
      entry.summary
    )

    -- Hidden fields:
    -- field 1 = visible display
    -- field 2 = index
    -- field 3 = preview file path
    table.insert(
      display_lines,
      display .. "\t" .. tostring(i) .. "\t" .. entry.preview_file
    )

    by_index[i] = entry
  end

  local function selected_entry(selected)
    local item = selected and selected[1]
    if not item then
      return nil
    end

    local idx = tonumber(item:match("\t(%d+)\t"))
    if not idx then
      return nil
    end

    return by_index[idx]
  end

  require("fzf-lua").fzf_exec(display_lines, {
    prompt = "Tectonic " .. kind .. "s> ",
    previewer = false,

    fzf_opts = {
      ["--delimiter"] = "\t",

      -- Only show/search the pretty first field.
      ["--with-nth"] = "1",
      ["--nth"] = "1",

      ["--no-multi"] = true,
      ["--tiebreak"] = "index",

      -- Preview the full multi-line message.
      -- {3} is the hidden preview-file field.
      -- Nushell reads the hidden preview-file field.
      ["--preview"] = black_preview,
			["--preview-window"] = "right:60%:wrap",
      ["--color"] = tectonic_preview_colors,
    },

    actions = {
      ["enter"] = function(selected)
        local entry = selected_entry(selected)
        if not entry then
          return
        end

        jump_to_entry(entry)
      end,
    },
  })
end

function _G.ToggleTectonicErrors()
  pick_tectonic_entries("error")
end

-- Backward-compatible name for your old mapping/command.
function _G.ToggleQuickFix()
  _G.ToggleTectonicErrors()
end

function _G.ToggleTectonicWarnings()
  pick_tectonic_entries("warning")
end

vim.api.nvim_create_user_command("Err", function()
  _G.ToggleTectonicErrors()
end, {
  desc = "Show Tectonic errors in fzf preview",
})

vim.api.nvim_create_user_command("Warn", function()
  _G.ToggleTectonicWarnings()
end, {
  desc = "Show Tectonic warnings in fzf preview",
})

-- Optional lowercase command-line abbreviations.
vim.cmd([[cnoreabbrev err Err]])
vim.cmd([[cnoreabbrev warn Warn]])

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


