-- local actions = require('telescope.actions')
--
-- vim.cmd([[
--   highlight link TelescopePromptTitle PMenuSel
--   highlight link TelescopePreviewTitle PMenuSel
--   highlight link TelescopePromptNormal NormalFloat
--   highlight link TelescopePromptBorder FloatBorder
--   highlight link TelescopeNormal CursorLine
--   highlight link TelescopeBorder CursorLineBg
-- ]])
--
-- require('telescope').setup({
--   defaults = {
--     path_display = { truncate = 1 },
--     prompt_prefix = '   ',
--     selection_caret = '  ',
--     layout_config = {
--       prompt_position = 'top',
--     },
--     sorting_strategy = 'ascending',
--     mappings = {
--       i = {
--         ['<esc>'] = actions.close,
--         ['<C-Down>'] = actions.cycle_history_next,
--         ['<C-Up>'] = actions.cycle_history_prev,
--       },
--     },
--     file_ignore_patterns = { '.git/' },
--   },
--   pickers = {
--     find_files = {
--       hidden = true,
--     },
--     buffers = {
--       previewer = false,
--       layout_config = {
--         width = 80,
--       },
--     },
--     oldfiles = {
--       prompt_title = 'History',
--     },
--     lsp_references = {
--       previewer = false,
--     },
--   },
-- })

require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')


require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

local opts = { noremap=true, silent=false}

vim.keymap.set('n', '<leader>&', ':NvimTreeToggle<CR>', {noremap = true, silent = false})

vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ff', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>F', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]])
vim.keymap.set('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
vim.keymap.set('n', '<leader>g', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]])
vim.keymap.set('n', '<leader>h', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
-- vim.keymap.set('n', '<leader>s', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])
-- vim.keymap.set('n', '<leader>s', [[<cmd>lua require('telescope.builtin').lsp_document_symbols({symbols=method})<CR>]])
vim.keymap.set('n', '<leader>s', '<cmd>Telescope lsp_document_symbols symbols=method<CR>', opts)

