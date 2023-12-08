-- require lualine
local lualine_status, lualine = pcall(require, "lualine")
if not lualine_status then
  return
end

-- require noice
local noice_status, noice = pcall(require, "noice")
if not noice_status then
  return
end

-- require current theme palette
local theme_palette = require("diegoulloao.themes.palettes")

-- lualine theme
local lualine_theme = require("diegoulloao.themes.lualine")

-- customized separators
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
  {
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}

-- custom setup
lualine.setup({
  options = {
    theme = lualine_theme,
    globalstatus = true,
    component_separators = lualine_separators[1].component_separators,
    section_separators = lualine_separators[1].section_separators,
    disabled_filetypes = { "dashboard", "sagaoutline", "packer" },
    ignore_focus = { "NvimTree", "sagaoutline" },
  },
  sections = {
    lualine_a = {}, -- disable mode viewer
    lualine_c = {
      {
        "filetype",
        icon_only = true,
        padding = { left = 1, right = 0 },
      },
      {
        "filename",
        file_status = true, -- display file status (read only, modified)
        path = 1, -- 0: just name, 1: relative path, 2: absolute path, 3: absolute path with ~ as home directory
        symbols = {
          unnamed = "",
          readonly = "",
          modified = "",
        },
      },
    },
    lualine_x = {
      {
        noice.api.statusline.mode.get,
        cond = noice.api.statusline.mode.has,
        color = { fg = theme_palette.primary },
      },
      "encoding",
      -- "filetype",
      -- "bo:filetype",
      -- "fileformat",
    },
  },
  extensions = { "nvim-tree", "toggleterm" },
})
