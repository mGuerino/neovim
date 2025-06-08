-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use({
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('user/plugins/indent-blankline')
        end,
    })
    use {
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        config = function()
            require('user/plugins/treesitter')
        end,
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        tag = 'nightly',                    -- optional, updated every week. (see issue #1193)
        config = function()
            require('user/plugins/nvim-tree')
        end,
    }
    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('user/plugins/autotag')
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('user/plugins/autopairs')
        end
    }
    use 'tpope/vim-surround'
    use 'sheerun/vim-polyglot'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'
    use({
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons',
            'nvim-telescope/telescope-live-grep-args.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
            { 'nvim-telescope/telescope-ui-select.nvim' }
        },
        config = function()
            require('user/plugins/telescope')
        end,
    })
    use({
        "EdenEast/nightfox.nvim",
        config = function()
            -- vim.o.background = "light" -- or "light" for light mode
            vim.cmd('colorscheme dayfox')
            vim.cmd('hi Comment guifg=#60728a')

            vim.api.nvim_set_hl(0, 'FloatBorder', {
                fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
                bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
            })

            vim.api.nvim_set_hl(0, '@function.builtin', { fg = '#BF616A' })
            vim.api.nvim_set_hl(0, '@variable.builtin', { fg = '#BF616A' })

            -- Make the cursor line background invisible
            vim.api.nvim_set_hl(0, 'CursorLineBg', {
                fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
                bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
            })

            vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' })

            vim.api.nvim_set_hl(0, 'StatusLineNonText', {
                fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
                bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
            })

            vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#424454' })
        end,
    })
    use({
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'onsails/lspkind-nvim',
        },
        config = function()
            require('user/plugins/cmp')
        end,
    })
    use({
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/mason.nvim',
            run = ':MasonUpdate',
            'williamboman/mason-lspconfig.nvim',
            'b0o/schemastore.nvim',
        },
        config = function()
            require('user/plugins/lspconfig')
        end,
    })
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'JoosepAlviste/nvim-ts-context-commentstring',
        config = function()
            require('user/plugins/context-commentstring')
        end
    }
    use {
        "ThePrimeagen/harpoon",
        config = function()
            require('user/plugins/harpoon')
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require('user/plugins/toogleterm')
        end
    }
    use "ray-x/lsp_signature.nvim"
    use { "noahfrederick/vim-laravel",
        requires = {
            { 'tpope/vim-dispatch' },
            {
                'tpope/vim-projectionist',
                config = function()
                    require('user/plugins/projectionist')
                end
            },
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
            -- vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
            vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
            vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')
        end,
    })

    -- Git commands.
    use({
        'tpope/vim-fugitive',
        requires = 'tpope/vim-rhubarb',
    })
    -- use({
    --     'nvim-neotest/neotest',
    --     requires = {
    --         "nvim-lua/plenary.nvim",
    --         "nvim-treesitter/nvim-treesitter",
    --         "antoinemadec/FixCursorHold.nvim",
    --         'olimorris/neotest-phpunit',
    --     },
    --     config = function()
    --         require('neotest').setup({
    --             adapters = {
    --                 require('neotest-phpunit'),
    --             }
    --         })
    --     end
    -- })
    -- Testing helper
    use({
        'vim-test/vim-test',
        config = function()
            require('user/plugins/vim-test')
        end,
    })
    --- Floating terminal.
    use({
        'voldikss/vim-floaterm',
        config = function()
            vim.g.floaterm_width = 0.85
            vim.g.floaterm_height = 0.85
            vim.g.floaterm_title = ""

            vim.keymap.set('n', '<M-y>', ':FloatermToggle<CR>')
            vim.keymap.set('t', '<M-y>', '<C-\\><C-n>:FloatermToggle<CR>')
            vim.cmd([[
                highlight link Floaterm Normal
                highlight link FloatermBorder Comment
                ]])
        end
    })
    use({
        'stevearc/conform.nvim',
        config = function()
            require('user/plugins/conform')
        end,
        opts = {},
    })
    use({
        'stevearc/oil.nvim',
        config = function()
            require('user.plugins.oil')
        end,
    })
    use {
        'ricardoramirezr/blade-nav.nvim',
        ft = { 'blade', 'php' },
        config = function()
            require("blade-nav").setup();
        end
    }
    -- use {
    --     "supermaven-inc/supermaven-nvim",
    --     config = function()
    --         require("supermaven-nvim").setup({
    --             keymaps = {
    --                 accept_suggestion = "<C-l>",
    --                 clear_suggestion = "<C-c>",
    --                 accept_word = "<C-j>"
    --             }
    --         })
    --     end,
    -- }
    use {
        'github/copilot.vim',
        -- map like supermaven
        config = function()
            local map = vim.keymap.set

            map("i", "<C-l>", "copilot#Accept('<CR>')",
                { noremap = true, silent = true, expr = true, replace_keycodes = false })
            local map2 = vim.keymap.set
            map2('i', "<C-j>", "copilot#AcceptWord('<C-j>')",
                { noremap = true, silent = true, expr = true, replace_keycodes = false })
            vim.g.copilot_no_tab_map = true
        end
    }
    use {
        'rgroli/other.nvim',
        config = function()
            require('user.plugins.other')
        end
    }
    -- -- Avante.nvim with build process
    -- use {
    --     'yetone/avante.nvim',
    --     branch = 'main',
    --     run = 'make',
    --     requires = {
    --         'HakonHarnes/img-clip.nvim',
    --         'stevearc/dressing.nvim',
    --         'MunifTanjim/nui.nvim',
    --         'MeanderingProgrammer/render-markdown.nvim',
    --         "nvim-treesitter/nvim-treesitter",
    --         "nvim-lua/plenary.nvim",
    --         --- The below dependencies are optional,
    --         "echasnovski/mini.pick",         -- for file_selector provider mini.pick
    --         "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    --         "hrsh7th/nvim-cmp",              -- autocompletion for avante commands and mentions
    --         "ibhagwan/fzf-lua",              -- for file_selector provider fzf
    --         "folke/snacks.nvim",             -- for input provider snacks
    --         "nvim-tree/nvim-web-devicons",   -- or echasnovski/mini.icons
    --         "zbirenbaum/copilot.lua",        -- for providers='copilot'
    --         'HakonHarnes/img-clip.nvim',
    --         'stevearc/dressing.nvim',
    --         'MunifTanjim/nui.nvim',
    --         'MeanderingProgrammer/render-markdown.nvim',
    --     },
    --     config = function()
    --         require('avante').setup({
    --             providers = {
    --                 'copilot',
    --             }
    --         }
    --
    --         )
    --     end
    -- }

    -- Required plugins
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lua/plenary.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'MeanderingProgrammer/render-markdown.nvim'

    -- Optional dependencies
    use 'hrsh7th/nvim-cmp'
    use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
    use 'HakonHarnes/img-clip.nvim'
    use 'zbirenbaum/copilot.lua'
    use 'stevearc/dressing.nvim' -- for enhanced input UI
    use 'folke/snacks.nvim'    -- for modern input UI

    -- Avante.nvim with build process
    use {
        'yetone/avante.nvim',
        branch = 'main',
        run = 'make',
        config = function()
            require('avante').setup()
        end
    }
end)
