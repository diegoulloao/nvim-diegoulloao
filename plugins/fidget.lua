-- require fidget
return {
  "j-hui/fidget.nvim",
  version = "legacy",
  config = function()
    -- custom config
    require("fidget").setup({
      text = {
        spinner = "dots", -- dots | line | dots_scrolling | star
      },
      window = {
        border = "rounded", -- single | double | shadow | rounded
      },
      notification = {
        window = {
          normal_hl = "MsgArea",
        },
      },
      sources = {
        ["null-ls"] = {
          ignore = true,
        },
      },
    })
  end
}
