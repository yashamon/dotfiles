local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

-- If you're reading this file for the first time, best skip to around line 190
-- where the actual snippet-definitions start.

-- Every unspecified option will be set to the default.
ls.setup({
	keep_roots = true,
	link_roots = true,
	link_children = true,

	-- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
	-- Snippets aren't automatically removed if their text is deleted.
	-- `delete_check_events` determines on which events (:h events) a check for
	-- deleted snippets is performed.
	-- This can be especially useful when `history` is enabled.
	delete_check_events = "TextChanged",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
	-- mapping for cutting selected text so it's usable as SELECT_DEDENT,
	-- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
	store_selection_keys = "<Tab>",
	-- luasnip uses this function to get the currently active filetype. This
	-- is the (rather uninteresting) default, but it's possible to use
	-- eg. treesitter for getting the current filetype by setting ft_func to
	-- require("luasnip.extras.filetype_functions").from_cursor (requires
	-- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
	-- the current filetype in eg. a markdown-code block or `vim.cmd()`.
	ft_func = function()
		return vim.split(vim.bo.filetype, ".", true)
	end,
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

-- complicated function for dynamicNode.
local function jdocsnip(args, _, old_state)
	-- !!! old_state is used to preserve user-input here. DON'T DO IT THAT WAY!
	-- Using a restoreNode instead is much easier.
	-- View this only as an example on how old_state functions.
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
local function bash(_, _, command)
	local file = io.popen(command, "r")
	local res = {}
	for line in file:lines() do
		table.insert(res, line)
	end
	return res
end

-- Returns a snippet_node wrapped around an insertNode whose initial
-- text value is set to the current date in the desired format.
local date_input = function(args, snip, old_state, fmt)
	local fmt = fmt or "%Y-%m-%d"
	return sn(nil, i(1, os.date(fmt)))
end

-- snippets are added via ls.add_snippets(filetype, snippets[, opts]), where
-- opts may specify the `type` of the snippets ("snippets" or "autosnippets",
-- for snippets that should expand directly after the trigger is typed).
--
-- opts can also specify a key. By passing an unique key to each add_snippets, it's possible to reload snippets by
-- re-`:luafile`ing the file in which they are defined (eg. this one).
ls.add_snippets("java", {
	-- Very long example for a java class.
	s("fn", {
		d(6, jdocsnip, { 2, 4, 5 }),
		t({ "", "" }),
		c(1, {
			t("public "),
			t("private "),
		}),
		c(2, {
			t("void"),
			t("String"),
			t("char"),
			t("int"),
			t("double"),
			t("boolean"),
			i(nil, ""),
		}),
		t(" "),
		i(3, "myFunc"),
		t("("),
		i(4),
		t(")"),
		c(5, {
			t(""),
			sn(nil, {
				t({ "", " throws " }),
				i(1),
			}),
		}),
		t({ " {", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
}, {
	key = "java",
})

ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("ls", {
		t({ "\\begin{itemize}", "\t\\item " }),
		i(1),
		d(2, rec_ls, {}),
		t({ "", "\\end{itemize}" }),
	}),
}, {
	key = "tex",
})

-- set type to "autosnippets" for adding autotriggered snippets.
ls.add_snippets("all", {
	s("autotrigger", {
		t("autosnippet"),
	}),
}, {
	type = "autosnippets",
	key = "all_auto",
})

-- in a lua file: search lua-, then c-, then all-snippets.
ls.filetype_extend("lua", { "c" })
-- in a cpp file: search c-snippets, then all-snippets only (no cpp-snippets!!).
ls.filetype_set("cpp", { "c" })

-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.

-- require("luasnip.loaders.from_vscode").load({ include = { "python" } }) -- Load only python snippets

-- The directories will have to be structured like eg. <https://github.com/rafamadriz/friendly-snippets> (include
-- a similar `package.json`)
-- require("luasnip.loaders.from_vscode").load({ paths = { "./my-snippets" } }) -- Load snippets from my-snippets folder

-- You can also use lazy loading so snippets are loaded on-demand, not all at once (may interfere with lazy-loading luasnip itself).
-- require("luasnip.loaders.from_vscode").lazy_load() -- You can pass { paths = "./my-snippets/"} as well

-- You can also use snippets in snipmate format, for example <https://github.com/honza/vim-snippets>.
-- The usage is similar to vscode.

-- One peculiarity of honza/vim-snippets is that the file containing global
-- snippets is _.snippets, so we need to tell luasnip that the filetype "_"
-- contains global snippets:
-- ls.filetype_extend("all", { "_" })

-- require("luasnip.loaders.from_snipmate").load({ include = { "c" } }) -- Load only snippets for c.

-- Load snippets from my-snippets folder
-- The "." refers to the directory where of your `$MYVIMRC` (you can print it
-- out with `:lua print(vim.env.MYVIMRC)`.
-- NOTE: It's not always set! It isn't set for example if you call neovim with
-- the `-u` argument like this: `nvim -u yeet.txt`.
-- require("luasnip.loaders.from_snipmate").load({ path = { "./my-snippets" } })
-- If path is not specified, luasnip will look for the `snippets` directory in rtp (for custom-snippet probably
-- `~/.config/nvim/snippets`).

-- require("luasnip.loaders.from_snipmate").lazy_load() -- Lazy loading

-- see DOC.md/LUA SNIPPETS LOADER for some details.
-- require("luasnip.loaders.from_lua").load({ include = { "c" } })
-- require("luasnip.loaders.from_lua").lazy_load({ include = { "all", "cpp" } })

ls.add_snippets(nil, {
    lua = {
        s({
            trig = "snip",
            namr = "snippet",
            dscr = "create a lua snippet",
        },
        {
t({"",'ls.add_snippets(nil, {'}),
t({"", ""}), i(1,"filetype"), t({" = {"}),
t({"","s({"}),
t({"","trig = \""}), i(2,""), t({'",'}),
t({"","},"}),
t({"","{"}),
t({"", 't({"","'}), i(3, ""),  t({'"}),'}),
t({'i(1,"'}), i(4, ""),  t({'"),'}),
t({'t({"'}), i(5, ""),  t({'"})'}),
t({"","})"}),
t({"","},"}),
t({"","})"}),
}),
         },
    })
ls.add_snippets(nil, {
lua = {
s({
trig = "text",
},
{
t({'t({"'}), i(1,""), t({"\"})"})
})
},
})
ls.add_snippets(nil, {
lua = {
s({
trig = "ins",
},
{
t({'i('}), i(1,"n"), t({","}),
i(2, "i"), t({"\")"})
})
},
})
function Is_math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end
-- ls.add_snippets = {
--   tex = {
--     s("neqq", {
--       t("\\neq"),
--       i(0),
--     }, {condition = is_math}),
--   },
-- }

ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("neq", {
		t({"\\neq"}),
		i("1",""),
	}, { condition = Is_math }),
})
ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("equiv", {
		t({"\\sim"}),
		i("1",""),
	}, { condition = Is_math }),
})
ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("equiv", {
		t({"\\sim"}),
		i("1",""),
	}, { condition = Is_math }),
})
ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("isom", {
		t({"\\simeq"}),
		i("1",""),
	}, { condition = Is_math }),
})
ls.add_snippets("tex", {
	-- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
	-- \item as necessary by utilizing a choiceNode.
	s("Ainf", {
		t({"\\mathcal{A} _{\\infty}"}),
		i("1",""),
	}, { condition = Is_math }),
})

