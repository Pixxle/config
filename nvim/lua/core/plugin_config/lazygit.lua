require('lazygit')
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>')


require('gitblame').setup{
    enabled = true,
}
