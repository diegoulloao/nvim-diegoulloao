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

-- require typescript lsp
local typescript_status, typescript = pcall(require, "typescript")
if not typescript_status then
  return
end

-- for conciseness
local keymap = vim.keymap

-- enable keybindings for available lsp server
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set go to keybinds
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- go to definition
  keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts) -- go to references
  keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- go to declaration
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation

  -- set rename keybind
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- rename symbol

  -- set diagnostics keybinds
  keymap.set("n", "<C-m>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- previous diagnostic
  keymap.set("n", "<C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- next diagnostic
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- show code actions
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for the cursor
  keymap.set("n", "<leader>D", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts) -- open diagnostics list at bottom

  -- set documentation keybind
  keymap.set("n", "<leader>K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for the cursor

  -- set code formatting by lsp
  keymap.set("n", "<leader>F", function()
    vim.lsp.buf.format({ async = true })
  end, opts) -- format code

  -- typescript specific keybinds
  if client.name == "tsserver" then
    keymap.set("n", "<leader>mv", "<cmd>TypescriptRenameFile<CR>") -- rename ts symbol
  end
end

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
})

-- typescript
typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
})

-- tailwind css
lspconfig["tailwindcss"].setup({
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

-- lua
lspconfig["sumneko_lua"].setup({
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
    },
  },
})

-- disable inline diagnostics globally
vim.diagnostic.config({ virtual_text = false })
