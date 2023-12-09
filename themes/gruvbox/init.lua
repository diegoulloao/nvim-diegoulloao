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

-- fix
-- git signs column bg
vim.cmd([[ hi! SignColumn guibg=NONE ]])

-- fix
-- winbar bg
vim.cmd([[ hi! WinBar guibg=NONE ]])
vim.cmd([[ hi! WinBarNC guibg=NONE ]])

-- fix
-- noice cmd line bg
vim.cmd([[ hi! NoiceCmdlinePopup guibg=#3c3836 ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

-- selection color
vim.cmd([[ hi! Visual guibg=#3c3836 gui=none ]])

--[[
-- recommended terminal scheme:
-- gruvbox dark
]]
