require 'paq' {
    -- themes
    { 'projekt0n/github-nvim-theme' },
 
    ----  Requirements: CocInstall coc-jedi coc-rust-analyzer coc-tsserver coc-svelte
    { 'neoclide/coc.nvim', branch = 'release' }, 

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

    --nvim-tree
    { 'kyazdani42/nvim-tree.lua' },
   
    -- tresitter
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'nvim-treesitter/nvim-treesitter' },

    { 'kdheepak/lazygit.nvim' },

    -- web-devicons
    { 'kyazdani42/nvim-web-devicons' },

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



}


