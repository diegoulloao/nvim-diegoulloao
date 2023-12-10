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

-- require custom extensions
local extensions = require("diegoulloao.extensions.lualine")

-- require current theme palette
local theme_palette = require("diegoulloao.themes.palettes")

-- lualine theme
local lualine_theme = require("diegoulloao.themes.lualine")

-- require settings
local settings = require("diegoulloao.settings")

-- customized separators
local lualine_separators = {
  ["rect"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["triangle"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["semitriangle"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["curve"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
}

-- current separator
local separators = lualine_separators[settings.lualine_separator]

-- custom setup
lualine.setup({
  options = {
    theme = lualine_theme,
    globalstatus = true,
    component_separators = separators.component,
    section_separators = separators.section,
    disabled_filetypes = { "dashboard", "packer", "help" },
    ignore_focus = {}, -- add filetypes inside
  },
  -- man:124 for sections doc
  sections = {
    lualine_a = { "progress" }, -- disable vim mode viewer
    lualine_b = {
      {
        "branch",
        icon = "", -- disable icon
        padding = { left = 0, right = 1 },
      },
    },
    lualine_c = {
      -- filetype icon
      {
        "filetype",
        icon_only = true,
        padding = { left = 2, right = 0 },
      },
      -- filename
      {
        "filename",
        file_status = true, -- display file status (read only, modified)
        path = 1, -- 0: just name, 1: relative path, 2: absolute path, 3: absolute path with ~ as home directory
        symbols = {
          unnamed = "",
          readonly = "",
          modified = "",
        },
        padding = { left = 1 },
        color = { gui = "bold" },
      },
    },
    lualine_x = {
      -- lines added, removed, changed
      {
        "diff",
        colored = true,
        padding = { right = 2 },
      },
      -- status like @recording
      {
        noice.api.statusline.mode.get,
        cond = noice.api.statusline.mode.has,
        color = { fg = theme_palette.primary },
      },
      -- "encoding",
      -- "filetype",
      -- "bo:filetype",
      -- "fileformat",
    },
    lualine_y = {},
    lualine_z = { "location" },
  },
  extensions = {
    "nvim-tree",
    "toggleterm",
    "mason",
    "fzf",
    "quickfix",
    "man",
    extensions.telescope,
    extensions.lspinfo,
    extensions.saga,
  },
})
