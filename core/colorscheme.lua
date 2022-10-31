-- require notify
local notify_status, notify = pcall(require, "notify")

-- require colorscheme
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	if notify_status then
		-- use notify to show error message
		notify("Colorscheme not found!", "error")
	else
		-- otherwise, use default output
		print("Colorscheme not found!", "error")
	end
end
