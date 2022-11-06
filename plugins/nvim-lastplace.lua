-- require nvim-lastplace
local nvim_lastplace_status, nvim_lastplace = pcall(require, "nvim-lastplace")
if not nvim_lastplace_status then
  return
end

nvim_lastplace.setup()
