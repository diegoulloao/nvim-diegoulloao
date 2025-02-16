return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "rafamadriz/friendly-snippets" },
  build = "make install_jsregexp",
}
