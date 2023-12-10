-- extension: lsp info
local function get_display_name()
  return "LspInfo"
end

-- custom extension
local lsp_info = {
  sections = {
    lualine_a = {
      { get_display_name },
    },
  },
  filetypes = { "lspinfo" },
}

-- export
return lsp_info
