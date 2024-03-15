require("lazy").setup({
	-- themes
	{ "nyoom-engineering/oxocarbon.nvim" },

	-- statusline
	{
		"hoob3rt/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- Copilot
	{ "github/copilot.vim" },

	-- Configuration and abstraction layer
	{ "nvim-lua/plenary.nvim" },

	-- LSP Package manager
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- LSP:
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "VonHeikemen/lsp-zero.nvim" },
	{ "stevearc/conform.nvim" },

	-- tmux navigation
	{ "christoomey/vim-tmux-navigator" },

	-- Split
	{ "declancm/maximize.nvim" },

	-- completion stuff:
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- Hop:
	{ "smoka7/hop.nvim" },
	{ "tomasky/bookmarks.nvim" },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- telescope
	{ "nvim-telescope/telescope.nvim" },

	-- Quick surround
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	--neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
	-- treesitter
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "nvim-treesitter/nvim-treesitter" },

	-- github
	{ "kdheepak/lazygit.nvim" },
	{ "f-person/git-blame.nvim" },
})
