-- for conciseness
local keymap = vim.keymap

-- keybindings for lsp
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set go to keybinds
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- go to definition
  keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>", opts) -- go to references
  keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- go to declaration
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation

  -- set rename keybind
  -- keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- using inc rename instead this

  -- set diagnostics keybinds
  keymap.set("n", "<C-m>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- previous diagnostic
  keymap.set("n", "<C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- next diagnostic
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- show code actions
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for the cursor
  keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics<CR>", opts) -- open diagnostics in telescope

  -- set documentation keybind
  keymap.set("n", "<leader>K", "<cmd>Lspsaga hover_doc ++silent<CR>", opts) -- show documentation for the cursor

  -- set code formatting by lsp
  keymap.set("n", "<leader>F", function()
    vim.lsp.buf.format({ async = true })
  end, opts) -- format code

  -- typescript specific keybinds
  if client.name == "tsserver" then
    keymap.set("n", "<leader>mv", "<cmd>TypescriptRenameFile<CR>") -- rename ts symbol
  end
end

-- export the function
return on_attach
