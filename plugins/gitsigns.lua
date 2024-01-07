return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    preview_config = {
      border = "rounded", -- single|rounded
      style = "minimal",
    },
  },
}
