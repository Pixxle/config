------------ Installing Debug Adapters ----------
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
--
local dap = require("dap")

vim.api.nvim_set_keymap(
	"n",
	"<leader>dt",
	"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", "<cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true })

dap.adapters.chrome = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/vscode-chrome-debug/out/src/chromeDebug.js" }, -- TODO adjust
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
	{
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
}

dap.configurations.typescriptreact = { -- change to typescript if needed
	{
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
}

require("dapui").setup()
vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require'dapui'.toggle()<CR>", { noremap = true, silent = true })
