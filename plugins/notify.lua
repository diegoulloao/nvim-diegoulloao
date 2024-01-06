-- require settings
local settings = require("diegoulloao.settings")

-- set simple render if aspect is clean
local render = "default"
if settings.aspect == "clean" then
  render = "simple"
end

return {
  "rcarriga/nvim-notify",
  config = function()
    -- require notify
    local notify = require("notify")

    -- custom setup
    notify.setup({
      stages = "fade_in_slide_out", -- animation style
      render = render,              -- notification appearance: default|simple
      timeout = 3000,               -- time to out
    })

    -- set notify as the default notification window
    vim.notify = notify
  end,
}
