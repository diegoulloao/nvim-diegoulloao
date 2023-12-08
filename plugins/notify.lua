-- require notify
local notify_status, notify = pcall(require, "notify")
if not notify_status then
  return
end

-- require settings
local settings = require("diegoulloao.settings")

-- set simple render if aspect is clean
local render = "default"
if settings.aspect == "clean" then
  render = "simple"
end

-- custom setup
notify.setup({
  stages = "fade_in_slide_out", -- animation style
  render = render, -- notification appearance: default|simple
  timeout = 3000, -- time to out
})

-- set notify as the default notification window
vim.notify = notify
