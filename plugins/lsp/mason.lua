-- require mason
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

-- require mason-lspconfig
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

-- require mason-null-lw
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

-- custom config
mason.setup({
  ui = {
    border = "single",
  },
})

-- language servers
mason_lspconfig.setup({
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
  },
})

-- formatters and linters
mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
  },
})
