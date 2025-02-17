return {
  "yetone/avante.nvim",
  version = false, -- "*" to latest release, or false to latest code changes
  lazy = false,
  event = "VeryLazy",
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
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
  opts = {
    provider = "copilot",
    copilot = {
      model = "claude-3.5-sonnet",
    },
    --[[ provider = "openai",
    openai = {
      model = "gpt-4", -- gpt-4 | gpt-4o | gpt-4o-mini | copilot
    }, ]]
    hints = { enabled = false },
    behavior = {
      auto_suggestions = false,
    },
    mappings = {
      submit = {
        insert = "<C-CR>",
      },
    },
    windows = {
      width = 38,
      sidebar_header = {
        rounded = false,
      },
      input = {
        height = 6,
      },
      ask = {
        -- floating = true,
      },
    },
  },
}
