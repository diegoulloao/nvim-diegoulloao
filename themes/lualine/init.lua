-- require active theme name
local active_theme = require("diegoulloao.settings").theme

-- require lualine theme
local status, lualine_theme = pcall(require, "lualine.themes." .. active_theme)
if not status then
  return require("lualine.themes.auto")
end

-- export lualine theme
return lualine_theme
