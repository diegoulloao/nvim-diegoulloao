--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: Gruvbox Dark
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 137
  -- Letter spacing: 100
]]

-- settings
local settings = require("diegoulloao.settings")

-- hi groups setter
local set_hi_groups = require("diegoulloao.themes.highlights.gruvbox")

-- set dark background
vim.opt.background = "dark"

return {
  "ellisonleao/gruvbox.nvim",
  dependencies = {
    "nvim-lualine/lualine.nvim", -- load lualine first (applies hi groups correctly)
  },
  lazy = false,
  priority = 1000,
  enabled = settings.theme == "gruvbox",
  config = function()
    -- custom setup
    require("gruvbox").setup({
      italic = {
        strings = false,
      },
      contrast = "", -- options: soft|hard|empty
    })

    -- set colorscheme
    vim.cmd([[ colorscheme gruvbox ]])

    -- set hi groups
    set_hi_groups()
  end,
}
