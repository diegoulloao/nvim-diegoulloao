return {
  "olimorris/persisted.nvim",
  event = "VeryLazy",
  opts = {
    autosave = false,
    -- allow multiple sessions files for a project using branches
    use_git_branch = true,
    ignored_dirs = {
      "~/.config/nvim",
    },
  },
}
