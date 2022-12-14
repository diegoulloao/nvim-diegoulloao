-- require fidget
local status, fidget = pcall(require, "fidget")
if not status then
  return
end

-- custom config
fidget.setup({
  text = {
    spinner = "dots", -- dots | line | dots_scrolling | star
  },
  window = {
    border = "rounded", -- single | double | shadow | rounded
  },
  sources = {
    ["null-ls"] = {
      ignore = true,
    },
  },
})
