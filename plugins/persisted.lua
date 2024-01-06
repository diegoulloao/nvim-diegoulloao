return {
  "olimorris/persisted.nvim",
  config = function()
    -- custom setup
    require("persisted").setup({
      autosave = false,
      -- allow multiple sessions files for a project using branches
      use_git_branch = true,
      ignored_dirs = {
        -- "~/.config/nvim",
      },
    })
  end
}
