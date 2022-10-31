-- require nvim-tree
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- arrows color
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- custom setup
nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
				},
			},
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
	update_focused_file = {
		enable = true,
	},
	filters = {
		dotfiles = true,
	},
})
