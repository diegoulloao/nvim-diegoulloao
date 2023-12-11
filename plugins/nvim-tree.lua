-- require nvim-tree
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- indent char from settings
local settings = require("diegoulloao.settings")

-- disable indent guides if aspect is clean
local enable = true
if settings.aspect == "clean" then
  enable = false
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- custom setup
nvimtree.setup({
  view = {
    width = 38,
  },
  renderer = {
    root_folder_label = false, -- hide root directory at the top
    indent_markers = {
      enable = enable, -- folder level guide
      icons = {
        corner = "└",
        edge = settings.indentChar,
        item = settings.indentChar,
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
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
