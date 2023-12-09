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

-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

-- git signs column bg fix
vim.cmd([[ hi! SignColumn guibg=NONE ]])

-- winbar bg fixes
vim.cmd([[ hi! WinBar guibg=NONE ]])
vim.cmd([[ hi! WinBarNC guibg=NONE ]])

-- noice cmd line fix
vim.cmd([[ hi! NoiceCmdlinePopup guibg=#3c3836 ]])

--[[
-- recommended terminal scheme:
-- gruvbox dark
]]
