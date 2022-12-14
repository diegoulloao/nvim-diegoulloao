-- leader keymap
vim.g.mapleader = " " -- space key

-- for conciseness
local keymap = vim.keymap -- keymaps

-- general keymaps
keymap.set("n", "<leader>w", "<cmd>w<CR>") -- write buffer
keymap.set("n", "<leader>q", "<cmd>q<CR>") -- quit from buffer
keymap.set("n", "<leader>Q", "<cmd>q!<CR>") -- force quit from buffer
keymap.set("n", "<leader>i", "<C-W><C-R>") -- invert panes
keymap.set("n", "--", "<C-W>=") -- equals panes
keymap.set("n", "x", '"_x') -- delete character without copy to clipboard
keymap.set("n", "<leader><CR>", ":nohl<CR>") -- clean status line
keymap.set("n", "<leader>rr", "<cmd>luafile %<CR>") -- reload lua configuration

-- nvim-tree keymaps
keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>") -- nvim tree toggle

-- tabs navigation keymaps
keymap.set("n", "<leader>j", "<cmd>tabp<CR>") -- go to previous tab
keymap.set("n", "<leader>k", "<cmd>tabn<CR>") -- go to next tab
-- go to tab [1-9]
for i = 1, 9, 1 do
  keymap.set("n", (string.gsub("<leader>@", "@", i)), (string.gsub("<cmd>BufferLineGoToBuffer @<CR>", "@", i)))
end

-- editing keymaps
keymap.set("n", "<leader>o", "o<ESC>") -- add empty line down in normal mode
keymap.set("n", "<leader>O", "O<ESC>") -- add empty line up in normal mode

-- telescope keymaps
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>") -- find file in project
keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<CR>") -- find word in project
keymap.set("n", "<C-b>", "<cmd>Telescope buffers<CR>") -- buffers list
keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>") -- find in buffer
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>") -- git status
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>") -- git commit
keymap.set("n", "<leader>gh", "<cmd>Telescope git_bcommits<CR>") -- git commit for current buffer
keymap.set("n", "<leader>gB", "<cmd>Telescope git_branches<CR>") -- git branches

-- git signs keymaps
keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>") -- git diff
keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>") -- git blame
keymap.set("n", "<leader>b", "<cmd>Gitsigns toggle_current_line_blame<CR>") -- current line blame
keymap.set("n", "<leader>h", "<cmd>Gitsigns preview_hunk<CR>") -- preview change inline
keymap.set("n", "<C-a>", "<cmd>Gitsigns prev_hunk<CR>") -- go to prev change
keymap.set("n", "<C-s>", "<cmd>Gitsigns next_hunk<CR>") -- go to next change

-- indent blanklines keymaps
keymap.set("n", "<leader>l", "<cmd>IndentBlanklineToggle<CR>") -- toggle indent lines

-- util keymaps
keymap.set("n", "<leader>ms", "<cmd>MaximizerToggle<CR>") -- maximize and restore current buffer
keymap.set("n", "<leader>c", "<cmd>TSContextToggle<CR>") -- toggle treesitter context at top

-- todo comments
keymap.set("n", "<leader>f", "<cmd>TodoQuickFix<CR>") -- show todo comments list

-- symbols outline
keymap.set("n", "<leader>s", "<cmd>SymbolsOutline<CR>") -- show symbols pane at the right
