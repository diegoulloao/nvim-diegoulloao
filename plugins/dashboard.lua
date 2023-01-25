-- require dashboard
local status, dashboard = pcall(require, "dashboard")
if not status then
  return
end

-- custom config
dashboard.setup({
  config = {
    shortcut = {
      { desc = "[ Github]", group = "DashboardShortCut" },
      { desc = "[ diegoulloao]", group = "DashboardShortCut" },
    },
  },
})
