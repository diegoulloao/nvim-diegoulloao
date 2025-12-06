return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "rafamadriz/friendly-snippets",
    { "mlaursen/vim-react-snippets", opts = {} },
  },
  build = "make install_jsregexp",
}
