-- require nvim-autopairs
local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return
end

-- require nvim-autopairs completion
local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
  return
end

-- require cmp
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
  return
end

-- custom setup: treesitter compatibility
autopairs.setup({
  check_ts = true, -- enable
  ts_config = {
    lua = { "string" }, -- don't add pairs in lua string treesitter nodes
    javascript = { "template_string" }, -- don't add pairs in javascript template string treesitter nodes
    java = false, -- don't check treesitter on java
  },
})

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
