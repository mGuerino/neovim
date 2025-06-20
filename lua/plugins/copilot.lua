return {
  'github/copilot.vim',
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true

    local map = vim.keymap.set

    map("i", "<C-l>", "copilot#Accept('<CR>')", {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
      desc = "Copilot: accepter la suggestion"
    })

    map("i", "<C-j>", "copilot#AcceptWord('<C-j>')", {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
      desc = "Copilot: accepter un mot"
    })

    map("i", "<C-k>", "copilot#AcceptLine('<C-k>')", {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
      desc = "Copilot: accepter une ligne"
    })
  end
}
