-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	vim.notify("Colorscheme not found!", "error")
end
