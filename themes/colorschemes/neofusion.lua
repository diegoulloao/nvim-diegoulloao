-- require settings
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
    -- load lualine first (applies hi groups correctly)
    "nvim-lualine/lualine.nvim",
  },
  config = function()
    require("neofusion").setup({
      italic = {
        strings = false,
      },
      transparent_mode = settings.transparent_mode,
    })

    -- load palette
    local palette = require("neofusion.palette")

    -- general customization
    vim.cmd([[ colorscheme neofusion ]])
    vim.cmd([[ hi! WinBar guibg=NONE ]])
    vim.cmd([[ hi! WinBarNC guibg=NONE ]])

    -- avante customization
    vim.cmd(string.format([[ hi! AvanteTitle guibg=%s guifg=%s ]], palette.bright_red, palette.dark0))
    vim.cmd(string.format([[ hi! AvanteSubtitle guibg=%s guifg=%s ]], palette.bright_green, palette.dark0))
    vim.cmd(string.format([[ hi! AvanteThirdTitle guibg=%s guifg=%s ]], palette.dark4, palette.bright_aqua))

    -- experimental
    if settings.transparent_mode then
      vim.cmd([[ hi! BufferLineFill guibg=NONE ]])
      vim.cmd([[ hi! Directory guibg=NONE ]])
    else
      vim.cmd(string.format([[ hi! BufferLineFill guibg=%s guifg=%s ]], palette.dark0, palette.light1))
      -- vim.cmd(string.format([[ hi! Directory guibg=%s guifg=%s ]], palette.dark0, palette.light1))
    end
  end,
}
