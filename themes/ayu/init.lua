-- require colorscheme
local ayu_status, ayu = pcall(require, "ayu")
if not ayu_status then
  return
end

local palette = require("diegoulloao.themes.palettes.ayu")

-- require highlight groups
local hi_groups = require("diegoulloao.themes.ayu.higroups")

-- set dark background
vim.opt.background = "dark"

-- custom setup
ayu.setup({
  mirage = false, -- set true to use 'mirage' version instead of 'dark'
})

-- apply colorscheme
ayu.colorscheme()

-- highlight groups
hi_groups(palette)

--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: --
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 122
]]
