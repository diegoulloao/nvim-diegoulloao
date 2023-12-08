-- require active theme
local active_theme = require("diegoulloao.settings").theme

-- require theme palette dynamically
local status, theme_palette = pcall(require, "diegoulloao.themes.palettes." .. active_theme)
if not status then
  return {}
end

-- export palette
return theme_palette
