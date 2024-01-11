-- require keybindings for lsp server
local on_attach = require("diegoulloao.core.keymaps.lsp")

return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- require lspconfig
    local lspconfig = require("lspconfig")

    -- used to enable autocompletion
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
            -- fixes unknown @tailwind rule for css files
            unknownAtRules = "ignore",
          },
        },
        scss = {
          lint = {
            -- fixes unknown @tailwind rule for sass files
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
      filetypes = { "svelte" },
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

    -- json
    lspconfig["jsonls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
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
            disable = { "missing-fields" },
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

    -- zsh, bash, sh
    lspconfig["bashls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "sh", "zsh", "bash" },
    })

    -- diagnostics config
    vim.diagnostic.config({
      underline = false,
      virtual_text = { -- or false for disable
        prefix = "", -- ■  󰊠
        suffix = "",
        format = function(diagnostic)
          local prefix = "󰊠 "
          local suffix = " "
          -- return full message with custom prefix & suffix
          return prefix .. diagnostic.message .. suffix
        end,
      },
    })

    -- add borders to lsp info window
    require("lspconfig.ui.windows").default_options.border = "single"
  end,
}
