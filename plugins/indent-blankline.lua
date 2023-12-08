-- require indent blankline
local status, indent_blankline = pcall(require, "ibl")
if not status then
  return
end

-- indent char from settings
local indentChar = require("diegoulloao.settings").indentChar

-- custom config
indent_blankline.setup({
  indent = { char = indentChar },
  exclude = {
    filetypes = { "dashboard" },
  },
  scope = { enabled = false },
})
