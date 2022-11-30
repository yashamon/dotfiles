local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
-- Every unspecified option will be set to the default.
ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
})

-- args is a table, where 1 is the text in Placeholder 1, 2 the text in
-- placeholder 2,...
local function copy(args)
	return args[1]
end

-- 'recursive' dynamic snippet. Expands to some text followed by itself.
local rec_ls
rec_ls = function()
	return sn(
		nil,
		c(1, {
			-- Order is important, sn(...) first would cause infinite loop of expansion.
			t(""),
			sn(nil, { t({ "", "\t\\item " }), i(1), d(2, rec_ls, {}) }),
		})
	)
end

local function jdocsnip(args, old_state)
	local nodes = {
		t({ "/**", " * " }),
		i(1, "A short Description"),
		t({ "", "" }),
	}

	-- These will be merged with the snippet; that way, should the snippet be updated,
	-- some user input eg. text can be referred to in the new snippet.
	local param_nodes = {}

	if old_state then
		nodes[2] = i(1, old_state.descr:get_text())
	end
	param_nodes.descr = nodes[2]

	-- At least one param.
	if string.find(args[2][1], ", ") then
		vim.list_extend(nodes, { t({ " * ", "" }) })
	end

	local insert = 2
	for indx, arg in ipairs(vim.split(args[2][1], ", ", true)) do
		-- Get actual name parameter.
		arg = vim.split(arg, " ", true)[2]
		if arg then
			local inode
			-- if there was some text in this parameter, use it as static_text for this new snippet.
			if old_state and old_state[arg] then
				inode = i(insert, old_state["arg" .. arg]:get_text())
			else
				inode = i(insert)
			end
			vim.list_extend(
				nodes,
				{ t({ " * @param " .. arg .. " " }), inode, t({ "", "" }) }
			)
			param_nodes["arg" .. arg] = inode

			insert = insert + 1
		end
	end

	if args[1][1] ~= "void" then
		local inode
		if old_state and old_state.ret then
			inode = i(insert, old_state.ret:get_text())
		else
			inode = i(insert)
		end

		vim.list_extend(
			nodes,
			{ t({ " * ", " * @return " }), inode, t({ "", "" }) }
		)
		param_nodes.ret = inode
		insert = insert + 1
	end

	if vim.tbl_count(args[3]) ~= 1 then
		local exc = string.gsub(args[3][2], " throws ", "")
		local ins
		if old_state and old_state.ex then
			ins = i(insert, old_state.ex:get_text())
		else
			ins = i(insert)
		end
		vim.list_extend(
			nodes,
			{ t({ " * ", " * @throws " .. exc .. " " }), ins, t({ "", "" }) }
		)
		param_nodes.ex = ins
		insert = insert + 1
	end

	vim.list_extend(nodes, { t({ " */" }) })

	local snip = sn(nil, nodes)
	-- Error on attempting overwrite.
	snip.old_state = param_nodes
	return snip
end

-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
local function bash(_, command)
	local file = io.popen(command, "r")
	local res = {}
	for line in file:lines() do
		table.insert(res, line)
	end
	return res
end

local date = function() return {os.date('%Y-%m-%d')} end

