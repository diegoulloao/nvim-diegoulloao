-- require notify
local notify_status, notify = pcall(require, "notify")
if not notify_status then
  return
end

-- custom setup
notify.setup({
  stages = "fade_in_slide_out", -- animation style
  render = "simple", -- notification appearance
  timeout = 3000, -- time to out
})

-- set notify as the default notification window
vim.notify = notify
