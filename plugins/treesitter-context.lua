-- separator char from settings
local settings = require("diegoulloao.settings")

-- do not display separator char if aspect is clean
local separator = settings.separatorChar
if settings.aspect == "clean" then
  separator = ""
end

return {
  "nvim-treesitter/nvim-treesitter-context",
  -- event = { "BufReadPre", "BufNewFile" },
  cmd = { "TSContextToggle" },
  opts = {
    enable = false, -- enable on all buffers by default
    separator = separator,
  },
}
