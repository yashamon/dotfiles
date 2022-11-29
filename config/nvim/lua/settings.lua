



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
  max_highlighted_traversal_targets = 10,
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
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
require("which-key").setup({
 triggers = {"<leader>", "g", "z"},
    triggers_blacklist = {
        i = { "j", "k", "v" },
        n = { "j", "k", "v" },
        v = { "j", "k" }
      },
})
require("gruvbox").setup({
    overrides = {
        SignColumn = {bg = "#ffa546"},
        Normal = {bg = "#ffa546"},
        DiagnosticSignError = { bg = "#ffa546" },
        DiagnosticSignWarn = { bg = "#ffa546" }, 
        DiagnosticSignInfo = { bg = "#ffa546" }, 
        DiagnosticSignHint = { bg = "#ffa546" },
        --texComment = { fg = "#00ff00" },
        -- texString = { fg = "#0000ff" },
        -- Special = {fg = "#0000ff" },
        -- texCmdName = { fg = "#0000ff" },
        -- SpecialChar = { fg = "#0000ff" },
        -- Statement = { fg = "#0000ff" }

    }
})
require('snippets') 
-- load snippets from path/of/your/nvim/config/my-cool-snippets
--vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
-- require("luasnip/loaders/from_vscode").lazy_load() -- load snippets of friendly/snippets
-- require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets"} ) -- load your own snippets
