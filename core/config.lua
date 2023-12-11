-- set diagnostic signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  -- define diagnostic type
  local hl = "DiagnosticSign" .. type

  -- set icon for diagnostic type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = hl,
  })
end
