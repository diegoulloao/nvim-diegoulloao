-- require colorscheme
local ayu_status, ayu = pcall(require, "ayu")
if not ayu_status then
  return
end

-- custom setup
ayu.setup({
  mirage = false, -- set true to use 'mirage' version instead of 'dark'
})

-- apply colorscheme
ayu.colorscheme()

-- line number
vim.cmd([[ hi! LineNr guifg=#14191F ]])

-- comments color
vim.cmd([[ hi! Comment guifg=#393F4D ]])

-- indent blankline
vim.cmd([[ hi! IndentBlanklineIndent1 guifg=#14191F gui=nocombine ]])

-- nvim-tree arrows color
vim.cmd([[ hi! NvimTreeIndentMarker guifg=#14191F ]])
vim.cmd([[ hi! NvimTreeFolderArrowClosed guifg=#acb4c2 gui=bold ]])
vim.cmd([[ hi! NvimTreeFolderArrowOpen guifg=#acb4c2 gui=bold ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#000000 guifg=#FFFFFF ]])

-- statusline msg area text color
vim.cmd([[ hi! MsgArea guifg=#393F4D ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! BorderBG guibg=NONE guifg=#FFB454 ]])
vim.cmd([[ hi! CursorLineBG guibg=#FFB454 guifg=#000000 ]])

-- telescope custom colors
vim.cmd([[ hi! TelescopeNormal guifg=#3E4B59 ]])
vim.cmd([[ hi! TelescopePromptNormal guifg=#59C2FF ]])
vim.cmd([[ hi! TelescopePromptBorder guifg=#FFB454]])
vim.cmd([[ hi! TelescopeSelection guibg=#151A1E guifg=#acb4c2 ]])
vim.cmd([[ hi! TelescopeSelectionCaret guifg=#FFB454 ]])
vim.cmd([[ hi! TelescopeMatching gui=bold guifg=#FFB454 ]])
vim.cmd([[ hi! TelescopePromptTitle guibg=#FFB454 guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsTitle guibg=#3E4B59 guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsBorder guifg=#253340 ]])

-- lsp saga colors
vim.cmd([[ hi! SagaBorder guifg=#FFB454]])

-- dashboard
vim.cmd([[ hi! DashboardHeader guifg=#FFB454 ]])
vim.cmd([[ hi! DashboardShortCut guifg=#C2D94C ]])
vim.cmd([[ hi! DashboardFooter guifg=#FFB454 ]])
vim.cmd([[ hi! DashboardFiles guifg=#59C2FF ]])
vim.cmd([[ hi! DashboardRecentTitle guifg=#4D5566 ]])
vim.cmd([[ hi! DashboardRecentProject guifg=#4D5566 ]])
vim.cmd([[ hi! DashboardProjectIcon guifg=#C2D94C ]])

--[[
-- Palette: ayu dark
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
