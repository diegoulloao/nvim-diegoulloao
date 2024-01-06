-- require active theme
local ACTIVE_THEME = require("diegoulloao.settings").theme

-- require lualine theme
local status, lualine_theme = pcall(require, "lualine.themes." .. ACTIVE_THEME)
if not status then
  return require("lualine.themes.auto")
end

-- export lualine theme
return lualine_theme
