require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
}

vim.keymap.set('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { silent = true })
vim.keymap.set('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]],
    { silent = true })
vim.keymap.set('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
    { silent = true })
vim.keymap.set('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { silent = true })
vim.keymap.set('n', '<leader>gl', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { silent = true })
vim.keymap.set('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { silent = true })
