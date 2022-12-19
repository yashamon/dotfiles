Server = function ()
   local buff = vim.cmd('call bufname()')
   local servername = vim.cmd('echo v:servername')
   vim.cmd('echo servername')
   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')
   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')
end
--    let g:buffmain=bufname()
--    echo g:buffmain
--    silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
--    silent execute "!echo " . g:buffmain . ' > C:/Users/yasha/filename.txt'
-- endfunction
-- nmap <leader>ser :call Server()
