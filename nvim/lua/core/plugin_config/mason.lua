require("mason").setup()

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local vim = vim

require("mason-lspconfig").setup({
	formatters = {
		black = {
			prepend_args = { "--fast" },
		},
	},
	ensure_installed = {
		"svelte",
		"ts_ls",
		"astro",
		"tailwindcss",
		"terraformls",
		"tflint",
		"elixirls",
		"jedi_language_server",
		"rust_analyzer",
		"gopls",
		"black",
	},
	automatic_installation = true,
	handlers = {
		function(server)
			lspconfig[server].setup({
				capabilities = lsp_capabilities,
			})
		end,
		["astro"] = function()
			lspconfig.astro.setup({
				capabilities = lsp_capabilities,
				init_options = {
					typescript = {
						tsdk = vim.fs.normalize("~/Library/pnpm/global/5/node_modules/typescript/lib"),
					},
				},
			})
		end,
		["elixirls"] = function()
			lspconfig.elixirls.setup({
				capabilities = lsp_capabilities,
				cmd = { "elixir-ls" },
				settings = {
					elixirLS = {
						dialyzerEnabled = false,
						fetchDeps = false,
					},
				},
			})
		end,
	},
})

vim.diagnostic.config({
	virtual_text = {
		severity = { min = vim.diagnostic.severity.HINT },
	},
	signs = {
		severity = { min = vim.diagnostic.severity.HINT },
	},
	underline = {
		severity = { min = vim.diagnostic.severity.HINT },
	},
	update_in_insert = false,
	severity_sort = true,
})
