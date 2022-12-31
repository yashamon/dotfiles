-- local ModuleLines = {}
Filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort .. 2
local toList = function ()
	local newlines = {}
	local i = 1
	for line in io.lines(Filename) do
		-- line = line:gsub("%^a", "")
		newlines[i] = Filename .. ":" .. "i" .. " " .. line
		i = i + 1
	end
	return newlines
end
-- convert to a string and write to Tempfile
WriteLine = function()
	Temp = io.open(Tempfile, 'w')
	-- string = string .. '\n' .. array[n]	
	for i,v in ipairs(toList()) do
		Temp:write(v, '\r\n')
	end
	Temp:close()
end
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
-- -- end testu
-- Lines = function ()
-- 		io.write(ToString(ToList()))
-- end
