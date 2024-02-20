require("lazy").setup({
    -- themes
    { 'projekt0n/github-nvim-theme' },
 
    { 'github/copilot.vim' },

    -- Configuration and abstraction layer
    { 'nvim-lua/plenary.nvim' },

    -- LSP Package manager
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
 
    -- LSP:
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },


    -- tmux navigation
    { 'christoomey/vim-tmux-navigator' },

    -- Split 
    { 'declancm/maximize.nvim' }, 
 
    -- completion stuff:
    { 'hrsh7th/cmp-buffer', },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'saadparwaiz1/cmp_luasnip' },

    -- Hop:
    { 'phaazon/hop.nvim' },    
   
    -- telescope
    { 'nvim-telescope/telescope.nvim' },

    --neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
   
    -- tresitter
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'nvim-treesitter/nvim-treesitter' },

    { 'kdheepak/lazygit.nvim' },

    -- web-devicons
    --{ 'kyazdani42/nvim-web-devicons' },

      -- typescript & Javascript & svelte & astro
    { 'jose-elias-alvarez/typescript.nvim' },
    { 'othree/html5.vim' },
    { 'pangloss/vim-javascript' },
    { 'evanleck/vim-svelte' },
    { 'peitalin/vim-jsx-typescript' },
    { 'leafgarland/typescript-vim' },
    { 'styled-components/vim-styled-components' },
    { 'prisma/vim-prisma' },
    { 'maxmellon/vim-jsx-pretty' },
    { 'prettier/vim-prettier' },
    { 'wuelnerdotexe/vim-astro' },

    -- Go: 
    { 'ray-x/go.nvim' },
    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui' },
    { 'theHamsta/nvim-dap-virtual-text' },
    { 'ray-x/guihua.lua' },

    -- Elixir
    { "elixir-tools/elixir-tools.nvim" },
    
    -- rest
    { 'NTBBloodbath/rest.nvim' },

    -- Python
    { 'davidhalter/jedi-vim' },

    -- Lua 
    { "folke/neodev.nvim", opts = {} },
})
