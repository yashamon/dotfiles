local treesitter = require("nvim-treesitter")

-- 1. Setup parser management
treesitter.setup({
  -- Optional: Specify custom install directory
  -- install_dir = vim.fn.stdpath("data") .. "/site"
})

-- 2. Install desired parsers (replaces ensure_installed)
treesitter.install({ "latex", "python", "lua", "nu" })

-- 3. Enable Highlighting & Indentation via Autocommands
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    -- Enable Treesitter highlighting for the current buffer
    pcall(vim.treesitter.start)
    
    -- Enable Treesitter-based indentation (experimental)
    -- Replaces indent = { enable = true }
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

require("resession").setup({
  -- Options for automatically saving sessions on a timer
-- Resession does NOTHING automagically, so we have to set up some keymaps
autosave = {
    enabled = true,
    -- How often to save (in seconds)
    interval = 60,
    -- Notify when autosaved
    notify = true,
  },
  -- Save and restore these options
  options = {
    "binary",
    "bufhidden",
    "buflisted",
    "cmdheight",
    "diff",
    "filetype",
    "modifiable",
    "previewwindow",
    "readonly",
    "scrollbind",
    "winfixheight",
    "winfixwidth",
  },
  -- Custom logic for determining if the buffer should be included
  buf_filter = require("resession").default_buf_filter,
  -- Custom logic for determining if a buffer should be included in a tab-scoped session
  tab_buf_filter = function(tabpage, bufnr)
    return true
  end,
  -- The name of the directory to store sessions in
  dir = "session",
  -- Show more detail about the sessions when selecting one to load.
  -- Disable if it causes lag.
  -- load_detail = true,
  -- Configuration for extensions
  extensions = {
    quickfix = {},
  },
})
--mini stuff
require('mini.comment').setup(
{
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = 'gc',

    -- Toggle comment on current line
    comment_line = 'gc',

    -- Define 'comment' textobject (like `dgc` - delete whole comment block)
    textobject = 'gc',
  },
  -- Hook functions to be executed at certain stage of commenting
  hooks = {
    -- Before successful commenting. Does nothing by default.
    pre = function() end,
    -- After successful commenting. Does nothing by default.
    post = function() end,
  },
})
require('mini.surround').setup(
{
  -- information with examples, see `:h MiniSurround.config`.
  -- custom_surroundings = {'$'},
  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = ';sa', --Add surrounding in Normal and Visual modes
    -- delete = ';sd', -- Delete surrounding
    find = ';sf', -- Find surrounding (to the right)
    find_left = ';sF', -- Find surrounding (to the left)
    highlight = ';sh', -- Highlight surrounding
    replace = ';sr', -- Replace surrounding
    update_n_lines = ';sn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
  -- see `:h MiniSurround.config`.
  search_method = 'cover',
})
require('mini.move').setup(
{
  -- Module mappings. Use `''` (empty string) to disable one.
	-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
  mappings = {
    left = '<left>',
    right = '<right>',
    down = '<down>',
    up = '<up>',

		-- Move current line in Normal mode
    line_left = '<left>',
    line_right = '<right>',
    line_down = '<down>',
    line_up = '<up>',
  },
})
require('leap.user').set_repeat_keys('<enter>', '<backspace>', {
      -- When true, repeat in the direction of the last motion
      -- (by default, <cr>/<bs> always goes forward/backward).
      relative_directions = false,
      modes = {'n', 'x', 'o'},
    })

