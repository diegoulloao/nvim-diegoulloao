-- require lualine
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- nightfly lualine theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- customized colors for lualine nightfly theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

-- overwrite default theme colors
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black,
	},
}

-- custom setup
lualine.setup({
	options = {
		theme = lualine_nightfly,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_c = {
			{
				"filename",
				-- file_status = true, -- display file status (read only, modified)
				path = 1, -- 0: just name, 1: relative path, 2: absolute path, 3: absolute path with ~ as home directory
			},
		},
	},
})
