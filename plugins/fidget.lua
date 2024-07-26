-- settings
local settings = require("diegoulloao.settings")

-- fidget
return {
  "j-hui/fidget.nvim",
  opts = {
    progress = {
      ignore = { "null-ls" },
    },
    notification = {
      window = {
        normal_hl = "MsgArea",
        border = "rounded", -- single | double | shadow | rounded
        winblend = settings.transparent_mode and 0 or 100, -- support for transparent background
      },
    },
    integration = {
      ["nvim-tree"] = {
        enable = true,
      },
    },
  },
}