ls.add_snippets(nil, {
tex = {
s({
trig = "test",
},
{ t({"dude"}), i(1, "snippet"),  t({"dude"})
})
},
})

ls.add_snippets(nil, {
	plaintex = {
        s({
            trig = "letter",
            namr = "Latex template",
            dscr = "Latex template",
        },
        { t({"","\\documentclass{letter}"}),
t({"","\\usepackage{appendix}"}),
t({"","\\usepackage{graphicx}"}),
t({"","\\usepackage{amsfonts, amscd, mathrsfs, amsmath, amssymb, amsthm}"}),
t({"","\\usepackage{url}"}),
t({"", "\\usepackage[parfill]{parskip}"}),
t({"","\\usepackage{hyperref} "}),
t({"","\\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}"}),
t({"","\\usepackage{tikz-cd}"}),
t({"","\\usepackage{color, verbatim}"}),
t({"","\\usepackage{bm}"}),
t({"",'\\signature{Yasha Savelyev}'}),
t({"",'\\name{Yasha (Yakov) Savelyev}'}),
-- t({"","\\email{yasha.savelyev@gmail.com}"}),
t({"",'\\address{Bernal Díaz del Castillo 340, \\\\'}),
t({"",'Col. Villas San Sebastian, \\\\'}),
t({"",'28045 Colima, Colima, \\\\'}),
t({"",'Mexico}'}),
t({"",'\\date{'}), i(1,""), t({'}'}),
t({"","\\begin{document}"}),
t({"","\\begin{letter}{}"}),
t({"","\\opening{"}), i(2,""), t({'}'}),
t({""}), i(3, ""),
t({"",'\\closing{Sincerely,}'}),
t({"",'\\end{letter}'}),
t({"", '\\end{document}'}),
}),
         },
    })


