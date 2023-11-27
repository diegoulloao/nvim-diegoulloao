-- require treesitter context
local status, treesitter_context = pcall(require, "treesitter-context")
if not status then
  return
end

-- custom config
treesitter_context.setup({
  enable = true, -- enable on all buffers by default
  separator = "-",
})
