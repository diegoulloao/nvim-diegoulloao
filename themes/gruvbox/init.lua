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

-- telescope
vim.cmd([[ hi! TelescopeNormal guibg=#32302f ]])
vim.cmd([[ hi! TelescopeResultsNormal guibg=#32302f ]])
vim.cmd([[ hi! TelescopeResultsBorder guibg=#32302f guifg=#32302f ]])
vim.cmd([[ hi! TelescopePromptNormal guibg=#3c3836 ]])
vim.cmd([[ hi! TelescopePromptBorder guibg=#3c3836 guifg=#3c3836 ]])
vim.cmd([[ hi! TelescopePromptTitle guibg=#d65d0e guifg=#3c3836 ]])
vim.cmd([[ hi! TelescopePromptPrefix guifg=#d65d0e ]])
vim.cmd([[ hi! TelescopePromptCounter guifg=#83a598 ]])
vim.cmd([[ hi! TelescopeSelection guifg=#d65d0e gui=bold ]])
vim.cmd([[ hi! TelescopeSelectionCaret guifg=#d65d0e ]])

-- toggleterm
vim.cmd([[ hi ToogleTermNormal guibg=#32302f ]])
vim.cmd([[ hi ToggleTermFloatBorder guibg=#282828 guifg=#665c54 ]])
vim.cmd([[ hi ToogleTermNormalFloat guibg=#282828 ]])

-- nvim-cmp
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
