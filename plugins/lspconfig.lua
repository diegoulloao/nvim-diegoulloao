-- require keybindings for lsp server
local attach_keymaps = require("diegoulloao.core.keymaps.lsp")

return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- used to enable autocompletion
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- for emmet support
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    -- attach keymaps
    local on_attach = function(client, bufnr)
      if client.name == "svelte" then
        vim.api.nvim_create_autocmd("BufWritePost", {
          pattern = { "*.js", "*.ts" },
          group = vim.api.nvim_create_augroup("svelte_ondidchangetsorjsfile", { clear = true }),
          callback = function(ctx)
            -- Here use ctx.match instead of ctx.file
            client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
          end,
        })
      end

      attach_keymaps(client, bufnr)
    end

    -- List of servers to setup
    local servers = {
      "html",
      "cssls",
      "ts_ls",
      "tailwindcss",
      "svelte",
      "emmet_language_server",
      "jsonls",
      "astro",
      "lua_ls",
      "bashls",
    }

    -- server-specific settings
    local server_settings = {
      cssls = {
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
      },
      lua_ls = {
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
      },
      svelte = {
        filetypes = { "svelte" },
      },
      emmet_language_server = {
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
      },
      bashls = {
        filetypes = { "sh", "zsh", "bash" },
      },
    }

    -- Setup each server using new interface
    for _, srv in ipairs(servers) do
      vim.lsp.config(
        srv,
        vim.tbl_extend("force", {
          capabilities = capabilities,
          on_attach = on_attach,
        }, server_settings[srv] or {})
      )
      vim.lsp.enable(srv)
    end

    -- diagnostics config
    vim.diagnostic.config({
      underline = false,
      virtual_text = { -- or false for disable
        prefix = "",   -- ■  󰊠
        suffix = "",
        format = function(diagnostic)
          local prefix = "󰅪 " -- 󰅪 | 󰅩
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
