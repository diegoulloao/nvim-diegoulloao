-- require dashboard
local status, dashboard = pcall(require, "dashboard")
if not status then
  return
end

-- custom config
dashboard.custom_center = {
  {
    icon = "  ",
    desc = "Recent projects                         ",
    shortcut = "SPC s l",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently opened files                   ",
    action = "Telescope oldfiles",
    shortcut = "SPC f h",
  },
  {
    icon = "  ",
    desc = "Open Personal dotfiles                  ",
    action = "edit ~/.config/nvim/lua/diegoulloao",
    shortcut = "SPC f d",
  },
  {
    icon = "  ",
    desc = "Find File                               ",
    action = "Telescope find_files find_command=rg,--hidden,--files",
    shortcut = "SPC f f",
  },
  {
    icon = "  ",
    desc = "Find word                               ",
    action = "Telescope live_grep",
    shortcut = "SPC f w",
  },
  {
    icon = "  ",
    desc = "File Browser                            ",
    action = "NvimTreeOpen",
    shortcut = "SPC f b",
  },
}
