return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = {
        defaults = {
          file_ignore_patterns = {
            "vendor/.*"
          }
        }
      },
      keys = {
	{ '<C-P>', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
	{ '<leader>ff', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
	{ '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help Tags' },
	{ '<leader>fc', '<cmd>Telescope commands<cr>', desc = 'Commands' },
    }
    }
