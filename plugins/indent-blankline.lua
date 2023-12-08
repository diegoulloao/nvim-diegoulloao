-- require indent blankline
local status, indent_blankline = pcall(require, "ibl")
if not status then
  return
end

-- indent char from settings
local settings = require("diegoulloao.settings")

-- disable by default if aspect is clean
local enabled = true
if settings.aspect == "clean" then
  enabled = false
end

-- custom config
indent_blankline.setup({
  enabled = enabled,
  indent = { char = settings.indentChar },
  exclude = {
    filetypes = { "dashboard" },
  },
  scope = { enabled = false },
})
