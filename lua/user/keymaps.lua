vim.g.mapleader = ' '
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

vim.keymap.set('v', '<', '<gv', {noremap = true, silent = false})
vim.keymap.set('v', '>', '>gv', {noremap = true, silent = false})

local opts = { noremap=true, silent=false}
-- Don't jump when using *
vim.keymap.set("n", "*", "*<C-o>", opts)

-- Keep search matches in the middle of the window
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Maintain the cursor position when yanking a visual selection.
 -- http://ddrscott.github.io/blog/2016/yank-without-jank/
 vim.keymap.set('v', 'y', 'myy`y')

 -- Paste replace visual selection without copying it.
 vim.keymap.set('v', 'p', '"_dP')

-- Easy insertion of a trailing ; or , from insert mode.
 vim.keymap.set('i', ';;', '<Esc>A;')
 vim.keymap.set('i', ',,', '<Esc>A,')
