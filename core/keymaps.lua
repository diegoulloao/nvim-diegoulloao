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
keymap.set("n", "<leader>rr", "<cmd>source $MYVIMRC<CR>") -- reload neovim config
keymap.set("n", "x", '"_x') -- delete character without copy to clipboard
keymap.set("n", "<leader><CR>", ":nohl<CR>") -- clean status line

-- tabs navigation
keymap.set("n", "<leader>j", "<cmd>tabp<CR>") -- go to previous tab
keymap.set("n", "<leader>k", "<cmd>tabn<CR>") -- go to next tab

-- editing keymaps
keymap.set("n", "<leader>o", "o<ESC>") -- add empty line down in normal mode
keymap.set("n", "<leader>O", "O<ESC>") -- add empty line up in normal mode

-- telescope keymaps
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>") -- find file in project
keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<CR>") -- find word in project
keymap.set("n", "<C-b>", "<cmd>Telescope buffers<CR>") -- buffers list
keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>") -- find in buffer
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>") -- git status
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commit<CR>") -- git commit
keymap.set("n", "<leader>gh", "<cmd>Telescope git_bcommit<CR>") -- git commit for current buffer
keymap.set("n", "<leader>gB", "<cmd>Telescope git_branches<CR>") -- git branches

-- git signs keymaps
keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>") -- git diff
keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>") -- git blame
keymap.set("n", "<leader>b", "<cmd>Gitsigns toggle_current_line_blame<CR>") -- current line blame
keymap.set("n", "<leader>ph", "<cmd>Gitsigns preview_hunk<CR>") -- preview change inline
keymap.set("n", "<C-]>", "<cmd>Gitsigns prev_hunk<CR>") -- go to prev change
keymap.set("n", "<C-[>", "<cmd>Gitsigns next_hunk<CR>") -- go to next change

-- indent blanklines keymaps
keymap.set("n", "<leader>l", "<cmd>IndentBlanklineToggle<CR>") -- toggle indent lines

-- util keymaps
keymap.set("n", "<leader>L", '<cmd>let @*=join([expand("%"), line(".")], ":")<CR><cmd>nohl<CR>') -- copy buffer path and current line
keymap.set("n", "<leader>ms", "<cmd>MaximizerToggle<CR>") -- maximize and restore current buffer
keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>") -- nvim tree toggle
