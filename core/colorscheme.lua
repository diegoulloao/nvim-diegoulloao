-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- statusline msg area text color
vim.cmd([[ hi MsgArea guifg=#7c8f8f ]])

-- nvim-cmp custom colors
vim.cmd([[ hi! BorderBG guibg=NONE guifg=#3EFFDC ]])
vim.cmd([[ hi! CursorLineBG gui=bold guibg=#3EFFDC guifg=#000000 ]])

-- telescope custom colors
vim.cmd([[ hi! TelescopeNormal guifg=#acb4c2 ]])
vim.cmd([[ hi! TelescopePromptBorder guifg=#65D1FF ]])
vim.cmd([[ hi! TelescopeSelection gui=bold guibg=#3EFFDC guifg=#000000 ]])
vim.cmd([[ hi! TelescopeSelectionCaret guifg=#c792ea ]])
vim.cmd([[ hi! TelescopeMatching gui=bold guifg=#c792ea ]])
vim.cmd([[ hi! TelescopePromptTitle guibg=#c792ea guifg=#000000 ]])
vim.cmd([[ hi! TelescopeResultsTitle guibg=#3EFFDC guifg=#000000 ]])
