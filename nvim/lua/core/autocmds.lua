--
local cmd = vim.cmd
--
-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- disabled in visual mode
cmd 'autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.format(nil,500)'
-- transparent background
cmd "autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE"