ls.add_snippets(nil, {
    plaintex = {
        s({
            trig = "article",
            namr = "Latex template",
            dscr = "Latex template",
        },
        { t({"","\\documentclass{amsart}"}),
t({"","\\usepackage{appendix}"}),
t({"","\\usepackage{graphicx}"}),
t({"","\\usepackage[parfill]{parskip} "}),
t({"","\\usepackage{amsfonts, amscd, mathrsfs, amsmath, amssymb, amsthm}"}),
t({"","\\usepackage{url}"}),
t({"","\\usepackage{hyperref} "}),
t({"","\\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}"}),
t({"","\\usepackage{tikz-cd}"}),
t({"","\\usepackage{}"}),
t({"","\\usepackage{color, verbatim}"}),
t({"","\\usepackage{bm}"}),
t({"","\\usepackage[hmargin=3cm,vmargin=3cm]{geometry}"}),
t({"","\\numberwithin{equation}{section}"}),
t({"","\\newtheorem{thm}[equation]{Theorem} "}),
t({"","\\newtheorem{axiom}[equation]{Axiom} "}),
t({"","\\newtheorem{theorem}[equation]{Theorem} "}),
t({"", "\newtheorem{condition}[Condition]{Theorem} "}),
t({"","\\newtheorem{proposition}[equation]{Proposition}"}),
t({"","\\newtheorem{lma}[equation]{Lemma} "}),
t({"","\\newtheorem{lemma}[equation]{Lemma} "}),
t({"","\\newtheorem{cpt}[equation]{Computation} "}),
t({"","\\newtheorem{corollary}[equation]{Corollary} "}),
t({"","\\newtheorem{clm}[equation]{Claim} "}),
t({"","\\newtheorem{conjecture}{Conjecture}"}),
t({"","\\newtheorem{definition}[equation]{Definition}"}),
t({"","\\theoremstyle{definition}"}),
t({"","\\newtheorem{ft}{Fact}"}),
t({"","\\newtheorem{notation}{Notation}"}),
t({"","\\newtheorem{terminology}{Terminology}"}),
t({"","\\newtheorem{descr}{Description}[equation]"}),
t({"","\\theoremstyle{remark}"}),
t({"","\\newtheorem*{pf}{Proof}"}),
t({"","\\newtheorem*{pfs}{Proof (sketch)}"}),
t({"","\\newtheorem{remark}[equation]{Remark}"}),
t({"","\\newtheorem{example}{Example}"}),
t({"","\\newtheorem{question}{Question}"}),
t({"","\\newcommand {\\vol}{\\operatorname{vol}}"}),
t({"","\\newcommand{\\hatcp}{\\widehat{\\mathbb {CP}} ^{r-1}}"}),
t({"","\\DeclareMathOperator {\\spann} {span}"}),
t({"","\\DeclareMathOperator {\\period} {period}"}),
t({"","\\DeclareMathOperator {\\sign} {sign}"}),
t({"","\\DeclareMathOperator {\\Id} {Id}"}),
t({"","\\DeclareMathOperator {\\floor} {floor}"}),
t({"","\\DeclareMathOperator {\\ceil} {ceil}"}),
t({"","\\DeclareMathOperator {\\mult} {mult}"}),
t({"","\\DeclareMathOperator {\\Symp} {Symp}"}),
t({"","\\DeclareMathOperator {\\Det} {Det}"}),
t({"","\\DeclareMathOperator {\\comp} {comp}"}),
t({"","\\DeclareMathOperator {\\growth} {growth}"}),
t({"","\\DeclareMathOperator {\\energy} {energy}"}),
t({"","\\DeclareMathOperator {\\Reeb} {Reeb}"}),
t({"","\\DeclareMathOperator {\\Lin} {Lin}"}),
t({"","\\DeclareMathOperator {\\Diff} {Diff}"}),
t({"","\\DeclareMathOperator {\\fix} {fix}"}),
t({"","\\DeclareMathOperator {\\grad} {grad}"}),
t({"","\\DeclareMathOperator {\\area} {area}"}),
t({"","\\DeclareMathOperator {\\diam} {diam}"}),
t({"","\\DeclareMathOperator {\\dvol} {dvol}"}),
t({"","\\DeclareMathOperator {\\quant} {Quant}"}),
t({"","\\DeclareMathOperator {\\ho} {ho}"}),
t({"","\\DeclareMathOperator {\\length} {length}"}),
t({"","\\DeclareMathOperator {\\Proj} {P}"}),
t({"","\\renewcommand{\\i}{\\sqrt{-1}}"}),
t({"","\\DeclareMathOperator{\\mVol}{\\mathrm{Vol}(M_0,\\omega_0)}"}),
t({"","\\DeclareMathOperator{\\Lie}{\\mathrm{Lie}}"}),
t({"","\\DeclareMathOperator{\\lie}{\\mathrm{lie}}"}),
t({"","\\DeclareMathOperator{\\op}{\\mathrm{op}}"}),
t({"","\\DeclareMathOperator{\\rank}{\\mathrm{rank}}"}),
t({"","\\DeclareMathOperator{\\ind}{\\mathrm{ind}}"}),
t({"","\\DeclareMathOperator{\\trace}{\\mathrm{trace}}"}),
t({"","\\DeclareMathOperator{\\image}{\\mathrm{image}}"}),
t({"","\\DeclareMathOperator{\\Sym}{\\mathrm{Sym}}"}),
t({"","\\DeclareMathOperator{\\Ham}{\\mathrm{Ham}}"}),
t({"","\\DeclareMathOperator{\\Aut}{\\mathrm{Aut}}"}),
t({"","\\DeclareMathOperator{\\Quant}{\\mathrm{Quant}}"}),
t({"","\\DeclareMathOperator{\\Fred}{\\mathrm{Fred}}"}),
t({"","\\DeclareMathOperator{\\id}{\\mathrm{1}}"}),
t({"","\\DeclareMathOperator{\\lcs}{lcs}"}),
t({"","\\DeclareMathOperator{\\lcsm}{lcsm}"}),
t({"","\\DeclareMathOperator{\\coker}{coker}"}),
t({"","\\begin{document}"}),
t({"","\\title{"}), i(1, ""), t({"}"}),
t({"","\\author{Yasha Savelyev}"}),
t({"","\\thanks {}"}),
t({"","\\email{yasha.savelyev@gmail.com}"}),
t({"","\\address{University of Colima, CUICBAS}"}),
t({"","\\keywords{}"}),
t({"","\\begin{abstract}   "}),
t({""}), i(2, ""),
t({"","\\end{abstract}"}),
t({"","\\maketitle"}),
t({"","\\section{Introduction}"}),
t({""}), i(3, ""),
t({"","\\bibliographystyle{siam}"}),
t({"","\\bibliography{C:/Users/yasha/texmf/bibtex/bib/link}"}),
t({"","%  \bibliography{/root/texmf/bibtex/bib/link}"}),
t({"","% \bibliography{/home/yashasavelyev/texmf/bibtex/bib/link}"}),
t({"","% \bibliography{/home/yasha/texmf/bibtex/bib/link}"}),
t({"","\\end{document}"}),
           }),
         },
    })
