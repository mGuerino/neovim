-- Configuration des highlights personnalisés pour améliorer Avante avec dayfox
-- Ce fichier permet d'ajuster les couleurs spécifiquement pour votre thème

local M = {}

function M.setup()
  -- Attendre que le colorscheme soit chargé
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "dayfox",
    callback = function()
      -- Highlights pour Avante diff view avec dayfox
      vim.api.nvim_set_hl(0, "AvanteDiffAdd", {
        bg = "#d4f4dd",     -- Vert clair pour les ajouts
        fg = "#22863a",     -- Vert foncé pour le texte
        bold = true
      })
      
      vim.api.nvim_set_hl(0, "AvanteDiffDelete", {
        bg = "#ffeef0",     -- Rouge très clair pour les suppressions
        fg = "#cb2431",     -- Rouge foncé pour le texte
        bold = true,
        strikethrough = true
      })
      
      vim.api.nvim_set_hl(0, "AvanteDiffChange", {
        bg = "#fff5b1",     -- Jaune clair pour les modifications
        fg = "#6f4e00",     -- Brun foncé pour le texte
        bold = true
      })
      
      vim.api.nvim_set_hl(0, "AvanteDiffText", {
        bg = "#e1f5fe",     -- Bleu très clair pour le texte modifié
        fg = "#0277bd",     -- Bleu foncé pour le texte
        bold = true
      })
      
      -- Highlights pour les bordures et la UI d'Avante
      vim.api.nvim_set_hl(0, "AvanteBorder", {
        fg = "#e1e4e8",     -- Gris clair pour les bordures
        bg = "NONE"
      })
      
      vim.api.nvim_set_hl(0, "AvanteTitle", {
        fg = "#0366d6",     -- Bleu pour les titres
        bg = "NONE",
        bold = true
      })
      
      vim.api.nvim_set_hl(0, "AvanteSubtitle", {
        fg = "#586069",     -- Gris foncé pour les sous-titres
        bg = "NONE",
        italic = true
      })
      
      -- Amélioration du contraste pour les selections
      vim.api.nvim_set_hl(0, "AvanteSelection", {
        bg = "#cce5ff",     -- Bleu clair pour les sélections
        fg = "NONE"
      })
      
      print("🎨 Highlights Avante configurés pour dayfox")
    end,
  })
end

return M

