-- require gruvbox
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  return
end

-- set dark background
vim.opt.background = "dark"

-- custom setup
gruvbox.setup({
  italic = {
    strings = false,
  },
  contrast = "", -- options: soft|hard|empty
})

-- set colorscheme
vim.cmd([[ colorscheme gruvbox ]])

-- hi groups
-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

-- git signs column
-- vim.cmd([[ hi! SignColumn guibg=NONE ]])

--[[
-- recommended terminal scheme:
-- gruvbox dark
]]
