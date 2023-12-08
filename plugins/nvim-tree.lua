-- require nvim-tree
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- indent char from settings
local indentChar = require("diegoulloao.settings").indentChar

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- custom setup
nvimtree.setup({
  view = {
    width = 38,
  },
  renderer = {
    indent_markers = {
      enable = true, -- folder level guide
      icons = {
        corner = "└",
        edge = indentChar,
        item = indentChar,
        bottom = "─",
        none = " ",
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
        enable = false,
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  filters = {
    dotfiles = true,
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
})
