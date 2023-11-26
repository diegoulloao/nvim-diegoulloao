-- require dashboard
local status, dashboard = pcall(require, "dashboard")
if not status then
  return
end

-- ASCII art header
-- source: https://patorjk.com/software/taag/#p=display&f=Doom&t=diegoulloao
local logo = [[
     _ _                        _ _                   
    | (_)                      | | |                  
  __| |_  ___  __ _  ___  _   _| | | ___   __ _  ___  
 / _` | |/ _ \/ _` |/ _ \| | | | | |/ _ \ / _` |/ _ \ 
| (_| | |  __/ (_| | (_) | |_| | | | (_) | (_| | (_) |
 \__,_|_|\___|\__, |\___/ \__,_|_|_|\___/ \__,_|\___/ 
               __/ |                                  
              |___/                                   
]]

-- custom config
dashboard.setup({
  config = {
    header = vim.split(string.rep("\n", 2) .. logo, "\n"),
    shortcut = {
      { desc = "[ Github]", group = "DashboardShortCut" },
      { desc = "[diegoulloao]", group = "DashboardShortCut" },
    },
  },
  hide = {
    statusline = false,
  },
})
