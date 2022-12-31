Filename = vim.fn.substitute(vim.fn.expand('%:p'), "\\", "/", "g")
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local basename = GetFilename(vim.fn.bufname())
Tempfile = '/tmp' .. '/@l_' .. basename
ToList = function ()
	local newlines = {}
	local i = 1
	for line in io.lines(Filename) do
		-- line = line:gsub("%^a", "")
		newlines[i] = basename .. ":" .. "i" .. " " .. line
		i = i + 1
	end
	return newlines
end
-- print(LinesLua())
ToString = function(array)
	local string = ""
	local n = 1
	-- string = string .. '\n' .. array[n]	
	for i,v in ipairs(array) do
		string = string .. v .. '\n'
	end
	return string
end
-- ToString = function (stack)
-- 	ToString({}) = ""
-- 	return toString (stack.next) .. stack.line
-- local string = ""
-- 	for lines in stack do
-- 		string = string .. stack.line
-- 	while not stack.next == {} do
-- 		string = 
-- 	else return 
-- 	end
-- end
Lines = function ()
	io.open(Tempfile, 'w')
	io.write(ToString(ToList()))
end
