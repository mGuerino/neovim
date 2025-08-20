return {
  {
    "andymass/vim-matchup",
    event = "VeryLazy",
    config = function()
      -- Configuration globale pour matchup
      vim.g.matchup_matchparen_enabled = 1
      vim.g.matchup_matchparen_offscreen = { method = "popup" }

      -- Configuration spécifique pour les fichiers blade
      vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
        pattern = "*.blade.php",
        callback = function()
          -- Active matchup pour les fichiers blade
          vim.b.matchup_matchparen_enabled = 1

          -- Définit les patterns de matching pour blade
          vim.b.match_words = table.concat({
            -- Balises HTML classiques
            "<\\([^/>][^>]*\\)>:</\\1>",
            -- Balises auto-fermantes
            "<\\([^/>][^>]*\\)/>",
            -- Directives Blade
            "@if\\>:@endif\\>",
            "@unless\\>:@endunless\\>",
            "@for\\>:@endfor\\>",
            "@foreach\\>:@endforeach\\>",
            "@while\\>:@endwhile\\>",
            "@switch\\>:@endswitch\\>",
            "@case\\>:@break\\>",
            "@section\\>:@endsection\\>",
            "@component\\>:@endcomponent\\>",
            "@slot\\>:@endslot\\>",
            "@push\\>:@endpush\\>",
            "@prepend\\>:@endprepend\\>",
            "@php\\>:@endphp\\>",
            "@verbatim\\>:@endverbatim\\>",
            -- Structures PHP
            "\\<if\\>:\\<endif\\>",
            "\\<while\\>:\\<endwhile\\>",
            "\\<for\\>:\\<endfor\\>",
            "\\<foreach\\>:\\<endforeach\\>",
            "\\<switch\\>:\\<endswitch\\>",
            "\\<case\\>:\\<break\\>",
            "\\<try\\>:\\<catch\\>",
            "\\<do\\>:\\<while\\>",
            -- Accolades
            "{:}",
            "(:()",
            "\\[:\\]"
          }, ",")
        end,
      })

      -- Keymaps pour une meilleure navigation
      vim.keymap.set("n", "%", "<plug>(matchup-%)", { desc = "Match tags/brackets" })
      vim.keymap.set("v", "%", "<plug>(matchup-%)", { desc = "Match tags/brackets" })
      vim.keymap.set("n", "g%", "<plug>(matchup-g%)", { desc = "Match backwards" })
      vim.keymap.set("v", "g%", "<plug>(matchup-g%)", { desc = "Match backwards" })

      -- Navigation entre les balises
      vim.keymap.set("n", "[%", "<plug>(matchup-[%)", { desc = "Previous unmatched" })
      vim.keymap.set("n", "]%", "<plug>(matchup-]%)", { desc = "Next unmatched" })
      vim.keymap.set("v", "[%", "<plug>(matchup-[%)", { desc = "Previous unmatched" })
      vim.keymap.set("v", "]%", "<plug>(matchup-]%)", { desc = "Next unmatched" })

      -- Sélection de contenu entre les balises
      vim.keymap.set("n", "z%", "<plug>(matchup-z%)", { desc = "Inside match" })
      vim.keymap.set("v", "z%", "<plug>(matchup-z%)", { desc = "Inside match" })

      -- Text objects
      vim.keymap.set("o", "i%", "<plug>(matchup-i%)", { desc = "Inside match" })
      vim.keymap.set("o", "a%", "<plug>(matchup-a%)", { desc = "Around match" })
      vim.keymap.set("x", "i%", "<plug>(matchup-i%)", { desc = "Inside match" })
      vim.keymap.set("x", "a%", "<plug>(matchup-a%)", { desc = "Around match" })
    end,
  }
}

