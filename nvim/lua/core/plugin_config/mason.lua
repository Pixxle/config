require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'svelte',
        'tsserver',
        'astro'
    },
    automatic_installation = true,
    handlers = nil,
})