ls.add_snippets(nil, {
	tex = {
        s({
            trig = "letter",
            namr = "Latex template",
            dscr = "Latex template",
        },
        { t({"","\\documentclass{letter}"}),
t({"","\\usepackage{appendix}"}),
t({"","\\usepackage{graphicx}"}),
t({"","\\usepackage{amsfonts, amscd, mathrsfs, amsmath, amssymb, amsthm}"}),
t({"","\\usepackage{url}"}),
t({"","\\usepackage{hyperref} "}),
t({"","\\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}"}),
t({"","\\usepackage{tikz-cd}"}),
t({"","\\usepackage{color, verbatim}"}),
t({"","\\usepackage{bm}"}),
t({"",'\\signature{Yasha Savelyev}'}),
t({"",'\\name{Yasha (Yakov) Savelyev}'}),
-- t({"","\\email{yasha.savelyev@gmail.com}"}),
t({"",'\\address{Bernal Díaz del Castillo 340, \\\\'}),
t({"",'Col. Villas San Sebastian, \\\\'}),
t({"",'28045 Colima, Colima, \\\\'}),
t({"",'Mexico}'}),
t({"",'\\date{'}), i(1,""), t({'}'}),
t({"","\\begin{document}"}),
t({"","\\begin{letter}{}"}),
t({"","\\opening{"}), i(2,""), t({'}'}),
t({""}), i(3, ""),
t({"",'\\closing{Sincerely,}'}),
t({"",'\\end{letter}'}),
t({"", '\\end{document}'}),
}),
         },
    })


