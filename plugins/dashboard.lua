-- ASCII art header
-- source: https://patorjk.com/software/taag/#p=display&f=Doom&t=diegoulloao
local logo = [[

███    ██  ██    ██  ██  ███    ███
████   ██  ██    ██  ██  ████  ████
██ ██  ██  ██    ██  ██  ██ ████ ██
██  ██ ██   ██  ██   ██  ██  ██  ██
██   ████    ████    ██  ██      ██
]]

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  priority = 1000,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    config = {
      header = vim.split(string.rep("\n", 1) .. logo, "\n"),
      shortcut = {
        { desc = "[ Github]", group = "DashboardShortCut" },
        { desc = "[ diegoulloao]", group = "DashboardShortCut" },
      },
    },
    hide = {
      statusline = false,
    },
  },
}
