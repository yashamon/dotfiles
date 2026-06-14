-- -- sentence_fzf_preserve.lua
-- -- Same sentence stream as the old temp-file version, but fed directly to fzf-lua.
--
-- local M = {}
--
-- M.GetFilename = function(path)
--   local start = path:find('[%w%s!-={-|]+[_%.].+')
--   if not start then
--     return path
--   end
--   return path:sub(start, #path)
-- end
--
-- local function make_sentence_stream(lines, filenameshort)
--   local chunks = {}
--
--   for i, v in ipairs(lines) do
--     local a
--
--     -- Preserve the old behavior:
--     -- only the first physical line gets an initial prefix; later physical lines
--     -- are appended so wrapped sentences remain one fzf entry.
--     if i > 1 then
--       a = v .. '@'
--     else
--       a = filenameshort .. ':' .. i .. ': ' .. v
--     end
--
--     local b = a:gsub('%.%s+@ ', '.@ ')
--     local c = b:gsub('%.%s', '.@ ')
--
--     chunks[#chunks + 1] = c
--       :gsub('%.@', '\n' .. filenameshort .. ':' .. i .. ': ')
--       :gsub('\\', ' ')
--       :gsub('%$', '')
--   end
--
--   -- The old code effectively concatenated without adding separators.
--   return table.concat(chunks, '')
-- end
--
-- local function stream_to_entries(stream)
--   local entries = {}
--
--   for entry in (stream .. '\n'):gmatch('(.-)\n') do
--     entry = entry:gsub('^%s+', ''):gsub('%s+$', '')
--
--     -- Keep only real jumpable entries of the form file:line:text.
--     if entry ~= '' and entry:match('^.-:%d+:') then
--       -- Drop leftover line-marker junk from the old algorithm.
--       entry = entry:gsub('@+$', '')
--       entries[#entries + 1] = entry
--     end
--   end
--
--   return entries
-- end
--
-- local function jump_to_line(bufnr, filename, lnum)
--   lnum = tonumber(lnum)
--   if not lnum then
--     return
--   end
--
--   vim.schedule(function()
--     if vim.api.nvim_buf_is_valid(bufnr) then
--       vim.api.nvim_set_current_buf(bufnr)
--     else
--       vim.cmd('edit ' .. vim.fn.fnameescape(filename))
--     end
--
--     local line_count = vim.api.nvim_buf_line_count(0)
--     lnum = math.max(1, math.min(lnum, line_count))
--     vim.api.nvim_win_set_cursor(0, { lnum, 0 })
--     vim.cmd('normal! zz')
--   end)
-- end
--
-- M.WriteSentence = function()
--   local ok, fzf = pcall(require, 'fzf-lua')
--   if not ok then
--     vim.notify('fzf-lua is not available', vim.log.levels.ERROR)
--     return
--   end
--
--   local bufnr = vim.api.nvim_get_current_buf()
--   local filename = vim.fn.expand('%:p')
--   local filenameshort = vim.fn.bufname()
--
--   if filenameshort == '' then
--     filenameshort = '[No Name]'
--   end
--
--   local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
--   local stream = make_sentence_stream(lines, filenameshort)
--   local entries = stream_to_entries(stream)
--
--   if #entries == 0 then
--     vim.notify('No sentence-like entries found', vim.log.levels.INFO)
--     return
--   end
--
--   local function jump_action(selected)
--     local item = selected and selected[1]
--     if not item then
--       return
--     end
--
--     local lnum = item:match('^.-:(%d+):')
--     jump_to_line(bufnr, filename, lnum)
--   end
--
--   fzf.fzf_exec(entries, {
--     prompt = 'Sentences> ',
--     previewer = false,
--     actions = {
--       ['default'] = jump_action,
--       ['enter'] = jump_action,
--     },
--   })
-- end
--
-- -- Keep the old global names working.
-- _G.WriteSentence = M.WriteSentence
-- _G.GetFilename = M.GetFilename
--
-- return M
local M = {}

local function trim(s)
  return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end
local function trim(s)
  return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

local drop_latex_command_with_arg = {
  cite = true,
  citet = true,
  citep = true,
  citealp = true,
  label = true,
  ref = true,
  eqref = true,
  autoref = true,
  cref = true,
  Cref = true,
  pageref = true,
  url = true,
  href = true,
  begin = true,
  ["end"] = true,
}

local function clean_display_text(s)
  -- Remove TeX comments.
  s = s:gsub("%%.*$", " ")

  -- Remove display/math delimiters but keep the inside text.
  s = s:gsub("\\%[", " ")
  s = s:gsub("\\%]", " ")
  s = s:gsub("\\%(", " ")
  s = s:gsub("\\%)", " ")
  s = s:gsub("%$", " ")

  -- Remove linebreak commands.
  s = s:gsub("\\\\", " ")

  -- Handle commands with optional + mandatory arguments:
  -- \cite[see]{foo}, \href{url}{text}, etc.
  for _ = 1, 4 do
    s = s:gsub("\\([%a]+)%*?%s*(%b[])%s*(%b{})", function(cmd, _opt, arg)
      if drop_latex_command_with_arg[cmd] then
        return " "
      end

      return " " .. arg:sub(2, -2) .. " "
    end)

    s = s:gsub("\\([%a]+)%*?%s*(%b{})", function(cmd, arg)
      if drop_latex_command_with_arg[cmd] then
        return " "
      end

      -- For \mathcal{F}, \emph{word}, \operatorname{diam}, etc.,
      -- keep the content and discard the command.
      return " " .. arg:sub(2, -2) .. " "
    end)
  end

  -- Remove remaining LaTeX commands:
  -- \mathcal, \alpha, \leq, \to, \subset, etc.
  s = s:gsub("\\[%a]+%*?", " ")

  -- Remove escaped special chars.
  s = s:gsub("\\([%%&_#{}])", " %1 ")

  -- Purge common TeX structure symbols.
  s = s:gsub("[{}_%^%$]", " ")

  -- Remove remaining backslashes.
  s = s:gsub("\\", " ")

  -- Remove some noisy math punctuation/operators.
  s = s:gsub("[=<>|]", " ")
  s = s:gsub("[%[%]%(%)]+", " ")

  -- Collapse whitespace.
  s = s:gsub("%s+", " ")

  return trim(s)
end

local function find_sentence_end(line, start_pos)
  for i = start_pos, #line do
    if line:sub(i, i) == "." then
      local next_char = line:sub(i + 1, i + 1)

      -- Match a period followed by whitespace or end of line.
      -- This roughly preserves the behavior of your old ". " splitting.
      if next_char == "" or next_char:match("%s") then
        return i
      end
    end
  end

  return nil
end

local function jump_to_entry(entry)
  if entry.bufnr and vim.api.nvim_buf_is_valid(entry.bufnr) then
    vim.api.nvim_set_current_buf(entry.bufnr)
  elseif entry.filename and entry.filename ~= "" then
    vim.cmd.edit(vim.fn.fnameescape(entry.filename))
  else
    return
  end

  local line_count = vim.api.nvim_buf_line_count(0)
  local lnum = math.max(1, math.min(entry.lnum, line_count))

  vim.api.nvim_win_set_cursor(0, { lnum, 0 })
  vim.cmd("normal! zvzz")
end

local function collect_sentences()
  local bufnr = vim.api.nvim_get_current_buf()
  local filename = vim.api.nvim_buf_get_name(bufnr)
  local shortname = vim.fn.fnamemodify(filename, ":t")

  if shortname == "" then
    shortname = "[No Name]"
  end

  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local entries = {}

  local parts = {}
  local start_lnum = nil

  local function add_part(fragment, lnum)
    if fragment:match("%S") then
      if not start_lnum then
        start_lnum = lnum
      end

      table.insert(parts, fragment)
    end
  end

  local function finish_sentence()
    if not start_lnum then
      return
    end

    local text = clean_display_text(table.concat(parts, " "))

    if text ~= "" then
      table.insert(entries, {
        bufnr = bufnr,
        filename = filename,
        shortname = shortname,
        lnum = start_lnum,
        text = text,
        display = shortname .. ":" .. start_lnum .. ": " .. text,
      })
    end

    parts = {}
    start_lnum = nil
  end

  for lnum, line in ipairs(lines) do
    local pos = 1

    while pos <= #line do
      local sentence_end = find_sentence_end(line, pos)

      if sentence_end then
        add_part(line:sub(pos, sentence_end), lnum)
        finish_sentence()
        pos = sentence_end + 1
      else
        add_part(line:sub(pos), lnum)
        break
      end
    end
  end

  -- Include final unfinished sentence, useful for drafts.
  finish_sentence()

  return entries
end

function M.pick_sentence()
  local entries = collect_sentences()

  if #entries == 0 then
    vim.notify("No sentences found", vim.log.levels.INFO)
    return
  end

  local display_lines = {}
  local entry_by_display = {}

  for _, entry in ipairs(entries) do
    table.insert(display_lines, entry.display)
    entry_by_display[entry.display] = entry
  end

  require("fzf-lua").fzf_exec(display_lines, {
    prompt = "Sentences> ",
    previewer = false,

    fzf_opts = {
      ["--no-multi"] = true,
      ["--tiebreak"] = "index",
    },

    actions = {
      ["enter"] = function(selected)
        local choice = selected and selected[1]
        local entry = choice and entry_by_display[choice]

        if not entry then
          return
        end

        jump_to_entry(entry)
      end,
    },
  })
end

-- Optional compatibility with your old direct style:
_G.WriteSentence = M.pick_sentence

return M
