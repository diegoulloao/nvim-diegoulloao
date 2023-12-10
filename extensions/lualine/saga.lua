-- extension: saga
local function get_display_name()
  local filetype = vim.bo.filetype
  local action = filetype:match("saga(%a+)")

  return "Saga" .. action:gsub("^%l", string.upper)
end

-- custom extension
local saga = {
  sections = {
    lualine_a = {
      { get_display_name },
    },
  },
  filetypes = { "sagaoutline", "sagafinder" },
}

-- export
return saga
