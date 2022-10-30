-- require indent blankline
local indent_blankline_status, indent_blankline = pcall(require, "indent_blankline")
if not indent_blankline_status then
	return
end

indent_blankline.setup()
