Filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort .. 2
ToList = function ()
	local newlines = {}
	local i = 1
	for line in io.lines(Filename) do
		-- line = line:gsub("%^a", "")
		newlines[i] = filenameshort .. ":" .. "i" .. " " .. line
		i = i + 1
	end
	return newlines
end
Temp = io.open(Tempfile, 'w')
-- convert to a string and write to Tempfile
WriteLine = function()
	-- string = string .. '\n' .. array[n]	
	for i,v in ipairs(ToList()) do
		Temp:write(v, '\n')
	end
end
-- io.write('blah')
WriteLine()
Temp:close()
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
-- -- end testu
-- Lines = function ()
-- 		io.write(ToString(ToList()))
-- end
