local tsconfig = require 'nvim-treesitter.configs'
tsconfig.setup {
    ensure_installed = { 'bash', 'cmake', 'dockerfile', 'go', 'gomod', 'hcl', 'http', 'json', 'python', 'yaml' },
    highlight = { enable = true }
}

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true})
