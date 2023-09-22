-- require lualine
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- lualine themes
-- local lualine_theme = require("diegoulloao.themes.lualine.nightfly")
local lualine_theme = require("lualine.themes.ayu")

-- customized colors for lualine nightfly theme
local lualine_separators = {
  {
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  {
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  {
    section_separators = { left = "", right = "" },
    component_separators = "",
  },
}

-- custom setup
lualine.setup({
  options = {
    theme = lualine_theme,
    component_separators = lualine_separators[1].component_separators,
    section_separators = lualine_separators[1].section_separators,
    disabled_filetypes = { "NvimTree", "lspsagaoutline", "dashboard", "sagaoutline", "packer" },
  },
  sections = {
    lualine_c = {
      {
        "filename",
        file_status = true, -- display file status (read only, modified)
        path = 1, -- 0: just name, 1: relative path, 2: absolute path, 3: absolute path with ~ as home directory
      },
    },
    lualine_x = {
      -- "encoding",
      "filetype",
      "fileformat",
    },
  },
})
