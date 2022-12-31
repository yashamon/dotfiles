-- local ModuleLines = {} 

GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
local filenameshort = GetFilename(vim.fn.bufname())
Tempfile = 'C:\\tmp\\@l_' .. filenameshort
WriteLine = function()
	-- ToList = function()
	local filename = vim.fn.expand('%:p')
	local lines = vim.api.nvim_buf_get_lines(0, 1,-1, {strictindexing = false})
	-- local newlines = {}
	-- 	io.input(filename)
	-- 		for i,v in ipairs(Lines) do
	-- 		-- line = line:gsub("%^a", "")
	-- 		newlines[i] = filename .. ":" .. i .. ": " .. v
	-- 	end
	-- 	return newlines
	-- 	end
	ToString = function()
		local string = ""
		for i,v in ipairs(lines) do
			string = string .. v .. '\n' 
		end
		return string
	end
	Temp = io.open(Tempfile, 'w')
	Temp:write(ToString())
	Temp:close()
	io.flush()
	io.close()
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
