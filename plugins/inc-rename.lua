-- require inc rename
local status, inc_rename = pcall(require, "inc_rename")
if not status then
  return
end

-- default setup
inc_rename.setup()
