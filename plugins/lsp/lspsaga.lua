-- require lspsaga
local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

-- customized colors for lspsaga
local colors = {
  normal_bg = "#011627",
  blue = "#65D1FF",
  green = "#3EFFDC",
  magenta = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
  orange = "#FFFFFF",
}

-- custom setup
saga.setup({
  move_in_saga = { prev = "<C-k>", next = "<C-j>" },
  finder_action_keys = { open = "<CR>" },
  definition = { edit = "<CR>" },
  symbol_in_winbar = {
    enable = true,
    separator = " › ",
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
  ui = {
    theme = "round",
    border = "rounded",
    colors = colors,
    expand = "",
    collapse = "",
  },
})
