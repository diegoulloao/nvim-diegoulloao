-- require lspsaga
local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

-- customized colors for lspsaga
-- local colors = require("diegoulloao.themes.lspsaga.nightfly")

-- custom setup
saga.setup({
  scroll_preview = {
    scroll_down = "<C-h>",
    scroll_up = "<C-l>",
  },
  finder = { edit = "<CR>" },
  definition = { edit = "<CR>" },
  symbol_in_winbar = {
    enable = true,
    separator = " › ",
    show_file = true,
    folder_level = 1,
  },
  ui = {
    theme = "round",
    border = "rounded",
    -- colors = colors,
    expand = "",
    collapse = "",
  },
})
