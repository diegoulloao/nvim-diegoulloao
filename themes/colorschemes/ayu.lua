--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: --
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 137
  -- Letter spacing: 100
]]

-- settings
local settings = require("diegoulloao.settings")

-- hi groups setter
local set_hi_groups = require("diegoulloao.themes.highlights.ayu")

-- set dark background
vim.opt.background = "dark"

return {
  "Shatur/neovim-ayu",
  lazy = false,
  priority = 1000,
  enabled = settings.theme == "ayu",
  config = function()
    -- require ayu
    local ayu = require("ayu")

    -- custom setup
    ayu.setup({
      mirage = false, -- set true to use 'mirage' version instead of 'dark'
    })

    -- apply colorscheme
    ayu.colorscheme()

    -- highlight groups
    set_hi_groups()
  end,
}
