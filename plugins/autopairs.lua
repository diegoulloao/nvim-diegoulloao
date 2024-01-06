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

-- plugin
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- require autopairs
    local autopairs = require("nvim-autopairs")

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
    require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())

    -- require nvim-autopairs rule
    local autopairs_rule = require("nvim-autopairs.rule")

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
  end,
}
