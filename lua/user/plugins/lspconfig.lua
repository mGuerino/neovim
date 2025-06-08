-- Setup Mason to automatically install LSP servers
require('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- PHP
-- require('lspconfig').intelephense.setup({capabilities = capabilities})

require 'lspconfig'.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
        },
    },
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

-- 1. load the `lspconfig` module (note that this is a stylistic choice)
local lspconfig = require 'lspconfig'

-- 2. define the configuration
local configs = require 'lspconfig.configs'

-- Check if the config is already defined (useful when reloading this file)
if not configs.blade then
    configs.blade = {
        default_config = {
            cmd = { '/usr/local/bin/laravel-dev-tools', 'lsp' },
            filetypes = { 'blade' },
            root_dir = function(fname)
                return lspconfig.util.find_git_ancestor(fname)
            end,
            settings = {},
        },
    }
end

-- 3. call `setup()` to enable the FileType autocmd
lspconfig.blade.setup {
    capabilities = capabilities,
    -- on_attach = on_attach,
}


-- Tailwind CSS
require('lspconfig').tailwindcss.setup({ capabilities = capabilities })

require 'lspconfig'.cssls.setup { capabilities = capabilities, }
require 'lspconfig'.tsserver.setup { capabilities = capabilities, }
require 'lspconfig'.emmet_ls.setup {
    capabilities = capabilities,
    -- settings = {
    --     languages = {
    --         javascript = "javascriptreact"
    --     }
    -- }
}
-- JSON
require('lspconfig').jsonls.setup({
    capabilities = capabilities,
    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
        },
    },
})



-- Keymaps
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

-- Diagnostic configuration
vim.diagnostic.config({
    virtual_text = true,
    float = {
        source = true,
    }
})

-- Sign configuration
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
