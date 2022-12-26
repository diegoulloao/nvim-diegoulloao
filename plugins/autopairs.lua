-- require nvim-autopairs
local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return
end

-- require nvim-autopairs rule
local autopairs_rule_status, autopairs_rule = pcall(require, "nvim-autopairs.rule")
if not autopairs_rule_status then
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

-- brackets list
local brackets = { { "(", ")" }, { "[", "]" }, { "{", "}" } }

-- custom rule: add space between parentheses
local add_space_between_parentheses = function(opts)
  local pair = opts.line:sub(opts.col - 1, opts.col)

  return vim.tbl_contains({
    brackets[1][1] .. brackets[1][2],
    brackets[2][1] .. brackets[2][2],
    brackets[3][1] .. brackets[3][2],
  }, pair)
end

-- custom rule: omit add parentheses before closing
local omit_add_parentheses_before_closing = function(bracket)
  return function(opts)
    return opts.prev_char:match(".%" .. bracket) ~= nil
  end
end

-- false returner
local return_false = function()
  return false
end

-- add rule: add space between parentheses
autopairs.add_rules({
  autopairs_rule(" ", " "):with_pair(add_space_between_parentheses),
})

-- add rules: omit add parentheses before closing
for _, bracket in pairs(brackets) do
  autopairs.add_rules({
    autopairs_rule(bracket[1] .. " ", " " .. bracket[2])
      :with_pair(return_false)
      :with_move(omit_add_parentheses_before_closing(bracket[2]))
      :use_key(bracket[2]),
  })
end
