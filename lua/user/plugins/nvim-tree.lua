print('nvim tree')

-- require'nvim-tree'.setup {
--     hijack_cursor = true,
--     update_focused_file = {
--         enable = true,
--         update_cwd = true,
--         ignore_list = {},
--   },
-- }
require('nvim-tree').setup({
        hijack_cursor = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
            ignore_list = {},
        },
        git = {
            ignore = false,
        },
        renderer = {
            group_empty = true,
            icons = {
                show = {
                    folder_arrow = false,
                },
            },
            indent_markers = {
                enable = true,
            },
        },
    })

local opts = { noremap=true, silent=false}

vim.keymap.set('n', '<leader>&', ':NvimTreeToggle<CR>', {noremap = true, silent = false})

