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
