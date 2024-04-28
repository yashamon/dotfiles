local handle = io.popen("fd . -H -I -d 1 | fzf")
local res= handle:read("*a")
handle:close()
-- if  res | path type == dir  { lf -remote $"send cd \"($res)\"" } else { lf -remote $"send select \"($res)\"" }
-- local res = io.popen (, 'r')
-- local res = "blah"
-- os.execute('echo ' .. res )
