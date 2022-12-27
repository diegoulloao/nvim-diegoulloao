-- require toggleterm
local toggleterm_status, toggleterm = pcall(require, "toggleterm")
if not toggleterm_status then
  return
end

-- custom setup
toggleterm.setup({
  open_mapping = [[<c-t>]],
  direction = "float", -- vertical | horizontal | tab | float
  float_opts = {
    border = "curved", -- single | double | curved
  },
  persist_mode = true,
  highlights = {
    FloatBorder = {
      guifg = "#059de3",
    },
  },
})
