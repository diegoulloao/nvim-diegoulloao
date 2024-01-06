-- indent char from settings
local settings = require("diegoulloao.settings")

-- disable by default if aspect is clean
local enabled = true
if settings.aspect == "clean" then
  enabled = false
end

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    -- custom config
    require("ibl").setup({
      enabled = enabled,
      indent = { char = settings.indentChar },
      exclude = {
        filetypes = { "dashboard" },
      },
      scope = { enabled = false },
    })
  end
}
