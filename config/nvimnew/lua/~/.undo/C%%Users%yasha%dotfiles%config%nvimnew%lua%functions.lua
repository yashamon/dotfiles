Vim�UnDo� �j
��,?\����&�D���^���%)�6�   _   			   T                         c��@    _�                    M        ����    #                                                                                                                                                                                                                                                                                                                                                    c��     �               X   Feedkey = function(key, mode)   Z  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)   end   Server = function ()       local buff = vim.fn.bufname()   7   local servername = vim.api.nvim_eval("v:servername")   J   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')   B   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')   end       Line = function()      vim.fn.jobwait({Idline})      vim.cmd('lopen')      if vim.w.bqf_enabled then   0    local winid = vim.api.nvim_get_current_win()       vim.schedule(function()   /        vim.api.nvim_win_call(winid, function()   4            vim.api.nvim_feedkeys('zf', 'im', false)           end)       end)    end   end       Sentence = function ()      vim.fn.jobwait({IdSentence})      vim.cmd('lopen')      if vim.w.bqf_enabled then   0    local winid = vim.api.nvim_get_current_win()       vim.schedule(function()   /        vim.api.nvim_win_call(winid, function()   4            vim.api.nvim_feedkeys('zf', 'im', false)           end)       end)    end     -- Wait = function ()   "  --     if vim.b.bqf_enabled then      --       vim.cmd('sleep 200m')   2  --       vim.api.nvim_feedkeys('zf', 'i', false)     --     else     --       Wait()     --     end   	  --  end      -- Wait = function ()   "      -- if vim.b.bqf_enabled then            -- vim.cmd('sleep 150m')   2        -- vim.api.nvim_feedkeys('zf', 'i', false)         -- end   
   -- end       -- Wait()   end   CG = function ()   N   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")   K   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")   X   Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename})   `   IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})      vim.fn.jobwait({IdSentence})   :   local commandsentence = "lg " .. "@s_" .. filenameshort      vim.cmd(commandsentence)      vim.fn.jobwait({Idline})   6   local commandline = "lg " .. "@l_" .. filenameshort      vim.cmd(commandline)   end       GitAsync = function ()   Server()   local buff = vim.fn.bufname()   �vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }')   vim.cmd("buffer " .. buff)   CG()   end       local timer = 0     local function do_complete()   K    require('cmp').complete({ reason = require('cmp').ContextReason.Auto })     end             vim.api.nvim_create_autocmd(       { "TextChangedI", },       {         callback = function()            vim.fn.timer_stop(timer)   4        timer = vim.fn.timer_start(200, do_complete)   
      end,         pattern = "*",       }     )    5�5�_�                    M        ����    #                                                                                                                                                                                                                                                                                                                   M           T          v       c��)     �               `   Feedkey = function(key, mode)   Z  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)   end   Server = function ()       local buff = vim.fn.bufname()   7   local servername = vim.api.nvim_eval("v:servername")   J   os.execute("echo " .. servername .. ' > C:/Users/yasha/servername.txt')   B   os.execute("echo " .. buff .. ' > C:/Users/yasha/filename.txt')   end       Line = function()      vim.fn.jobwait({Idline})      vim.cmd('lopen')      if vim.w.bqf_enabled then   0    local winid = vim.api.nvim_get_current_win()       vim.schedule(function()   /        vim.api.nvim_win_call(winid, function()   4            vim.api.nvim_feedkeys('zf', 'im', false)           end)       end)    end   end       Sentence = function ()      vim.fn.jobwait({IdSentence})      vim.cmd('lopen')      if vim.w.bqf_enabled then   0    local winid = vim.api.nvim_get_current_win()       vim.schedule(function()   /        vim.api.nvim_win_call(winid, function()   4            vim.api.nvim_feedkeys('zf', 'im', false)           end)       end)    end     -- Wait = function ()   "  --     if vim.b.bqf_enabled then      --       vim.cmd('sleep 200m')   2  --       vim.api.nvim_feedkeys('zf', 'i', false)     --     else     --       Wait()     --     end   	  --  end      -- Wait = function ()   "      -- if vim.b.bqf_enabled then            -- vim.cmd('sleep 150m')   2        -- vim.api.nvim_feedkeys('zf', 'i', false)         -- end   
   -- end       -- Wait()   end   CG = function ()   N   local filenameshort = vim.fn.substitute(vim.fn.expand('%'), "\\", "/", "g")   K   local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")   X   Idline = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/Line.nu", filename})   `   IdSentence = vim.fn.jobstart({"nu", "C:/Users/yasha/dotfiles/scripts/sentence.nu", filename})      vim.fn.jobwait({IdSentence})   :   local commandsentence = "lg " .. "@s_" .. filenameshort      vim.cmd(commandsentence)      vim.fn.jobwait({Idline})   6   local commandline = "lg " .. "@l_" .. filenameshort      vim.cmd(commandline)   end       GitAsync = function ()   Server()   local buff = vim.fn.bufname()   �vim.cmd('te pwsh -c if ( (git rev-parse --is-inside-work-tree) -and (git rev-parse --git-dir) ) { git add . ; git commit -m -a; git push --all origin; ctags -R }')   vim.cmd("buffer " .. buff)   CG()   end       local timer = 0     local function do_complete()   K    require('cmp').complete({ reason = require('cmp').ContextReason.Auto })     end       -- autocommands   vim.api.nvim_create_autocmd(   >    { "BufReadPost","FileReadPost", "FileType tex, vim, lua"},       {         callback = GitAsync(),         pattern = "*",       }     )       vim.api.nvim_create_autocmd(       { "TextChangedI", },       {         callback = function()            vim.fn.timer_stop(timer)   4        timer = vim.fn.timer_start(200, do_complete)   
      end,         pattern = "*",       }     )    5�5�_�                    M        ����    #                                                                                                                                                                                                                                                                                                                   M           T          v       c��+     �   L   U   X       �   M   N   X    5��    L                     9	              �       5�_�                    Q       ����    #                                                                                                                                                                                                                                                                                                                   M           [          v       c��7     �   P   R   _            callback = GitAsync(),5��    P                  
   �	              
       5�_�                   Q       ����    #                                                                                                                                                                                                                                                                                                                   M           [          v       c��<    �   P   R   _      &      callback = function()GitAsync(),5��    P                     �	                     5�_�      	              Q       ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��@     �   Q   R   _      				�   Q   S   `      				5��    Q                      �	                     �    Q                     �	                    �    Q                     �	                     5�_�      
           	   Q   &    ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��C     �   P   R   `      &      callback = function() GitAsync()5��    P   &                  �	                     5�_�   	              
   R       ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��E     �   Q   S   `      			end,	5��    Q                     �	                     5�_�   
                 R       ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��H     �   Q   S   `      			end,5��    Q                     �	                     5�_�                   R       ����    #                                                                                                                                                                                                                                                                                                                   M           ]          v       c��v     �   R   S   `      			�   R   T   a      			5��    R                      �	                     �    R                     �	                     �    R                    �	                    �    R                     �	                     5�_�                     S       ����    #                                                                                                                                                                                                                                                                                                                   M           ^          v       c��x     �   S   T   a      			�   S   U   b      			5��    S                      �	                     �    S                     �	                     �    S                     �	                     5�_�                   R       ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��J     �   Q   S   `      			 end,5��    Q                     �	                     5�_�                    R       ����    #                                                                                                                                                                                                                                                                                                                   M           \          v       c��N    �   Q   S   `      			end,5��    Q                     �	                     5�_�                     R       ����    #                                                                                                                                                                                                                                                                                                                   M           ]          v       c��p     �   R   S   `      			�   R   T   a      			5��    R                      �	                     �    R                     �	                     �    R                     �	                     5�_�                    Q       ����    #                                                                                                                                                                                                                                                                                                                   M           [          v       c��;     �   P   R   _      0      callback = function()function()GitAsync(),5��    P                  
   �	              
       5�_�                     M        ����    #                                                                                                                                                                                                                                                                                                                                                    c��8     �   M   N   X    �   L   N   X      ./tags5��    L                      9	                     5��