-- ls.add_snippets(nil, {
--     all = {
--         snip({
--             trig = "date",
--             namr = "Date",
--             dscr = "Date in the form of YYYY-MM-DD",
--         }, {"\\documentclass{amsart}  
-- \\usepackage{graphicx}
-- \\usepackage{appendix}
-- \\usepackage{amsfonts}
-- \\usepackage{url}
-- \\usepackage{hyperref} 
-- \\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}
-- \\usepackage{amsmath}
-- \\usepackage{amssymb}
-- \\usepackage{amscd}
-- \\usepackage{color}
-- \\usepackage{amsthm}
-- \\usepackage{bm}
-- \\usepackage{indentfirst}
-- \\usepackage[hmargin=3cm,vmargin=3cm]{geometry}
-- % \\usepackage[all, cmtip]{xy}
-- \\numberwithin{equation}{section}
-- \\newtheorem{thm}[equation]{Theorem} 
-- \\newtheorem{axiom}[equation]{Axiom} 
-- \\newtheorem{theorem}[equation]{Theorem} 
-- \\newtheorem{proposition}[equation]{Proposition}
-- \\newtheorem{lma}[equation]{Lemma} 
-- \\newtheorem{lemma}[equation]{Lemma} 
-- \\newtheorem{cpt}[equation]{Computation} 
-- \\newtheorem{corollary}[equation]{Corollary} 
-- \\newtheorem{clm}[equation]{Claim} 
-- \\newtheorem{conjecture}{Conjecture}
-- \\newtheorem{definition}[equation]{Definition}
-- \\theoremstyle{definition}
-- % \\newtheorem{definition}[equation]{Definition}
-- \\newtheorem{ft}{Fact}
-- \\newtheorem{notation}{Notation}
-- \\newtheorem{terminology}{Terminology}
-- \\newtheorem{descr}{Description}[equation]
--
-- \\theoremstyle{remark}
-- \\newtheorem*{pf}{Proof}
-- \\newtheorem*{pfs}{Proof (sketch)}
-- \\newtheorem{remark}[equation]{Remark}
-- \\newtheorem{example}{Example}
-- \\newtheorem{question}{Question}
--
-- \\DeclareMathOperator {\\spann} {span}
-- \\DeclareMathOperator {\\period} {period}
-- \\DeclareMathOperator {\\sign} {sign}
-- \\DeclareMathOperator {\\Id} {Id}
-- \\DeclareMathOperator {\\floor} {floor}
-- \\DeclareMathOperator {\\ceil} {ceil}
-- \\DeclareMathOperator {\\mult} {mult}
-- \\DeclareMathOperator {\\Symp} {Symp}
-- \\DeclareMathOperator {\\Det} {Det}
-- \\DeclareMathOperator {\comp} {comp}
-- \\DeclareMathOperator {\\growth} {growth}
-- \\DeclareMathOperator {\\energy} {energy}
-- \\DeclareMathOperator {\\Reeb} {Reeb}
-- \\DeclareMathOperator {\\Lin} {Lin}
-- \\DeclareMathOperator {\\Diff} {Diff}
-- \\DeclareMathOperator {\\fix} {fix}
-- % \\newcommand{\\M}{\\mathbb{CP} ^{r-1} }
-- \\DeclareMathOperator {\\grad} {grad}
-- \\DeclareMathOperator {\\area} {area}
-- \\DeclareMathOperator {\\diam} {diam}
-- % \\DeclareMathOperator {\\rank} {rank}
-- \\DeclareMathOperator {\\dvol} {dvol}
-- \\DeclareMathOperator {\\quant} {Quant}
-- \\DeclareMathOperator {\\ho} {ho}
-- \\DeclareMathOperator {\\length} {length}
-- \\DeclareMathOperator {\\Proj} {P}
-- \\renewcommand{\\i}{\\sqrt{-1}}
-- \\DeclareMathOperator{\\Lie}{\\mathrm{Lie}}
-- \\DeclareMathOperator{\\lie}{\\mathrm{lie}}
-- \\DeclareMathOperator{\\op}{\\mathrm{op}}
-- \\DeclareMathOperator{\\rank}{\\mathrm{rank}}
-- \\DeclareMathOperator{\\ind}{\\mathrm{ind}}
-- \\DeclareMathOperator{\\trace}{\\mathrm{trace}}
-- \\DeclareMathOperator{\\image}{\\mathrm{image}}
-- \\DeclareMathOperator{\\Sym}{\\mathrm{Sym}}
-- \\DeclareMathOperator{\\Ham}{\\mathrm{Ham}}
-- \\DeclareMathOperator{\\Aut}{\\mathrm{Aut}}
-- \\DeclareMathOperator{\\Quant}{\\mathrm{Quant}}
-- \\DeclareMathOperator{\\Fred}{\\mathrm{Fred}}
-- \\DeclareMathOperator{\\id}{\\mathrm{1}}
-- \\DeclareMathOperator{\\lcs}{lcs}
-- \\DeclareMathOperator{\\lcsm}{lcsm}
-- % \\DeclareMathOperator{\\ker}{ker}
-- \\DeclareMathOperator{\\coker}{coker}
-- \\begin{document}
-- % \\href{http://yashamon.github.io/web2/papers/conformalsymplectic.pdf}{Direct link to author's version}
-- \\title{A conformal symplectic Weinstein conjecture}
-- \\author{Yasha Savelyev}
-- \\thanks {This work was partially supported by PRODEP grant}
-- \\email{yasha.savelyev@gmail.com}
-- \\address{University of Colima, CUICBAS}
-- \\keywords{locally conformally symplectic manifolds, conformal symplectic non-squeezing, Gromov-Witten theory, virtual fundamental class, Fuller index, Seifert conjecture, Weinstein conjecture}
--
-- \\begin{abstract}    
-- \\end{abstract}
--  \\maketitle
--  \\tableofcontents 
-- 
-- \\bibliographystyle{siam}  
-- \\bibliography{C:/Users/yasha/texmf/bibtex/bib/link} 
-- %  \\bibliography{/root/texmf/bibtex/bib/link}  
-- % \\bibliography{/home/yashasavelyev/texmf/bibtex/bib/link} 
-- % \\bibliography{/home/yasha/texmf/bibtex/bib/link} 
-- \\end{document}"
--         }),
-- },
--     tex = { 
-- 		-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
-- 		-- \item as necessary by utilizing a choiceNode.
-- 		s("ls", {
-- 			t({ "\\begin{itemize}", "\t\\item " }),
-- 			i(1),
-- 			d(2, rec_ls, {}),
-- 			t({ "", "\\end{itemize}" }),
-- 		}),
-- 	}
-- })
-- ls.snippets = {
-- 	,
--        
--        
-- }

--[[
-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.
-- Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
-- will need to extend the table yourself instead of setting a new one.
]]
require("luasnip/loaders/from_vscode").lazy_load({ paths = "C:/Users/yasha/dotfiles/snippets"})
-- You can also use lazy loading so you only get in memory snippets of languages you use
