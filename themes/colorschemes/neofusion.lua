-- settings
local settings = require("diegoulloao.settings")

-- set dark background
vim.opt.background = "dark"

return {
  "diegoulloao/neofusion.nvim",
  lazy = false,
  enabled = settings.theme == "neofusion",
  priority = 1000,
  dependencies = {
    "nvim-lualine/lualine.nvim", -- load lualine first (applies hi groups correctly)
  },
  config = function()
    require("neofusion").setup({
      italic = {
        strings = false,
      },
      transparent_mode = settings.transparent_mode,
    })

    vim.cmd([[ colorscheme neofusion ]])
  end,
}
