-- require bufferline
local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
  return
end

-- require settings
local settings = require("diegoulloao.settings")

-- custom setup
bufferline.setup({
  options = {
    mode = "tabs", -- only show tabs and not all buffers
    numbers = "ordinal", -- add tabs ordinal numbers
    style_preset = bufferline.style_preset.default, -- default|minimal
    color_icons = settings.theme ~= "gruvbox",
    tab_size = settings.aspect == "clean" and 22 or 18, -- default: 18
    indicator = {
      -- style = "underline",
    },
    show_buffer_icons = true,
    show_duplicate_prefix = true, -- show base path if tabs have the same name
    separator_style = "thick", -- slant|slope|thick|thin|{"|", "|"}
    diagnostics = "nvim_lsp", -- nvim lsp diagnostics integration in tabs or false
    diagnostics_indicator = function(count, level) -- diagnostics format
      -- display only the number if aspect is clean
      if settings.aspect == "clean" then
        return " " .. count
      end

      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
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
    -- exclude some buffer and file types
    custom_filter = function(buf_number)
      local buftype = vim.api.nvim_buf_get_option(buf_number, "buftype")
      local filetype = vim.api.nvim_buf_get_option(buf_number, "filetype")

      -- exclude list
      local excluded_filetypes = {
        ["terminal"] = true,
        ["TelescopePrompt"] = true,
        ["NvimTree"] = true,
        ["sagaoutline"] = true,
        ["sagafinder"] = true,
      }

      local excluded_buftypes = {
        ["nofile"] = true,
        ["terminal"] = true,
      }

      return not excluded_buftypes[buftype] and not excluded_filetypes[filetype]
    end,
  },
})
