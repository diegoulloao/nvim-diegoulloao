-- require
local status, nvim_file_location = pcall(require, "nvim-file-location")
if not status then
  return
end

-- config
nvim_file_location.setup()
