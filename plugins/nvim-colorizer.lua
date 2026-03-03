return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function()
    require("colorizer").setup({
      options = { parsers = { css = true } },
    })
  end,
}
