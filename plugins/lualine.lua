-- require custom extensions
local extensions = require("diegoulloao.extensions.lualine")

-- require settings
local settings = require("diegoulloao.settings")

-- theme
local get_lualine_theme = function()
  -- require lualine theme
  local status, lualine_theme = pcall(require, "lualine.themes." .. settings.theme)
  if not status then
    return require("lualine.themes.auto")
  end

  -- export lualine theme
  return lualine_theme
end

-- customized separators
local lualine_separators = {
  ["rect"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["triangle"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["semitriangle"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
  ["curve"] = {
    section = { left = "", right = "" },
    component = { left = "", right = "" },
  },
}

-- current separator
local separators = lualine_separators[settings.lualine_separator]

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "folke/noice.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- require noice
    local noice = require("noice")

    -- require lazy extensions
    local lazy_status = require("lazy.status")

    -- custom setup
    require("lualine").setup({
      options = {
        theme = get_lualine_theme(),
        globalstatus = true,
        component_separators = separators.component,
        section_separators = separators.section,
        disabled_filetypes = { "dashboard", "packer", "help" },
        ignore_focus = {}, -- add filetypes inside
      },
      -- man:124 for sections doc
      sections = {
        lualine_a = { "progress" }, -- disable vim mode viewer
        lualine_b = {
          {
            "branch",
            icon = "", -- disable icon
            padding = { left = 1, right = 1 },
          },
        },
        lualine_c = {
          -- filetype icon
          {
            "filetype",
            icon_only = true,
            padding = { left = 2, right = 0 },
            color = "_lualine_c_filetype",
          },
          -- filename
          {
            "filename",
            file_status = true, -- display file status (read only, modified)
            path = 1,           -- 0: just name, 1: relative path, 2: absolute path, 3: absolute path with ~ as home directory
            symbols = {
              unnamed = "",
              readonly = "",
              modified = "",
            },
            padding = { left = 1 },
            color = { gui = "bold" },
          },
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            -- color = { fg = "" },
          },
          -- number of changes in file
          {
            "diff",
            colored = true,
            padding = { right = 2 },
            symbols = {
              added = "+",
              modified = "|",
              removed = "-",
            },
          },
          -- status like @recording
          {
            noice.api.statusline.mode.get,
            cond = noice.api.statusline.mode.has,
            -- color = { fg = "" },
          },
          -- "encoding",
          -- "filetype",
          -- "bo:filetype",
          -- "fileformat",
        },
        lualine_y = {},
        lualine_z = { "location" },
      },
      extensions = {
        "nvim-tree",
        "toggleterm",
        "mason",
        "fzf",
        "quickfix",
        "man",
        "lazy",
        extensions.telescope,
        extensions.lspinfo,
        extensions.saga,
        extensions.btw,
      },
    })
  end,
}
