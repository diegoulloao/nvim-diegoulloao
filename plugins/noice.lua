return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    -- custom setup
    require("noice").setup({
      lsp = {
        -- disable lsp progress -> using fidget instead
        progress = {
          enabled = false,
        },

        -- override markdown rendering so that **cmp** and other plugins use Treesitter
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      messages = {
        -- disable all status line messages
        -- enabled = false,
      },
      cmdline = {
        format = {
          -- fix lost search icons
          search_down = { icon = " " },
          search_up = { icon = " " },
        },
        opts = {
          -- vertically centered
          -- position = "50%",
        },
      },
      views = {
        popup = {
          win_options = {
            winhighlight = {
              Normal = "Normal",
              FloatBorder = "BorderBG", -- BorderBG|FloatBorder
            },
          },
        },
      },
      -- filters
      routes = {
        {
          -- lspsaga: avoids annoying messages in notify
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
        {
          -- avoids annoying messages in notify
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
              { find = "%d lines yanked" },
              { find = "%d more lines" },
              { find = "%d line less" },
              { find = "%d fewer lines" },
              { find = "%d lines >ed %d time" },
              { find = "%d lines <ed %d time" },
              { find = "%d fewer lines" },
              { find = "search hit TOP, continuing at BOTTOM" },
              { find = "search hit BOTTOM, continuing at TOP" },
              { find = "E37: No write since last change" },
              { find = "E433: No tags file" },
              { find = "E426: tag not found: %s" },
            },
          },
          opts = { skip = true },
        },
        {
          -- display annoying message in mini view
          filter = {
            event = "msg_show",
            any = {
              { find = "Pattern not found:" },
              { find = "Already at newest change" },
              { find = "Already at oldest change" },
              { find = "E21: Cannot make changes, 'modifiable' is off" },
              { find = "E78: Unknown mark" },
              { find = "E20: Mark not set" },
            },
          },
          view = "mini",
        },
      },
    })
  end,
}
