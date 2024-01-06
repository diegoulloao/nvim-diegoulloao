-- require settings
local ACTIVE_THEME = require("diegoulloao.settings").theme

-- require colorscheme
local status, theme = pcall(require, "diegoulloao.themes.colorschemes." .. ACTIVE_THEME)

-- set colorscheme if is a nvim built-in
if not status then
  vim.cmd(string.format([[ colorscheme %s ]], ACTIVE_THEME))
  return {}
end

return theme
