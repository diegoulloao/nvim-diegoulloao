-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  vim.notify("Colorscheme not found!", "error")
end

-- status line msg area text color
vim.cmd([[ hi MsgArea guifg=#7c8f8f ]])
