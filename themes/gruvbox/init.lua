-- require gruvbox
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  return
end

-- set dark background
vim.opt.background = "dark"

-- options
local widgets_style = "thick" -- clean|thick

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
if widgets_style == "clean" then
  vim.cmd([[ hi! NoiceCmdlinePopup guibg=#282828 ]])
  vim.cmd([[ hi! NoiceCmdlinePopupBorder guibg=#282828 ]])
else
  vim.cmd([[ hi! NoiceCmdlinePopup guibg=#3c3836 ]])
  vim.cmd([[ hi! NoiceCmdlinePopupBorder guibg=#3c3836 ]])
  vim.cmd([[ hi! NoiceCmdlinePopupTitle guibg=#3c3836 ]])
  vim.cmd([[ hi! NoiceCmdlineIcon guibg=#3c3836 ]])
end

-- fix
-- telescope selection bg
-- vim.cmd([[ hi! TelescopeSelection guibg=#3c3836 guifg=#fe8019 gui=bold ]])

-- fix
-- diagnostics sign bg
vim.cmd([[ hi! DiagnosticSignOk guifg=#b8bb26 guibg=#282828 ]])
vim.cmd([[ hi! DiagnosticSignInfo guifg=#83a598 guibg=#282828 ]])
vim.cmd([[ hi! DiagnosticSignWarn guifg=#fabd2f guibg=#282828 ]])
vim.cmd([[ hi! DiagnosticSignError guifg=#fb4934 guibg=#282828 ]])

-- fix
-- lsp saga bg
if widgets_style == "clean" then
  vim.cmd([[ hi! SagaNormal guibg=#282828 ]])
else
  vim.cmd([[ hi! SagaBorder guibg=#3c3836 ]])
  vim.cmd([[ hi clear link SagaTitle Title ]])
  vim.cmd([[ hi! SagaTitle guibg=#3c3836 ]])
  -- vim.cmd([[ hi! Title guibg=#3c3836 ]]) -- do not change
end

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
  -- Letter spacing: 100
]]
