-- require indent blankline
local status, indent_blankline = pcall(require, "ibl")
if not status then
  return
end

-- custom config
indent_blankline.setup({
  indent = { char = "┆" },
  exclude = {
    filetypes = { "dashboard" },
  },
  scope = { enabled = false },
})

-- options: ['|', '¦', '┆', '┊']
