call plug#begin('~/.vim/plugged')            
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' } 
Plug 'kdheepak/cmp-latex-symbols', { 'branch': 'main' } 
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' }
Plug 'hrsh7th/vim-vsnip', { 'branch': 'main' } 
Plug 'quangnguyen30192/cmp-nvim-tags',  { 'branch': 'main' } 
Plug 'ray-x/cmp-treesitter'
" For luasnip user. 
" Plug 'L3MON4D3/LuaSnip'
call plug#end() 


imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

