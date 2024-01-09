-- require lazy in safety mode
local status, lazy = pcall(require, "lazy")
if not status then
  return vim.notify("lazy is not installed.")
end

-- load with lazy
lazy.setup({
  { import = "diegoulloao.themes.colorschemes" },
  { import = "diegoulloao.plugins" },
}, {
  -- options
  ui = {
    border = "single",
  },
})
