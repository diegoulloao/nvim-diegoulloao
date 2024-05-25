-- settings
local settings = require("diegoulloao.settings")

-- fidget
return {
  "j-hui/fidget.nvim",
  version = "legacy",
  opts = {
    text = {
      spinner = "dots", -- dots | line | dots_scrolling | star
    },
    window = {
      border = "rounded", -- single | double | shadow | rounded
      blend = settings.transparent_mode and 0 or 100, -- support for transparent background
    },
    notification = {
      window = {
        normal_hl = "MsgArea",
      },
    },
    sources = {
      ["null-ls"] = {
        ignore = true,
      },
    },
  },
}
