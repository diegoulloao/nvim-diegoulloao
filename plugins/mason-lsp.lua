-- NOTE: It's important that you set up the plugins in the following order:
-- mason.nvim
-- mason-lspconfig.nvim
-- Setup servers via lspconfig

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = "williamboman/mason.nvim",
  config = function()
    -- language servers
    require("mason-lspconfig").setup({
      ensure_installed = {
        "tsserver",
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
    })
  end,
}
