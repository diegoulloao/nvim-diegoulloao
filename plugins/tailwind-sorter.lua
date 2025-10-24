return {
  "laytan/tailwind-sorter.nvim",
  enabled = false,
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
  build = "cd formatter && npm i && npm run build",
  opts = {
    on_save_enabled = true,
    on_save_pattern = { "*.html", "*.jsx", "*.tsx", "*.svelte", "*.astro" },
  },
}
