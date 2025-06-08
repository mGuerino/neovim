-- vim.keymap.set('n', '<Leader>t', ':TestNearest<CR>')
-- vim.keymap.set('n', '<Leader>tf', ':TestFile<CR>')
-- vim.keymap.set('n', '<Leader>ts', ':TestSuite<CR>')
-- vim.keymap.set('n', '<Leader>tl', ':TestLast<CR>')
-- vim.keymap.set('n', '<Leader>tv', ':TestVisit<CR>')
--
-- -- vim.cmd([[
-- --   let test#php#phpunit#executable = 'php artisan test'
-- -- ]])
--
-- vim.g['test#strategy'] = 'toggleterm'
--
-- vim.g['test#php#phpunit#executable'] = "php artisan test"

vim.keymap.set('n', '<Leader>t', ':TestNearest<CR>')
vim.keymap.set('n', '<Leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<Leader>ts', ':TestSuite<CR>')
vim.keymap.set('n', '<Leader>tl', ':TestLast<CR>')
vim.keymap.set('n', '<Leader>tv', ':TestVisit<CR>')

vim.cmd([[
   " function! FloatermStrategy(cmd)
   "   execute 'silent FloatermKill'
   "   " execute 'FloatermNew! '.a:cmd.' |less -X'
   "   execute 'FloatermNew! '.a:cmd.
   " endfunction
   " let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
   let g:test#strategy = 'floaterm'
   " let g:test#php#phpunit#executable = 'php artisan test'
 ]])
