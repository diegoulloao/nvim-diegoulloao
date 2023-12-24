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

-- custom setup
toggleterm.setup({
  direction = "float", -- float|horizontal|vertical|tab
  float_opts = {
    border = "curved", -- single|double|curved
    -- winblend = 5, -- transparency, recommended: 5
  },
  size = 20,
  persist_mode = true,
  highlights = {
    Normal = { link = "ToogleTermNormal" },
    NormalFloat = { link = "ToogleTermNormalFloat" },
    FloatBorder = { link = "ToggleTermFloatBorder" },
  },
})

-- general toggleterm terminal instance
local Terminal = toggleterm_terminal.Terminal

-- main terminal
local main_term = Terminal:new({
  display_name = "main terminal",
  on_open = function()
    vim.cmd([[ startinsert! ]])
  end,
})

-- secondary terminal
local secondary_term = Terminal:new({
  -- cmd = "<cmd>",
  dir = "~/",
  display_name = "secondary terminal",
  hidden = false,
  on_open = function()
    vim.cmd([[ startinsert! ]])
  end,
})

-- global: main term toggle
function _G.main_term_toggle()
  main_term:toggle()
end

-- global: secondary term toggle
function _G.secondary_term_toggle()
  secondary_term:toggle()
end

-- global: attach general key shortcuts
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
end

-- set global toggleterm keymaps
vim.cmd([[ autocmd! TermOpen term://* lua set_terminal_keymaps() ]])
