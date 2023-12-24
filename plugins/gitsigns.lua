-- require gitsigns
local status, gitsigns = pcall(require, "gitsigns")
if not status then
  return
end

-- custom setup
gitsigns.setup({
  preview_config = {
    border = "rounded", -- single|rounded
    style = "minimal",
  },
})
