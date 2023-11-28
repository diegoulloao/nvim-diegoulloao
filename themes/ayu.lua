-- require colorscheme
local ayu_status, ayu = pcall(require, "ayu")
if not ayu_status then
  return
end

local palette = require("diegoulloao.themes.palettes.ayu")

-- require highlight groups
local hi_groups = require("diegoulloao.core.higroups")

-- custom setup
ayu.setup({
  mirage = false, -- set true to use 'mirage' version instead of 'dark'
})

-- apply colorscheme
ayu.colorscheme()

-- highlight groups
hi_groups(palette)
