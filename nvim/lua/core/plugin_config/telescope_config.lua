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
})

vim.keymap.set("n", "<leader>b", [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { silent = true })
vim.keymap.set(
	"n",
	"<leader><space>",
	[[<cmd>lua require('telescope.builtin').find_files({previewer = true})<CR>]],
	{ silent = true }
)
vim.keymap.set(
	"n",
	"<leader>x",
	[[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
	{ silent = true }
)
vim.keymap.set("n", "<leader>s", [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { silent = true }) -- grep in current buffer
vim.keymap.set("n", "<leader>a", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { silent = true }) -- grep in all files
vim.keymap.set("n", "<leader>?", [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { silent = true }) -- search in old files
