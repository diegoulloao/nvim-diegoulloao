-- require settings
local settings = require("diegoulloao.settings")

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- require bufferline
    local bufferline = require("bufferline")

    -- custom setup
    bufferline.setup({
      options = {
        mode = "tabs", -- only show tabs and not all buffers
        numbers = "ordinal", -- add tabs ordinal numbers
        style_preset = bufferline.style_preset.default, -- default|minimal
        color_icons = settings.theme ~= "gruvbox",
        tab_size = settings.aspect == "clean" and 22 or 18, -- default: 18
        close_icon = "",
        show_buffer_icons = true,
        show_duplicate_prefix = true, -- show base path if tabs have the same name
        separator_style = "thick", -- slant|slope|thick|thin|{"|", "|"}
        diagnostics = "nvim_lsp", -- nvim lsp diagnostics integration in tabs or false
        indicator = {
          -- icon = "", -- ▎
          style = "icon", -- icon|underline|none
        },
        offsets = {
          -- avoid to show bufferline on top nvim-tree
          {
            filetype = "NvimTree",
            text = "File Explorer", -- title on top
            highlight = "Directory",
            separator = true, -- true is the default, or set custom
          },
          -- avoid to show bufferline on top saga outline symbols
          {
            filetype = "sagaoutline",
            text = "Symbols", -- title on top
            highlight = "Directory",
            separator = true, -- true is the default, or set custom
          },
        },
        diagnostics_indicator = function(count, level) -- diagnostics format
          -- display only the number if aspect is clean
          if settings.aspect == "clean" then
            return " " .. count
          end

          --- @diagnostic disable-next-line: undefined-field
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        -- exclude some buffer and file types
        custom_filter = function(buf_number)
          local buftype = vim.api.nvim_get_option_value("buftype", { buf = buf_number })
          local filetype = vim.api.nvim_get_option_value("filetype", { buf = buf_number })

          -- exclude list
          local excluded_filetypes = {
            ["terminal"] = true,
            ["TelescopePrompt"] = true,
            ["nvimtree"] = true,
            ["sagaoutline"] = true,
            ["sagafinder"] = true,
            ["starter"] = true,
          }

          local excluded_buftypes = {
            ["nofile"] = true,
            ["terminal"] = true,
          }

          return not excluded_buftypes[buftype] and not excluded_filetypes[filetype]
        end,
      },
    })
  end,
}
