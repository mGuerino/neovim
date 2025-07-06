return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "copilot",
    providers = {
      copilot = {
            model = "claude-sonnet-4",
      },
    },
    highlights = {
      diff = {
        current = "DiffText",
        incoming = "DiffAdd",
      },
    },
    behavior = {
            auto_suggestions = true,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
    },
    windows = {
      position = "right",
      width = 35,
      sidebar_header = {
        align = "center",
        rounded = true,
      },
    },
    ask = {
      floating = false,
      -- border = "rounded",
    },
    -- diff = {
    --   autojump = true,
    --   list_opener = "copen",
    -- },
    system_prompt = function()
      local hub = require("mcphub").get_hub_instance()
      return hub and hub:get_active_servers_prompt() or ""
    end,
    custom_tools = function()
      return {
        require("mcphub.extensions.avante").mcp_tool(),
      }
    end,
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "stevearc/dressing.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  keys = {
    {
      "<leader>+",
      function()
        require("avante.extensions.nvim_tree").add_file()
      end,
      desc = "Select file in NvimTree",
      ft = "NvimTree",
    },
    {
      "<leader>-",
      function()
        require("avante.extensions.nvim_tree").remove_file()
      end,
      desc = "Deselect file in NvimTree",
      ft = "NvimTree",
    },
  },
  config = function(_, opts)
    require("avante").setup(opts)

    -- 🎨 Personnalisation des conflits Avante
    vim.api.nvim_set_hl(0, "AvanteToBeDeletedWOStrikethrough", { bg = "#ffc0cb" })
    vim.api.nvim_set_hl(0, "AvanteConflictCurrent", { bg = "#a8cc8c", fg = "#2d3748" })
    vim.api.nvim_set_hl(0, "AvanteConflictIncoming", { bg = "#b4d5a4", fg = "#2d3748" })
    vim.api.nvim_set_hl(0, "AvanteConflictCurrentLabel", { bg = "#8db572", fg = "#1a202c", bold = true })
    vim.api.nvim_set_hl(0, "AvanteConflictIncomingLabel", { bg = "#9bc585", fg = "#1a202c", bold = true })
  end,
}
