-- extension: telescope
local function get_display_name()
  return "BTW bitch."
end

-- custom extension
local telescope = {
  sections = {
    lualine_a = {
      { get_display_name },
    },
  },
  filetypes = { "starter" },
}

-- export
return telescope
