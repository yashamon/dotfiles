call plug#begin('~/.vim/plugged')            
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' }
" For luasnip user. 
 Plug 'L3MON4D3/LuaSnip'
call plug#end() 


imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
"LUA
lua <<EOF 
require("luasnip/loaders/from_vscode").lazy_load({ paths = "~/"}) -- You can pass { paths = "./my-snippets/"} as well
EOF


