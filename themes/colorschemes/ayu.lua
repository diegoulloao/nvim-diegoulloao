--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: --
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 137
  -- Letter spacing: 100
]]

-- settings
local settings = require("diegoulloao.settings")

-- hi groups
local set_hi_groups = function()
  -- line number
  vim.cmd([[ hi! LineNr guifg=#253340 ]])

  -- comments color
  vim.cmd([[ hi! Comment guifg=#393F4D ]])

  -- selection color
  vim.cmd([[ hi! Visual guibg=#151A1E gui=none ]])

  -- general border color
  vim.cmd([[ hi! FloatBorder guibg=NONE guifg=#59C2FF ]])

  -- indent blankline
  vim.cmd([[ hi! IblIndent  guifg=#14191F gui=nocombine ]])

  -- nvim-tree arrows color
  vim.cmd([[ hi! NvimTreeIndentMarker guifg=#14191F ]])
  vim.cmd([[ hi! NvimTreeFolderArrowClosed guifg=#ACB4C2 gui=bold ]])
  vim.cmd([[ hi! NvimTreeFolderArrowOpen guifg=#ACB4C2 gui=bold ]])

  -- nvim-cmp custom colors
  vim.cmd([[ hi! CursorLineBG guibg=#000000 guifg=#FFFFFF ]])

  -- statusline msg area text color
  vim.cmd([[ hi! MsgArea guifg=#393F4D ]])

  -- nvim-cmp custom colors
  vim.cmd([[ hi! BorderBG guibg=NONE guifg=#FFB454 ]])
  vim.cmd([[ hi! CursorLineBG guibg=#FFB454 guifg=#000000 ]])

  -- telescope custom colors
  vim.cmd([[ hi! TelescopeNormal guifg=#3E4B59 ]])
  vim.cmd([[ hi! TelescopePromptNormal guifg=#59C2FF ]])
  vim.cmd([[ hi! TelescopePromptBorder guifg=#FFB454]])
  vim.cmd([[ hi! TelescopeSelection guibg=#151A1E guifg=#ACB4C2 ]])
  vim.cmd([[ hi! TelescopeSelectionCaret guifg=#FFB454 ]])
  vim.cmd([[ hi! TelescopeMatching gui=bold guifg=#FFB454 ]])
  vim.cmd([[ hi! TelescopePromptTitle guibg=#FFB454 guifg=#000000 ]])
  vim.cmd([[ hi! TelescopeResultsTitle guibg=#3E4B59 guifg=#000000 ]])
  vim.cmd([[ hi! TelescopeResultsBorder guifg=#253340 ]])

  -- lsp saga colors
  vim.cmd([[ hi! SagaBorder guifg=#FFB454]])

  -- dashboard
  vim.cmd([[ hi! DashboardHeader guifg=#FFB454 ]])
  vim.cmd([[ hi! DashboardShortCut guifg=#C2D94C ]])
  vim.cmd([[ hi! DashboardFooter guifg=#FFB454 ]])
  vim.cmd([[ hi! DashboardFiles guifg=#59C2FF ]])
  vim.cmd([[ hi! DashboardRecentTitle guifg=#4D5566 ]])
  vim.cmd([[ hi! DashboardRecentProject guifg=#4D5566 ]])
  vim.cmd([[ hi! DashboardProjectIcon guifg=#C2D94C ]])

  -- null-ls
  vim.cmd([[ hi! NullLsInfoBorder guifg=#FFB454 ]])

  -- treesitter context border bottom color
  vim.cmd([[ hi! TreesitterContextSeparator gui=none guifg=#253340 ]])

  -- mini.indentscope line color
  vim.cmd([[ hi! MiniIndentscopeSymbol guifg=#253340 ]])

  -- toggleterm
  vim.cmd([[ hi ToggleTermFloatBorder guifg=#59C2FF ]])
end

-- set dark background
vim.opt.background = "dark"

return {
  "Shatur/neovim-ayu",
  lazy = false,
  priority = 1000,
  enabled = settings.theme == "ayu",
  config = function()
    -- require ayu
    local ayu = require("ayu")

    -- custom setup
    ayu.setup({
      mirage = false, -- set true to use 'mirage' version instead of 'dark'
    })

    -- apply colorscheme
    ayu.colorscheme()

    -- highlight groups
    set_hi_groups()
  end,
}
