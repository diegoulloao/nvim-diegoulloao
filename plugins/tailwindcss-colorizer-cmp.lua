-- require tailwindcss colorizer
local status, tailwindcss_colorizer = pcall(require, "tailwindcss-colorizer-cmp")
if not status then
  return
end

-- custom setup
tailwindcss_colorizer.setup({
  color_square_width = 2,
})