require('leap').setup {
	
-- max_phase_one_targets = nil,
highlight_unlabeled_phase_one_targets = false,
max_highlighted_traversal_targets = 20,
case_sensitive = false,
substitute_chars = {},
safe_labels = { 'f', 'n', 'u', 't', 'j', 'k', 'g', ';', 'e', 'z', 'o', 'm', 'b', "/", "S", "F", "N", "L", "H", "M", "U", "G", "T", "?", "Z" },
-- labels = { 'f', 'n', 'u', 't', 'j', 'k', 'g', ';', 'e', 'z', 'o', 'm', 'b' },
special_keys = {
  repeat_search = '<enter>',
  next_phase_one_target = '<enter>',
  next_target = {'<enter>', '\''},
  prev_target = {'<tab>', ','},
  next_group = '<space>',
  prev_group = '<tab>',
  multi_accept = '<enter>',
  multi_revert = '<backspace>',
},
  -- Obvious candidates are braces and quotes ('([{', ')]}', '`"\'').
  equivalence_classes =
  {
      {" ","\r", "\n"},
			{'\'','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`', '/', '\\', ',', '.', ';', ']', '[', '}', '{', ')', '(', '$', '.', '~', ','}
	}
-- {'\'','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`', '/', '\\', ',', '.', ';', ']', '[', '}', '{', ')', '(', '$'}
  -- Leaving the] $appropriate list emapty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.%
}
vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' })

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
    scroll_strategy = 'limit',
     previewers = {
    {
      filesize_limit = 25,
      timeout = 300,
      use_highlighter = false
    }
 },
    -- other defaults configuration here
  },
  -- other configuration values here
})
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- style = "day", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  -- light_style = "day", -- The theme is used when the background is set to light
  -- transparent = false, -- Enable this to disable setting the background color
  -- terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  -- styles = {
  --   -- Style to be applied to different syntax groups
  --   -- Value is any valid attr-list value for `:help nvim_set_hl`
  --   comments = { italic = true },
  --   keywords = { italic = true },
  --   functions = {},
  --   variables = {},
  --   -- Background styles. Can be "dark", "transparent" or "normal"
  --   sidebars = "dark", -- style for sidebars, see below
  --   floats = "dark", -- style for floating windows
  -- },
  -- sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  -- day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  -- hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  -- dim_inactive = true, -- dims inactive windows
  -- lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  -- --- You can override specific color groups to use other groups or a hex color
  -- --- function will be called with a ColorScheme table
  -- ---@param colors ColorScheme
  -- on_colors = function(colors) end,
  --
  -- --- You can override specific highlights to use other groups or a hex color
  -- --- function will be called with a Highlights and ColorScheme table
  -- ---@param highlights Highlights
  -- ---@param colors ColorScheme
