-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- theme highlights
vim.cmd([[ hi PrimaryColorFG guifg=#FF61EF ]])
vim.cmd([[ hi SecondaryColorFG guifg=#3EFFDC ]])

-- indent blankline
vim.cmd([[ hi! IndentBlanklineIndent1 guifg=#1d3b53 gui=nocombine ]])

-- nvim-tree arrows color
vim.cmd([[ hi! NvimTreeIndentMarker guifg=#1d3b53 ]])

-- statusline msg area text color
vim.cmd([[ hi! MsgArea guifg=#4a6275 ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! BorderBG guibg=NONE guifg=#3EFFDC ]])
vim.cmd([[ hi! CursorLineBG guibg=#3EFFDC guifg=#000000 ]])

-- telescope custom colors
vim.cmd([[ hi! TelescopeNormal guifg=#4a6275 ]])
vim.cmd([[ hi! TelescopePromptNormal guifg=#65D1FF ]])
vim.cmd([[ hi! TelescopePromptBorder guifg=#FF61EF]])
vim.cmd([[ hi! TelescopeSelection guibg=#092236 guifg=#acb4c2 ]])
vim.cmd([[ hi! TelescopeSelectionCaret guifg=#FF61EF ]])
vim.cmd([[ hi! TelescopeMatching gui=bold guifg=#FF61EF ]])
vim.cmd([[ hi! TelescopePromptTitle guibg=#FF61EF guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsTitle guibg=#4a6275 guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsBorder guifg=#1d3b53 ]])

-- lsp saga colors
vim.cmd([[ hi! SagaBorder guifg=#FF61EF]])

-- winbar
vim.cmd([[ hi WinBar guibg=#011627 ]])

-- dashboard
vim.cmd([[ hi! DashboardHeader guifg=#3EFFDC ]])
vim.cmd([[ hi! DashboardShortCut guifg=#FF61EF ]])
vim.cmd([[ hi! DashboardFooter guifg=#3EFFDC ]])
vim.cmd([[ hi! DashboardFiles guifg=#65D1FF ]])
vim.cmd([[ hi! DashboardRecentTitle guifg=#4a6275 ]])
vim.cmd([[ hi! DashboardRecentProject guifg=#4a6275 ]])
vim.cmd([[ hi! DashboardProjectIcon guifg=#FF61EF ]])
