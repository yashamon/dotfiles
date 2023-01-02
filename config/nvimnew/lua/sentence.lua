-- 1. 2
-- 3. 4 
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
WriteSentence = function()	
local filenameshort = vim.fn.bufname()
local tempfile = 'C:\\tmp\\@s_' .. filenameshort
	local filename = vim.fn.expand('%:p')
	local lines = vim.api.nvim_buf_get_lines(0, 0,-1, {strictindexing = false})
	Newlines = {}
	a = {}
	b = {}
	c = {}
	for i,v in ipairs(lines) do
	  a[i] = filenameshort .. ":" .. i .. ": " .. v .."@"
		b[i] = string.gsub(a[i], '%.%s+@',  '%.@@@')
		Newlines[i] = string.gsub(b[i], '%.%s+', '\n' .. filename .. ":" .. i .. ": ")
	end
	local string = ""
	for i,v in ipairs(Newlines) do
		string = string .. ' ' .. v
	end
	Temp = io.open(tempfile, 'w')
	Temp:write(string)
	Temp:close()
end


-- Find me 1
-- convert Testing to a string and write to Tempfile
-- WriteLine = function()
-- 	Temp = io.open(Tempfile, 'a')
-- 	for i,v in ipairs(toList()) do
-- 		Temp:write(v, "\r\n")
-- 	end
-- 	Temp:close()
-- end
-- io.write('blah')
-- -- ToString = function (stack)
-- -- 	ToString({}) = ""
-- -- 	return toString (stack.next) .. stack.line
-- -- local string = ""
-- -- 	for lines in stack do
-- -- 		string = string .. stack.line
-- -- 	while not stack.next == {} do
-- -- 		string = 
-- -- 	else return 
-- -- 	end
-- -- end mestua
-- Lines = function ()
-- 		io.write(ToString(ToList())) dada
-- end fuck
