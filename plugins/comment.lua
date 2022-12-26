-- require comment
local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

local context_commentstring_integration_status, context_commentstring_integration =
  pcall(require, "ts_context_commentstring.integrations.comment_nvim")
if not context_commentstring_integration_status then
  return
end

-- custom setup
comment.setup({
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
