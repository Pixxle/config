local cmd = vim.cmd
local g = vim.g

-- remap space as leader key
vim.keymap.set('', '<Space>', '<Nop>', { silent = true })
g.mapleader = ' '
g.maplocalleader = ' '

vim.keymap.set('', '<leader>c', '"+y') -- Copy to clipboard in normal, visual, select and operator modes
vim.keymap.set('n', 'Y', 'y$') -- copy till end of line
vim.keymap.set('i', '<C-u>', '<C-g>u<C-u>') -- Make <C-u> undo-friendly
vim.keymap.set('i', '<C-w>', '<C-g>u<C-w>') -- Make <C-w> undo-friendly
 
-- <Tab> to navigate the completion menu
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })
 
vim.keymap.set('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
vim.keymap.set('n', '<leader>o', 'm`o<Esc>``') -- Insert a newline in normal mode
 
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<leader>w', '<cmd>:w<CR>')

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- disabled in visual mode
cmd 'autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)'
