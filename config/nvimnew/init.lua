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
{
  "Robitx/gp.nvim",
  config = function()
    require("gp").setup({
      providers = {
       copilot = {
			endpoint = "https://api.githubcopilot.com/chat/completions",
      secret = os.getenv("GITHUB_COPILOT_TOKEN"),
		},
      },
      default_provider = "copilot",
    })
  end,
},

	{
  'saghen/blink.cmp',
  version = '1.*',
  -- `main` is untested, please open a PR if you've confirmed it works as expected
  dependencies = {
			{'L3MON4D3/LuaSnip', version = 'v2.*'},
			{
            'Kaiser-Yang/blink-cmp-dictionary',
            dependencies = { 'nvim-lua/plenary.nvim' }
      },
			{
        "netmute/blink-cmp-ctags",
    },
		},
  opts = {
    snippets = { preset = 'luasnip', score_offset = 0},
    keymap = { preset = "super-tab", ["<m-k>"] = { "snippet_backward", "select_prev", "fallback" },
				["<m-j>"] = { "snippet_forward", "select_next",  "fallback" },
			},
    -- ensure you have the `snippets` source (enabled by default)
    sources = {
            -- Add 'dictionary' to the list
            default = {'buffer', 'lsp', 'path', 'snippets' },
            providers = {
                dictionary = {
                    module = 'blink-cmp-dictionary',
                    name = 'Dict',
                    -- Make sure this is at least 2.
                    -- 3 is recommended
                    min_keyword_length = 3,
                    opts = {
                        -- options for blink-cmp-dictionary
                    }
                },
					buffer = {
      name = 'Buffer',
      module = 'blink.cmp.sources.buffer',
      opts = {}, -- Passed to the source directly, varies by source
      --- NOTE: All of these options may be functions to get dynamic behavior
      --- See the type definitions for more information
      enabled = true, -- Whether or not to enable the provider
      async = true, -- Whether we should show the completions before this provider returns, without waiting for it
      timeout_ms = 2000, -- How long to wait for the provider to return before showing completions and treating it as asynchronous
      transform_items = nil, -- Function to transform the items before they're returned
      should_show_items = true, -- Whether or not to show the items
      max_items = nil, -- Maximum number of items to display in the menu
      min_keyword_length = 3, -- Minimum number of characters in the keyword to trigger the provider
      -- If this provider returns 0 items, it will fallback to these providers.
      -- If multiple providers fallback to the same provider, all of the providers must return 0 items for it to fallback
      fallbacks = {},
      score_offset = 2000, -- Boost/penalize the score of the items
      override = nil, -- Override the source's functions
    },

									}
        }
  }
},
{
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = true,
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
  },
},
-- {
--     "lmburns/lf.nvim",
--     config = function()
--         -- This feature will not work if the plugin is lazy-loaded
--         vim.g.lf_netrw = 1
--
--         require("lf").setup({
--             escape_quit = false,
--             border = "rounded",
--         })
--
--         vim.keymap.set("n", "<M-o>", "<Cmd>Lf<CR>")
--         vim.api.nvim_create_autocmd({
--             event = "User",
--             pattern = "LfTermEnter",
--             callback = function(a)
--                 vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", {nowait = true})
--             end,
--         })
--     end,
--     requires = {"toggleterm.nvim"}
-- },
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
{'stevearc/resession.nvim'},
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
{
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    -- you'll need at least one of these
    -- {'nvim-telescope/telescope.nvim'},
    {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup()
  end,
},
{
  "lervag/vimtex",
	syntax = true,
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.vimtex_view_method = "sumatrapdf"
		vim.g.vimtex_compiler_enabled = 'false'
  end
},
{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
	branch = "main",
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end
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
{'gbprod/yanky.nvim', lazy = true},
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
{'ggandor/leap.nvim', lazy = true},
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
{'ellisonleao/gruvbox.nvim',
lazy = false, priority = 1000,
config = function()
vim.cmd([[colorscheme gruvbox]])
end,},
-- {'Shougo/neoyank.vim', dependencies = 'Shougo/denite.nvim'},
{'junegunn/fzf', lazy = false, build = ":call fzf#install()" },
{'junegunn/fzf.vim', lazy = true},
-- {'mbbill/undotree', cmd = "UndotreeToggle"},
{'kevinhwang91/nvim-bqf', lazy = false},
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
{'mg979/vim-visual-multi', lazy = false},

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
-- require('mini.indentscope').setup()
-- require('mini.trailspace').setup()
-- require('mini.pairs').setup()
-- require("telescope").load_extension("yank_history")
-- require('flare').setup {
--   enabled = true, -- disable highlighting
--   hl_group = "IncSearch", -- set highlight group used for highlight
--   x_threshold = 10, -- column changes greater than this number trigger highlight
--   y_threshold = 1,  -- row changes greater than this number trigger highlight
--   expanse = 10,  -- highlight will expand to the left and right of cursor up to this amount (depending on space available)
--   file_ignore = { -- suppress highlighting for files of this type
--     "NvimTree",
--     "fugitive",
--     "TelescopePrompt",
--     "TelescopeResult",
--   },
--   fade = true, -- if false will flash highlight for entire area similar to 'vim.highlight.on_yank'
--   underline = false, -- if true will use more subtle underline highlight. Underline highlight can also be accomplished by setting hl_group
--   timeout = 150, -- timeout delay
-- }
-- require('beacon').setup({
-- 	enable = true,
-- 	size = 1,
-- 	fade = true,
-- 	minimal_jump = 1,
-- 	show_jumps = true,
-- 	focus_gained = false,
-- 	shrink = true,
-- 	timeout = 500,
-- 	ignore_buffers = {},
-- 	ignore_filetypes = {},
-- })
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




"Functions

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
function ToggleQuickFix()
      if empty(filter(getwininfo(), 'v:val.quickfix'))
      exec "up"
        let b:filenamedir=expand('%:p:h')
        echo b:filenamedir
        let b:filename=expand('%:t:r')
        let b:errors=b:filenamedir . "/build/" . b:filename .".log"
        exec "cg" b:errors
        copen
        lua <<EOF
        if vim.w.bqf_enabled then
    local winid = vim.api.nvim_get_current_win()
    vim.schedule(function()
        vim.api.nvim_win_call(winid, function()
            vim.api.nvim_feedkeys('zfl.', 'im', false)
						-- Feedkey('zfl.<esc>', 'i')

        end)
    end)
end
EOF
        endif
endfunction
nnoremap <leader>e :silent call ToggleQuickFix()<CR>
function! ClearLatex()
  silent !rm ./build/*
endfunction

" function! CompileLatex()
"   " silent call ClearLatex()
" 	up
"   let buf=bufname()
"   silent te pwsh -nop -c latexmk -pvc -halt-on-error -synctex=1 -file-line-error -f %
"   silent execute "buffer" buf
"   call ViewPdf()
"   call feedkeys("\<cr>")
" endfunction
"
" function! ViewPdf()
" up
" let buf=bufname()
" lua Server()
" let linenumber=line(".")
" let colnumber=col(".")
" let b:filenamedir=expand('%:p:h')
" let filenametex=expand('%:p:t')
" let filenametexwhole=expand('%:p')
" let filenameroot=expand('%:t:r')
" " let filenamePDF=filename[:-4]."pdf"
" let filenamePDFLinux=b:filenamedir . "/buildback/" . filenameroot . ".pdf"
" let b:filenamePDFWindows="build/" . filenameroot . ".pdf"
" " echo b:filenamePDFWindows
" let execstrLinux="silent te zathura --synctex-forward " . linenumber . ":" . colnumber . ":" . filenametexwhole . " " . filenamePDFLinux
" let execstrWindowsTectonic="call jobstart(\"pwsh -nop -c tectonic " . filenametex . " --outdir build --synctex --keep-logs \")"
" let execstrViewerSio="silent te pwsh -nop -c C:/Users/yasha/scoop/apps/sioyek/current/sioyek --forward-search-file " . filenametex . " --forward-search-line " . linenumber 
" let execstrViewer="call jobstart(\"C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber . "\")"
" let execstrWindows2="silent te pwsh -nop -c C:/Users/yasha/scoop/shims/sumatrapdf.EXE -reuse-instance " . b:filenamePDFWindows . " -forward-search " . filenametex . " " . linenumber
" let execstrWindows1="silent te pwsh -nop -c latexmk  -synctex=1 -file-line-error -f -interaction=nonstopmode " . filenametex  
" silent te nu -c "mkdir build"
" silent exec execstrWindowsTectonic 
" silent exec execstrViewer
" silent execute "buffer" buf
" endfunction
]])

 -- " multiple indentation/deindentation in visual mode
 -- vnoremap < <gv
 -- vnoremap > >gv
 -- nnoremap <m-y> viwy:buffer g:buffmain<cr>:<c-r>+<cr><cr>
 -- tnoremap <m-d> <C-\><C-n>:bdelete!<cr>
 -- tnoremap <A-`> <C-\><C-n>
 -- tnoremap <A-Esc> <C-\><C-n>
 -- nmap <A-S-t> :te<cr>
 -- " other mappings
 -- noremap <leader>r :up<cr>:e<cr>
 -- nnoremap q :q<cr>
 -- nnoremap <leader>q q
 -- nmap <m-7> :ZenMode<cr>:mksession!<cr>
 -- nnoremap <leader>u <cr>:UndotreeToggle<CR>
 -- noremap <leader>c :'<,'>CommentToggle<cr>
 -- nnoremap <leader>f :up<cr>:lua Server()<cr>:te lf<cr>i
 -- nnoremap <leader>lg :up<cr>:lua Server()<cr>:te lazygit<cr>i
 -- nnoremap <leader>t :up<cr>:lua Server()<cr>:edit term://nu<cr><cr>
 --
 -- inoremap <m-h> <left>
 -- inoremap <m-l> <right>
 -- vmap <M-.> t.<CR>h
 -- nmap <M-.> t.<CR>h
 -- nnoremap <up> 1<C-U>
 -- nnoremap <m-g> gqip
 -- nnoremap <down> 1<C-D>
 -- noremap <ScrollWheelUp>      <nop>
 -- noremap <S-ScrollWheelUp>    <nop>
 -- noremap <C-ScrollWheelUp>    <nop>
 -- noremap <ScrollWheelDown>    <nop>
 -- noremap <S-ScrollWheelDown>  <nop>
 -- noremap <C-ScrollWheelDown>  <nop>
 -- noremap <ScrollWheelLeft>    <nop>
 -- noremap <S-ScrollWheelLeft>  <nop>
 -- noremap <C-ScrollWheelLeft>  <nop>
 -- noremap <ScrollWheelRight>   <nop>
 -- noremap <S-ScrollWheelRight> <nop>
 -- noremap <C-ScrollWheelRight> <nop>
 -- noremap! <LeftDrag> <nop>
 -- noremap! <RightDrag> <nop>
 -- noremap! <LeftDrag> <nop>
 -- inoremap \ /
 -- inoremap / \
 --
 -- " Movement
 -- inoremap <m-d> <C-w>
 -- noremap gwm /\$<CR>
 -- noremap gbm ?\$<CR>
 -- noremap gwo /(\\|)<CR>
 -- noremap gbo /(\\|)<CR>
 -- noremap gwb /{\\|}<CR>
 -- noremap gbb ?{\\|}<CR>
 -- noremap gww /{\\|}<CR>
 -- noremap gbw ?{\\|}<CR>
 -- noremap gwc /[\\|]<CR>
 -- noremap gbc ?[\\|]<CR>
 --
 -- " copy paste stuff
 -- vnoremap p "_dP
 -- noremap <m-p> <c-r>+
 -- inoremap <m-p> <c-r>+
 -- noremap d "0d
 -- nnoremap cg "0cgn
 -- nnoremap dd "0dd
 -- noremap c "0c
 -- noremap s "0s
 -- noremap C "0C
 -- noremap x "0x
 -- vnoremap x "+x
 -- vnoremap d "0d
 -- vnoremap c "0c
 -- vnoremap y my"+y`y
 -- vnoremap <C-y> y
 -- nnoremap y my"+y`y
 -- nnoremap p "+p
 -- nnoremap <C-p> "0p
 --
 -- nnoremap <leader>q q
 -- inoremap <cr> <esc>$a<cr><space><esc>"_s
 -- inoremap <m-cr> <cr><space><esc>"_s
 --
 -- nnoremap D "0dg$
 -- nnoremap V vg$
 -- noremap X vg$x
 -- nnoremap A g$a
 -- noremap H g^
 -- noremap L g$
 -- nmap <m-8> :set laststatus=0<cr>:set lines=100<cr>:set guifont=Fira\ Code:h18<cr>:set columns=100<cr>
 -- nnoremap <c-l> :bnext<CR>
 -- nnoremap <c-h> :bprevious<CR>
 -- imap <M-j> <C-j>
 -- map q: nop
 -- map <S-C-q> <Esc>:qa!<CR>
 -- map <m-q> <esc>:wq<cr>
 -- map <m-Q> <esc>:q<cr>
 -- map <m-c> :close<cr>
 -- map <m-d> <Esc>:up<CR>:bdelete<CR>
 -- map <m-D> :bdelete!<CR>
 -- noremap gf gq
 -- nmap f /
 -- nmap gv \\/
 -- vmap s \\/
 -- " vim-multiple-\cursors
 -- nnoremap <m-n> <c-n>
 -- noremap F ?
 -- noremap gfm /\$<CR>v?\$<CR>
 -- noremap gm /\$<CR>hv?\$<CR>l
 -- noremap gwb /}<CR>hv?{<CR>l
 -- noremap gsb /]<CR>hv?[<CR>l
 -- noremap gob /)<CR>hv?(<CR>l
 -- map j gj
 -- map k gk
 -- noremap <Space> .
 -- vnoremap <Space> t <cr>
 -- map K <C-u>
 -- map J <C-d>
 -- map <C-j> <C-e>jj
 -- map <C-k> <C-y>kk
 -- nnoremap <leader>j J
 -- nnoremap <leader>k K
 -- map ' "
 -- nnoremap <Backspace> i<Backspace><Esc>
 -- noremap <A-r> <C-r>
 -- nnoremap ` ~
 -- nnoremap . `
 -- noremap <m-1> <C-o>
 -- noremap <m-2> <C-i>
 -- inoremap <m-d> <C-d>
 -- noremap ;w <Esc>:up<CR>
 -- noremap <C-t> <Esc>:AsyncRun ctags -R<CR>
 -- noremap <D-u> <C-u>
 -- noremap <A-u> <C-u>
 -- inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
 -- map ' "
 -- inoremap <D-]> <C-x><C-]>
 -- inoremap <C-]> <C-x><C-]>
 --
 --
 -- nnoremap <m-u> :<Esc>:cg C:/Users/yasha/_vim_mru_files<cr>:copen<cr>:call feedkeys("zf")<CR>
 -- map <m-f> :FZF ~<CR>
 -- nnoremap <leader>gs :up<cr>:source $MYVIMRC<cr>
 -- nnoremap <c-e> viwy:cclose<cr>:<c-r>+<cr><cr>
 -- nnoremap <c-p> :<c-r>+<cr>
 -- nnoremap <leader>c :gc
 --
 -- " Latex maps
 -- nmap <leader>v :silent call ViewPdf()<cr><cr>
 -- map <m-v> <esc>:silent call ViewPdf()<cr><cr>
 -- nmap <leader>ll :silent call CompileLatex()<cr>
 -- nmap <leader>lcl :silent call ClearLatex()<cr>
 -- nmap gtd :TodoQuickFix<cr>
 -- "Quickfix
 -- nnoremap <C-c> :set hlsearch!<cr>
 -- nnoremap <leader>e :silent call ToggleQuickFix()<CR>
 --
 -- " nmap <leader>ga :TZAtaraxis<CR>
 -- "nmap <leader>gm :up<cr>:silent ! cat % >> ~/workspace/email.txt; cp % /tmp/temp; make4ht /tmp/temp "mathml,mathjax"; pandoc /tmp/temp.html --from html --to markdown_strict -o /tmp/temp.md; mv /tmp/temp.md %<cr>:e %<cr>:up<cr>:qa<cr>
 --
 -- " Lsp mappings
 -- nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
 -- noremap ga  :lua vim.lsp.buf.code_action()<CR>
 -- noremap <leader>la  :lua vim.lsp.buf.code_action()<CR>
 -- nmap <leader>c gc
 --
 -- "Leap
 -- map t <Plug>(leap-forward)
 -- map T <Plug>(leap-backward)
 -- " Replace the default dictionary completion with fzf-based fuzzy completion
 -- inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')
 --
 -- "other maps
 -- inoremap <cr> <cr><space><esc>"_s
 -- nnoremap o o<space><esc>"_s
 -- vnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr><cr>
 -- inoremap <m-d> <C-w>
 -- " -1 for jumping backwards.
 -- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
 -- inoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
 -- nnoremap <silent> <m-j> <cmd>lua require('luasnip').jump(1)<Cr>
 -- inoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>
 -- nnoremap <silent> <m-k> <cmd>lua require('luasnip').jump(-1)<Cr>
 -- " For changing choices in choiceNodes (not strictly necessary for a basic setup).
 -- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
 --
 -- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

