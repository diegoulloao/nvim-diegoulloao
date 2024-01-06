-- lazy
require("diegoulloao.lazy")

-- core
require("diegoulloao.core.options")
require("diegoulloao.core.config")
require("diegoulloao.core.keymaps.general")

-- TODO: change colorscheme logic
-- require("diegoulloao.core.colorscheme")

-- require lazy in safe mode
local status, lazy = pcall(require, "lazy")
if not status then
  return vim.notify("lazy is not installed.")
end

-- plugins setup
lazy.setup({
  -- general
  "nvim-lua/plenary.nvim",                                        -- lua functions library
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- fzf sorter for telescope
  "nvim-tree/nvim-web-devicons",                                  -- devicons
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },                        -- markdown preview

  "almo7aya/openingh.nvim", -- open files in github

  -- snippets
  "L3MON4D3/LuaSnip",                                                    -- snippet engine
  { "saadparwaiz1/cmp_luasnip",                 dependencies = "L3MON4D3/LuaSnip" }, -- for snippets autocompletion
  { "rafamadriz/friendly-snippets",             dependencies = "L3MON4D3/LuaSnip" }, -- useful snippets

  "gpanders/editorconfig.nvim",                                          -- editor config

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },                                                              -- tmux navigation

  "szw/vim-maximizer",                                            -- maximizes and restores the current pane
  "tpope/vim-surround",                                           -- surrounds words inside characters and replaces them
  { "windwp/nvim-ts-autotag",             dependencies = "nvim-treesitter" }, -- auto close html tags

  -- cmp
  "hrsh7th/cmp-buffer",   -- words completion for the current buffer
  "hrsh7th/cmp-path",     -- path completion
  "onsails/lspkind.nvim", -- vscode like icons for the cmp autocompletion window
  "hrsh7th/cmp-nvim-lsp", -- lsp servers integration with cmp autocompletion

  { import = "diegoulloao.themes.gruvbox" },
  { import = "diegoulloao.plugins" },

  -- themes
  -- TODO: migrate ayu theme
  --"Shatur/neovim-ayu",
})
