--[[
  -- Gruvbox Palette
  #1d2021
  #282828
  #32302f
  #3c3836
  #504945
  #665c54
  #7c6f64
  #f9f5d7
  #fbf1c7
  #f2e5bc
  #ebdbb2
  #d5c4a1
  #bdae93
  #a89984
  #fb4934
  #b8bb26
  #fabd2f
  #83a598
  #d3869b
  #8ec07c
  #fe8019
  #cc241d
  #98971a
  #d79921
  #458588
  #b16286
  #689d6a
  #d65d0e
  #9d0006
  #79740e
  #b57614
  #076678
  #8f3f71
  #427b58
  #af3a03
  #792329
  #722529
  #7b2c2f
  #fc9690
  #fc9487
  #f78b7f
  #5a633a
  #62693e
  #686d43
  #d3d6a5
  #d5d39b
  #cecb94
  #3e4934
  #49503b
  #525742
  #e6e9c1
  #e8e5b5
  #e1dbac
  #928374
]]

-- settings
local settings = require("diegoulloao.settings")

-- hi groups
local set_hi_groups = function()
  -- @fix
  -- git signs column bg
  vim.cmd([[ hi! SignColumn guibg=NONE ]])

  -- @fix
  -- winbar bg
  vim.cmd([[ hi! WinBar guibg=NONE ]])
  vim.cmd([[ hi! WinBarNC guibg=NONE ]])

  -- @fix
  -- noice cmd line bg
  vim.cmd([[ hi! NoiceCmdlinePopup guibg=#282828 ]])
  vim.cmd([[ hi! NoiceCmdlinePopupBorder guibg=#282828 ]])

  -- @fix
  -- diagnostics sign bg
  vim.cmd([[ hi! DiagnosticSignOk guifg=#b8bb26 guibg=#282828 ]])
  vim.cmd([[ hi! DiagnosticSignInfo guifg=#83a598 guibg=#282828 ]])
  vim.cmd([[ hi! DiagnosticSignWarn guifg=#fabd2f guibg=#282828 ]])
  vim.cmd([[ hi! DiagnosticSignError guifg=#fb4934 guibg=#282828 ]])

  -- @fix
  -- lsp saga bg
  vim.cmd([[ hi! SagaNormal guibg=#282828 ]])

  -- @fix
  -- bufferline
  vim.cmd([[ hi! BufferLineOffsetSeparator guibg=#282828 guifg=#665c54 ]])

  -- @fix
  -- general
  vim.cmd([[ hi! NormalFloat guibg=#282828 ]]) -- fixes git blame float bg
  vim.cmd([[ hi! FoldColumn guibg=#282828 ]]) -- fold column bg on diff

  -- diagnostics
  vim.cmd([[ hi! DiagnosticVirtualTextError guibg=#1d2021 guifg=#e85741 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextWarn guibg=#1d2021 guifg=#f1bf50 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextOk guibg=#1d2021 guifg=#b8bb26 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextInfo guibg=#1d2021 guifg=#83a598 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextHint guibg=#1d2021 guifg=#8ec07c ]])

  -- treesitter
  vim.cmd([[ hi clear link TreesitterContext NormalFloat ]])
  vim.cmd([[ hi! TreesitterContext guibg=#32302f ]])

  -- lualine
  vim.cmd([[ hi! lualine_a_insert guibg=#83a598 ]])
  vim.cmd([[ hi! lualine_b_insert guibg=#504945 ]])
  vim.cmd([[ hi! lualine_c_insert guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_c_visual guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_c_command guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_c_filename_insert guibg=#3c3836 guifg=#a89984 ]])
  vim.cmd([[ hi! lualine_c_filename_visual guibg=#3c3836 guifg=#a89984 ]])
  vim.cmd([[ hi! lualine_c_filename_command guibg=#3c3836 guifg=#a89984 ]])
  vim.cmd([[ hi! _lualine_c_filetype guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_added_insert guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_modified_insert guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_removed_insert guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_added_visual guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_modified_visual guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_removed_visual guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_added_command guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_modified_command guibg=#3c3836 ]])
  vim.cmd([[ hi! lualine_x_diff_removed_command guibg=#3c3836 ]])

  -- telescope
  vim.cmd([[ hi! TelescopeNormal guibg=#32302f ]])
  vim.cmd([[ hi! TelescopeResultsNormal guibg=#32302f ]])
  vim.cmd([[ hi! TelescopeResultsBorder guibg=#32302f guifg=#32302f ]])
  vim.cmd([[ hi! TelescopePromptNormal guibg=#3c3836 ]])
  vim.cmd([[ hi! TelescopePromptBorder guibg=#3c3836 guifg=#3c3836 ]])
  vim.cmd([[ hi! TelescopePromptTitle guibg=#d65d0e guifg=#3c3836 gui=bold ]])
  vim.cmd([[ hi! TelescopePromptPrefix guifg=#d65d0e ]])
  vim.cmd([[ hi! TelescopePromptCounter guifg=#83a598 ]])
  vim.cmd([[ hi! TelescopeSelection guifg=#d65d0e gui=bold ]])
  vim.cmd([[ hi! TelescopeSelectionCaret guifg=#d65d0e ]])

  -- toggleterm
  vim.cmd([[ hi ToogleTermNormal guibg=#1d2021 ]])
  vim.cmd([[ hi ToggleTermFloatBorder guibg=#1d2021 guifg=#1d2021 ]])
  vim.cmd([[ hi ToogleTermNormalFloat guibg=#1d2021 ]])

  -- nvim-cmp
  vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])

  -- selection color
  vim.cmd([[ hi! Visual guibg=#3c3836 gui=none ]])

  -- lsp saga
  vim.cmd([[ hi! SagaVirtLine guifg=#3c3836 ]])

  -- gitsigns
  vim.cmd([[ hi! GitSignsCurrentLineBlame guifg=#7c6f64 ]])

  -- nvim-tree
  vim.cmd([[ hi! NvimTreeFolderArrowOpen guifg=#7c6f64 ]])
  vim.cmd([[ hi! NvimTreeFolderArrowClosed guifg=#7c6f64 ]])

  -- dashboard
  vim.cmd([[ hi! DashboardHeader guifg=#d65d0e ]])

  -- @only
  -- nvchad cmp style
  if settings.cmp_style == "nvchad" then
    -- cmp
    vim.cmd([[ hi! PmenuSel guibg=#32302f guifg=NONE ]])
    vim.cmd([[ hi! Pmenu guibg=#32302f guifg=#d5c4a1 ]])
    vim.cmd([[ hi! CmpItemAbbrDeprecated guibg=#32302f guifg=#83a598 gui=strikethrough ]])
    vim.cmd([[ hi! CmpItemKindField guibg=#32302f guifg=#bdae93 ]])
    vim.cmd([[ hi! CmpItemKindProperty guibg=#32302f guifg=#fbf1c7 ]])
    vim.cmd([[ hi! CmpItemKindEvent guibg=#32302f guifg=#e1dbac ]])
    vim.cmd([[ hi! CmpItemKindText guibg=#32302f guifg=#83a598 ]])
    vim.cmd([[ hi! CmpItemKindEnum guibg=#32302f guifg=#076678 ]])
    vim.cmd([[ hi! CmpItemKindKeyword guibg=#32302f guifg=#8ec07c ]])
    vim.cmd([[ hi! CmpItemKindConstant guibg=#32302f guifg=#665c54 ]])
    vim.cmd([[ hi! CmpItemKindConstructor guibg=#32302f guifg=#98971a ]])
    vim.cmd([[ hi! CmpItemKindReference guibg=#32302f guifg=#b16286 ]])
    vim.cmd([[ hi! CmpItemKindFunction guibg=#32302f guifg=#fe8019 ]])
    vim.cmd([[ hi! CmpItemKindStruct guibg=#32302f guifg=#d79921 ]])
    vim.cmd([[ hi! CmpItemKindClass guibg=#32302f guifg=#b16286 ]])
    vim.cmd([[ hi! CmpItemKindModule guibg=#32302f guifg=#bdae93 ]])
    vim.cmd([[ hi! CmpItemKindOperator guibg=#32302f guifg=#fabd2f ]])
    vim.cmd([[ hi! CmpItemKindVariable guibg=#32302f guifg=#8ec07c ]])
    vim.cmd([[ hi! CmpItemKindFile guibg=#32302f guifg=#fabd2f ]])
    vim.cmd([[ hi! CmpItemKindUnit guibg=#32302f guifg=#427b58 ]])
    vim.cmd([[ hi! CmpItemKindSnippet guibg=#32302f guifg=#458588 ]])
    vim.cmd([[ hi! CmpItemKindFolder guibg=#32302f guifg=#fb4934 ]])
    vim.cmd([[ hi! CmpItemKindMethod guibg=#32302f guifg=#d79921 ]])
    vim.cmd([[ hi! CmpItemKindValue guibg=#32302f guifg=#fc9487 ]])
    vim.cmd([[ hi! CmpItemKindEnumMember guibg=#32302f guifg=#d65d0e ]])
    vim.cmd([[ hi! CmpItemKindInterface guibg=#32302f guifg=#8ec07c ]])
    vim.cmd([[ hi! CmpItemKindColor guibg=#32302f guifg=#d3d6a5 ]])
    vim.cmd([[ hi! CmpItemKindTypeParameter guibg=#32302f guifg=#cecb94 ]])
  end
end

-- export
return set_hi_groups
