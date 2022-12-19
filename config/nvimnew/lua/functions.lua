Server = function ()
   local buffmain = vim.cmd('call bufname()')
   vim.cmd('echo buffmain') 
end
server()
--    let g:buffmain=bufname()
--    echo g:buffmain
--    silent execute "!echo " . v:servername . ' > C:/Users/yasha/servername.txt'
--    silent execute "!echo " . g:buffmain . ' > C:/Users/yasha/filename.txt'
-- endfunction
-- nmap <leader>ser :call Server()
