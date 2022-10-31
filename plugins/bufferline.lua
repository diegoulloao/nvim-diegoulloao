-- require bufferline
local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
	return
end

-- custom setup
bufferline.setup({
	options = {
		mode = "tabs",
		numbers = "ordinal",
		-- nvim lsp diagnostics integration in tabs
		diagnostics = "nvim_lsp",
		-- diagnostics format
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
	},
})
