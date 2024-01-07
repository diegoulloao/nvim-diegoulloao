return {
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- fzf sorter for telescope
  "hrsh7th/cmp-nvim-lsp", -- lsp servers integration with cmp autocompletion
  "onsails/lspkind.nvim", -- vscode like icons for the cmp autocompletion window
  "L3MON4D3/LuaSnip", -- snippet engine
  "nvim-lua/plenary.nvim", -- lua functions library
  "gpanders/editorconfig.nvim", -- editor config
  { "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter" }, -- auto close html tags
  { "nvim-tree/nvim-web-devicons", lazy = true }, -- devicons
}
