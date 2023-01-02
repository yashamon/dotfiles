-- local ModuleLines = {} 1 2 3 4 5 6 7 8 9
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
	Newlines = {}
	-- 	io.input(filename)
	for i,v in ipairs(lines) do
	  Newlines[i] = filename .. ":" .. i .. ": " .. v
		-- print(Newlines[i])
	end
local toString = function()
	local string = ""
	for i,v in ipairs(Newlines) do
		string = string .. v .. '\n'
	end
	return string
end
Temp = io.open(tempfile, 'w')
Temp:write(toString())
Temp:close()
-- vim.fn.echo(Newlines)
-- vim.fn.setloclist(0, Newlines)
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
