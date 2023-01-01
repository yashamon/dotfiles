local handle = io.popen("fd . -H -I -d 1 | fzf")
local result = handle:read("*a")
handle:close()
print(result)
-- local res = io.popen (, 'r')
-- local res = "blah"
-- os.execute('echo ' .. res )
