-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- nvim-tree arrows color
vim.cmd([[ hi! NvimTreeIndentMarker guifg=#3FC5FF ]])

-- statusline msg area text color
vim.cmd([[ hi! MsgArea guifg=#4a6275 ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! BorderBG guibg=NONE guifg=#3EFFDC ]])
vim.cmd([[ hi! CursorLineBG guibg=#3EFFDC guifg=#000000 ]])

-- telescope custom colors
vim.cmd([[ hi! TelescopeNormal guifg=#4a6275 ]])
vim.cmd([[ hi! TelescopePromptNormal guifg=#65D1FF ]])
vim.cmd([[ hi! TelescopePromptBorder guifg=#65D1FF ]])
vim.cmd([[ hi! TelescopeSelection guibg=#092236 guifg=#acb4c2 ]])
vim.cmd([[ hi! TelescopeSelectionCaret guifg=#ae81ff ]])
vim.cmd([[ hi! TelescopeMatching gui=bold guifg=#ae81ff ]])
vim.cmd([[ hi! TelescopePromptTitle guibg=#ae81ff guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsTitle guibg=#65D1FF guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsBorder guifg=#1d3b53 ]])
