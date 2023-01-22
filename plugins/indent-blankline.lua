-- require indent blankline
local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
  return
end

-- custom config
indent_blankline.setup({
  -- options: ['|', '¦', '┆', '┊']
  -- char = "¦",
})
