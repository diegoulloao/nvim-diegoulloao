-- require treesitter
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- custom setup
treesitter.setup({
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	auto_install = true,
})
