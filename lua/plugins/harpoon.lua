return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        -- Setup obligatoire
        harpoon:setup()

        -- Keymaps définies APRES l'initialisation
        vim.keymap.set("n", "<leader>m", function() harpoon:list():add() end, { desc = "Ajouter à Harpoon" })
        vim.keymap.set("n", "<leader>p", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Menu Harpoon" })

        -- Navigation directe
        vim.keymap.set("n", "<leader>a", function() harpoon:list():select(1) end, { desc = "Harpoon fichier 1" })
        vim.keymap.set("n", "<leader>z", function() harpoon:list():select(2) end, { desc = "Harpoon fichier 2" })
        vim.keymap.set("n", "<leader>e", function() harpoon:list():select(3) end, { desc = "Harpoon fichier 3" })
        vim.keymap.set("n", "<leader>r", function() harpoon:list():select(4) end, { desc = "Harpoon fichier 4" })

        -- Navigation précédente/suivante
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Fichier précédent Harpoon" })
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Fichier suivant Harpoon" })
    end,
}
