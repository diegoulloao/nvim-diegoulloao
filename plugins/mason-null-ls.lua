return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
    -- formatters and linters
    require("mason-null-ls").setup({
      ensure_installed = {
        "prettierd",
        "stylua",
        "eslint_d",
      },
    })
  end,
}
