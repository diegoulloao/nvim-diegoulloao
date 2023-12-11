-- require gitsigns
local status, gitsigns = pcall(require, "gitsigns")
if not status then
  return
end

-- default setup
gitsigns.setup()
