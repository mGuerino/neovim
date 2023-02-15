-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        --  use 'arcticicestudio/nord-vim'
        use 'shaunsingh/nord.nvim'
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use {
            'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icon
            },
            tag = 'nightly',-- optional, updated every week. (see issue #1193)
            config = function()
                require('user/plugins/nvim-tree')
            end,
        }
        use 'windwp/nvim-ts-autotag'
        use 'windwp/nvim-autopairs'
        use 'tpope/vim-surround'
        use 'sheerun/vim-polyglot'
        use 'nvim-treesitter/nvim-treesitter-textobjects'
        use 'nvim-treesitter/playground'
        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                { 'nvim-lua/plenary.nvim' },
                { 'nvim-telescope/telescope-ui-select.nvim' }
            }
        }
        use "EdenEast/nightfox.nvim"
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'
        use 'L3MON4D3/LuaSnip'
        use 'saadparwaiz1/cmp_luasnip'
        use 'onsails/lspkind.nvim'
        -- use "williamboman/nvim-lsp-installer"

        -- Language Server Protocol.
        use({
                'neovim/nvim-lspconfig',
                requires = {
                    'williamboman/mason.nvim',
                    'williamboman/mason-lspconfig.nvim',
                    'b0o/schemastore.nvim',
                    'jose-elias-alvarez/null-ls.nvim',
                    'jayp0521/mason-null-ls.nvim',
                },
                -- config = function()
                --     require('lua/lspconfig')
                -- end,
            }) 
        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }
        use "ThePrimeagen/harpoon"
        use { 
            "akinsho/toggleterm.nvim",
            config = function()
                require('user/plugins/toggleterm')
            end
        }
        use "ray-x/lsp_signature.nvim"
        use { "noahfrederick/vim-laravel",
            requires = {
                { 'tpope/vim-dispatch' },
                { 'tpope/vim-projectionist' },
                { 'noahfrederick/vim-composer' },
            }
        }
        use({
            'lewis6991/gitsigns.nvim',
            config = function()
                require('gitsigns').setup()
                vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
                vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
                vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
                   vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
                vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
                vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')
            end,
        })

        -- Git commands.
        use({
            'tpope/vim-fugitive',
            requires = 'tpope/vim-rhubarb',
        })
        use {
            "nvim-neotest/neotest",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-treesitter/nvim-treesitter",
                "antoinemadec/FixCursorHold.nvim",
                'olimorris/neotest-phpunit',
            }
        }
    end)
