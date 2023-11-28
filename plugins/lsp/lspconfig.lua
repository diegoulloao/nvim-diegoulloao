-- require lspconfig
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- require cmp nvim lsp
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

-- require keybindings for lsp server
local on_attach = require("diegoulloao.core.keymaps.lsp")

-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

-- for emmet support
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- html
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- css/sass
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    css = {
      lint = {
        -- fixs unknown @tailwind rule for css files
        unknownAtRules = "ignore",
      },
    },
    scss = {
      lint = {
        -- fixs unknown @tailwind rule for sass files
        unknownAtRules = "ignore",
      },
    },
  },
})

-- typescript
lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- tailwind css
lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- svelte
lspconfig["svelte"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- emmet
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {
    "html",
    "typescriptreact",
    "javascriptreact",
    "css",
    "sass",
    "scss",
    "svelte",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})

-- astro
lspconfig["astro"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- lua
lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  -- custom settings for lua
  settings = {
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- make the language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
      completion = {
        callSnippet = "Replace",
      },
    },
  },
})

-- disable inline diagnostics globally
vim.diagnostic.config({ virtual_text = false })

-- add borders to lsp info window
require("lspconfig.ui.windows").default_options.border = "single"
