-- require cmp
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

-- require luasnip
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- require lspkind
local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
  return
end

-- load friendly-snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- for conciseness
local opt = vim.opt -- vim options

-- set options
opt.completeopt = "menu,menuone,noselect"

-- custom setup
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- select previous suggestion
    ["<S-tab>"] = cmp.mapping.select_prev_item(), -- select previous suggestion (2)
    ["<C-j>"] = cmp.mapping.select_next_item(), -- select next suggestion
    ["<tab>"] = cmp.mapping.select_next_item(), -- select next suggestion (2)
    ["<C-h>"] = cmp.mapping.scroll_docs(-4), -- scroll docs down
    ["<C-l>"] = cmp.mapping.scroll_docs(4), -- scroll docs up
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm suggestion
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- lsp
    { name = "luasnip" }, -- luasnips
    { name = "ultisnips" }, -- ultisnips
    { name = "buffer" }, -- text within the current buffer
    { name = "path" }, -- file system paths
  }),
  formatting = {
    -- vscode like icons for cmp autocompletion
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})
