return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    'V13Axel/neotest-pest',
  },
  config = function()
    require('neotest').setup({
      adapters = {
        require('neotest-pest')({
          pest_cmd = function()
            return "vendor/bin/pest"
          end,
          -- Assure-toi que Pest trouve le bon chemin et autoloader
          env = {
            XDEBUG_MODE = "off",
          },
          -- Définit les fichiers racine pour détecter les projets Laravel
          root_files = { "composer.json", "artisan", ".env" },
        }),
      },
      discovery = {
        enabled = true,
        concurrent = 1,
      },
      output = {
        enabled = true,
        open_on_run = "short",
      },
      quickfix = {
        enabled = true,
        open = false,
      },
    })
    
    -- Keymaps améliorés
    vim.keymap.set('n', '<leader>tn', function() require('neotest').run.run() end, { desc = "Run nearest test" })
    vim.keymap.set('n', '<leader>tf', function() require('neotest').run.run(vim.fn.expand("%")) end, { desc = "Run file tests" })
    vim.keymap.set('n', '<leader>ts', function() require('neotest').summary.toggle() end, { desc = "Toggle test summary" })
    vim.keymap.set('n', '<leader>to', function() require('neotest').output.open({ enter = true }) end, { desc = "Open test output" })
  end
}
