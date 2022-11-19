local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
	return
end

local palette = require("gruvbox.palette")
-- setup must be called before loading the colorscheme
gruvbox.setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		BookmarkSign = { fg = palette.bright_orange },
		GitSignsAdd = { fg = palette.bright_green, bg = "NONE" },
		GitSignsChange = { fg = palette.bright_aqua, bg = "NONE" },
		GitSignsDelete = { fg = palette.bright_red, bg = "NONE" },
		DiagnosticSignHint = { fg = palette.bright_aqua, bg = "NONE" },
		DiagnosticSignInfo = { fg = palette.bright_blue, bg = "NONE" },
		DiagnosticSignWarn = { fg = palette.bright_yellow, bg = "NONE" },
		DiagnosticSignError = { fg = palette.bright_red, bg = "NONE" },
		DiagnosticSignOther = { bg = "NONE" },
	},
	dim_inactive = false,
	transparent_mode = true,
})
vim.g.background = "dark"
