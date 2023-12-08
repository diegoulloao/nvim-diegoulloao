-- require treesitter context
local status, treesitter_context = pcall(require, "treesitter-context")
if not status then
  return
end

-- separator char from settings
local settings = require("diegoulloao.settings")

-- do not display separator char if aspect is clean
local separator = settings.separatorChar
if settings.aspect == "clean" then
  separator = ""
end

-- custom config
treesitter_context.setup({
  enable = true, -- enable on all buffers by default
  separator = separator,
})
