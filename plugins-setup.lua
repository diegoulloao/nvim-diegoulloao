-- require lazy in safety mode
local status, lazy = pcall(require, "lazy")
if not status then
  return vim.notify("lazy is not installed.")
end

-- load plugins with lazy
lazy.setup({
  -- import modules
  { import = "diegoulloao.themes.gruvbox" },
  { import = "diegoulloao.plugins" },

  -- TODO: migrate ayu theme
  --"Shatur/neovim-ayu",
})
