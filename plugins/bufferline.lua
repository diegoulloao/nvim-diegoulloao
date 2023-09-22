-- require bufferline
local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
  return
end

-- custom setup
bufferline.setup({
  options = {
    mode = "tabs", -- only show tabs and not all buffers
    numbers = "ordinal", -- add tabs ordinal numbers
    indicator = {
      -- style = "underline",
    },
    show_duplicate_prefix = true, -- show base path if tabs have the same name
    separator_style = "thick", -- options: slant | slope | thick | thin | {"|", "|"}
    diagnostics = "nvim_lsp", -- nvim lsp diagnostics integration in tabs
    diagnostics_indicator = function(count, level) -- diagnostics format
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
  },
})
