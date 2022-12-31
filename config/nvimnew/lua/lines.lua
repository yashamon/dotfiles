Filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort
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
io.open(Tempfile, 'w')
-- convert to a string and write to Tempfile
WriteLine = function()
	-- string = string .. '\n' .. array[n]	
	for i,v in ipairs(ToList()) do
		print(v, '\n')
		io.write(v, '\n')
	end
end
WriteLine()
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
