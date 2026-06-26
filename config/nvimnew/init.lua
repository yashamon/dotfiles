--vim.opt.rtp = {"~/AppData/local/nvim", "~/AppData/local/nvim-data", "~/neovim/runtime", "~/neovim/runtime/syntax"}
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
      if vim.v.shell_error ~= 0 then
          vim.api.nvim_echo({
                  { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                        { out, "WarningMsg" },
                              { "\nPress any key to exit..." },
                                  }, true, {})
                                      vim.fn.getchar()
                                          os.exit(1)
                                            end
                                            end
vim.opt.rtp:append(lazypath)
require("lazy").setup({
-- {
--   "sainnhe/everforest",
--   lazy = true,
--   priority = 1000,
--   config = function()
--     vim.o.background = "light"
--
--     vim.g.everforest_background = "hard"
--     vim.g.everforest_enable_bold = 1
--     vim.g.everforest_enable_italic = 0
--     vim.g.everforest_better_performance = 1
--
--     vim.cmd.colorscheme("everforest")
--   end,
-- },
-- 	
{
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "light"

    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_enable_italic = 0
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd.colorscheme("gruvbox-material")
  end,
},
	{
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = true,
  version = false, 
  
  build = vim.fn.has("win32") == 1 
    and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" 
    or "make", 
    
  keys = {
    { ";aa", "<cmd>AvanteToggle<CR>", desc = "Toggle AI Chat Sidebar", mode = { "n", "v" } },
    { ";ae", "<cmd>AvanteEdit<CR>", desc = "Edit Visual Selection Inline", mode = "v" },
  },
  
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", 
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
  
  -- FIXED: Read the key from a local file instead of hardcoding or using system envs
  init = function()
    -- Define the path to your file (update this if you put it somewhere else)
    local key_path = vim.fn.expand("~/.gemini_key.txt")
    
    -- Check if the file actually exists
    if vim.fn.filereadable(key_path) == 1 then
      -- Read the first line of the file and trim any invisible whitespace/newlines
      local raw_key = vim.fn.readfile(key_path)[1]:gsub("^%s*(.-)%s*$", "%1")
      
      -- Load it exclusively into Neovim's local session memory
      vim.env.GEMINI_API_KEY = raw_key
    else
      -- Pop a warning if you delete or move the file by accident
      vim.notify("Avante: Could not find Gemini key file at " .. key_path, vim.log.levels.WARN)
    end
  end,

  opts = {
    provider = "gemini",
    providers = {
      gemini = {
        model = "gemini-2.5-flash",
        max_tokens = 4096,
        temperature = 0,
      },
    },
    behaviour = {
      auto_suggestions = false,
    },
    -- FIXED: Strictly prevent Avante from inhaling heavy directories and crashing token counts
    file_selector = {
      provider = "native", -- Uses native fast string matching
      provider_opts = {
        -- Add patterns for folders you never want the AI to index
        ignored_patterns = {
          "%.git/",
          "node_modules/",
          "target/",      -- Rust builds
          "build/",       -- C++ / JS builds
          "dist/",        -- Production bundles
          "venv/",        -- Python virtual environments
          "%.env",        -- Keep secret keys out of the AI prompt entirely
          "%.meta",       -- Unity metadata files
        },
      },
    },
  },
	},
{
  'saghen/blink.cmp',
  version = '1.*', 
  build = 'cargo build --release',
  
  dependencies = {
    { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    { 'Kaiser-Yang/blink-cmp-dictionary' },
    { "netmute/blink-cmp-ctags" },
  },
  
opts = {
  fuzzy = { implementation = "prefer_rust" },

  snippets = { preset = "luasnip", score_offset = 0 },

  keymap = {
    preset = "none",
    ["<m-k>"] = { "select_prev", "fallback" },
    ["<m-h>"] = { "snippet_backward" },
    ["<m-l>"] = { "snippet_forward" },
    ["<m-j>"] = { "select_next", "fallback" },
    ["<CR>"]  = { "accept", "fallback" },
  },

  cmdline = {
    enabled = true,
    keymap = {
      preset = "none",
      ["<m-k>"] = { "select_prev", "fallback" },
      ["<m-j>"] = { "select_next", "fallback" },
      ["<Tab>"] = { "show", "select_next", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    sources = function()
      local t = vim.fn.getcmdtype()
      if t == "/" or t == "?" then
        return { "buffer" }
      end
      if t == ":" or t == "@" then
        return { "cmdline" }
      end
      return {}
    end,
    completion = {
      menu = { auto_show = true },
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
      ghost_text = { enabled = false },
    },
  },

  sources = {
    default = { "buffer", "lsp", "path", "snippets" },
    providers = {
      dictionary = {
        module = "blink-cmp-dictionary",
        enabled = false,
        name = "Dict",
        min_keyword_length = 3,
        opts = {
          dictionary_files = {
            vim.fn.expand("~/nvimnew/dict/words.txt"),
          },
          get_command = "rg",
        },
      },

      buffer = {
        name = "Buffer",
        module = "blink.cmp.sources.buffer",
        opts = {},
        enabled = true,
        async = true,
        timeout_ms = 2000,
        min_keyword_length = 3,
        fallbacks = {},
        score_offset = 2000,
      },
    },
  },
} 
},
{
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
		lazy = true,
  config = true,
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
  },
},
{
  "lmburns/lf.nvim",
  dependencies = { 
    "akinsho/toggleterm.nvim",
  },
  config = function()
    -- Optional: If you want lf to completely replace netrw (Neovim's default explorer)
    vim.g.lf_netrw = 1
    
    require("lf").setup({
      escape_quit = false, -- So hitting <Esc> doesn't accidentally close the window
      border = "rounded",
      
      -- Default actions when you select a file in lf
      default_action = "drop", 
      default_actions = {
        ["<C-t>"] = "tabedit",
        ["<C-x>"] = "split",
        ["<C-v>"] = "vsplit",
      },
    })
  end,
  keys = {
    -- Map your preferred keybind to toggle the lf window
    { ";lf", "<cmd>Lf<cr>", desc = "Open lf file manager" },
  },
},
-- {
--   'tim-harding/neophyte',
--   tag = '0.3.0',
--   event = 'VeryLazy',
--   opts = {
--     -- Same as neophyte.setup({ ... })
--   },
-- },
-- { "karb94/neoscroll.nvim",
-- config = function ()
-- neoscroll = require('neoscroll')
-- local keymap = {
--   ["J"] = function() neoscroll.ctrl_u({ duration = 250 }) end;
--   ["K"] = function() neoscroll.ctrl_d({ duration = 250 }) end;
--   ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end;
--   ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450 }) end;
--   ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
--   ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
--   ["zt"]    = function() neoscroll.zt({ half_screen_duration = 250 }) end;
--   ["zz"]    = function() neoscroll.zz({ half_screen_duration = 250 }) end;
--   ["zb"]    = function() neoscroll.zb({ half_screen_duration = 250 }) end;
-- }
--local modes = { 'n', 'v', 'x' }
--for key, func in pairs(keymap) do
--  vim.keymap.set(modes, key, func)
--end
--end
--},
-- "MysticalDevil/inlay-hints.nvim",
--     event = "LspAttach",
--     dependencies = { "neovim/nvim-lspconfig" },
--     config = function()
--         require("inlay-hints").setup()
--     end,
{
  "stevearc/resession.nvim",
  lazy = false,
  config = function()
    local resession = require("resession")

    resession.setup({})

    local session_name = "last"
    local session_dir = "lastsession"

    local group = vim.api.nvim_create_augroup("LastResession", {
      clear = true,
    })

    local function should_load_session()
      -- Only restore when nvim was opened with no file arguments.
      return vim.fn.argc(-1) == 0 and not vim.g.using_stdin
    end

    vim.api.nvim_create_autocmd("StdinReadPre", {
      group = group,
      callback = function()
        vim.g.using_stdin = true
      end,
    })

    vim.api.nvim_create_autocmd("VimEnter", {
      group = group,
      nested = true,
      once = true,
      callback = function()
        if not should_load_session() then
          return
        end

        -- Schedule it so other startup/plugin nonsense has settled.
        vim.schedule(function()
          local ok, err = pcall(function()
            resession.load(session_name, {
              dir = session_dir,
              silence_errors = true,
              reset = true,
            })
          end)

          if not ok then
            vim.notify(
              "Failed to load last session: " .. tostring(err),
              vim.log.levels.ERROR
            )
          end
        end)
      end,
    })

    vim.api.nvim_create_autocmd("VimLeavePre", {
      group = group,
      callback = function()
        local ok, err = pcall(function()
          resession.save(session_name, {
            dir = session_dir,
            notify = false,
            attach = false,
          })
        end)

        if not ok then
          vim.notify(
            "Failed to save last session: " .. tostring(err),
            vim.log.levels.ERROR
          )
        end
      end,
    })

    vim.api.nvim_create_user_command("SaveLastSession", function()
      resession.save(session_name, {
        dir = session_dir,
        notify = true,
        attach = false,
      })
    end, {})

    vim.api.nvim_create_user_command("LoadLastSession", function()
      resession.load(session_name, {
        dir = session_dir,
        reset = true,
        silence_errors = false,
      })
    end, {})
  end,
},
	{
  "esmuellert/codediff.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  cmd = "CodeDiff",
},
-- { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim', lazy = true },
-- {
--     "yuki-yano/highlight-undo.nvim",
--     config = function()
--         require('highlight-undo').setup({})
--     end,
--     dependencies = { "vim-denops/denops.vim" },
-- },
-- {
--   "AckslD/nvim-neoclip.lua",
--   dependencies = {
--     -- you'll need at least one of these
--     -- {'nvim-telescope/telescope.nvim'},
--     {'ibhagwan/fzf-lua'},
--   },
--   config = function()
--     require('neoclip').setup()
--   end,
-- },
-- {
--   "lervag/vimtex",
-- 	syntax = true,
--   lazy = false,     -- we don't want to lazy load VimTeX
--   -- tag = "v2.15", -- uncomment to pin to a specific release
--   init = function()
--     -- VimTeX configuration goes here, e.g.
--     -- vim.g.vimtex_view_method = "sumatrapdf"
-- 		vim.g.vimtex_compiler_enabled = 'false'
--   end
-- },
{
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      -- Use the external fzf binary (faster than the Lua fallback)
      fzf_bin = "fzf",

      -- Minimal floating window overhead
      keymap = {
        fzf = {
          ["alt-j"] = "down",
          ["alt-k"] = "up",
        },
      },

      winopts = {
        on_create = function()
          vim.keymap.set("t", "<M-j>", "<Down>", {
            buffer = true,
            silent = true,
          })

          vim.keymap.set("t", "<M-k>", "<Up>", {
            buffer = true,
            silent = true,
          })
        end,
      },
      -- Disable icons (small but real speed boost)
      files = {
        fd_opts = [[--color=never --type f --hidden --follow --exclude .git]],
        git_icons = false,
        file_icons = false,
        color_icons = false,
      },

      -- Use bat for preview (fastest external previewer)
      previewers = {
        builtin = false,  -- disable Neovim buffer previewer
        bat = {
          cmd = "bat",
          args = "--style=numbers --color=always --paging=never",
        },
      },

      -- Global fzf options (applies to all pickers)
      fzf_opts = {
        ["--ansi"] = "",
        ["--layout"] = "reverse",
        ["--info"] = "inline",
        ["--preview-window"] = "right:50%",
        ["--bind"] = "ctrl-/:toggle-preview",
      },

      -- Fast ripgrep integration
      grep = {
        rg_opts = table.concat({
          "--hidden",
          "--glob '!.git'",
          "--color=always",
          "--line-number",
          "--no-heading",
          "--smart-case",
        }, " "),
      },
    })
  end,
},

{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
},
{'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async', lazy = true},
{
  "gbprod/yanky.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("yanky").setup({})
    -- Register the extension with Telescope
    require("telescope").load_extension("yank_history")
  end,
  keys = {
    { ";p", "<cmd>Telescope yank_history<cr>", mode = { "n", "x" }, desc = "Fuzzy find yank history" },
    
    -- Standard yanky core keymaps
    { "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Yank text" },
    { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after cursor" },
    { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before cursor" },
  },
},
-- {'ThePrimeagen/harpoon', dependencies = "nvim-lua/plenary.nvim"},
-- {'jose-elias-alvarez/null-ls.nvim', dependencies = "nvim-lua/plenary.nvim" },
-- {'nvim-telescope/telescope-fzf-native.nvim', lazy = true},
{'folke/todo-comments.nvim', lazy = true},
{ "nvim-treesitter/nvim-treesitter", branch = "main", build = ":TSUpdate" },
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
		
},-- {'saadparwaiz1/cmp_luasnip', lazy = true},
-- {'nvim-treesitter/playground', lazy = true},
-- {
--     "nvim-treesitter/nvim-treesitter",
--     config = function()
--         -- setup treesitter with config
--     end,
--     dependencies = {
--         -- NOTE: additional parser
--         { "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
--     },
--     build = ":TSUpdate",
-- },
-- {'LhKipp/nvim-nu', dependencies = { "nvim-treesitter/nvim-treesitter", "jose-elias-alvarez/null-ls.nvim", lazy = true}
-- },
{'echasnovski/mini.nvim', lazy =true },
{'lukas-reineke/indent-blankline.nvim', event = { "BufRead", "BufNewFile" }},
{'folke/which-key.nvim', lazy = true},
{'lambdalisue/nerdfont.vim'},
{
      url = "https://codeberg.org/andyg/leap.nvim",
},
{'kyazdani42/nvim-web-devicons', lazy = true},
{'glacambre/firenvim', build = ":call firenvim#install(0)", lazy = false },
-- {'neovim/nvim-lspconfig', lazy = true },
{'williamboman/mason.nvim', lazy = true},
-- {'williamboman/mason-lspconfig.nvim', lazy = true},
-- {
--     "hrsh7th/nvim-cmp",
--     -- load cmp on InsertEnter
--     event = "InsertEnter",
--     -- these dependencies will only be loaded when cmp loads
--     -- dependencies are always lazy-loaded unless specified otherwise
--     dependencies = {
--       "hrsh7th/cmp-nvim-lsp",
--       "hrsh7th/cmp-buffer",
-- 			'quangnguyen30192/cmp-nvim-tags',
--     },
--  },
-- {'terrortylor/nvim-comment', cmd = "CommentToggle"},
{'nvim-lualine/lualine.nvim', lazy=false },
{'justinhoward/fzf-neoyank', lazy=false },
{'folke/tokyonight.nvim', lazy = true
},
-- {
--   "folke/noice.nvim",
--   event = "VeryLazy",
--   opts = {
--     -- add any options here
--   },
--   dependencies = {
--     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
--     "MunifTanjim/nui.nvim",
--     -- OPTIONAL:
--     --   `nvim-notify` is only needed, if you want to use the notification view.
--     --   If not available, we use `mini` as the fallback
--     -- "rcarriga/nvim-notify",
--     }
-- },
-- {'ellisonleao/gruvbox.nvim',
-- lazy = true, priority = 1000,
-- config = function()
-- vim.cmd.colorscheme("gruvbox")
-- end,
-- },
-- {'Shougo/neoyank.vim', dependencies = 'Shougo/denite.nvim'},
{'junegunn/fzf', lazy = false, build = ":call fzf#install()" },
{'junegunn/fzf.vim'},
-- {'kevinhwang91/nvim-bqf', lazy = false},
{
    'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' }
},

-- {
--   "nvim-telescope/telescope.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "debugloop/telescope-undo.nvim",
--   },
--   config = function()
--     require("telescope").setup({
--       -- the rest of your telescope config goes here
--       extensions = {
--         undo = {
--           -- telescope-undo.nvim config, see below
--         },
--         -- other extensions:
--         -- file_browser = { ... }
--       },
--     })
--     require("telescope").load_extension("undo")
--     -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
--   end,
-- },
{'mg979/vim-visual-multi', lazy = true},

})
-- luasnip
function Is_math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

require("luasnip/loaders/from_vscode").lazy_load({
	paths = "C:/Users/yasha/OneDrive/workspacemodules/dotfiles/snippets",
  -- fs_event_providers = {
                    -- autocmd = true,
                    -- libuv = true,
	-- },
})
-- Reload = function()
require("luasnip.loaders.from_lua").load({
                paths = "C:/Users/yasha/OneDrive/workspacemodules/dotfiles/config/nvimnew/lua/snippets",
                fs_event_providers = {
                    autocmd = true,
                    libuv = true,
                },
})
vim.diagnostic.config({
  -- Use the default configuration
  virtual_lines = true

  -- Alternatively, customize specific options
  -- virtual_lines = {
  --  -- Only show virtual line diagnostics for the current cursor line
  --  current_line = true,
  -- },
})
require'nvim-treesitter.install'.compilers = { 'clang' }
require('settings')
require('functions')
require('set')
require('au')
require('keymaps')
vim.lsp.enable({
  -- lua
  "luals",
	-- "texlab",
	-- "nuls",
	-- "jsonls"
})
vim.cmd([[
" let $VIMRUNTIME = "C:/Users/yasha/executable/share/nvim/runtime"
" Autocommands, au
 function! OnUIEnter(event)
	let l:ui = nvim_get_chan_info(a:event.chan)
	if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
		if l:ui.client.name ==# 'Firenvim'
			set guifont=Fira\ Code:h20
                        set lines=100
                        set columns=100
                        noremap q <esc>:wq<cr>
		endif
	endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
" autocmd UIEnter * lua OnUIEnter(v:event)

"maps remaps mappings

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
" nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
cmap cd. lcd %:p:h
cmap <m-p> <c-r>+
" commands
command Tw50 set tw=50
command Tw0 set tw=0
command! Send lua Send()
command! ES set spelllang=es
command! FR set spelllang=fr
command! PT set spelllang=pt

" cmap ES set spelllang=es<cr>
command! EN set spelllang=en_us
command! Ser lua Server()
" LSP
command! LT LspStart ltex
command! LTo LspStop ltex




"Vim Functions

function Bluemoon()
   set background=dark
   colorscheme blue-moon
   " colorscheme material
endfunction
function Deepocean()
   set background=dark
   colorscheme material
   let g:material_style = 'deep ocean'
endfunction
function Palenight()
   set background=dark
   " colorscheme blue-moon
   colorscheme material
   let g:material_style = 'palenight'
endfunction
function Light()
   colorscheme gruvbox
   set background=light
endfunction
function Lighter()
   " colorscheme blue-moon
   colorscheme tokyonight-day
endfunction
function Dark()
   set background=dark
   colorscheme tokyonight-moon
endfunction
function! Profile()
profile start profile.log
profile func *
profile file *
endfunction
function! ClearLatex()
  silent !rm ./build/*
endfunction
]])


