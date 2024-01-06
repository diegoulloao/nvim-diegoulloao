return {
  "lewis6991/gitsigns.nvim",
  config = function()
    -- custom setup
    require("gitsigns").setup({
      preview_config = {
        border = "rounded", -- single|rounded
        style = "minimal",
      },
    })
  end
}
