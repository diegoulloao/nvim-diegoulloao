return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  lazy = true,
  opts = {
    ensure_installed = {
      "ts_ls",
      "html",
      "emmet_ls",
      "cssls",
      "jsonls",
      "tailwindcss",
      "svelte",
      "lua_ls",
      "astro",
      "bashls",
    },
  },
}
