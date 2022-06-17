require("lsp/diagnostic_signs")

require("lsp/language_servers")
-- require("nvim-lsp-installer").setup {}

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--
-- local servers = { 'html', 'intelephense', 'tsserver','sumneko_lua','phpactor', 'tailwindcss' }
--
-- for _, lsp in pairs(servers) do
--   require('lspconfig')[lsp].setup {
--     on_attach = on_attach,
--     flags = {
--       -- This will be the default in neovim 0.7+
--       debounce_text_changes = 150,
--     },
--     capabilities = capabilities
--   }
--
--   require('lspconfig')['intelephense'].setup {
--     capabilities = capabilities
--   }
-- -- Todo - optimize with an if
--   require'lspconfig'.sumneko_lua.setup {
--     -- ... other configs
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- }
-- end
--
