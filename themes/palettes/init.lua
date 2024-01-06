-- require active theme
local ACTIVE_THEME = require("diegoulloao.settings").theme

-- require theme palette dynamically
local status, theme_palette = pcall(require, "diegoulloao.themes.palettes." .. ACTIVE_THEME)
if not status then
  return {}
end

-- export palette
return theme_palette
