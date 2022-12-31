-- local ModuleLines = {}

GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort
ToList = function()
local filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
		local newlines = {}
	local i = 1
	for line in io.lines(filename) do
		-- line = line:gsub("%^a", "")
		newlines[i] = filename .. ":" .. i .. ": " .. line
		i = i + 1
	end
	return newlines
end
ToString = function()
	local string = ""
	for i,v in ipairs(ToList()) do
		string = string .. v .. '\n' 
	end
	return string
end
local string=ToString()
WriteLine = function()
	Temp = io.open(Tempfile, 'w')
		Temp:write(string)
	Temp:close()
end


-- Find me
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
-- -- end testu
-- Lines = function ()
-- 		io.write(ToString(ToList()))
-- end
