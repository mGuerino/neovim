require('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })


require('lspconfig').intelephense.setup({})

local servers = { 'html', 'intelephense', 'tsserver','lua_ls', 'tailwindcss', 'emmet_ls' }
