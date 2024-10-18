local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
-- local timer = 0
-- local function do_complete()
	-- require('cmp').complete({ reason = require('cmp').ContextReason.Auto })
-- end
-- autocmd(
--     { "TextChangedI", },
--     {
--       callback = function()
--         vim.fn.timer_stop(timer)
--         timer = vim.fn.timer_start(100, do_complete)
--       end,
--       pattern = "*",
--     }
-- )
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    -- Always save a special session named "last"
    resession.save("last")
  end,
})
autocmd('FocusLost', { pattern = '*', command = 'silent! wa' })
autocmd('VIMEnter',  { pattern = '*', command = 'let g:buffmain=bufname()' })
autocmd('FileType', { pattern = 'tex', command = 'lua vim.opt.iskeyword:append{":"}'})
autocmd('FileType', { pattern = 'tex,text,md', command = 'lua vim.opt.tw=60'})
autocmd('UIEnter', {command = 'normal zR'})
au('Filetype', { pattern = 'tex,text', command = 'lua vim.opt.spelllang = "en_us"'})
au('Filetype', { pattern = 'tex,text,md', command = 'lua vim.opt.indentexpr = ""'} )
au('Filetype', { pattern = 'vim', command = 'lua vim.opt.list = true'})
au('Filetype', { pattern = 'tex', command = 'lua vim.opt.wrapmargin = 0'} )
au('BufWritePost', { callback = function() GitAsync() GitAsync() end })
-- au({'Filetype', 'BufReadPost'}, { pattern = 'tex', callback = LoadSentence } )
-- au({'Filetype', 'BufReadPost'}, { pattern = 'text,lua,vim,nu,py', callback = LoadLine } )
au('UIEnter', { pattern = 'tex,lua,vim', command = 'silent! w' })
au('Filetype', { pattern = 'tex', command = 'vmap q xi<CR><CR><CR><CR><ESC>kki/begin{comment}<cr><cr>/end{comment}<esc>kp'})
-- local yankGrp = ag("YankHighlight", { clear = true })
-- au("TextYankPost", {
--   command = "silent! lua vim.highlight.on_yank()",
--   group = yankGrp,
-- })
-- au('TextYankPost',  {command =  'silent! call neoyank#_append()'} )

au('TermClose', {command = "if v:event.status ==1 || v:event.status ==0  | exe 'bdelete! '..expand('<abuf>') | endif"})
au('BufLeave', { command = "lua if vim.api.nvim_buf_get_option(0, 'buftype') == 'terminal' then vim.cmd('exe \"bdelete!\"') end" })

-- adapted from https://github.com/ethanholz/nvim-lastplace/blob/main/lua/nvim-lastplace/init.lua
local ignore_buftype = { "quickfix", "nofile", "help" }
local ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" }

local function run()
  if vim.tbl_contains(ignore_buftype, vim.bo.buftype) then
    return
  end

  if vim.tbl_contains(ignore_filetype, vim.bo.filetype) then
    -- reset cursor to first line
    vim.cmd[[normal! gg]]
    return
  end

  -- If a line has already been specified on the command line, we are done
  --   nvim file +num
  if vim.fn.line(".") > 1 then
    return
  end

  local last_line = vim.fn.line([['"]])
  local buff_last_line = vim.fn.line("$")

  -- If the last line is set and the less than the last line in the buffer
  if last_line > 0 and last_line <= buff_last_line then
    local win_last_line = vim.fn.line("w$")
    local win_first_line = vim.fn.line("w0")
    -- Check if the last line of the buffer is the same as the win
    if win_last_line == buff_last_line then
      -- Set line to last line edited
      vim.cmd[[normal! g`"]]
      -- Try to center
    elseif buff_last_line - last_line > ((win_last_line - win_first_line) / 2) - 1 then
      vim.cmd[[normal! g`"zz]]
    else
      vim.cmd[[normal! G'"<c-e>]]
    end
  end
end

vim.api.nvim_create_autocmd({'BufWinEnter', 'FileType'}, {
  group    = vim.api.nvim_create_augroup('nvim-lastplace', {}),
  callback = run
})

-- remember cursor location
