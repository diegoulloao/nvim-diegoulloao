--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: --
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 122
  -- Letter spacing: 100
]]

-- require palette
local palette = require("diegoulloao.themes.palettes.ayu")

-- require highlight groups
local hi_groups = require("diegoulloao.themes.ayu.higroups")

-- set dark background
vim.opt.background = "dark"

return {
  "Shatur/neovim-ayu",
  priority = 1000,
  lazy = false,
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
    hi_groups(palette)
  end,
}
