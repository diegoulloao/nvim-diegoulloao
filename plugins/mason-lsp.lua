return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
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
        "yamlls",
      },
    })
  end,
}
