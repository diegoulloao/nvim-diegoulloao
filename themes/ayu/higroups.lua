--------
-- hi groups: ayu theme
-- @param palette table
-- @return nil
local function hi_groups(palette)
  -- alias for formatting
  local f = string.format

  -- line number
  vim.cmd(f([[ hi! LineNr guifg=%s ]], palette.dark4))

  -- comments color
  vim.cmd(f([[ hi! Comment guifg=%s ]], palette.dimmed2))

  -- selection color
  vim.cmd(f([[ hi! Visual guibg=%s gui=none ]], palette.dark3))

  -- general border color
  vim.cmd(f([[ hi! FloatBorder guibg=NONE guifg=%s ]], palette.secondary))

  -- indent blankline
  vim.cmd(f([[ hi! IblIndent  guifg=%s gui=nocombine ]], palette.dark2))

  -- nvim-tree arrows color
  vim.cmd(f([[ hi! NvimTreeIndentMarker guifg=%s ]], palette.dark2))
  vim.cmd(f([[ hi! NvimTreeFolderArrowClosed guifg=%s gui=bold ]], palette.dimmed))
  vim.cmd(f([[ hi! NvimTreeFolderArrowOpen guifg=%s gui=bold ]], palette.dimmed))

  -- nvim-cmp custom colors
  vim.cmd(f([[ hi! CursorLineBG guibg=%s guifg=%s ]], palette.dark, palette.light))

  -- statusline msg area text color
  vim.cmd(f([[ hi! MsgArea guifg=%s ]], palette.dimmed2))

  -- nvim-cmp custom colors
  vim.cmd(f([[ hi! BorderBG guibg=NONE guifg=%s ]], palette.primary))
  vim.cmd(f([[ hi! CursorLineBG guibg=%s guifg=%s ]], palette.primary, palette.dark))

  -- telescope custom colors
  vim.cmd(f([[ hi! TelescopeNormal guifg=%s ]], palette.dimmed3))
  vim.cmd(f([[ hi! TelescopePromptNormal guifg=%s ]], palette.secondary))
  vim.cmd(f([[ hi! TelescopePromptBorder guifg=%s]], palette.primary))
  vim.cmd(f([[ hi! TelescopeSelection guibg=%s guifg=%s ]], palette.dark3, palette.dimmed))
  vim.cmd(f([[ hi! TelescopeSelectionCaret guifg=%s ]], palette.primary))
  vim.cmd(f([[ hi! TelescopeMatching gui=bold guifg=%s ]], palette.primary))
  vim.cmd(f([[ hi! TelescopePromptTitle guibg=%s guifg=%s ]], palette.primary, palette.dark))
  vim.cmd(f([[ hi! TelescopeResultsTitle guibg=%s guifg=%s ]], palette.dimmed3, palette.dark))
  vim.cmd(f([[ hi! TelescopeResultsBorder guifg=%s ]], palette.dark4))

  -- lsp saga colors
  vim.cmd(f([[ hi! SagaBorder guifg=%s]], palette.primary))

  -- dashboard
  vim.cmd(f([[ hi! DashboardHeader guifg=%s ]], palette.primary))
  vim.cmd(f([[ hi! DashboardShortCut guifg=%s ]], palette.accent))
  vim.cmd(f([[ hi! DashboardFooter guifg=%s ]], palette.primary))
  vim.cmd(f([[ hi! DashboardFiles guifg=%s ]], palette.secondary))
  vim.cmd(f([[ hi! DashboardRecentTitle guifg=%s ]], palette.dimmed4))
  vim.cmd(f([[ hi! DashboardRecentProject guifg=%s ]], palette.dimmed4))
  vim.cmd(f([[ hi! DashboardProjectIcon guifg=%s ]], palette.accent))

  -- null-ls
  vim.cmd(f([[ hi! NullLsInfoBorder guifg=%s ]], palette.primary))

  -- treesitter context border bottom color
  vim.cmd(f([[ hi! TreesitterContextSeparator gui=none guifg=%s ]], palette.dark4))

  -- mini.indentscope line color
  vim.cmd(f([[ hi! MiniIndentscopeSymbol guifg=%s ]], palette.dark4))
end

return hi_groups
