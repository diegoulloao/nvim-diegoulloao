-- require telescope
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- require telescope actions
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- custom setup
telescope.setup({
  defaults = {
    layout_strategy = "vertical", -- vertical layout
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
  },
})

telescope.load_extension("fzf")
