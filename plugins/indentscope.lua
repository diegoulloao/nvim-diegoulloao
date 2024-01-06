-- indent char from settings
local settings = require("diegoulloao.settings")

-- not set plugin if clean mode is enabled
if settings.aspect == "clean" then
  return {}
end

return {
 "echasnovski/mini.indentscope",
 config = function()
  -- custom config
  require("mini.indentscope").setup({
    symbol = settings.indentChar,
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
 end
}
