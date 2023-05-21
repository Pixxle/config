require 'paq' {
    -- themes
    { 'projekt0n/github-nvim-theme' },
    --{ 'tanvirtin/monokai.nvim' },
 
    ----  Requirements: CocInstall coc-jedi coc-rust-analyzer coc-tsserver
    { 'neoclide/coc.nvim', branch = 'release' }, 

    { 'github/copilot.vim' },

    -- Configuration and abstraction layer
    { 'nvim-lua/plenary.nvim' },

    -- tmux navigation
    { 'christoomey/vim-tmux-navigator' },
 
    -- completion stuff:
    { 'hrsh7th/cmp-buffer', },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'saadparwaiz1/cmp_luasnip' },


    -- Go: 
    { 'ray-x/go.nvim' },
    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui' },
    { 'theHamsta/nvim-dap-virtual-text' },
    { 'ray-x/guihua.lua' },

    -- Hop:
    { 'phaazon/hop.nvim' },    
    
    -- LSP:
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },

    --nvim-tree
    { 'kyazdani42/nvim-tree.lua' },

    -- web-devicons
    { 'kyazdani42/nvim-web-devicons' },

    -- rest
    { 'NTBBloodbath/rest.nvim' },

    -- telescope
    { 'nvim-telescope/telescope.nvim' },

    -- tresitter
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'nvim-treesitter/nvim-treesitter' },

    -- typescript
    { 'jose-elias-alvarez/typescript.nvim' },

    --c# 
    { 'OmniSharp/omnisharp-vim' },
}


