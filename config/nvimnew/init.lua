local path = '~/OneDrive/dotfiles/config/nvim'
-- .. vim.fn.stdpath("data")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp = {lazypath}
require("lazy").setup({
{ 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim', lazy = true },
-- {
--     "yuki-yano/highlight-undo.nvim",
--     config = function()
--         require('highlight-undo').setup({})
--     end,
--     dependencies = { "vim-denops/denops.vim" },
-- },
{
	"arsham/yanker.nvim",
  dependencies = { "arsham/arshlib.nvim", "junegunn/fzf.vim", "MunifTanjim/nui.nvim" },
  config = true, lazy = true
},
{  "aaronhallaert/advanced-git-search.nvim", config = function()
require("telescope").setup{
            -- move this to the place where you call the telescope setup function
  extensions = {
    advanced_git_search = {
                        -- See Config
    -- fugitive or diffview
			diff_plugin = "diffview",
			-- customize git in previewer
			-- e.g. flags such as { "--no-pager" }, or { "-c", "delta.side-by-side=false" }
			git_flags = {},
			-- customize git diff in previewer
			-- e.g. flags such as { "--raw" }
			git_diff_flags = {},
			-- Show builtin git pickers when executing "show_custom_functions" or :AdvancedGitSearch
			show_builtin_git_pickers = false,

			-- Telescope layout setup
			telescope_theme = {
					function_name_1 = {
							-- Theme options
					},
					function_name_2 = "dropdown",
					-- e.g. realistic example
					show_custom_functions = {
							layout_config = { width = .9, height = .9 },
					},
		  }
		}
  }
}
require("telescope").load_extension("advanced_git_search") end,
    dependencies = {
		"nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim"}
},
{'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async', lazy = true},
{'gbprod/yanky.nvim', lazy = true},
{'jose-elias-alvarez/null-ls.nvim', dependencies = "nvim-lua/plenary.nvim" },
{'nvim-telescope/telescope-fzf-native.nvim', lazy = true},
{'folke/todo-comments.nvim', lazy = true},
{'L3MON4D3/LuaSnip', lazy = true },
{'saadparwaiz1/cmp_luasnip', lazy = true},
{'nvim-treesitter/playground', lazy = true},
{'LhKipp/nvim-nu', dependencies = { "nvim-treesitter/nvim-treesitter", "jose-elias-alvarez/null-ls.nvim"}
},
{'echasnovski/mini.nvim', lazy =true },
{'lukas-reineke/indent-blankline.nvim', event = { "BufRead", "BufNewFile" }},
{'folke/which-key.nvim', lazy = true},
{'lambdalisue/nerdfont.vim'},
{'ggandor/leap.nvim', lazy = true},
{'kyazdani42/nvim-web-devicons', lazy = true},
{'glacambre/firenvim', build = ":call firenvim#install(0)", lazy = false },
{'neovim/nvim-lspconfig', lazy = true },
{'williamboman/mason.nvim', lazy = true},
{'williamboman/mason-lspconfig.nvim', lazy = true},
{
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
			'quangnguyen30192/cmp-nvim-tags',
    },
 },
-- {'terrortylor/nvim-comment', cmd = "CommentToggle"},
'nvim-lualine/lualine.nvim',
{'justinhoward/fzf-neoyank', lazy=false },
{'folke/tokyonight.nvim', lazy = true
},
{'ellisonleao/gruvbox.nvim',
lazy = false, priority = 1000,
config = function()
vim.cmd([[colorscheme gruvbox]])
end,},
{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", lazy = false},
{'Shougo/neoyank.vim', dependencies = 'Shougo/denite.nvim'},
{'junegunn/fzf', lazy = false, build = ":call fzf#install()" },
{'junegunn/fzf.vim', lazy = true},
{'mbbill/undotree', cmd = "UndotreeToggle"},
{'kevinhwang91/nvim-bqf', lazy = false},
{'nvim-telescope/telescope.nvim', lazy = true, dependencies = "nvim-lua/plenary.nvim",
},
{'mg979/vim-visual-multi', lazy = false},
})
require('settings')
require('functions')
require('set')
require('au')
require('keymaps')
-- require('mini.indentscope').setup()
require('mini.trailspace').setup()
-- require('mini.pairs').setup()
require("telescope").load_extension("yank_history")
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
    delete = ';sd', -- Delete surrounding
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
vim.cmd([[
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
command! SEND silent call Send()
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
function! Send()
  " silent call ClearLatex()
	up
  let b:filenamedir=expand('%:p:h')
  let b:filename=expand('%:t:r')
  let buf=bufname()
  let b:pdf=b:filenamedir . "/build/" . b:filename .".pdf"
  let execstr="silent te pwsh -c send " . b:pdf
  exec execstr
  silent execute "buffer" buf
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
 -- 
