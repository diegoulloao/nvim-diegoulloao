-- require toggleterm
local toggleterm_status, toggleterm = pcall(require, "toggleterm")
if not toggleterm_status then
  return
end

-- require current theme palette
local theme_palette = require("diegoulloao.themes.palettes")

-- custom setup
toggleterm.setup({
  open_mapping = [[<c-t>]],
  direction = "float", -- vertical | horizontal | tab | float
  float_opts = {
    border = "curved", -- single | double | curved
    winblend = 0,
  },
  persist_mode = true,
  highlights = {
    FloatBorder = {
      guifg = theme_palette.primary,
    },
  },
})
