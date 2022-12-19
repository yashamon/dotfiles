Server = function ()
   local buff = vim.fn.bufname()
   local servername = vim.api.nvim_eval("v:servername")
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end

Line = function()
   -- local buff = vim.cmd('call bufname()')
   local filename = vim.fn.substitute(vim.fn.expand('%:p:h'), "\\", "/", "g")
   local execstr = "!nu C:/Users/yasha/dotfiles/scripts/line.nu " .. filename
   os.execute(execstr)
   vim.cmd('cg @_%')   
   require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}})
end
--    let b:filenamedir = substitute(expand('%:p:h'), "\\", "/", "g")
--    let b:file = expand('%:p')
--    let b:filename = substitute(b:file, "\\", "/", "g")
--    let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/line.nu " . b:filename 
--    exec b:execstr
--    cg @_%
--    lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}}) 
--    " copen
--    " sleep 600m
--    " " let b:paste = system('pwsh -c Get-Clipboard')
--    " " call feedkeys(":BLinesB \<c-r>+\<cr>")
--    " call feedkeys("zf")
-- endfunction
-- function Sentence()
--    let g:buf = bufname()
--    " silent execute "!bash /mnt/c/Users/yasha/dotfiles/scripts/sentence.sh %"
--    let b:filenamedir = substitute(expand('%:p:h'), "\\", "/", "g")
--    let b:file = expand('%:p')
--    let b:filename = substitute(b:file, "\\", "/", "g")
--    let b:execstr = "!nu C:/Users/yasha/dotfiles/scripts/sentence.nu " . b:filename
--    exec b:execstr
--    cg @_%
--    lua require('telescope.builtin').quickfix({layout_strategy='vertical',layout_config={width=0.9}}) 
--    " copen
--    " sleep 600m
--    " " let b:paste = system('pwsh -c Get-Clipboard')
--    " call feedkeys("zf")
-- endfunction
