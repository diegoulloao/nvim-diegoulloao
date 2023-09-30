-- require persisted
local status, persisted = pcall(require, "persisted")
if not status then
  return
end

-- custom setup
persisted.setup({
  autosave = false,
  -- allow multiple sessions files for a project using branches
  use_git_branch = true,
  ignored_dirs = {
    "~/.config/nvim",
  },
})
