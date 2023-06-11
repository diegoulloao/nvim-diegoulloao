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

-- customization
--
-- indent blankline
vim.cmd([[ hi! IndentBlanklineIndent1 guifg=#1d3b53 gui=nocombine ]])
-- vim.cmd([[ hi! IndentBlanklineIndent1 guifg=#393F4D gui=nocombine ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! CursorLineBG guibg=#000000 guifg=#FFFFFF ]])

-- statusline msg area text color
vim.cmd([[ hi! MsgArea guifg=#393F4D ]])

-- dashboard
vim.cmd([[ hi! DashboardHeader guifg=#E6B450 ]])
vim.cmd([[ hi! DashboardShortCut guifg=#C2D94C ]])
vim.cmd([[ hi! DashboardFooter guifg=#E6B450 ]])
vim.cmd([[ hi! DashboardFiles guifg=#59C2FF ]])
vim.cmd([[ hi! DashboardRecentTitle guifg=#4D5566 ]])
vim.cmd([[ hi! DashboardRecentProject guifg=#4D5566 ]])
vim.cmd([[ hi! DashboardProjectIcon guifg=#C2D94C ]])
