--[[
  -- NOTE: RECOMMENDED SETTINGS
  -- Terminal scheme: Gruvbox Dark
  -- Font: Geist Mono
  -- Size: 15
  -- Line height: 137
  -- Letter spacing: 100
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

  -- general
  vim.cmd([[ hi! NormalFloat guibg=#282828 ]]) -- fixes git blame float bg

  -- diagnostics
  vim.cmd([[ hi! DiagnosticVirtualTextError guibg=#1d2021 guifg=#e85741 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextWarn guibg=#1d2021 guifg=#f1bf50 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextOk guibg=#1d2021 guifg=#b8bb26 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextInfo guibg=#1d2021 guifg=#83a598 ]])
  vim.cmd([[ hi! DiagnosticVirtualTextHint guibg=#1d2021 guifg=#8ec07c ]])

  -- treesitter
  vim.cmd([[ hi clear link TreesitterContext NormalFloat ]])
  vim.cmd([[ hi! TreesitterContext guibg=#32302f ]])

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

  -- @only nvchad cmp style
  if settings.cmp_style == "nvchad" then
    -- cmp
    vim.cmd([[
      hi! PmenuSel guibg=#32302f guifg=NONE
      hi! Pmenu guibg=#32302f guifg=#d5c4a1
      hi! CmpItemAbbrDeprecated guibg=#32302f guifg=#83a598 gui=strikethrough
      hi! CmpItemKindField guibg=#32302f guifg=#bdae93
      hi! CmpItemKindProperty guibg=#32302f guifg=#fbf1c7
      hi! CmpItemKindEvent guibg=#32302f guifg=#e1dbac
      hi! CmpItemKindText guibg=#32302f guifg=#83a598
      hi! CmpItemKindEnum guibg=#32302f guifg=#076678
      hi! CmpItemKindKeyword guibg=#32302f guifg=#8ec07c
      hi! CmpItemKindConstant guibg=#32302f guifg=#665c54
      hi! CmpItemKindConstructor guibg=#32302f guifg=#98971a
      hi! CmpItemKindReference guibg=#32302f guifg=#b16286
      hi! CmpItemKindFunction guibg=#32302f guifg=#fe8019
      hi! CmpItemKindStruct guibg=#32302f guifg=#d79921
      hi! CmpItemKindClass guibg=#32302f guifg=#b16286
      hi! CmpItemKindModule guibg=#32302f guifg=#bdae93
      hi! CmpItemKindOperator guibg=#32302f guifg=#fabd2f
      hi! CmpItemKindVariable guibg=#32302f guifg=#8ec07c
      hi! CmpItemKindFile guibg=#32302f guifg=#fabd2f
      hi! CmpItemKindUnit guibg=#32302f guifg=#427b58
      hi! CmpItemKindSnippet guibg=#32302f guifg=#458588
      hi! CmpItemKindFolder guibg=#32302f guifg=#fb4934
      hi! CmpItemKindMethod guibg=#32302f guifg=#d79921
      hi! CmpItemKindValue guibg=#32302f guifg=#fc9487
      hi! CmpItemKindEnumMember guibg=#32302f guifg=#d65d0e
      hi! CmpItemKindInterface guibg=#32302f guifg=#8ec07c
      hi! CmpItemKindColor guibg=#32302f guifg=#d3d6a5
      hi! CmpItemKindTypeParameter guibg=#32302f guifg=#cecb94
    ]])
  end
end

-- set dark background
vim.opt.background = "dark"

return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  enabled = settings.theme == "gruvbox",
  config = function()
    -- custom setup
    require("gruvbox").setup({
      italic = {
        strings = false,
      },
      contrast = "", -- options: soft|hard|empty
    })

    -- set colorscheme
    vim.cmd([[ colorscheme gruvbox ]])

    -- set hi groups
    set_hi_groups()
  end,
}
