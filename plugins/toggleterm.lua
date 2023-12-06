-- require toggleterm
local toggleterm_status, toggleterm = pcall(require, "toggleterm")
if not toggleterm_status then
  return
end

-- require toggleterm:terminal instance
local toggleterm_t_status, toggleterm_terminal = pcall(require, "toggleterm.terminal")
if not toggleterm_t_status then
  return
end

-- require current theme palette
local theme_palette = require("diegoulloao.themes.palettes")

-- custom setup
toggleterm.setup({
  direction = "float", -- vertical | horizontal | tab | float
  float_opts = {
    border = "curved", -- single | double | curved
    winblend = 0,
  },
  persist_mode = true,
  highlights = {
    FloatBorder = {
      guifg = theme_palette.secondary,
    },
  },
})

-- general toggleterm terminal instance
local Terminal = toggleterm_terminal.Terminal

-- main terminal
local main_term = Terminal:new({
  on_open = function()
    vim.cmd([[ startinsert! ]])
  end,
})

-- spotify terminal
local spotify_term = Terminal:new({
  cmd = "spotify_player",
  display_name = "spotify",
  hidden = false,
  float_opts = {
    border = "none",
  },
  on_open = function()
    vim.cmd([[ startinsert! ]])
  end,
})

-- global: main term toggle
function _G.main_term_toggle()
  main_term:toggle()
end

-- global: spotify term toggle
function _G.spotify_toggle()
  spotify_term:toggle()
end

-- global: attach general key shortcuts
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
end

-- set global toggleterm keymaps
vim.cmd([[ autocmd! TermOpen term://* lua set_terminal_keymaps() ]])
