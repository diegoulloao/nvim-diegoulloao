--require neodev
local status, neodev = pcall(require, "neodev")
if not status then
  return
end

-- default setup
neodev.setup()
