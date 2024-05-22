require "harpoon".setup{}

vim.keymap.set('n', '<leader>m', ':lua require("harpoon.mark").add_file()<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>p', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>a', ':lua require("harpoon.ui").nav_file(1)<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>z', ':lua require("harpoon.ui").nav_file(2)<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>e', ':lua require("harpoon.ui").nav_file(3)<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>r', ':lua require("harpoon.ui").nav_file(4)<CR>', {noremap = true, silent = false})

