return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Installation automatique des parsers
                auto_install = true,

                -- Liste des parsers à installer
                ensure_installed = {
                    "lua",
                    "vim",
                    "vimdoc",
                    "php",
                    "html",
                    "css",
                    "javascript",
                    "typescript",
                    "json",
                    "yaml",
                    "markdown",
                    "bash",
                    "blade"
                },

                -- Configuration du highlighting
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                    -- Forcer l'activation pour blade
                    -- disable = function(_, buf)
                    --     local max_filesize = 100 * 1024 -- 100 KB
                    --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    --     if ok and stats and stats.size > max_filesize then
                    --         return true
                    --     end
                    --     return false
                    -- end,
                },
                -- Configuration de l'indentation
                indent = {
                    enable = true,
                },
                -- Configuration des modules additionnels
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
                -- Configuration des text objects
                textobjects = {
                    enable = true,
                },
            })
            -- Configuration spécifique pour les fichiers blade
            vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
                pattern = "*.blade.php",
                callback = function()
                    vim.bo.filetype = "blade"
                    -- Forcer l'activation de treesitter pour blade
                    vim.cmd("TSBufEnable highlight")
                    vim.cmd("TSBufEnable indent")
                    vim.cmd("TSBufEnable incremental_selection")
                end,
            })
            -- Associer les fichiers .blade.php au parser HTML/PHP
            vim.treesitter.language.register("html", "blade")
        end,
    }
}
