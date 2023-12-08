-- require gruvbox
local status, gruvbox = pcall(require, "gruvbox")
if not gruvbox then
  return
end

-- set dark background
vim.opt.background = "dark"

-- custom setup
gruvbox.setup({
  italic = {
    strings = false,
  },
})

-- set colorscheme
vim.cmd([[ colorscheme gruvbox ]])

-- hi groups
-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

--[[
-- recommended terminal scheme:
-- gruvbox dark
]]
