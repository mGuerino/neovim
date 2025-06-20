return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 35,
        side = "left",
      },
      renderer = {
        group_empty = true,
        -- indent_with_markers = true,
         indent_width = 1,
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { ".git" },
      },
      git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        show_on_open_dirs = false,
        timeout = 400,
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
        },
      },
      update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {},
      },
      diagnostics = {
        enable = false,
        show_on_dirs = true,
        icons = {
          hint = "j",
          info = "i",
          warning = "w",
          error = "e",
        },
      },
    })
  end,
  keys = {
    { "<leader>&", "<cmd>NvimTreeToggle<cr>",   desc = "Toggle file explorer" },
    { "<leader>o", "<cmd>NvimTreeFocus<cr>",    desc = "Focus file explorer" },
    { "<leader>f", "<cmd>NvimTreeFindFile<cr>", desc = "Find current file in explorer" },
    { "<leader>c", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse file explorer" },
  },
}
