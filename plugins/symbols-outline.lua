-- require symbols-outline
local status, symbols_outline = pcall(require, "symbols-outline")
if not status then
  return
end

-- custom config
symbols_outline.setup({
  width = 22,
  autofold_depth = 1,
  keymaps = {
    fold = "O",
    unfold = "o",
    focus_location = "<space><CR>",
    hover_symbol = "<space>K",
  },
  fold_markers = { "", "" },
  symbol_blacklist = {
    "Field",
  },
  -- fixs the highlight groups for colors
  symbols = {
    File = { hl = "@text.uri" },
    Module = { hl = "@namespace" },
    Namespace = { hl = "@namespace" },
    Package = { hl = "@namespace" },
    Class = { hl = "@type" },
    Method = { hl = "@method" },
    Property = { hl = "@method" },
    Field = { hl = "@field" },
    Constructor = { hl = "@constructor" },
    Enum = { hl = "@type" },
    Interface = { hl = "@type" },
    Function = { hl = "@function" },
    Variable = { hl = "@constant" },
    Constant = { hl = "@constant" },
    String = { hl = "@string" },
    Number = { hl = "@number" },
    Boolean = { hl = "@boolean" },
    Array = { hl = "@constant" },
    Object = { hl = "@type" },
    Key = { hl = "@type" },
    Null = { hl = "@type" },
    EnumMember = { hl = "@field" },
    Struct = { hl = "@type" },
    Event = { hl = "@type" },
    Operator = { hl = "@operator" },
    TypeParameter = { hl = "@parameter" },
  },
})
