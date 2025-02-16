return {
  "github/copilot.vim",
  event = { "InsertEnter" },
  init = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_workspace_folders = { vim.fn.getcwd() }
  end,
}
