-- require bufferline
local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
	return
end

-- custom setup
bufferline.setup({
	options = {
		mode = "tabs", -- only show tabs and not all buffers
		numbers = "ordinal", -- add tabs ordinal numbers
		show_duplicate_prefix = true, -- show base path if tabs have the same name
		diagnostics = "nvim_lsp", -- nvim lsp diagnostics integration in tabs
		diagnostics_indicator = function(count, level) -- diagnostics format
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
	},
})
