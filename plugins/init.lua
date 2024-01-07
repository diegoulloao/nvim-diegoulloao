return {
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true }, -- fzf sorter for telescope
  { "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" }, -- lsp servers integration with cmp autocompletion
  { "onsails/lspkind.nvim", event = { "BufReadPre", "BufNewFile" } }, -- vscode like icons for the cmp autocompletion window
  { "L3MON4D3/LuaSnip", event = { "BufReadPre", "BufNewFile" } }, -- snippet engine
  { "nvim-lua/plenary.nvim", event = { "BufReadPre", "BufNewFile" } }, -- lua functions library
  { "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter", event = "InsertEnter" }, -- auto close html tags
  { "almo7aya/openingh.nvim", cmd = { "OpenInGHFile", "OpenInGHFileLines" } }, -- open buffer in github
  { "nvim-tree/nvim-web-devicons", lazy = true }, -- devicons
  { "tpope/vim-surround", event = { "BufReadPre", "BufNewFile" } }, -- surround words by characters
}
