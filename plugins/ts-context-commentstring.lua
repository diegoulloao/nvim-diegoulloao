-- require ts-context-commentstring
local status, ts_context_commentstring = pcall(require, "ts_context_commentstring")

-- default config
ts_context_commentstring.setup({
  enable_autocmd = false,
})
