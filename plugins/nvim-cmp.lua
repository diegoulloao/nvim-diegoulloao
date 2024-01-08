-- configuration instructions
-- source: https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu

-- options
local style = "vscode" -- vscode|default

-- for conciseness
local opt = vim.opt -- vim options

-- set options
opt.completeopt = "menu,menuone,noselect"

-- vscode like icons
local cmp_kinds = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "onsails/lspkind.nvim",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "roobert/tailwindcss-colorizer-cmp.nvim",
  },
  event = "InsertEnter",
  config = function()
    -- load friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- require cmp
    local cmp = require("cmp")

    -- require luasnip
    local luasnip = require("luasnip")

    -- require lspkind
    local lspkind = require("lspkind")

    -- require tailwind colorizer for cmp
    local tailwindcss_colorizer_cmp = require("tailwindcss-colorizer-cmp")

    -- custom setup
    cmp.setup({
      window = {
        completion = {
          border = "rounded", -- rounded|none
          -- custom colors
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLineBG,Search:None", -- BorderBG|FloatBorder
          side_padding = 0,
        },
        documentation = {
          border = "rounded", -- rounded|none
          -- custom colors
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLineBG,Search:None", -- BorderBG|FloatBorder
          side_padding = 1,
        },
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- select previous suggestion
        ["<S-tab>"] = cmp.mapping.select_prev_item(), -- select previous suggestion (2)
        ["<C-j>"] = cmp.mapping.select_next_item(), -- select next suggestion
        ["<tab>"] = cmp.mapping.select_next_item(), -- select next suggestion (2)
        ["<C-l>"] = cmp.mapping.scroll_docs(-4), -- scroll docs down
        ["<C-h>"] = cmp.mapping.scroll_docs(4), -- scroll docs up
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm suggestion
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- lsp
        { name = "luasnip" }, -- luasnips
        { name = "buffer" }, -- text within the current buffer
        { name = "path" }, -- file system paths
      }),
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, item)
          -- vscode like icons for cmp autocompletion
          local kind_fmt = lspkind.cmp_format({
            -- with_text = false, -- hide kind beside the icon
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
            before = tailwindcss_colorizer_cmp.formatter, -- prepend tailwindcss-colorizer
          })(entry, item)

          -- customize lspkind format
          local strings = vim.split(kind_fmt.kind, "%s", { trimempty = true })

          if style == "default" then
            kind_fmt.kind = " " .. (strings[1] or "") .. " " -- default icons
          else
            kind_fmt.kind = "  " .. (cmp_kinds[strings[2]] or "") .. " " -- vscode like icons
          end

          kind_fmt.menu = strings[2] ~= nil and (" " .. (strings[2] or "")) or ""

          return kind_fmt
        end,
      },
    })
  end,
}
