local cmd = vim.cmd
local g = vim.g

-- remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", { silent = true })
g.mapleader = " "
g.maplocalleader = " "

vim.keymap.set("", "<leader>c", '"+y') -- Copy to clipboard in normal, visual, select and operator modes
vim.keymap.set("n", "Y", "y$") -- copy till end of line
vim.keymap.set("i", "<C-u>", "<C-g>u<C-u>") -- Make <C-u> undo-friendly
vim.keymap.set("i", "<C-w>", "<C-g>u<C-w>") -- Make <C-w> undo-friendly

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":m -2<CR>")
vim.keymap.set("x", "J", ":m+<CR>")

vim.keymap.set("n", "<C-l>", "<cmd>noh<CR>") -- Clear highlights
vim.keymap.set("n", "<leader>o", "m`o<Esc>``") -- Insert a newline in normal mode

-- Increment/decrement number under cursor
vim.keymap.set("n", "<C-s>", "<C-a>")

-- Save and quit
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>:q!<CR>")

g.copilot_no_tab_map = true
g.copilot_assume_mapped = true
