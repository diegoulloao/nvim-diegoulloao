return {
  "roobert/tailwindcss-colorizer-cmp.nvim",
  config = function()
    -- custom setup
    require("tailwindcss-colorizer-cmp").setup({
      color_square_width = 2,
    })
  end,
}
