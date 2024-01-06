return {
 "williamboman/mason.nvim",
  config = function()
    -- custom config
    require("mason").setup({
      ui = {
        border = "single",
        width = 0.8, -- range 0,1
        height = 0.8, -- range 0,1
      },
    })
  end
}
