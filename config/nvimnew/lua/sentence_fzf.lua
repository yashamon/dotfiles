local M = {}

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

  -- Remove remaining noisy math punctuation/operators.
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
  local lnum = math.max(1, math.min(entry.lnum or 1, line_count))

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
        kind = "sentence",
        bufnr = bufnr,
        filename = filename,
        shortname = shortname,
        lnum = start_lnum,
        text = text,
        display = string.format("[SENT] %s:%d: %s", shortname, start_lnum, text),
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

local function parse_ctags_line(line, fallback_filename)
  -- Typical ctags format:
  -- name<TAB>file<TAB>excmd;"<TAB>kind<TAB>line:123<TAB>...
  local fields = vim.split(line, "\t", { plain = true })

  local name = fields[1]
  local file = fields[2] or fallback_filename
  local kind = fields[4] or "tag"
  local lnum = nil

  for _, field in ipairs(fields) do
    local n = field:match("^line:(%d+)$")
    if n then
      lnum = tonumber(n)
      break
    end
  end

  -- Fallback for some ctags variants.
  if not lnum then
    for _, field in ipairs(fields) do
      local n = field:match("(%d+)")
      if n and field:match("^line") then
        lnum = tonumber(n)
        break
      end
    end
  end

  if not name or name == "" or not lnum then
    return nil
  end

  return {
    name = name,
    file = file,
    kind = kind,
    lnum = lnum,
  }
end

local function collect_btags()
  local bufnr = vim.api.nvim_get_current_buf()
  local filename = vim.api.nvim_buf_get_name(bufnr)

  if filename == "" then
    return {}
  end

  if vim.fn.executable("ctags") == 0 then
    return {}
  end

  local shortname = vim.fn.fnamemodify(filename, ":t")

  -- Ask ctags for stdout output, unsorted, with line numbers.
  --
  -- This mirrors the idea of fzf-lua btags: buffer-local tags,
  -- dynamically generated. fzf-lua's btags picker has ctags_autogen=true
  -- by default, but here we need the tags mixed into our own custom picker.
  local cmd = {
    "ctags",
    "-f",
    "-",
    "--sort=no",
    "--fields=+n",
    filename,
  }

  local raw = vim.fn.systemlist(cmd)

  if vim.v.shell_error ~= 0 then
    return {}
  end

  local entries = {}

  for _, line in ipairs(raw) do
    if line ~= "" and not line:match("^%!_TAG_") then
      local tag = parse_ctags_line(line, filename)

      if tag then
        local display = string.format(
          "[TAG]  %s:%d: %s  <%s>",
          shortname,
          tag.lnum,
          tag.name,
          tag.kind
        )

        table.insert(entries, {
          kind = "tag",
          bufnr = bufnr,
          filename = filename,
          shortname = shortname,
          lnum = tag.lnum,
          text = tag.name,
          tag_kind = tag.kind,
          display = display,
        })
      end
    end
  end

  return entries
end

local function collect_entries()
  local entries = {}

  -- Put tags first, because they are navigational anchors.
  for _, entry in ipairs(collect_btags()) do
    table.insert(entries, entry)
  end

  for _, entry in ipairs(collect_sentences()) do
    table.insert(entries, entry)
  end

  return entries
end

function M.pick_sentence()
  local entries = collect_entries()

  if #entries == 0 then
    vim.notify("No sentences or buffer tags found", vim.log.levels.INFO)
    return
  end

  local display_lines = {}
  local entry_by_display = {}

  for _, entry in ipairs(entries) do
    table.insert(display_lines, entry.display)
    entry_by_display[entry.display] = entry
  end

  require("fzf-lua").fzf_exec(display_lines, {
    prompt = "Sentences/Tags> ",
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

-- Clearer new name.
M.pick_sentence_or_tag = M.pick_sentence

-- Optional compatibility with your old direct style:
_G.WriteSentence = M.pick_sentence
_G.PickSentenceOrTag = M.pick_sentence_or_tag

return M
