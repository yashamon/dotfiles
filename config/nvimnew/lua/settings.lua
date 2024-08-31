-- vim.opt.listchars:append "eol:↴"
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
-- require("indent_blankline").setup {
    -- show_end_of_line = true,
-- }
local ts_config = require("nvim-treesitter.configs") 
ts_config.setup {
	ensure_installed = {
			"latex",
			"nu",
			"python",
			"lua"
	},
	highlight = {
			enable = true,
			use_languagetree = true,
			additional_vim_regex_highlighting = true
	},
	keymaps = {
		init_selection = '<m-CR>',
		--scope_incremental = '<CR>',
		node_incremental = '<TAB>',
		node_decremental = '<S-TAB>',
	},
	indent = {enable = false},
	-- playground = {
	--     enable = true,
	--     disable = {},
	--     updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
	--     persist_queries = false -- Whether the query persists across vim sessions
	-- },
	autotag = {enable = true},
	rainbow = {enable = true},
}
-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = false, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })

require'nu'.setup{}
-- require'nvim-treesitter.configs'.setup {
-- -- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
--   incremental_selection = {
--     enable = true,
--     keymaps = {
--       init_selection = '<m-CR>',
--       --scope_incremental = '<CR>',
--       node_incremental = '<TAB>',
--       node_decremental = '<S-TAB>',
--     },
--   },
-- 	folding = { enable = true },
--   highlight = {
--     enable = true,              -- false will disable the whole extension
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
-- }
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
			{'\'','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', '-', '`', '/', '\\', ',', '.', ';', ']', '[', '}', '{', ')', '(', '$', '.', '~'}
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
require("gruvbox").setup({
undercurl = true,
  underline = true,
  bold = true,
  -- italic = true,
  strikethrough = false,
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
        texType = { fg = "#808080" },
        texMath = { fg = "#650000" },
        TexSpecial = { fg = "#af6000" },
        texDelimiter = { fg = "#af6000" },
        texStatement = { fg = "#580058" },
				texRefzone = { fg = "#af6000" },
				texBeginEnd = { fg = "#00008b" },
				texCite = { fg = "#af6000" },
				Special = { fg = '#580058' },
        -- Operator = { fg = "#808080" },
        Type = { fg = "#008800" },
        Comment = { fg = "#af6000" },
        String = { fg = "#580058" },
        Operator = { fg = "#580058" },
				-- Pmenu = { bg = "#ffa546", fg = "#1e2030"},
				-- Pmenu = { bg = "#ffa546", fg = "white" },
				texTypeStyle = { fg = "#427b58" },
		["@namespace"] = { fg = "#580058" },
		["@text.math"] = { fg = "darkgreen" },
		["@function"] = { fg = "#650000" },
		["@text.title"] = { fg = "darkblue" },
		["@text.environment"] = { fg = "#580058" },
		["@text.environment.name"] = { fg = "#00008b" },
		["@function.macro"] = { fg = "grey" },
		["@punctuation.bracket"] = { fg = "darkred" },
		["@parameter"] = { fg = "darkblue" },
		["@text.reference"] = { fg = "grey" },
		["@include"] = { fg = "grey" },
		["@operator"] = { fg = "darkred" },
		Cursor =  { fg = 'black', bg = 'white' }
        --bright orange  #fd8432
        --texComment = { fg = "#00ff00" },
        -- texString = { fg = "#0000ff" },
        -- Special = {fg = "#0000ff" },
        -- texCmdName = { fg = "#0000ff" },
        -- SpecialChar = { fg = "#0000ff" },
        -- Statement = { fg = "#0000ff" }
    }
})

-- nvim LSP
-- require('snippets')
require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig")
-- LSP config
local lspconfig = require("lspconfig")
lspconfig.tsserver.setup {  LspAttach  = on_attach }
lspconfig.lua_ls.setup {  LspAttach  = on_attach }
lspconfig.jsonls.setup {  LspAttach  = on_attach }
lspconfig.rome.setup {  LspAttach  = on_attach }
lspconfig.vimls.setup {  LspAttach  = on_attach }
lspconfig.ltex.setup { autostart = false; LspAttach = on_attach }
lspconfig.texlab.setup {  LspAttach  = on_attach }
-- lspconfig stuff    
-- local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

require'lspconfig'.lua_ls.setup {
on_init = function(client)
    local path = client.workspace_folders[1].name
    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      }
    })
  end,
  settings = {
   Lua = {
  }
}}
require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
			inlay_hint = { enable = true},
      hint = {
        enable = true, -- necessary
      }
    }
  }
})

--
-- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- Enable completion triggered by <c-x><c-o>
buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- require'lspconfig'.sumneko_lua.setup(require("config.lua-lsp"))
-- require'lspconfig'.lua_ls.setup(require("lualsp")) -- Mappings.
local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<S-C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

  -- Setup cmp.

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
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
      ['<C-Space>'] = cmp.mapping.complete(),
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
{ name = 'tags', keyword_length = 1000 },
{ name = 'nvim_lsp', keyword_length = 3 },
{ name = 'luasnip' },
-- { name = 'omni', keyword_length = 4},
       -- { name = 'spell' }, 
      --{ name = 'treesitter', keyword_length = 4 },
{ name = 'buffer', keyword_length = 4 },
--{ name = 'fuzzy_buffer', keyword_length = 8 }
}),
-- completion = { autocomplete = false }
})

--require('nvim_comment').setup({
   -- Linters prefer comment and line to have a space in between markers
 --  marker_padding = true,
   -- should comment out empty or whitespace only lines
  -- comment_empty = true,
   -- Should key mappings be created
   --create_mappings = true,
   -- Normal mode mapping left hand side
 --  line_mapping = "gc",
   -- Visual/Operator mapping left hand side
  -- operator_mapping = "<leader>c",
   -- Hook function to call before commenting takes place
   --hook = nil 
 --})
require('ufo').setup()
-- Option 2: nvim lsp as LSP client
-- Tell the server the capability of foldingRange,
-- Neovim hasn't added foldingRange to default capabilities, users must add it manually
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}
require("yanker").config({
  history = ";h"
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
-- require("yanky").setup{
--   ring = {
--     history_length = 100,
--     storage = "shada",
--     storage_path = vim.fn.stdpath("data") .. "/databases/yanky.db", -- Only for sqlite storage
--     sync_with_numbered_registers = true,
--     cancel_event = "update",
--     ignore_registers = { "_" },
--     update_register_on_cycle = false,
--   },
--   picker = {
--     select = {
--       action = nil, -- nil to use default put action
--     },
--     telescope = {
--       use_default_mappings = false, -- if default mappings should be used
--       mappings = nil, -- nil to use default mappings or no mappings (see `use_default_mappings`)
--     },
--   },
--   system_clipboard = {
--     sync_with_ring = true,
--     clipboard_register = nil,
--   },
--   highlight = {
--     on_put = true,
--     on_yank = true,
--     timer = 500,
--   },
--   preserve_cursor_position = {
--     enabled = true,
--   },
--   textobj = {
--    enabled = true,
--   },
-- }
-- vim.keymap.set({"n","x"}, ";p", "<Plug>(YankyPutAfter)")
-- vim.keymap.set({"n","x"}, ";P", "<Plug>(YankyPutBefore)")
-- vim.keymap.set({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
-- vim.keymap.set({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")
--
-- vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
-- vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
-- C:/Users/yasha/OneDrive/dotfiles/config/nvimnew/lua/snippets/all.lua
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
