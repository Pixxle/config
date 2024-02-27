require("mason").setup()

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup({
	ensure_installed = {
		"svelte",
		"tsserver",
		"astro",
		"tailwindcss",
		"terraformls",
		"tflint",
		"elixirls",
		"jedi_language_server",
		"rust_analyzer",
		"gopls",
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
