-- require notify
local notify_status, nofity = pcall(require, "nofity")
if not notify_status then
	return
end

-- set notify as the default notification window
vim.notify = nofity
