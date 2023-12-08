-- require treesitter context
local status, treesitter_context = pcall(require, "treesitter-context")
if not status then
  return
end

-- indent char from settings
local separatorChar = require("diegoulloao.settings").separatorChar

-- custom config
treesitter_context.setup({
  enable = true, -- enable on all buffers by default
  separator = separatorChar,
})
