-- require noice
local status, noice = pcall(require, "noice")
if not status then
  return
end

-- custom setup
noice.setup({
  lsp = {
    -- disable lsp progress -> using fidget instead
    progress = {
      enabled = false,
    },

    -- override markdown rendering so that **cmp** and other plugins use Treesitter
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
  messages = {
    -- disable all status line messages
    -- enabled = false,
  },
  cmdline = {
    format = {
      -- fix lost search icons
      search_down = { icon = " " },
      search_up = { icon = " " },
    },
    opts = {
      -- vertically centered
      -- position = "50%",
    },
  },
  -- filters
  routes = {
    {
      -- lspsaga: avoids annoying messages in notify
      filter = {
        event = "notify",
        find = "No information available",
      },
      opts = { skip = true },
    },
    {
      -- avoids annoying messages in notify
      filter = {
        event = "msg_show",
        any = {
          { find = "%d+L, %d+B" },
          { find = "; after #%d+" },
          { find = "; before #%d+" },
          { find = "%d lines yanked" },
          { find = "%d more lines" },
          { find = "%d line less" },
          { find = "%d fewer lines" },
          { find = "%d lines >ed %d time" },
          { find = "%d lines <ed %d time" },
          { find = "%d fewer lines" },
          { find = "search hit BOTTOM, continuing at TOP" },
        },
      },
      opts = { skip = true },
    },
    {
      -- display annoying message in mini view
      filter = {
        event = "msg_show",
        any = {
          { find = "Pattern not found:" },
          { find = "Already at newest change" },
          { find = "Already at oldest change" },
        },
      },
      view = "mini",
    },
  },
})
