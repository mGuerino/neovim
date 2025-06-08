require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')


require("telescope").setup {
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }

        }
    }
}
require("telescope").load_extension("ui-select")

local opts = { noremap = true, silent = false }

vim.keymap.set('n', '<leader>&', ':NvimTreeToggle<CR>', { noremap = true, silent = false })

vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>F',
    [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]])
vim.keymap.set('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
vim.keymap.set('n', '<leader>g', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]])
vim.keymap.set('n', '<leader>h', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
-- vim.keymap.set('n', '<leader>s', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])
-- vim.keymap.set('n', '<leader>s', [[<cmd>lua require('telescope.builtin').lsp_document_symbols({symbols=method})<CR>]])
vim.keymap.set('n', '<leader>s', '<cmd>Telescope lsp_document_symbols symbols=method<CR>', opts)
