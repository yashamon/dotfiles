local fzf = require('fzf')

coroutine.wrap(function() print(fzf.fzf({"1", "2", "3"}, "--preview 'bash --version'")) end)()
