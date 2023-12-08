-- extension: sagaoutline
local function get_sagaoutline_name()
  return "SagaOutline"
end

-- custom extension
local sagaoutline = {
  sections = {
    lualine_a = {
      { get_sagaoutline_name },
    },
  },
  filetypes = { "sagaoutline" },
}

-- export
return sagaoutline
