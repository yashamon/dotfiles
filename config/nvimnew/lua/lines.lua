-- local ModuleLines = {} 

GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort
WriteLine = function()
ToList = function()
local filename = vim.fn.expand('%:p')
local Lines = vim.api.nvim_buf_get_lines(0, 1,-1, {strictindexing = false})
local newlines = {}
	local i = 1
	io.input(filename)
		for line in Lines do
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
Temp = io.open(Tempfile, 'w')
Temp:write(ToString())
Temp:close()
io.close()
io.flush()
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
-- -- end mestua
-- Lines = function ()
-- 		io.write(ToString(ToList())) dada
-- end fuck
