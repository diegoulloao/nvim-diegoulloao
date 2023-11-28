-- require active theme
local active_theme = require("diegoulloao.settings").theme

-- require theme palette dynamically
local theme_palette = require("diegoulloao.themes.palettes." .. active_theme)

-- export palette
return theme_palette