ls.add_snippets(nil, {
    plaintex = {
        s({
            trig = "tex",
            namr = "Latex template",
            dscr = "Latex template",
        },
        { t({"","\\documentclass{amsart}"}),
t({"","\\usepackage{appendix}"}),
t({"","\\usepackage{graphicx}"}),
t({"","\\usepackage{amsfonts, amscd, mathrsfs, amsmath, amssymb, amsthm}"}),
t({"","\\usepackage{url}"}),
t({"","\\usepackage{hyperref} "}),
t({"","\\hypersetup{backref,pdfpagemode=FullScreen,colorlinks=true}"}),
t({"","\\usepackage{tikz-cd}"}),
t({"","\\usepackage{}"}),
t({"","\\usepackage{color, verbatim}"}),
t({"","\\usepackage{bm}"}),
t({"","\\usepackage[hmargin=3cm,vmargin=3cm]{geometry}"}),
t({"","\\numberwithin{equation}{section}"}),
t({"","\\newtheorem{thm}[equation]{Theorem} "}),
t({"","\\newtheorem{axiom}[equation]{Axiom} "}),
t({"","\\newtheorem{theorem}[equation]{Theorem} "}),
t({"","\\newtheorem{proposition}[equation]{Proposition}"}),
t({"","\\newtheorem{lma}[equation]{Lemma} "}),
t({"","\\newtheorem{lemma}[equation]{Lemma} "}),
t({"","\\newtheorem{cpt}[equation]{Computation} "}),
t({"","\\newtheorem{corollary}[equation]{Corollary} "}),
t({"","\\newtheorem{clm}[equation]{Claim} "}),
t({"","\\newtheorem{conjecture}{Conjecture}"}),
t({"","\\newtheorem{definition}[equation]{Definition}"}),
t({"","\\theoremstyle{definition}"}),
t({"","\\newtheorem{ft}{Fact}"}),
t({"","\\newtheorem{notation}{Notation}"}),
t({"","\\newtheorem{terminology}{Terminology}"}),
t({"","\\newtheorem{descr}{Description}[equation]"}),
t({"","\\theoremstyle{remark}"}),
t({"","\\newtheorem*{pf}{Proof}"}),
t({"","\\newtheorem*{pfs}{Proof (sketch)}"}),
t({"","\\newtheorem{remark}[equation]{Remark}"}),
t({"","\\newtheorem{example}{Example}"}),
t({"","\\newtheorem{question}{Question}"}),
t({"","\\newcommand {\\vol}{\\operatorname{vol}}"}),
t({"","\\newcommand{\\hatcp}{\\widehat{\\mathbb {CP}} ^{r-1}}"}),
t({"","\\DeclareMathOperator {\\spann} {span}"}),
t({"","\\DeclareMathOperator {\\D} {Delta}"}),
t({"","\\DeclareMathOperator {\\obj} {obj}"}),
t({'',"\\DeclareMathOperator {\\colim} {colim}"}),
t({"","\\DeclareMathOperator {\\period} {period}"}),
t({"","\\DeclareMathOperator {\\sign} {sign}"}),
t({"","\\DeclareMathOperator {\\Id} {Id}"}),
t({"","\\DeclareMathOperator {\\floor} {floor}"}),
t({"","\\DeclareMathOperator {\\ceil} {ceil}"}),
t({"","\\DeclareMathOperator {\\mult} {mult}"}),
t({"","\\DeclareMathOperator {\\Symp} {Symp}"}),
t({"","\\DeclareMathOperator {\\Det} {Det}"}),
t({"","\\DeclareMathOperator {\\comp} {comp}"}),
t({"","\\DeclareMathOperator {\\growth} {growth}"}),
t({"","\\DeclareMathOperator {\\energy} {energy}"}),
t({"","\\DeclareMathOperator {\\Reeb} {Reeb}"}),
t({"","\\DeclareMathOperator {\\Lin} {Lin}"}),
t({"","\\DeclareMathOperator {\\Diff} {Diff}"}),
t({"","\\DeclareMathOperator {\\fix} {fix}"}),
t({"","\\DeclareMathOperator {\\grad} {grad}"}),
t({"","\\DeclareMathOperator {\\area} {area}"}),
t({"","\\DeclareMathOperator {\\diam} {diam}"}),
t({"","\\DeclareMathOperator {\\dvol} {dvol}"}),
t({"","\\DeclareMathOperator {\\quant} {Quant}"}),
t({"","\\DeclareMathOperator {\\ho} {ho}"}),
t({"","\\DeclareMathOperator {\\length} {length}"}),
t({"","\\DeclareMathOperator {\\Proj} {P}"}),
t({"","\\renewcommand{\\i}{\\sqrt{-1}}"}),
t({"","\\DeclareMathOperator{\\mVol}{\\mathrm{Vol}(M_0,\\omega_0)}"}),
t({"","\\DeclareMathOperator{\\Lie}{\\mathrm{Lie}}"}),
t({"","\\DeclareMathOperator{\\lie}{\\mathrm{lie}}"}),
t({"","\\DeclareMathOperator{\\op}{\\mathrm{op}}"}),
t({"","\\DeclareMathOperator{\\rank}{\\mathrm{rank}}"}),
t({"","\\DeclareMathOperator{\\ind}{\\mathrm{ind}}"}),
t({"","\\DeclareMathOperator{\\trace}{\\mathrm{trace}}"}),
t({"","\\DeclareMathOperator{\\image}{\\mathrm{image}}"}),
t({"","\\DeclareMathOperator{\\Sym}{\\mathrm{Sym}}"}),
t({"","\\DeclareMathOperator{\\Ham}{\\mathrm{Ham}}"}),
t({"","\\DeclareMathOperator{\\Aut}{\\mathrm{Aut}}"}),
t({"","\\DeclareMathOperator{\\Quant}{\\mathrm{Quant}}"}),
t({"","\\DeclareMathOperator{\\Fred}{\\mathrm{Fred}}"}),
t({"","\\DeclareMathOperator{\\id}{\\mathrm{1}}"}),
t({"","\\DeclareMathOperator{\\lcs}{lcs}"}),
t({"","\\DeclareMathOperator{\\lcsm}{lcsm}"}),
t({"","\\DeclareMathOperator{\\coker}{coker}"}),
t({"","\\begin{document}"}),
t({"","\\title{"}), i(1, ""), t({"}"}),
t({"","\\author{Yasha Savelyev}"}),
t({"","\\thanks {}"}),
t({"","\\email{yasha.savelyev@gmail.com}"}),
t({"","\\address{University of Colima, CUICBAS}"}),
t({"","\\keywords{}"}),
t({"","\\begin{abstract}   "}),
t({""}), i(2, ""),
t({"","\\end{abstract}"}),
t({"","\\maketitle"}),
t({"","\\section{Introduction}"}),
t({""}), i(3, ""),
t({"","\\bibliographystyle{siam}"}),
t({"","\\bibliography{C:/Users/yasha/texmf/bibtex/bib/link}"}),
t({"","%  \bibliography{/root/texmf/bibtex/bib/link}"}),
t({"","% \bibliography{/home/yashasavelyev/texmf/bibtex/bib/link}"}),
t({"","% \bibliography{/home/yasha/texmf/bibtex/bib/link}"}),
t({"","\\end{document}"}),
           }),
         },
    })



--[[
-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.
-- Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
-- will need to extend the table yourself instead of setting a new one.
]]
require("luasnip/loaders/from_vscode").lazy_load({ paths = "C:/Users/yasha/OneDrive/dotfiles/snippets"})
-- You can also use lazy loading so you only get in memory snippets of languages you use


