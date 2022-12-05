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

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "tex",
            namr = "Latex template",
            dscr = "Latex template",
        }, 
        { text({"","\\documentclass{amsart}"}), 
text({"","\\usepackage{appendix}"}),
text({"","\\usepackage{graphicx}"}),
text({"","\\usepackage{amsfonts, mathrsfs, amsmath, amssymb, amsthm}"}),
text({"","\\usepackage{url}"}),
text({"","\\usepackage{hyperref} "}),
text({"","\\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}"}),
text({"","\\usepackage{tikz-cd}"}),
text({"","\\usepackage{amscd}"}),
text({"","\\usepackage{pst-plot,pst-eucl}"}),
text({"","\\usepackage[svgnames,pdf]{pstricks}"}),
text({"","\\usepackage{amssymb}"}),
text({"","\\usepackage{amscd}"}),
text({"","\\usepackage{color, verbatim}"}),
text({"","\\usepackage{amsthm}"}),
text({"","\\usepackage{bm}"}),
text({"","\\usepackage[hmargin=3cm,vmargin=3cm]{geometry}"}),
text({"","\\numberwithin{equation}{section}"}),
text({"","\\newtheorem{thm}[equation]{Theorem} "}),
text({"","\\newtheorem{axiom}[equation]{Axiom} "}),
text({"","\\newtheorem{theorem}[equation]{Theorem} "}),
text({"","\\newtheorem{proposition}[equation]{Proposition}"}),
text({"","\\newtheorem{lma}[equation]{Lemma} "}),
text({"","\\newtheorem{lemma}[equation]{Lemma} "}),
text({"","\\newtheorem{cpt}[equation]{Computation} "}),
text({"","\\newtheorem{corollary}[equation]{Corollary} "}),
text({"","\\newtheorem{clm}[equation]{Claim} "}),
text({"","\\newtheorem{conjecture}{Conjecture}"}),
text({"","\\newtheorem{definition}[equation]{Definition}"}),
text({"","\\theoremstyle{definition}"}),
text({"","\\newtheorem{ft}{Fact}"}),
text({"","\\newtheorem{notation}{Notation}"}),
text({"","\\newtheorem{terminology}{Terminology}"}),
text({"","\\newtheorem{descr}{Description}[equation]"}),
text({"","\\theoremstyle{remark}"}),
text({"","\\newtheorem*{pf}{Proof}"}),
text({"","\\newtheorem*{pfs}{Proof (sketch)}"}),
text({"","\\newtheorem{remark}[equation]{Remark}"}),
text({"","\\newtheorem{example}{Example}"}),
text({"","\\newtheorem{question}{Question}"}),
text({"","\\newcommand\\vol{\\operatorname{vol}}"}),
text({"","\\newcommand {\\hatcp}{\\widehat{\\mathbb {CP}} ^{r-1} }"}),
text({"","\\DeclareMathOperator {\\spann} {span}"}),
text({"","\\DeclareMathOperator {\\period} {period}"}),
text({"","\\DeclareMathOperator {\\sign} {sign}"}),
text({"","\\DeclareMathOperator {\\Id} {Id}"}),
text({"","\\DeclareMathOperator {\\floor} {floor}"}),
text({"","\\DeclareMathOperator {\\ceil} {ceil}"}),
text({"","\\DeclareMathOperator {\\mult} {mult}"}),
text({"","\\DeclareMathOperator {\\Symp} {Symp}"}),
text({"","\\DeclareMathOperator {\\Det} {Det}"}),
text({"","\\DeclareMathOperator {\\comp} {comp}"}),
text({"","\\DeclareMathOperator {\\growth} {growth}"}),
text({"","\\DeclareMathOperator {\\energy} {energy}"}),
text({"","\\DeclareMathOperator {\\Reeb} {Reeb}"}),
text({"","\\DeclareMathOperator {\\Lin} {Lin}"}),
text({"","\\DeclareMathOperator {\\Diff} {Diff}"}),
text({"","\\DeclareMathOperator {\\fix} {fix}"}),
text({"","\\DeclareMathOperator {\\grad} {grad}"}),
text({"","\\DeclareMathOperator {\\area} {area}"}),
text({"","\\DeclareMathOperator {\\diam} {diam}"}),
text({"","\\DeclareMathOperator {\\dvol} {dvol}"}),
text({"","\\DeclareMathOperator {\\quant} {Quant}"}),
text({"","\\DeclareMathOperator {\\ho} {ho}"}),
text({"","\\DeclareMathOperator {\\length} {length}"}),
text({"","\\DeclareMathOperator {\\Proj} {P}"}),
text({"","\\renewcommand{\\i}{\\sqrt{-1}}"}),
text({"","\\DeclareMathOperator{\\mVol}{\\mathrm{Vol}(M_0,\\omega_0)}"}),
text({"","\\DeclareMathOperator{\\Lie}{\\mathrm{Lie}}"}),
text({"","\\DeclareMathOperator{\\lie}{\\mathrm{lie}}"}),
text({"","\\DeclareMathOperator{\\op}{\\mathrm{op}}"}),
text({"","\\DeclareMathOperator{\\rank}{\\mathrm{rank}}"}),
text({"","\\DeclareMathOperator{\\ind}{\\mathrm{ind}}"}),
text({"","\\DeclareMathOperator{\\trace}{\\mathrm{trace}}"}),
text({"","\\DeclareMathOperator{\\image}{\\mathrm{image}}"}),
text({"","\\DeclareMathOperator{\\Sym}{\\mathrm{Sym}}"}),
text({"","\\DeclareMathOperator{\\Ham}{\\mathrm{Ham}}"}),
text({"","\\DeclareMathOperator{\\Aut}{\\mathrm{Aut}}"}),
text({"","\\DeclareMathOperator{\\Quant}{\\mathrm{Quant}}"}),
text({"","\\DeclareMathOperator{\\Fred}{\\mathrm{Fred}}"}),
text({"","\\DeclareMathOperator{\\id}{\\mathrm{1}}"}),
text({"","\\DeclareMathOperator{\\lcs}{lcs}"}),
text({"","\\DeclareMathOperator{\\lcsm}{lcsm}"}),
text({"","\\DeclareMathOperator{\\coker}{coker}"}),
text({"","\\begin{document}"}),
text({"","\\title{"}), insert(1, "title"), text({"}"}),
text({"","\\author{Yasha Savelyev}"}),
text({"","\\thanks {}"}),
text({"","\\email{yasha.savelyev@gmail.com}"}),
text({"","\\address{University of Colima, CUICBAS}"}),
text({"","\\keywords{}"}),
text({"","\\begin{abstract}   "}),
text({""}), insert(2, "abstract here"), 
text({"","\\end{abstract}"}),
text({"","\\maketitle"}),
text({"","\\section{Introduction}"}),
text({""}), insert(3, "write intro"), 
text({"","\\bibliographystyle{siam}"}),  
text({"","\\bibliography{C:/Users/yasha/texmf/bibtex/bib/link}"}), 
text({"","%  \bibliography{/root/texmf/bibtex/bib/link}"}),  
text({"","% \bibliography{/home/yashasavelyev/texmf/bibtex/bib/link}"}), 
text({"","% \bibliography{/home/yasha/texmf/bibtex/bib/link}"}),
text({"","\\end{document}"}),
           }), 
         },
    })

   
    

--[[
-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.
-- Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
-- will need to extend the table yourself instead of setting a new one.
]]
require("luasnip/loaders/from_vscode").lazy_load({ paths = "C:/Users/yasha/dotfiles/snippets"})
-- You can also use lazy loading so you only get in memory snippets of languages you use