-- on_highlights = function(highlights, colors) 
-- 		highlights.SignColumn = {bg = "#ffa546"}
-- 		highlights.Normal = {bg = "#ffa546", fg = "black"}
-- 		highlights.DiagnosticSignError = { bg = "#ffa546" }
-- 		highlights.DiagnosticSignWarn = { bg = "#ffa546" }
-- 		highlights.DiagnosticSignInfo = { bg = "#ffa546" }
-- 		highlights.DiagnosticSignHint = { bg = "#ffa546" }
-- 		highlights.texType = { fg = "#808080" }
-- 		-- highlights.texMath = { fg = "#650000" }
-- 		highlights["@namespace"] = { fg = "#580058",
--     style = {}
--     }
-- 		highlights["@text.math"] = { fg = "darkgreen",
--     style = {}
--     }
-- 		highlights["@function"] = { fg = "#650000",
--     style = {}
--     }
-- 		highlights["@text.title"] = { fg = "darkblue",
--     style = {}
--     }
-- 		highlights["@text.environment"] = { fg = "#580058",
--     style = {}
--     }
-- 		highlights["@text.environment.name"] = { fg = "#00008b",
--     style = {}
--     }
-- 		highlights["@function.macro"] = { fg = "#af6000",
--     style = {}
--     }
-- 		highlights["@include"] = { fg = "#af6000",
--     style = {}
--     }
-- 		highlights["@punctuation.bracket"] = { fg = "darkred",
--     style = {}
--     }
-- 		highlights["@parameter"] = { fg = "darkblue",
--     style = {}
--     }
-- 		highlights["@text.reference"] = { fg = "#af6000",
--     style = {}
--     }
-- 		highlights["@operator"] = { fg = "darkred",
--     style = {}
--     }
-- 				highlights.TexSpecial = { fg = "#af6000" }
-- 		highlights.texDelimiter = { fg = "#af6000" }
-- 		highlights.texStatement = { fg = "#580058" }
-- 		highlights.texRefzone = { fg = "#af6000" }
-- 		highlights.texBeginEnd = { fg = "#00008b" }
-- 		highlights.texCite = { fg = "#af6000" }
-- 		highlights.Special = { fg = '#580058' }
-- 		highlights.Type = { fg = "#008800" }
--     highlights.Comment = { fg = "#af6000" }
--     highlights.String = { fg = "#580058" }
--     highlights.Operator = { fg = "#580058" }
-- 		highlights.texBeginEndName = { fg = "#af6000" }
-- 		highlights.texInputFile = { fg = "#580058" }
-- 		-- vim.cmd("highlight Pmenu guibg=NONE")
--         -- Pmenu = { bg = "#ffa546", fg = "#1e2030" },
-- 		-- highlights.Pmenu = { bg = "#ffa546", fg = "white", guibg = "NONE" }
-- 		highlights.texTypeStyle = { fg = "#427b58" }
-- 		highlights.texAbstract = highlights.texBeginEnd
--
-- end,
})
require("which-key").setup({
    triggers = {"g", ";"} -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  -- triggers_blacklist = {
  --   -- list of mode / prefixes that should never be hooked by WhichKey
  --   -- this is mostly relevant for key maps that start with a native binding
  --   -- most people should not need to change this
  --   i = { "j", "k" },
  --   v = { "j", "k" },
  -- },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by deafult for Telescope
})
local dusk_math = "#650000"
local dusk_math_marker = "#580058"
local function apply_latex_orange_overrides()
  local bg = "#ffa546"

  local groups = {
    Normal = { bg = bg },
    NormalNC = { bg = bg },
    SignColumn = { bg = bg },
    DiagnosticSignError = { bg = bg },
    DiagnosticSignWarn = { bg = bg },
    DiagnosticSignInfo = { bg = bg },
    DiagnosticSignHint = { bg = bg },

    texType = { fg = "#808080" },
    texMath = { fg = "darkblue" },
    texCmdEnv = { fg = "darkblue" },
    texRefArg = { fg = "darkgreen" },
    texDelim = { fg = "darkgreen" },
    texMathSymbol = { fg = dusk_math },
    texMathZoneTI = { fg = "darkblue" },
    TexSpecial = { fg = "#af6000" },
    texDelimiter = { fg = "#af6000" },
    texStatement = { fg = "#580058" },
    texRefzone = { fg = "#af6000" },
    texBeginEnd = { fg = "#00008b" },
    texCite = { fg = "#af6000" },

    Special = { fg = "#580058" },
    Type = { fg = "#008800" },
    Search = { fg = "black" },
    Comment = { fg = "#af6000" },
    String = { fg = "#580058" },
    Operator = { fg = "#580058" },

    ["@namespace"] = { fg = "#580058" },
    ["@module.latex"] = { fg = "darkblue" },
    ["@markup.link.latex"] = { fg = "darkgreen" },
    ["@label.latex"] = { fg = "darkgreen" },
    ["@markup.heading.4.latex"] = { fg = "darkgreen" },
    ["@text.math"] = { fg = "darkgreen" },
    ["@text.math.marker"] = { fg = "darkblue" },
    ["@markup.math.latex"] = { fg = "darkblue" },
    ["@function"] = { fg = "darkblue" },
    ["@function.latex"] = { fg = dusk_math },
    ["@text.title"] = { fg = "darkblue" },
    ["@text.environment"] = { fg = "#580058" },
    ["@text.environment.name"] = { fg = "#00008b" },
    ["@function.macro"] = { fg = "grey" },
    ["@punctuation.bracket"] = { fg = "green" },
    ["@parameter"] = { fg = "darkblue" },
    ["@text.reference"] = { fg = "grey" },
    ["@include"] = { fg = "grey" },
    ["@operator"] = { fg = "darkred" },

    Cursor = { fg = "black", bg = "white" },
  }

  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end
local function apply_latex_operatorname_highlight()
  vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = { "tex", "latex" },
    callback = function()
      -- Give \operatorname its own group.
      -- containedin=ALL lets it override inside math zones.
      vim.cmd([[
        syntax match texOperatorName "\\operatorname" containedin=ALL
      ]])

      vim.api.nvim_set_hl(0, "texOperatorName", {
        fg = "grey",
        bold = false,
      })
    end,
  })
end
local function apply_latex_custom_math_highlights()
  -- Operator commands like \operatorname
  vim.cmd([[syntax match texOperatorName "\\operatorname" containedin=ALL]])

  vim.api.nvim_set_hl(0, "texOperatorName", {
    fg = "darkblue",
    bold = false,
  })

  -- Greek letters and common math objects
  vim.cmd([[
    syntax match texGreekSymbol "\\\(alpha\|beta\|gamma\|delta\|epsilon\|varepsilon\|zeta\|eta\|theta\|vartheta\|iota\|kappa\|lambda\|mu\|nu\|xi\|pi\|varpi\|rho\|varrho\|sigma\|varsigma\|tau\|upsilon\|phi\|varphi\|chi\|psi\|omega\)" containedin=ALL
  ]])

  vim.api.nvim_set_hl(0, "texGreekSymbol", {
    fg = "#580058",
    bold = true,
  })

  -- Capital Greek letters
  vim.cmd([[
    syntax match texGreekSymbol "\\\(Gamma\|Delta\|Theta\|Lambda\|Xi\|Pi\|Sigma\|Upsilon\|Phi\|Psi\|Omega\)" containedin=ALL
  ]])
