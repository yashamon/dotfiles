-- 1. 2
-- 3. 4
GetFilename = function(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    return path:sub(start,#path)
end
WriteSentence = function()
	local filenameshort = vim.fn.bufname()
	Tempfile = 'C:\\Users\\yasha\\tmp\\@s_' .. filenameshort
	-- local filename = vim.fn.expand('%:p')
	local lines = vim.api.nvim_buf_get_lines(0, 0,-1, {strictindexing = false})
	Newlines = {}
	local a = {}
	local b = {}
	local c = {}
	-- filenameshort .. ":" .. i .. ": " ..
	for i,v in ipairs(lines) do
		if i > 1 then
			a[i] = v .. '@'
		else
			a[i] = filenameshort .. ":" .. i .. ": " .. v
		end
		b[i] = string.gsub(a[i], '%.%s+@ ',  '%.@ ')
		c[i] = string.gsub(b[i], '%.%s', '%.@ ')
		Newlines[i] = string.gsub(string.gsub(string.gsub(c[i], '%.@', '\n' .. filenameshort .. ":" .. i .. ": "), '\\', ' '), '%$', '')
		-- c[i] = string.gsub(c[i], '%.%s+', '\n')
	end
	local string = ""
	for i,v in ipairs(Newlines) do
		if not string == "" then
			string = string .. ' ' .. v
		else
			string = string .. v
		end
	end
	local temp = io.open(tempfile, 'w')
	handle_name, err = io.open(tempfile,"w")
print(err)
	temp:write(string)
	temp:close()
end

-- test.
-- Find me 1
-- convert Testing to a string and write to Tempfile.
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
-- end 
