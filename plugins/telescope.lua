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
    sorting_strategy = "ascending",
    prompt_prefix = " > ",
    results_title = "",
    layout_config = {
      prompt_position = "top",
      width = 0.7,
      height = 0.5,
    },
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
  },
})

-- use fzf
telescope.load_extension("fzf")

-- projects extension integration for telescope
telescope.load_extension("projects")
