-- require comment
local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

-- custom setup
comment.setup({
  -- toggle mappings in normal mode
  toggler = {
    -- line comment toggle keymap
    line = "<leader>c<leader>",
    -- TODO: add block keymap
    -- block = "<leader>v<leader>",
  },
})
