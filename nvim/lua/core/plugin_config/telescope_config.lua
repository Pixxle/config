require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-d>"] = false,
			},
		},
		file_ignore_patterns = { "node_modules/.*", ".git" },
	},
	pickers = {
		find_files = {
			theme = "ivy",
		},
		live_grep = {
			theme = "ivy",
		},
		grep_string = {
			theme = "ivy",
		},
	},
	extensions = {
		fzf = {},
	},
})

require("telescope").load_extension("fzf")

vim.keymap.set("n", "<leader>b", function()
	local opts = require("telescope.themes").get_dropdown()
	require("telescope.builtin").buffers(opts)
end)

vim.keymap.set("n", "<leader><space>", require("telescope.builtin").find_files)

vim.keymap.set("n", "<leader>x", require("telescope.builtin").current_buffer_fuzzy_find)
vim.keymap.set("n", "<leader>a", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>s", [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { silent = true }) -- grep in current buffer

-- Telescope LSP get definition
vim.keymap.set("n", "<leader>h", require("telescope.builtin").lsp_type_definitions)
vim.keymap.set("n", "<leader>H", require("telescope.builtin").lsp_document_symbols)
