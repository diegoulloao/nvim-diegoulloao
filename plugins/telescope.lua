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

-- use fzf
telescope.load_extension("fzf")

-- projects extension integration for telescope
telescope.load_extension("projects")

-- persisted extension for session management
telescope.load_extension("persisted")

-- custom setup
telescope.setup({
  defaults = {
    layout_strategy = "vertical", -- vertical layout
    sorting_strategy = "ascending",
    results_title = "",
    prompt_prefix = " > ",
    layout_config = {
      prompt_position = "top",
      width = 0.7,
      height = 0.6,
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
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
    },
    live_grep = {
      previewer = false,
      prompt_title = "Global Search",
      results_title = "Results",
      layout_config = {
        prompt_position = "top",
        width = 0.7,
        height = 0.6,
      },
    },
    current_buffer_fuzzy_find = {
      previewer = false,
      prompt_title = "Search",
      results_title = "Results",
      layout_config = {
        prompt_position = "top",
        width = 0.7,
        height = 0.6,
      },
    },
    buffers = {
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
    },
    git_bcommits = {
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.7,
        height = 0.6,
      },
    },
    git_commits = {
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.7,
        height = 0.6,
      },
    },
    git_status = {
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
    },
    git_branches = {
      previewer = false,
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
      -- overwrite default behavior of checking out to dettached HEAD
      mappings = {
        i = { ["<cr>"] = actions.git_switch_branch },
      },
    },
    diagnostics = {
      previewer = false,
      prompt_title = "Diagnostics",
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
    },
  },
  extensions = {
    persisted = {
      layout_config = {
        prompt_position = "top",
        width = 0.6,
        height = 0.5,
      },
    },
  },
})
