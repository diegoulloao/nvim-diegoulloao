-- extension: telescope
local function get_telescope_name()
  return "Telescope"
end

-- custom extension
local telescope = {
  sections = {
    lualine_a = {
      { get_telescope_name },
    },
  },
  filetypes = { "TelescopePrompt" },
}

-- export
return telescope