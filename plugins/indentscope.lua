-- require mini-indentscope
local status, indentscope = pcall(require, "mini.indentscope")
if not status then
  return
end

-- custom config
indentscope.setup({
  -- symbol = "│",
  symbol = "┆",
  options = {
    try_as_border = true,
    indent_at_cursor = false,
  },
  draw = {
    delay = 0,
    animation = function()
      return 20
    end,
  },
})

-- disable for some buffer types
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "dashboard", "nvimtree", "mason", "lspsaga", "lspinfo", "toggleterm" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})
