require("nvim-lsp-installer").setup {}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'html', 'intelephense', 'tsserver','lua_ls', 'tailwindcss', 'emmet_ls' }

for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    },
    capabilities = capabilities
  }

  require('lspconfig')['intelephense'].setup {
    capabilities = capabilities,
    settings = {
        stubs = {
            "wordpress",
            "wordpress-globals"
        },
        environnement = {
            -- include_Paths = 'home/michaelguerino/.composer/vendor/php-stubs/'
            include_Paths = '~/.composer/vendor/php-stubs/'
        }
    }

  }
-- Todo - optimize with an if
  require'lspconfig'.lua_ls.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

vim.lsp.set_log_level("debug")
end

