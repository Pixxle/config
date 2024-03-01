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

-- <Tab> to navigate the completion menu
--vim.keymap.set("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })
--vim.keymap.set("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
--vim.keymap.set("i", "<CR>", 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true })

vim.keymap.set("n", "<C-l>", "<cmd>noh<CR>") -- Clear highlights
vim.keymap.set("n", "<leader>o", "m`o<Esc>``") -- Insert a newline in normal mode

-- Save and quit
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>:q!<CR>")

-- Tab navigation
vim.keymap.set("n", "<leader>t", "<cmd>:tabnew<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>:tabnext<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>:tabprevious<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>:tabclose<CR>")
vim.keymap.set("n", "<leader>te", "<cmd>:tabedit<CR>")
vim.keymap.set("n", "<leader>ts", "<cmd>:tab split<CR>")
vim.keymap.set("n", "<leader>1", "1gt")
vim.keymap.set("n", "<leader>2", "2gt")
vim.keymap.set("n", "<leader>3", "3gt")
vim.keymap.set("n", "<leader>4", "4gt")
vim.keymap.set("n", "<leader>5", "5gt")
vim.keymap.set("n", "<leader>6", "6gt")

g.copilot_no_tab_map = true
g.copilot_assume_mapped = true

--- LSP Configuration
--vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

--vim.api.nvim_set_keymap("n", "<leader>rn", [[<cmd>lua vim.lsp.buf.rename()<CR>]], { silent = true })

--vim.api.nvim_set_keymap("n", "<leader>ca", [[<cmd>lua vim.lsp.buf.code_action()<CR>]], { silent = true })
--vim.api.nvim_set_keymap("n", "<leader>h", [[<cmd>lua vim.lsp.buf.hover()<CR>]], { silent = true })
--vim.api.nvim_set_keymap("n", "<leader>gi", [[<cmd>lua vim.lsp.buf.implementation()<CR>]], { silent = true })
