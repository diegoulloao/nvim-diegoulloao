-- settings
local settings = require("diegoulloao.settings")

-- set dark background
vim.opt.background = "dark"

return {
  "diegoulloao/neofusion.nvim",
  -- dir = "~/Projects/neofusion.nvim",
  -- dev = true,
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
      transparent_mode = true, -- settings.transparent_mode,
    })

    -- local palette = require("neofusion.palette")
    vim.cmd([[ colorscheme neofusion ]])

    vim.cmd([[ hi! WinBar guibg=NONE ]])
    vim.cmd([[ hi! WinBarNC guibg=NONE ]])
  end,
}
