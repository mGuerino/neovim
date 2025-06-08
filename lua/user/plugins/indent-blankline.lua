-- require('ibl').setup({
--         filetype_exclude = {
--             'help',
--             'terminal',
--             'dashboard',
--             'packer',
--             'lspinfo',
--             'TelescopePrompt',
--             'TelescopeResults',
--         },
--         buftype_exclude = {
--             'terminal',
--             'NvimTree',
--         },
--     })
require "ibl".overwrite {
    indent = {
        char = "▏"
    },
    exclude = {
        filetypes = {
            'help',
            'terminal',
            'dashboard',
            'packer',
            'lspinfo',
            'TelescopePrompt',
            'TelescopeResults',
        },
        buftypes = {

            'terminal',
            'NvimTree',
        }
    }
}
