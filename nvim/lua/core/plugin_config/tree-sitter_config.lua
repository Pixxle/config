require('nvim-treesitter.configs').setup({
    ensure_installed = { 
        'bash', 
        'dockerfile', 
        'go', 
        'gomod', 
        'hcl', 
        'http', 
        'json', 
        'python', 
        'yaml', 
        'astro', 
        'elixir', 
        'heex', 
        'eex',
        'lua',
        'typescript',
        'svelte'
    },
    highlight = { enable = true },
    indent = { enable = true },
    

})

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true})
