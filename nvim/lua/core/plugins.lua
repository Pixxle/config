require("lazy").setup({
	-- themes
	--{ "nyoom-engineering/oxocarbon.nvim" },
	{
		"projekt0n/github-nvim-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({})
		end,
	},

	-- statusline
	{
		"hoob3rt/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- AI section
	---- Copilot
	---- { "github/copilot.vim" },
	---- Supermaven, Copilot replacement
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	},
	---- Avente - Code asking etc
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		build = "make", -- This is Optional, only if you want to use tiktoken_core to calculate tokens count
		opts = {
			-- add any opts here
			provider = "claude",
			mappings = {
				ask = "<leader>.",
				edit = "<leader>,",
				refresh = "<leader>,,",
			},
		},
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below is optional, make sure to setup it properly if you have lazy=true
			{
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
			--- For image pasting support
			{
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {},
			},
		},
	},

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

	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"letieu/harpoon-lualine",
		dependencies = {
			"nvim-lualine/lualine.nvim",
			{
				"ThePrimeagen/harpoon",
				branch = "harpoon2",
			},
		},
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
