return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- default setup
    require("todo-comments").setup()
  end,
}
