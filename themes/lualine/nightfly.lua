-- nightfly lualine theme
local lualine_nightfly = require("lualine.themes.nightfly")

local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- overwrite default theme colors
-- normal mode
lualine_nightfly.normal.a.bg = new_colors.violet
lualine_nightfly.normal.b.fg = new_colors.violet
lualine_nightfly.normal.c.fg = new_colors.blue
-- visual mode:
lualine_nightfly.visual.a.bg = new_colors.green
lualine_nightfly.visual.b.fg = new_colors.blue
-- insert mode
lualine_nightfly.insert.a.bg = new_colors.blue
lualine_nightfly.insert.b.fg = new_colors.green
-- command mode
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}

return lualine_nightfly
