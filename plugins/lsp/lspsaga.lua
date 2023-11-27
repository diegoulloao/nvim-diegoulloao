-- require lspsaga
local status, lspsaga = pcall(require, "lspsaga")
if not status then
  return
end

-- custom setup
lspsaga.setup({
  scroll_preview = {
    scroll_down = "<C-h>",
    scroll_up = "<C-l>",
  },
  finder = {
    keys = {
      edit = "<CR>",
    },
  },
  definition = {
    keys = {
      edit = "<CR>",
    },
  },
  symbol_in_winbar = {
    enable = true,
    separator = " › ",
    show_file = true,
    folder_level = 1,
  },
  lightbulb = {
    enable = false, -- enable by default
    sign = false, -- display sign at the column when code actions are available
  },
  ui = {
    theme = "round",
    border = "rounded",
    -- title = false,
    expand = "",
    collapse = "",
    code_action = "👾",
  },
  outline = {
    win_width = 30,
  },
})
