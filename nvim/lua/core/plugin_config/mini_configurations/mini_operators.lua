require("mini.operators").setup({
	-- Actually no need to copy this into here; this is default settings; but I keep it here for ease of looking into settings
	evaluate = {
		prefix = "g=",

		-- Function which does the evaluation
		func = nil,
	},

	-- Exchange text regions
	exchange = {
		prefix = "gx",

		-- Whether to reindent new text to match previous indent
		reindent_linewise = true,
	},

	-- Multiply (duplicate) text
	multiply = {
		prefix = "gm",

		-- Function which can modify text before multiplying
		func = nil,
	},

	-- Replace text with register
	replace = {
		prefix = "gr",

		-- Whether to reindent new text to match previous indent
		reindent_linewise = true,
	},

	-- Sort text
	sort = {
		prefix = "gs",

		-- Function which does the sort
		func = nil,
	},
})
