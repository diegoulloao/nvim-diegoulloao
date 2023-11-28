-- require active theme name
local active_theme = require("diegoulloao.settings").theme

-- require lualine theme
local lualine_theme = require("lualine.themes." .. active_theme)

-- export lualine theme
return lualine_theme