end
vim.cmd.colorscheme("gruvbox-material")
apply_latex_orange_overrides()
apply_latex_operatorname_highlight()
apply_latex_custom_math_highlights()
-- require("gruvbox").setup({
-- undercurl = true,
--   underline = true,
--   bold = true,
--   -- italic = true,
--   strikethrough = false,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = false, -- invert background for search, diffs, statuslines and errors
--   contrast = "hard", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   dim_inactive = false,
--   transparent_mode = false,
--     overrides = {
--         SignColumn = {bg = "#ffa546"},
--         Normal = {bg = "#ffa546"},
--         DiagnosticSignError = { bg = "#ffa546" },
--         DiagnosticSignWarn = { bg = "#ffa546" },
--         DiagnosticSignInfo = { bg = "#ffa546" },
--         DiagnosticSignHint = { bg = "#ffa546" },
--         texType = { fg = "#808080" },
--         texMath = { fg = "#650000" },
-- 				texCmdEnv = {fg = "darkblue" },
-- 				texRefArg = {fg = "darkgreen" },
-- 				texDelim = {fg = "darkgreen" },
-- 				texMathSymbol = { fg = "darkblue" },
-- 				texMathZoneTI = { fg = "#650000" },
--         TexSpecial = { fg = "#af6000" },
--         texDelimiter = { fg = "#af6000" },
--         texStatement = { fg = "#580058" },
-- 				texRefzone = { fg = "#af6000" },
-- 				texBeginEnd = { fg = "#00008b" },
-- 				texCite = { fg = "#af6000" },
-- 				Special = { fg = '#580058' },
--         -- Operator = { fg = "#808080" },
--         Type = { fg = "#008800" },
-- 		    Search = { fg = "black" },
--         Comment = { fg = "#af6000" },
--         String = { fg = "#580058" },
--         Operator = { fg = "#580058" },
-- 				-- Pmenu = { bg = "#ffa546", fg = "#1e2030"},
-- 				-- Pmenu = { bg = "#ffa546", fg = "white" },
-- 				texTypeStyle = { fg = "#427b58" },
-- 		["@namespace"] = { fg = "#580058" },
-- 		["@module.latex"] = { fg = "darkblue" },
-- 		["@markup.link.latex"] = { fg = "darkgreen" },
-- 		["@label.latex"] = { fg = "darkgreen" },
-- 		["@markup.heading.4.latex"] = { fg = "darkgreen" },
-- 		["@text.math"] = { fg = "darkgreen" },
-- 		["@text.math.marker"] = { fg = "orange" },
-- 		["@markup.math.latex"] = { fg = "#650000" },
-- 		["@function"] = { fg = "#650000" },
-- 		["@function.latex"] = { fg = "darkblue" },
-- 		["@text.title"] = { fg = "darkblue" },
-- 		["@text.environment"] = { fg = "#580058" },
-- 		["@text.environment.name"] = { fg = "#00008b" },
-- 		["@function.macro"] = { fg = "grey" },
-- 		["@punctuation.bracket"] = { fg = "green" },
-- 		["@parameter"] = { fg = "darkblue" },
-- 		["@text.reference"] = { fg = "grey" },
-- 		["@include"] = { fg = "grey" },
-- 		["@operator"] = { fg = "darkred" },
-- 		Cursor =  { fg = 'black', bg = 'white' }
--         --bright orange  #fd8432
--         --texComment = { fg = "#00ff00" },
--         -- texString = { fg = "#0000ff" },
--         -- Special = {fg = "#0000ff" },
--         -- texCmdName = { fg = "#0000ff" },
--         -- SpecialChar = { fg = "#0000ff" },
--         -- Statement = { fg = "#0000ff" }
--     }
-- })
require("oil").setup()
require('undotree').setup()
-- nvim LSP
-- require('snippets')
require("mason").setup()
-- require("mason-lspconfig").setup()
-- -- LSP config
-- local lspconfig = vim.lsp.config()
-- local lspconfig = require("lspconfig")
-- lazy.nvim
vim.lsp.config("ctags_lsp", {
      { LspAttach  = on_attach },
			cmd = { "C:/Users/yasha/go/ctags-lsp" },
			filetypes = { "latex", "tex" },
			root_dir = vim.uv.cwd(),
		})
