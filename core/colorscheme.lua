-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- status line msg area text color
vim.cmd([[ hi MsgArea guifg=#627373 ]])

-- nvim cmp completion border color
vim.cmd("highlight! BorderBG guibg=NONE guifg=#3EFFDC")
vim.cmd("highlight! CursorLineBG gui=bold guibg=#3EFFDC guifg=#000000")
