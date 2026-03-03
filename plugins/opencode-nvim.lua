return {
  "nickjvandyke/opencode.nvim",
  version = "*", -- latest stable release
  dependencies = { "folke/snacks.nvim" },
  keys = {
    {
      "<leader>as",
      function()
        require("opencode").ask("@this: ", { submit = true })
      end,
      desc = "Ask opencode",
      mode = { "n", "x" },
    },
  },
}
