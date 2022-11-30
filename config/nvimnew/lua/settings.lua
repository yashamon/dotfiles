



-- Keymaps
vim.keymap.set('t', '<C-r>+', [[getreg('+')]], {expr = true})
-- LSP
require'nvim-treesitter.configs'.setup {
-- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<m-CR>',
      --scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require('leap').setup {
  max_aot_targets = nil,
  highlight_unlabeled = false,
  max_highlighted_traversal_targets = 20,
  case_sensitive = false,
  -- Sets of characters that should match each other.
  -- Obvious candidates are braces and quotes ('([{', ')]}', '`"\'').
  equivalence_classes =
  {
      {' ', "\r", "\n" },
      {'\'','"', '/', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`', '/', '\\', ',', '.',';', ']', '[', '}', '{', ')', '(', '$'}
    },
  -- Leaving the] $appropriate list emapty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.%
  
}
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.9 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = true, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  --on_colors = function(colors) 
  --colors.normal = colors.black 
  --end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) 
  end,
  
})
require("which-key").setup({
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 50, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>', -- binding to scroll up inside the popup
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 50, max = 50 }, -- min and max height of the columns
    width = { min = 10, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  show_keys = true, -- show the currently pressed key and its label as a message in the command line
  triggers = {"<leader>", "g", "z", ";"}, -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by deafult for Telescope
  disable = {
    buftypes = {},
    filetypes = { "TelescopePrompt" },
  },
})
require("gruvbox").setup({
undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  dim_inactive = false,
  transparent_mode = false,
    overrides = {
        SignColumn = {bg = "#ffa546"},
        Normal = {bg = "#ffa546"},
        DiagnosticSignError = { bg = "#ffa546" },
        DiagnosticSignWarn = { bg = "#ffa546" }, 
        DiagnosticSignInfo = { bg = "#ffa546" }, 
        DiagnosticSignHint = { bg = "#ffa546" },
        TexType = { bg = "#808080" }

        --texComment = { fg = "#00ff00" },
        -- texString = { fg = "#0000ff" },
        -- Special = {fg = "#0000ff" },
        -- texCmdName = { fg = "#0000ff" },
        -- SpecialChar = { fg = "#0000ff" },
        -- Statement = { fg = "#0000ff" }

    }
})

-- nvim installer
require('snippets') 
require("nvim-lsp-installer").setup {}
    local lspconfig = require("lspconfig")

    local function on_attach(client, bufnr)
        -- set up buffer keymaps, etc.
    end

    lspconfig.sumneko_lua.setup { on_attach = on_attach }
    lspconfig.tsserver.setup { on_attach = on_attach }
    lspconfig.vimls.setup { on_attach = on_attach }
    lspconfig.ltex.setup { on_attach = on_attach }
    lspconfig.texlab.setup { on_attach = on_attach }
-- lspconfig stuff    
local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- Enable completion triggered by <c-x><c-o>
buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

require'lspconfig'.sumneko_lua.setup(require("lualsp")) -- Mappings.
local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<S-C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  --buf_set_keymap('n', 'lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

  -- Setup cmp.

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
local luasnip = require("luasnip")
local cmp = require'cmp'
cmp.setup ({
snippet = {
  expand = function(args)
    luasnip.lsp_expand(args.body)
  end
},

mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
       ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-x>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
-- ... Your other mappings ...
["<Tab>"] = cmp.mapping(function(fallback)
			if luasnip.expandable() then
				luasnip.expand()
                        elseif cmp.visible() then
                             cmp.select_next_item()
			elseif has_words_before() then
				cmp.complete()
                        	
                             else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
}),


requires = {
    {
      'tzachar/fuzzy.nvim',
      'quangnguyen30192/cmp-nvim-tags',
      -- if you want the sources is available for some file types
      ft = {
        'tex',
        'latex' 
      }
    }
    },
-- ... Your other configuration ...
sources = cmp.config.sources({
      -- For vsnip user. 
{ name = 'tags' },
{ name = 'nvim_lsp', keyword_length = 4 },
{ name = 'luasnip', keyword_length = 4 },
-- For ultisnips user.
      -- { name = 'ultisnips' },  
{ name = 'omni', keyword_length = 4},
       -- { name = 'spell' }, 
      --{ name = 'treesitter', keyword_length = 4 },
{ name = 'buffer', keyword_length = 4 },
--{ name = 'fuzzy_buffer', keyword_length = 8 }
}),
completion = { autocomplete = false }
})

 require('nvim_comment').setup(
{
   -- Linters prefer comment and line to have a space in between markers
   marker_padding = true,
   -- should comment out empty or whitespace only lines
   comment_empty = true,
   -- Should key mappings be created
   create_mappings = true,
   -- Normal mode mapping left hand side
   line_mapping = "gc",
   -- Visual/Operator mapping left hand side
   operator_mapping = "<leader>c",
   -- Hook function to call before commenting takes place
   --hook = nil 
 }
 )

require('spellsitter').setup {
  hl = 'SpellBad', 
  captures = {},  -- set to {} to spellcheck everything

  -- Spellchecker to use. values:
  -- * vimfn: built-in spell checker using vim.fn.spellbadword()
  -- * ffi: built-in spell checker using the FFI to access the
  --   internal spell_check() function
spellchecker = 'vimfn'
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu'},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
  lualine_a = {
        {
          'filename',
          color = 'lualine_a_normal',
          file_status = true,      -- Displays file status (readonly status, modified status)
          newfile_status = false,   -- Display new file status (new file means no write after created)
          path = 3,                -- 0: Just the filename
                                   -- 1: Relative path
                                   -- 2: Absolute path
                                   -- 3: Absolute path, with tilde as the home directory
  
          symbols = {
            modified = '[+]',      -- Text to show when the file is modified.
            readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
            unnamed = '[No Name]', -- Text to show for unnamed buffers.
            newfile = '[New]',     -- Text to show for new created file before first writting
         }
        }
      },
      lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal'}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {{'location', color = 'lualine_z_normal'}}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extension = {}
}
vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapMatch', {
  fg = 'white',  -- for light themes, set to 'black' or similar
  bold = true,
  nocombine = true,
})
require('leap').opts.highlight_unlabeled_phase_one_targets = true
-- load snippets from path/of/your/nvim/config/my-cool-snippets
--vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
-- require("luasnip/loaders/from_vscode").lazy_load() -- load snippets of friendly/snippets
-- require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets"} ) -- load your own snippets
