-- separator char from settings
local settings = require("diegoulloao.settings")

-- do not display separator char if aspect is clean
local separator = settings.separatorChar
if settings.aspect == "clean" then
  separator = ""
end

return {
  "nvim-treesitter/nvim-treesitter-context",
  cmd = { "TSContextToggle" },
  opts = {
    enable = false, -- enable on all buffers by default
    separator = separator,
  },
  config = function(_, opts)
    local tcontext = require("treesitter-context")
    tcontext.setup(opts)

    vim.api.nvim_create_user_command("TSContextToggle", function()
      tcontext.toggle()
    end, {})
  end,
}
