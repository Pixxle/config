require("typescript").setup({})
local typescript = require 'typescript'

typescript.setup({
    disable_commands = false, -- prevent the plugin from creating Vim commands
    debug = false, -- enable debug logging for commands
})
