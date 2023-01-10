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
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
'nvim-telescope/telescope-fzf-native.nvim', 'folke/todo-comments.nvim', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
'nvim-treesitter/playground', 'LhKipp/nvim-nu', 'lukas-reineke/indent-blankline.nvim', 'folke/which-key.nvim', 'ggandor/leap.nvim' 'kyazdani42/nvim-web-devicons', {'glacambre/firenvim', build = ":call firenvim#install(0)" }, 'neovim/nvim-lspconfig',
'hrsh7th/nvim-cmp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp', 'quangnguyen30192/cmp-nvim-tags', 'terrortylor/nvim-comment', 'nvim-lualine/lualine.nvim', 'justinhoward/fzf-neoyank', 'folke/tokyonight.nvim', 'ellisonleao/gruvbox.nvim', 
{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
'Shougo/neoyank.vim', 'Shougo/denite.nvim', {'junegunn/fzf', build = ":call fzf#install()" }, 'junegunn/fzf.vim',
{'mbbill/undotree', cmd = ":UndotreeToggle" }, 'kevinhwang91/nvim-bqf', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'mg979/vim-visual-multi', 'tpope/vim-surround',
})
