require'nvim-tree'.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    filters = {
        dotfiles = false,
    },
})
vim.keymap.set('n', '<leader>fe', '<cmd>:NvimTreeToggle<CR>')   -- open/close
vim.keymap.set('n', '<leader>fr', '<cmd>:NvimTreeRefresh<CR>')  -- refresh
 
