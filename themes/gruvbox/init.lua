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

-- fix
-- lsp saga bg
vim.cmd([[ hi! SagaNormal guibg=#282828 ]])

-- fix
-- telescope
vim.cmd([[ hi! TelescopeSelection guibg=#3c3836 guifg=#fe8019 gui=bold ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

-- selection color
vim.cmd([[ hi! Visual guibg=#3c3836 gui=none ]])

-- lsp saga
vim.cmd([[ hi! SagaVirtLine guifg=#3c3836 ]])

--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: Gruvbox Dark
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 137
]]
