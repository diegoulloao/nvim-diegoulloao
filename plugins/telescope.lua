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
    results_title = "",
    prompt_prefix = " > ",
    layout_config = {
      prompt_position = "top",
      width = 0.8,
      height = 0.8,
    },
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
  },
  pickers = {
    find_files = {
      layout_config = {
        width = 0.6,
        height = 0.5,
      },
    },
    live_grep = {
      prompt_title = "Global Search",
      results_title = "Results",
      layout_config = {
        prompt_position = "bottom",
      },
    },
    current_buffer_fuzzy_find = {
      prompt_title = "Search",
      results_title = "Results",
      layout_config = {
        prompt_position = "bottom",
      },
    },
    git_bcommits = {
      layout_config = {
        width = 0.7,
        height = 0.6,
      },
    },
    git_commits = {
      layout_config = {
        width = 0.7,
        height = 0.6,
      },
    },
    git_status = {
      layout_config = {
        width = 0.6,
        height = 0.5,
      },
    },
  },
})

-- use fzf
telescope.load_extension("fzf")

-- projects extension integration for telescope
telescope.load_extension("projects")
