-- local ModuleLines = {} 1 2 3 4 5 6

GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
WriteLine = function()
	local filenameshort = GetFilename(vim.fn.bufname())
	local tempfile = 'C:\\tmp\\@l_' .. filenameshort
-- ToList = function()
	local filename = vim.fn.expand('%:p')
	local lines = vim.api.nvim_buf_get_lines(0, 1,-1, {strictindexing = false})
	local newlines = {}
	-- 	io.input(filename)
	for i,v in ipairs(Lines) do
	  newlines[i] = filename .. ":" .. i .. ": " .. v
	end
		-- return newlines
	-- 	end
	local toString = function()
		local string = ""
		for i,v in ipairs(newlines) do
			string = string .. v .. '\n'
		end
		return string
	end
	vim.fn.set_loclist(toString())
	-- Temp = io.open(tempfile, 'w')
	-- Temp:write(toString())
	-- Temp:close()
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
