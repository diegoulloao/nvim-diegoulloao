-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- indent blankline
vim.cmd([[ highlight IndentBlanklineIndent1 guifg=#1d3b53 gui=nocombine ]])

-- nvim-tree arrows color
-- vim.cmd([[ hi! NvimTreeIndentMarker guifg=#3FC5FF ]])
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
