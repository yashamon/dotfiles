 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:1:: local ls = require("luasnip")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:2::    some shorthands...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:3:: local s = ls.snippet
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:4:: local sn = ls.snippet_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:5:: local t = ls.text_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:6:: local i = ls.insert_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:7:: local f = ls.function_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:8:: local c = ls.choice_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:9:: local d = ls.dynamic_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:10:: local snip = ls.snippet
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:11:: local node = ls.snippet_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:12:: local text = ls.text_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:13:: local insert = ls.insert_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:14:: local func = ls.function_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:15:: local choice = ls.choice_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:16:: local dynamicn = ls.dynamic_node
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:17::    Every unspecified option will be set to the default.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:18:: ls.config.set_config({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:19:: 	history = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:20:: 	   Update more often, :h events for more info.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:21:: 	updateevents = "TextChanged,TextChangedI",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:22:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:23:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:24::    args is a table, where 1 is the text in Placeholder 1, 2 the text in
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:25::    placeholder 2,...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:26:: local function copy(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:27:: 	return args[1 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:28:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:29:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:30::    'recursive' dynamic snippet. Expands to some text followed by itself.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:31:: local rec_ls
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:32:: rec_ls = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:33:: 	return sn(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:34:: 		nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:35:: 		c(1, {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:36:: 			   Order is important, sn(...) first would cause infinite loop of expansion.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:37:: 			t(""),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:38:: 			sn(nil, { t({ "", " t  item " ), i(1), d(2, rec_ls, {) ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:39:: 		)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:40:: 	)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:41:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:42:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:43:: local function jdocsnip(args, old_state)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:44:: 	local nodes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:45:: 		t({ "/**", " * " ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:46:: 		i(1, "A short Description"),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:47:: 		t({ "", "" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:48:: 	
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:49:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:50:: 	   These will be merged with the snippet; that way, should the snippet be updated,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:51:: 	   some user input eg. text can be referred to in the new snippet.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:52:: 	local param_nodes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:53:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:54:: 	if old_state then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:55:: 		nodes[2  = i(1, old_state.descr:get_text())
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:56:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:57:: 	param_nodes.descr = nodes[2 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:58:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:59:: 	   At least one param.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:60:: 	if string.find(args[2 [1 , ", ") then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:61:: 		vim.list_extend(nodes, { t({ " * ", "" ) )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:62:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:63:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:64:: 	local insert = 2
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:65:: 	for indx, arg in ipairs(vim.split(args[2 [1 , ", ", true)) do
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:66:: 		   Get actual name parameter.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:67:: 		arg = vim.split(arg, " ", true)[2 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:68:: 		if arg then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:69:: 			local inode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:70:: 			   if there was some text in this parameter, use it as static_text for this new snippet.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:71:: 			if old_state and old_state[arg  then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:72:: 				inode = i(insert, old_state["arg" .. arg :get_text())
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:73:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:74:: 				inode = i(insert)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:75:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:76:: 			vim.list_extend(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:77:: 				nodes,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:78:: 				{ t({ " * @param " .. arg .. " " ), inode, t({ "", "" ) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:79:: 			)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:80:: 			param_nodes["arg" .. arg  = inode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:81:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:82:: 			insert = insert + 1
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:83:: 		end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:84:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:85:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:86:: 	if args[1 [1  ~= "void" then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:87:: 		local inode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:88:: 		if old_state and old_state.ret then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:89:: 			inode = i(insert, old_state.ret:get_text())
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:90:: 		else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:91:: 			inode = i(insert)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:92:: 		end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:93:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:94:: 		vim.list_extend(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:95:: 			nodes,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:96:: 			{ t({ " * ", " * @return " ), inode, t({ "", "" ) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:97:: 		)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:98:: 		param_nodes.ret = inode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:99:: 		insert = insert + 1
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:100:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:101:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:102:: 	if vim.tbl_count(args[3 ) ~= 1 then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:103:: 		local exc = string.gsub(args[3 [2 , " throws ", "")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:104:: 		local ins
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:105:: 		if old_state and old_state.ex then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:106:: 			ins = i(insert, old_state.ex:get_text())
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:107:: 		else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:108:: 			ins = i(insert)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:109:: 		end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:110:: 		vim.list_extend(
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:111:: 			nodes,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:112:: 			{ t({ " * ", " * @throws " .. exc .. " " ), ins, t({ "", "" ) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:113:: 		)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:114:: 		param_nodes.ex = ins
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:115:: 		insert = insert + 1
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:116:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:117:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:118:: 	vim.list_extend(nodes, { t({ " */" ) )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:119:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:120:: 	local snip = sn(nil, nodes)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:121:: 	   Error on attempting overwrite.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:122:: 	snip.old_state = param_nodes
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:123:: 	return snip
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:124:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:125:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:126::    Make sure to not pass an invalid command, as io.popen() may write over nvim text.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:127:: local function bash(_, command)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:128:: 	local file = io.popen(command, "r")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:129:: 	local res = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:130:: 	for line in file:lines() do
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:131:: 		table.insert(res, line)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:132:: 	end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:133:: 	return res
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:134:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:135:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:136:: local date = function() return {os.date('%Y %m %d') end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:137:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:138:: ls.add_snippets(nil, {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:139::     all = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:140::         snip({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:141::             trig = "date",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:142::             namr = "Date",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:143::             dscr = "Date in the form of YYYY MM DD",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:144::         , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:145::         {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:146::            text({"blah blah"), 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:147::         ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:148::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:149:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:150:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:151:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:152::   [[
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:153::    Beside defining your own snippets you can also load snippets from "vscode like" packages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:154::    that expose snippets in json files, for example <https://github.com/rafamadriz/friendly snippets>.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:155::    Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:156::    will need to extend the table yourself instead of setting a new one.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:157::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:158:: require("luasnip/loaders/from_vscode").lazy_load({ paths = "C:/Users/yasha/dotfiles/snippets")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/snippets.lua:159::    You can also use lazy loading so you only get in memory snippets of languages you use
