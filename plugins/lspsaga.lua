return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- custom setup
    require("lspsaga").setup({
      scroll_preview = {
        scroll_down = "<C-h>",
        scroll_up = "<C-l>",
      },
      finder = {
        keys = {
          edit = "<CR>",
        },
      },
      definition = {
        keys = {
          edit = "<CR>",
        },
      },
      symbol_in_winbar = {
        enable = true,
        separator = "  ",
        show_file = false,
        folder_level = 0, -- 0: display folder | 1: only file
      },
      lightbulb = {
        enable = false, -- enable by default
        sign = false, -- display sign at the column when code actions are available
      },
      ui = {
        theme = "round",
        border = "rounded",
        -- title = false, -- go definition, reference title
        expand = "", -- shown in sagaoutline
        collapse = "", -- shown in sagaoutline
        code_action = "👾",
        lines = { "└", "├", "│", "─", "┌" },
      },
      outline = {
        win_width = 35,
      },
    })
  end,
}
