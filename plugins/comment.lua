return {
  "numToStr/Comment.nvim",
  lazy = false,
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- ts-context commentstring
    local context_commentstring_integration = require("ts_context_commentstring.integrations.comment_nvim")

    -- custom setup
    require("Comment").setup({
      -- toggle mappings in normal mode
      toggler = {
        -- line comment toggle keymap
        line = "<leader>c<leader>",
      },
      -- opleader mappings in visual mode
      opleader = {
        -- multiline comment toogle keymap
        block = "<leader>c<leader>",
      },
      -- nvim-ts-context-commentstring integration
      pre_hook = context_commentstring_integration.create_pre_hook(),
    })
  end,
}
