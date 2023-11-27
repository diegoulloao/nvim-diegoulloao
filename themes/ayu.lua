-- require colorscheme
local ayu_status, ayu = pcall(require, "ayu")
if not ayu_status then
  return
end

-- require highlight groups
local hi_groups = require("diegoulloao.core.higroups")

--[[
  -- Palette reference: ayu 'dark'
  #0F1419
  #5C6773
  #F07178
  #FFEE99
  #E7C547
  #36A3D9
  #95E6CB
  #B8CC52
  #FFB454
  #E6B673
  #FF7733

  #FF3333
  #F29718
  #14191F
  #2D3640
]]

-- general palette
local palette = {
  primary = "#FFB454",
  secondary = "#59C2FF",
  accent = "#C2D94C",
  highlight = "#FF7733",
  dark = "#000000",
  dark2 = "#14191F",
  dark3 = "#151A1E",
  dark4 = "#253340",
  dimmed = "#ACB4C2",
  dimmed2 = "#393F4D",
  dimmed3 = "#3E4B59",
  dimmed4 = "#4D5566",
  light = "#FFFFFF",
}

-- custom setup
ayu.setup({
  mirage = false, -- set true to use 'mirage' version instead of 'dark'
})

-- apply colorscheme
ayu.colorscheme()

-- highlight groups
hi_groups(palette)