vim.lsp.enable("ctags_lsp")
vim.lsp.config("jsonls.setup", {
	{ LspAttach  = on_attach }
})
vim.lsp.enable({"jsonls"})
vim.lsp.config("lua_ls", {
	{ LspAttach  = on_attach }
})
vim.lsp.enable({"lua_ls"})
vim.lsp.config("vimls", {
	{ LspAttach  = on_attach }
})
vim.lsp.enable({"vimls"})
vim.lsp.config("texlab", {
	{ LspAttach  = on_attach }
})
-- vim.lsp.enable({"texlab"})

require('ufo').setup()
-- Option 2: nvim lsp as LSP client
-- Tell the server the capability of foldingRange,
-- Neovim hasn't added foldingRange to default capabilities, users must add it manually
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}


require("luasnip.loaders.from_vscode").lazy_load()
local ls = require("luasnip")
local cmp = require("blink.cmp")

-- Snippet expansion/jump fallback
vim.keymap.set("i", "<Tab>", function()
  if ls.expand_or_jumpable() then
    ls.expand()
  end
end, { silent = true })
-- vim.keymap.set("i", "<m-j>", function()
--   if ls.jumpable() then
--     ls.jump()
--   end
-- end, { silent = true })
-- vim.keymap.set("i", "<m-k>", function()
--   if ls.jumpable(-1) then
--     ls.jump(-1)
--   end
-- end, { silent = true })

require("fzf-lua").setup({
  profiles = {
    default = {},   -- override default profile
    hide = nil,     -- completely disable the hide profile
  },
})
require('lualine').setup {
  options = {
    -- theme = 
    theme = require('theme').theme(),
    icons_enabled = true,
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
local custom_theme = require('lualine.themes.auto') -- Or replace 'auto' with your specific theme name

-- Iterates through every mode and section to strip backgrounds entirely
for _, mode in pairs(custom_theme) do
  if type(mode) == 'table' then
    for _, section in pairs(mode) do
      if type(section) == 'table' then
        section.bg = 'NONE'
      end
    end
  end
end

require('lualine').setup {
  options = {
    theme = custom_theme,
    -- Your other options go here
  },
}

-- require("luasnip").config.set_config({
--   region_check_events = "InsertEnter,CursorMoved",
--   delete_check_events = "TextChanged,InsertLeave",
-- })
-- require("luasnip").setup{
-- }
-- -- luasnip
-- function Is_math()
--     return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
-- end
--
-- require("luasnip/loaders/from_vscode").load({
-- 	paths = "C:/Users/yasha/OneDrive/dotfiles/snippets",
--   fs_event_providers = {
--                     autocmd = true,
--                     libuv = true,
-- 	},
-- })
-- -- Reload = function()
-- require("luasnip.loaders.from_lua").load({
--                 paths = "C:/Users/yasha/OneDrive/dotfiles/config/nvimnew/lua/snippets",
--                 fs_event_providers = {
--                     autocmd = true,
--                     libuv = true,
--                 },
-- })


--gitgutter
-- require('gitsigns').setup{
--   on_attach = function(bufnr)
--     local gs = package.loaded.gitsigns
--
--     local function map(mode, l, r, opts)
--       opts = opts or {}
--       opts.buffer = bufnr
--       vim.keymap.set(mode, l, r, opts)
--     end
--
--     -- Navigation
--     map('n', 'gn', function()
--       if vim.wo.diff then return ']c' end
--       vim.schedule(function() gs.next_hunk() end)
--       return '<Ignore>'
--     end, {expr=true})
--
--     map('n', 'gp', function()
--       if vim.wo.diff then return '[c' end
--       vim.schedule(function() gs.prev_hunk() end)
--       return '<Ignore>'
--     end, {expr=true})
--
--     -- Actions
--     map({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>')
--     map({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>')
--     map('n', '<leader>hS', gs.stage_buffer)
--     map('n', '<leader>hu', gs.undo_stage_hunk)
--     map('n', '<leader>hR', gs.reset_buffer)
--     map('n', '<leader>hp', gs.preview_hunk)
--     map('n', '<leader>hb', function() gs.blame_line{full=true} end)
--     map('n', '<leader>tb', gs.toggle_current_line_blame)
--     map('n', '<leader>hd', gs.diffthis)
--     map('n', '<leader>hD', function() gs.diffthis('~') end)
--     map('n', '<leader>td', gs.toggle_deleted)
--
--     -- Text object
--     map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
--   end
-- }

-- load snippets from path/of/your/nvim/config/my-cool-snippets
--vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
-- require("luasnip/loaders/from_vscode").lazy_load() -- load snippets of friendly/snippets
-- require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets"} ) -- load your own snippets
